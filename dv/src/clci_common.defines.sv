`ifndef COMMON_DEFINES__SV
`define COMMON_DEFINES__SV

`include "uvm_macros.svh"

`protect
`define uvm_fileline `uvm_file, `uvm_line
`define uvm_fileline_decl string FILENAME, int LINE
`define uvm_fileline_args FILENAME, LINE

`define uvm_info_ext(ID, MSG, VERBOSITY)                                                                                        \
   begin                                                                                                                        \
     if (uvm_report_enabled(VERBOSITY,UVM_INFO,ID))                                                                             \
       uvm_report_info ($sformatf("%s(%0d)",ID,`uvm_line), MSG, VERBOSITY, `uvm_fileline_args, "", 1);                          \
   end

`ifdef UVM_VERSION // for uvm-ieee and after {{
`ifndef uvm_rand_send_with
`define uvm_rand_send_with(SEQ, CONSTR)                                                                                         \
    begin `uvm_rand_send(SEQ,, CONSTR) end
`endif

`ifndef uvm_do_with
`define uvm_do_with(SEQ, CONSTR)                                                                                                \
    begin `uvm_do(SEQ,,, CONSTR) end
`endif

`ifndef uvm_do_on
`define uvm_do_on(SEQ, SEQR)                                                                                                    \
    begin `uvm_do(SEQ, SEQR) end
`endif

`ifndef uvm_do_on_with
`define uvm_do_on_with(SEQ, SEQR, CONSTR)                                                                                       \
    begin `uvm_do(SEQ, SEQR, , CONSTR) end
`endif
`elsif UVM_VERSION_1_2   // }{
    // uvm-1.2 branch
`else   // }{
    `error_unexpected_uvm_version
`endif //UVM_VERSION // for uvm-ieee and after }}

`define uvm_warning_ext(ID, MSG)                                                                                                \
   begin                                                                                                                        \
       uvm_report_warning ($sformatf("%s(%0d)",ID,`uvm_line), MSG, UVM_NONE, `uvm_fileline_args, "", 0);                        \
   end

`define uvm_error_ext(ID, MSG)                                                                                                  \
   begin                                                                                                                        \
       uvm_report_error ($sformatf("%s(%0d)",ID,`uvm_line), MSG, UVM_NONE, `uvm_fileline_args, "", 0);                          \
   end

`define uvm_fatal_ext(ID, MSG)                                                                                                  \
   begin                                                                                                                        \
       uvm_report_fatal ($sformatf("%s(%0d)",ID,`uvm_line), MSG, UVM_NONE, `uvm_fileline_args, "", 0);                          \
   end

`define uvm_reg_write(BLOCK, REG, DATA, DIE_ID=0)                                                                               \
  begin                                                                                                                         \
    logic[31:0] _wdata;                                                                                                         \
    _wdata = DATA;                                                                                                              \
    uvm_ext_fd_reg_access(`uvm_fileline, WR, BLOCK, REG, _wdata, DIE_ID);                                                       \
  end

`define uvm_reg_read(BLOCK, REG, DATA, DIE_ID=0)                                                                                \
    uvm_ext_fd_reg_access(`uvm_fileline, RD, BLOCK, REG, DATA, DIE_ID);

`define uvm_reg_poll(BLOCK, REG, DATA, DIE_ID=0, poll_num=1000, interval=1)                                                     \
    uvm_ext_fd_reg_access(`uvm_fileline, POLL, BLOCK, REG, DATA, DIE_ID, poll_num, interval);

`define uvm_reg_access(CMD, BLOCK, REG, DATA, DIE_ID=0)                                                                         \
    uvm_ext_fd_reg_access(`uvm_fileline, CMD, BLOCK, REG, DATA, DIE_ID);
 // {
 // note: x must be in parentheses, i.e. in the form of '(...)'
`define exec(JOB, VERB=3)                                                                                                       \
    begin                                                                                                                       \
        automatic int verb=VERB;                                                                                                \
        if (verb[0]==1) `info("exec", $sformatf(`"starting with job ``JOB```"))                                                 \
        JOB;                                                                                                                    \
        if (verb[1]==1) `info("exec", $sformatf(`"done with job ``JOB```"))                                                     \
    end                                                                                                                         \
    // end of macro exec
`define disable(x)                                                                                                              \
    `info("macro_disable", $sformatf(`"Start to disable ``x```"))                                                               \
    disable x;                                                                                                                  \
    // end of macro disable
`define at(x, timeout_us=1000)                                                                                                  \
    begin                                                                                                                       \
    `info("macro_at", $sformatf(`"Starting with @(``x``)`"))                                                                    \
    fork                                                                                                                        \
        begin                                                                                                                   \
            @(x);                                                                                                               \
            `info("macro_at", $sformatf(`"Done with @(``x``)`"))                                                                \
        end                                                                                                                     \
        if (timeout_us>0) begin                                                                                                 \
            #(timeout_us*1us)                                                                                                   \
            `uvm_error("macro_at", $sformatf(`"timeout for @(``x``)`"))                                                         \
        end else begin                                                                                                          \
            forever #1ms;                                                                                                       \
        end                                                                                                                     \
    join_any                                                                                                                    \
    disable fork;                                                                                                               \
    end                                                                                                                         \
    // end of macro at
`define wait(x)                                                                                                                 \
    begin                                                                                                                       \
    `info("macro_wait", $sformatf(`"Starting with wait ``x```"))                                                                \
    wait x;                                                                                                                     \
    `info("macro_wait", $sformatf(`"Done with wait ``x```"))                                                                    \
    end                                                                                                                         \
    // end of macro wait
`define wait_with_to(x, timeout_us=1000)                                                                                        \
    begin                                                                                                                       \
    `info("macro_wait", $sformatf(`"Starting with wait ``x```"))                                                                \
    fork                                                                                                                        \
        begin                                                                                                                   \
            wait x;                                                                                                             \
            `info("macro_wait", $sformatf(`"Done with wait ``x```"))                                                            \
        end                                                                                                                     \
        if (timeout_us>0) begin                                                                                                 \
            #(timeout_us*1us)                                                                                                   \
            `uvm_error("macro_wait", $sformatf(`"timeout for wait ``x```"))                                                     \
        end else begin                                                                                                          \
            forever #1ms;                                                                                                       \
        end                                                                                                                     \
    join_any                                                                                                                    \
    disable fork;                                                                                                               \
    end                                                                                                                         \
    // end of macro wait_with_to
`define deposit(hier, val, msg="")                                                                                              \
    begin                                                                                                                       \
        `info("deposit", $sformatf(`"``hier = ``val, reason '%s'`", msg))                                                       \
        $deposit(hier, val);                                                                                                    \
    end                                                                                                                         \
    // end of macro deposit
`define deposit_s(hier_str, val, msg="")                                                                                        \
    begin                                                                                                                       \
        `info("deposit_s", $sformatf(`"%s = ``val, reason '%s'`", hier_str, msg))                                               \
        uvm_hdl_deposit(hier_str, val);                                                                                         \
    end                                                                                                                         \
    // end of macro deposit_s
`define read_s(hier_str, val, msg="")                                                                                           \
    begin                                                                                                                       \
        uvm_hdl_read(hier_str, val);                                                                                            \
        `info("read_s", $sformatf(`"%s.rdata = %h, reason '%s'`", hier_str, val, msg))                                          \
    end                                                                                                                         \
    // end of macro read_s
`define force(hier, val, msg="")                                                                                                \
    begin                                                                                                                       \
        `info("force", $sformatf(`"``hier = ``val, reason '%s'`", msg))                                                         \
        force hier = val;                                                                                                       \
    end                                                                                                                         \
    // end of macro force
`define force_s(hier_str, val, msg="")                                                                                          \
    begin                                                                                                                       \
        `info("force", $sformatf(`"%s = ``val, reason '%s'`", hier_str, msg))                                                   \
        uvm_hdl_force(hier_str, val);                                                                                           \
    end                                                                                                                         \
    // end of macro force_s
`define release(hier, msg="")                                                                                                   \
    begin                                                                                                                       \
        `info("release", $sformatf(`"``hier, reason '%s'`", ``msg))                                                             \
        release hier;                                                                                                           \
    end                                                                                                                         \
    // end of macro release
`define release_s(hier_str, msg="")                                                                                             \
    begin                                                                                                                       \
        `info("release", $sformatf(`"%s, reason '%s'`", hier_str, msg))                                                         \
        uvm_hdl_release(hier_str);                                                                                              \
    end                                                                                                                         \
    // end of macro release
`define wait_s_with_to(x, val, mask, timeout_us=1000, interval_ns=100)                                                          \
    begin                                                                                                                       \
    process proc_exec, proc_to;                                                                                                 \
    `info("wait_s_with_to", $sformatf(`"Starting with wait ``x```"))                                                            \
    fork                                                                                                                        \
        begin                                                                                                                   \
            proc_exec = process::self();                                                                                        \
            forever begin                                                                                                       \
                int act_val;                                                                                                    \
                #(interval_ns*1ns);                                                                                                         \
                `read_s(x, act_val, `"wait_s_with_to: ``x```")                                                                  \
                if ((val&mask)===(act_val&mask)) begin                                                                          \
                    `info("wait_s_with_to", $sformatf(`"Done with wait ``x```"))                                                \
                    proc_to.kill();                                                                                             \
                    break;                                                                                                      \
                end                                                                                                             \
            end                                                                                                                 \
        end                                                                                                                     \
        begin                                                                                                                   \
            proc_to = process::self();                                                                                          \
            if (timeout_us>0) begin                                                                                             \
                #(timeout_us*1us)                                                                                               \
                proc_exec.kill();                                                                                               \
                `uvm_error("wait_s_with_to", $sformatf(`"timeout for wait ``x```"))                                             \
            end else begin                                                                                                      \
                forever #1ms;                                                                                                   \
            end                                                                                                                 \
        end                                                                                                                     \
    join                                                                                                                        \
    end                                                                                                                         \
    // end of macro wait_s_with_to
`define fatal(id, msg)                                                                                                          \
    begin                                                                                                                       \
        $display("Fatal: %s(%0d) @ %0t: %m [%s] %s", `__FILE__, `__LINE__, $realtime, id, msg);                                 \
        fork begin                                                                                                              \
            #100ns;                                                                                                             \
            $fatal("Abort test due to `fatal. Search for 'Fatal.*%s.*%s'", id, msg);                                            \
        end join_none                                                                                                           \
    end                                                                                                                         \
    // end of macro fatal
`define ALERT_INFO      0
`define ALERT_WARNING   1
`define ALERT_ERROR     2
`define ALERT_FATAL     3
`define error(id, msg)                                                                                                          \
    $display("Error: %s(%0d) @ %0t: %m [%s] %s", `__FILE__, `__LINE__, $realtime, id, msg);
`define warning(id, msg)                                                                                                        \
    $display("Warning: %s(%0d) @ %0t: %m [%s] %s", `__FILE__, `__LINE__, $realtime, id, msg);
`define info(id, msg)                                                                                                           \
    $display("Info: %s(%0d) @ %0t: %m [%s] %s", `__FILE__, `__LINE__, $realtime, id, msg);
`define info_v(id, infov)                                                                                                       \
    if ($test$plusargs("info_v")) `info(id, infov)
`define alert(id, msg, level=`ALERT_INFO)                                                                                       \
    if ((level)==`ALERT_INFO) `info(id, msg)                                                                                    \
    else if ((level)==`ALERT_WARNING) `warning(id, msg)                                                                         \
    else if ((level)==`ALERT_ERROR) `error(id, msg)                                                                             \
    else if ((level)>=`ALERT_FATAL) `fatal(id, msg)                                                                             \
    // end of macro alert

`define log_v(fp, id, msg)                                                                                                      \
    $fdisplay(fp, $sformatf("Info: %s(%0d) @ %0t: %m [%s] %s", `__FILE__, `__LINE__, $realtime, id, msg));

`define log(fp, id="", msg)                                                                                                     \
    if (id=="") $fdisplay(fp, $sformatf("%s @%0t", msg, $realtime));                                                            \
    else $fdisplay(fp, $sformatf("[%s] %s @%0t", id, msg, $realtime));

`define DEF_COMMON_FUNCS                                    \
function int get_parent_hier(string str, int idx=1);        \
    automatic int len=str.len;                              \
    int cnt;                                                \
    for (int i=len-1; i>=0; i--) begin                      \
        if (str[i]==".") cnt++;                             \
        if (cnt==idx) return i;                             \
    end                                                     \
    return -1;                                              \
endfunction                                                 \
                                                            \
function pattern_match(string str1, str2);                  \
    int l1, l2;                                             \
    l1 = str1.len();                                        \
    l2 = str2.len();                                        \
    if(l2 > l1) begin                                       \
        return 0;                                           \
    end                                                     \
    for(int i = 0;i < l1-l2+1;i++) begin                    \
        if(str1[i] != str2[0]) continue;                    \
        if(str1.substr(i,i+l2-1) == str2) begin             \
            return 1;                                       \
        end                                                 \
    end                                                     \
    return 0;                                               \
endfunction                                                 \
                                                            \
function string get_filename(string str, int idx=1);        \
    automatic int len=str.len-1;                            \
    automatic int cnt;                                      \
    for (int i=len; i>=0; i--) begin                        \
        if (str[i]=="/") begin                              \
            cnt++;                                          \
            if (cnt==idx) return str.substr(i+1,len);       \
        end                                                 \
    end                                                     \
    return str;                                             \
endfunction                                                 \

`define max(a,b) ((a >= b) ? a : b)
`define min(a,b) ((a <= b) ? a : b)

// NOTE: placeholder. Do NOT remove this line
`define GET_UNIQUE_SHORT_NAME  {pattern_match(hier,"die1") ? "die1":"die0", ".", pattern_match(hier,"reg_inst1") ? "inst1":"inst0"}

`endprotect
`endif  // COMMON_DEFINES__SV
