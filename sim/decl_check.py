#!/usr/bin/env python3
# decl_check.py - VCS "declare-before-use" 扫描器
# 规则: 同一作用域内, 标识符的声明必须出现在第一次使用之前
# 局限: 词法级近似(不解析作用域嵌套), 对本工程的扁平 module 结构足够;
#       enum 成员/函数/宏 谨慎处理, 误报人工确认
import re, sys

DECL_PAT = re.compile(
    r'^\s*(?:input|output|inout)?\s*(?:wire|logic|reg|bit|int|integer)?\s*'
    r'(?:signed\s*|unsigned\s*)?(?:\[[^\]]*\]\s*)*'
    r'(?:[A-Za-z_]\w*(?:::[A-Za-z_]\w*)?\s+)?'      # 类型名 (如 main_e / logic)
    r'([A-Za-z_]\w*)\s*(\[[^\]]*\])?\s*(?:,|;|=)',)  # 首个名字
TYPEDEFS = re.compile(r'^\s*typedef\s+.*?\}\s*([A-Za-z_]\w*)\s*;')
PARAMS   = re.compile(r'^\s*(?:parameter|localparam)\b.*?([A-Za-z_]\w*)\s*=')
PORTS    = re.compile(r'^\s*(input|output|inout)\s+(?:wire|logic|reg)?\s*'
                      r'(?:\[[^\]]*\]\s*)?([A-Za-z_]\w*)\s*(?:,|$)')
KW = {'module','endmodule','package','endpackage','begin','end','if','else','case',
      'endcase','always_ff','always_comb','assign','for','while','return','function',
      'endfunction','default','posedge','negedge','or','and','not','import','include',
      'typedef','enum','logic','wire','reg','bit','int','input','output','inout',
      'parameter','localparam','unique','priority','inside','disable','iff','initial'}

DECL_LIST = re.compile(
    r'^\s*(?:(?:input|output|inout)\s+)?(?:wire|logic|reg|bit|int|integer)\s*'
    r'(?:signed|unsigned)?\s*(?:\[[^\]]*\]\s*)?'
    r'([A-Za-z_]\w*)\s*(?:\[[^\]]*\])?\s*'
    r'((?:,\s*[A-Za-z_]\w*\s*(?:\[[^\]]*\]\s*)?)*)(?:;|=)')

def analyze(path, extra_pre={}):
    lines = open(path).read().split('\n')
    decl = {}   # name -> 首次声明行号
    def add(name, ln):
        if name not in decl or ln < decl[name]:
            decl[name] = ln
    for i, ln in enumerate(lines, 1):
        code = ln.split('//')[0]
        m = TYPEDEFS.match(code)
        if m: add(m.group(1), i); continue
        m = PARAMS.match(code)
        if m: add(m.group(1), i); continue
        m = PORTS.match(code)
        if m: add(m.group(2), i)
        m = DECL_LIST.match(code)
        if m and m.group(1) not in KW:
            add(m.group(1), i)
            for extra in m.group(2).split(','):
                nm = extra.strip().split('[')[0].strip()
                if nm and nm not in KW: add(nm, i)
            continue
        m = DECL_PAT.match(code)
        if m and m.group(1) not in KW: add(m.group(1), i)
    for name, ln in extra_pre.items(): add(name, ln)
    # enum 成员: 逐行扫 '{ M_IDLE, ...' 形式
    for i, ln in enumerate(lines, 1):
        code = ln.split('//')[0]
        if 'typedef' in code or 'enum' in code: continue
        for em in re.findall(r'\b([A-Z][A-Z0-9_]{2,})\b', code):
            pass  # enum 成员名与常量名大写, 由 extra_pre / typedef 行覆盖
    # 用法检查
    bad = []
    for i, ln in enumerate(lines, 1):
        code = ln.split('//')[0]
        if i in decl.values(): pass  # 声明行自身跳过(声明行内右侧引用另计, 近似)
        for m in re.finditer(r'\b([a-zA-Z_]\w*)\b', code):
            name = m.group(1)
            if name in KW or name not in decl: continue
            col = m.start()
            # 跳过声明行: 该行是此名字的声明行
            d = decl[name]
            if d == i: continue
            if i < d:
                bad.append((name, i, d))
    return bad, decl

if __name__ == '__main__':
    import glob, os
    base = sys.argv[1] if len(sys.argv) > 1 else '.'
    # ace_pkg 成员视作各文件顶部可用
    pkg = {}
    pkg_src = open(os.path.join(base,'rtl/ace_pkg.sv')).read()
    for m in re.finditer(r'parameter\s+(?:logic\s*\[[^\]]*\]|int)\s+([A-Za-z_]\w*)', pkg_src):
        pkg[m.group(1)] = 0
    for m in re.finditer(r'function\s+automatic\s+\S+\s+([A-Za-z_]\w*)', pkg_src):
        pkg[m.group(1)] = 0
    for f in ['rtl/ace_funcs.svh','rtl/module_a.sv','rtl/module_b.sv','tb/tb_direct.sv',
              'uvm/tb/ace_if.sv','uvm/tb/tb_uvm_top.sv','uvm/env/ace_order_item.sv',
              'uvm/env/ace_snoop_item.sv','uvm/env/ace_driver.sv','uvm/env/ace_monitor.sv',
              'uvm/env/ace_agent.sv','uvm/env/ace_scoreboard.sv','uvm/env/ace_coverage.sv',
              'uvm/env/ace_env.sv','uvm/seq/ace_sequences.sv','uvm/tests/ace_tests.sv']:
        p = os.path.join(base, f)
        if not os.path.exists(p): print(f'--- {f}: 缺文件'); continue
        pre = dict(pkg)
        if 'ace_funcs' in f or '/uvm/' in f or 'tb_' in f: pass
        # funcs 的函数对 include 它的 module 可用
        bad, decl = analyze(p, pre)
        # 再补: ace_funcs.svh 中的函数
        fp = os.path.join(base,'rtl/ace_funcs.svh')
        if os.path.exists(fp) and ('module_' in f):
            for m in re.finditer(r'function\s+automatic\s+\S+\s+([A-Za-z_]\w*)', open(fp).read()):
                if m.group(1) not in pre: pre[m.group(1)] = 0
            bad, decl = analyze(p, pre)
        print(f'--- {f}: {"OK" if not bad else f"{len(bad)} 处疑似先用后声明"}')
        seen = set()
        for name, ul, dl in bad:
            if (name, ul) in seen: continue
            seen.add((name, ul))
            print(f'    {name}: 使用@行{ul} < 声明@行{dl}')
