//------------------------------------------------------------
// This file is generated with script. DO NOT edit without prior permission
//------------------------------------------------------------
//
// begin of feature auto-header {


// ACE_DATA_WIDTH	=	0
// APB_ADDR_SLICE_LHS	=	13
// APB_DATA_WIDTH	=	32
// CHANNEL_DATAW	=	20
// CHANNEL_NUM	=	0
// CHANNEL_NUM_DIE0	=	0
// CHANNEL_NUM_DIE1	=	0
// CLCI_LANE_REPAIR_MAX_NUM	=	0
// CLCI_LANE_REPAIR_MIN_NUM	=	0
// CUSTOMER_DELIVER	=	1
// CXS_CNTL_WIDTH	=	0
// DIE_NUM	=	2
// DIST_SIM	=	0
// EXTERNAL_SIM_CLK_IN	=	0
// FPGA_ONLY	=	0
// GATESIM	=	0
// GATESIM_DIE0	=	0
// GATESIM_DIE1	=	0
// GTECH	=	0
// HAS_ACE_PORT	=	1
// HAS_AXI1024_FIREWALL	=	0
// HAS_AXI1024_PORT	=	0
// HAS_AXI256_FIREWALL	=	0
// HAS_AXI256_PORT	=	0
// HAS_AXI512_PORT	=	0
// HAS_AXIS_PORT	=	0
// HAS_CHI	=	0
// HAS_CSR_APB_IF	=	0
// HAS_CXS_1_PORT	=	0
// HAS_CXS_CONTINUOUSDATA	=	0
// HAS_CXS_PORT	=	0
// HAS_DUALPHY	=	0
// HAS_DUAL_X64	=	0
// HAS_QUADPHY	=	0
// HAS_RAW_STREAM_PORT	=	0
// HAS_SIDEBAND	=	1
// HAS_SINGLEPHY	=	1
// HAS_SOC_APB_IF	=	1
// HAS_STREAMS2048_PORT	=	0
// HAS_STREAMS416_PORT	=	0
// HAS_STREAMS704_PORT	=	0
// HAS_UCIE_FDI_PORT	=	0
// HAS_UCIE_PHY_PORT	=	0
// HAS_UCIE_RDI_PORT	=	0
// HAS_X64	=	0
// HETERO	=	0
// HETERO_OT	=	0
// HETERO_YL	=	0
// INC_RAW_PCS_PORT	=	0
// IS_SOC	=	0
// LANE_NUM	=	16
// LATEST_CLCI_NAME	=	clci_ucie_s
// LPHY_DIS_RETRY	=	1
// LPHY_NUM	=	0
// MACSIM	=	0
// MAC_ONLY	=	0
// MAC_PORT_NUM	=	8
// MAX_APB_DATA_WIDTH	=	32
// MTOP_WRAP_INST	=	u_clci_ucie_s
// OVER_SAMPLE	=	0
// PARITY_CHK	=	0
// PHY_NUM	=	1
// PORT1_AREA_OPTM	=	1
// PORT5	=	0
// POST_MAC_PCS	=	1
// PWR_AWARE	=	0
// RV_OPENSOURCE	=	1
// S12_SMIC	=	0
// S28_SMIC	=	0
// S28_SMIC_7T	=	0
// SINGLE_DIE	=	0
// SL4_SFDK	=	0
// SL5_SFDK	=	0
// SL8_SNPS	=	0
// SMIC_S28	=	0
// SYN	=	1
// TSMC_N12_9T	=	0
// TSMC_N28	=	1
// TSMC_N7	=	0
// USE_CMLIB	=	1
// USE_STREAM	=	0
// USE_STREAM_VIP	=	0
// WITH_PMA_MODEL	=	0
// PHY_NUM=1
// end of feature auto-header }



// `define CHI
// 
// `define CXS_PORT
// 
// // AXI256_PORT , STREAMS416_PORT are physical exculsive
// // `define STREAMS416_PORT
// `define AXI256_PORT
// 
// // AXI512_PORT , STREAMS704_PORT are physical exculsive
// `define AXI512_PORT
// `ifndef AXI512_PORT
//  `define STREAMS704_PORT
// `endif
// //`define AXI512_PORT
// 
// `define AXIS_PORT
// 
// // RAW stream port.
//`define RAW_STREAM_PORT
// 
// `define ACE_PORT
// `define SIDEBAND
// `define AXI256_FIREWALL
// `define DUALPHY

//`define SL8_SNPS
//`define SL5_SFDK 
//`define CXS_PORT 

// `define AXI256_PORT 
//`define CXS_DAT_WIDTH 256


`define APB_DATA_WIDTH 32

//Maximum allowed APB Data bus width.

`define MAX_APB_DATA_WIDTH 32

`define APB_ADDR_SLICE_LHS 13

// `define INC_MONITOR

// `define INC_RAW_PCS

`define POST_MAC_PCS

//`define APB_I2C

//`define PORT0_AREA_OPTM


// `define CHI
`define PORT1_AREA_OPTM

`define RV_OPENSOURCE
// 
// `ifndef FPGA
//     `define CXS_PORT
//     `define AXI256_PORT
//     `define AXI512_PORT
// // `define AXIS_PORT
//     `define RAW_STREAM_PORT
// `else
//     `define AXI256_PORT
//     `define RAW_STREAM_PORT
// `endif
// 
// `define ACE_PORT

//`ifndef CXS_DAT_WIDTH
//`define     CXS_DAT_WIDTH       512
//`endif
//
//`define CXS_CNTL_WIDTH  ((`CXS_DAT_WIDTH==512) ? 18 : ((`CXS_DAT_WIDTH==256) ? 14 :0))


//`ifndef CXS_CNTL_WIDTH
//`define     CXS_CNTL_WIDTH      18
//`endif

`define     SINGLEPHY

//`define SIDEBAND

`define SYN

// LPHY disable RETRY
`define LPHY_DIS_RETRY




`define     CXS_DAT_WIDTH       256
// `define     CXS_CNTL_WIDTH      14
// `define     CH_NUM              17
// 
// `ifndef     DUALPHY
// `define     SINGLEPHY
// `endif
// 
// `define SYN
// `define TSMC_N7
// // `define TSMC_N7_H240
// `define TSMC_N7_H300

// `define BEHAVIORAL
// `define t12ffc9t
// `define SYN

// `define TSMC_N7
// `define TSMC_N7_H240
// `define TSMC_N7_H300
// `define TSMC_N12_9T

// `define   JTAG_INTERFACE
// Name:         APB_DATA_WIDTH
// Default:      32
// Values:       8 16 32
// 
// Width of APB data bus to which this component is attached. Note that 
// even though the data width can be set to 8, 16 or 32, only the lowest 8 
// data bits are ever used, since register access is on 32-bit boundaries. 
// All other bits are held at static 0.
`define APB_DATA_WIDTH 32

//Maximum allowed APB Data bus width.

`define MAX_APB_DATA_WIDTH 32

`define APB_ADDR_SLICE_LHS 13

// `define INC_MONITOR

// `define INC_RAW_PCS

`define POST_MAC_PCS

//`define APB_I2C

//`define PORT0_AREA_OPTM


// `define CHI
`define PORT1_AREA_OPTM

`define RV_OPENSOURCE
// 
// `ifndef FPGA
//     `define CXS_PORT
//     `define AXI256_PORT
//     `define AXI512_PORT
// // `define AXIS_PORT
//     `define RAW_STREAM_PORT
// `else
//     `define AXI256_PORT
//     `define RAW_STREAM_PORT
// `endif
// 
// `define ACE_PORT

`ifndef CXS_DAT_WIDTH
`define     CXS_DAT_WIDTH       512
`endif

`define CXS_CNTL_WIDTH  ((`CXS_DAT_WIDTH==512) ? 18 : ((`CXS_DAT_WIDTH==256) ? 14 :0))


//`ifndef CXS_CNTL_WIDTH
//`define     CXS_CNTL_WIDTH      18
//`endif

`define     SINGLEPHY



`define     AXI4_OST_CAPABILITY 8

//`define SIDEBAND

`define SYN

// LPHY disable RETRY
`define LPHY_DIS_RETRY

`ifdef FPGA
  `define RV_FPGA_OPTIMIZE
`endif

// `define SYNCHNRONIZER_LEVEL 3
`ifndef SYNCHNRONIZER_LEVEL
`define SYNCHNRONIZER_LEVEL 2
`endif

// generic cell using cmlib handcode
`define USE_CMLIB


`ifndef M2_GENERIC_MODULE_SYNC_BIT
`define M2_GENERIC_MODULE_SYNC_BIT
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_sync_bit.v
//-----------------------------------------------------------------------
// Description:
//    This is the bit slice for synchronizer cell
//-----------------------------------------------------------------------

`resetall
`timescale 10ps/10ps

module M2_generic_sync_bit # ( parameter
    SYNC_SHORT_PULSE_CHECK = 2,     //  0 -> off, 1 -> warning, 2 -> error
    SYNC_SETUP_PERCENT = 0,         //  use percentage rather than time when 1
    SYNC_GLITCH_CHECK = 2,          //  0 -> off, 1 -> warning, 2 -> error
    SYNC_FORCE_RND = 1,             //  force randomization of delay
    SYNC_SETUP = 1,                 //
    RST_VAL = 0,                    //  reset value of the sync flop
    LEVEL = 2,                      //  specify sync flop level
    DEBUG = 0                       //  Control display debug information
) (
    input       async_in,
    input       clk,
    input       rst_x,
    
    output reg  sync_out
);



`protected128
P+/&WT%8U4NUI$'_/]>#A(UK\$Y32U! 3VO]F** +H=WRS4]*D)7C<_9UC79.JEV%
P JH>+2*%'G\I))IP:"$</ND#ID:Z%EB;^([A_7F%S*Y54>T9<DD## :(U?JN@L4B
P"MI^DQWZ]<6@25]H[?*KTQFDI2[#800OLU9.I+- ZMZ6+C,"G4WA"4"]G_)(6Q/L
P7*G5TXNOXQZ 5SO/ JY3<Y-,STQL6?)9=5<\!#6+J<P"!]14-]H+Z/5&#E&0$=O7
P5?F?$6^A3-YJ,5FNSJ%4 TT-9<YY>+I=R+(&B"X5^]!^.^?T 3/VBP9-Q4J:97[>
P5@]?GQVB,B\ K[:Y.H:5X$$85SP9>W.H0\78S((PS5U?][CJ[,)^_K%/_" I,\Z?
P!SI6$X*BYTEQIK28>Z=!=9.O!^Y7M3WYPC-%7^UR&GE48\FG3^<+&.(GM\S#9(G7
PM'8[NP3%4IT!!,LYJZPV?W_AZ__\YJ8Z*1VKJ2?!ZL]Z@.[[88 -G<>OVM/RWE^0
PWAY@N/=GHRSBU/OP-A9.?]3*LO2.*APY;.8_]U40^?G9K/_T8G(Q7SGKZ]9'[VD)
P&S6GA/$ 5>S'VLU2\T"O _(]8S5<=N8M+<%@ZVZ.&](3^J&#^GW'WFN%1$>^G/U,
PT2"\,39SY%73_A6)GO&?&@QT:"08*'\X*[K7X=[_6@!N^=X!6[G%&,+HHT>/G:Q"
P!T[D"YS%0:QF;@W7=QL+9!R-L-N<^2[3 @A.+? QRY+8W)X\F4WMB+AE$T(?T2P.
PVN\S@*AWJ^K)!>WG45DQV-NJ[#:_:XW^R#@*72$WHYR!"[1?Q3Q[Y%-W'^P#HL''
P%/6(\T!&Q0B1X(:#$9J0J@>#/D91X/%/)( >PX'U-7,?,M7DW3-B3I2@-"7A"6(*
P>1R2UN^-+901@,U)H+E 9V-:=O92';DS4F]?M/_]J]\XQCU_S\ LS5_^UB"IVFFS
P)'KGC*OLV;#N@0D<!R5-.70^^R[$O6P#YPT9@9=+_!D@ ]NBZ@(M^N00BG 704P#
P?50$6WCWS3<,![16(^= D3%E?3>FO$O3DN^BVR.F$RNI(/A3;V("N?K<F(&B82:R
PI7^CEB<H3_P61I4B<#.<EMU.WO]BB9ESX!>#Q:12T_YFFGRV!Y0_&VA3[[CZ&L^M
P[B->L*!V-^;OW)KB^$]91",FUP=X9G=:&E#5.RX2/21([IQVX5XK<="U[ZWMT;"\
P>VB2G=3"!';+^[ NZJ!W#OZ*V'Y5JF8G,2,][QHQ([982YSG_>_8_T4]$L2(6*RE
PCF)!^=T_0K1H8DG=2AZ)9!H26\5RBXCLH[(VVH&^^'1O[37+]UJ02KJ!>LL)4\$5
PCG?5YGNWF4/[Q[1HQ$?K;HN$<: UY  K"Q[*MWDQ39&GOQ1>++X?5<O0B&\G_5:D
PI+-HD=QB=:WWHZIC,DB2E'RY'Z.@VH"'$/8,3O>>,@+FMT!<M@IC #0%7+ "P"5W
P=<%IP;9@)2.>UP_YG4A\MVIC187M>>30A_F">;H%O1!262KOW;U< BGZ@71%.G/X
P97J+ 64_>?W0^_3$1+>IA$*B<D[F<*TY"MOH!Q-L]NS>V\Q#7*36&+7QPL@(TJLB
PC*8:S.Z<4ML:F()C.[C)Q/?>3FO4-]*R%+E2:0^C(R::@VX'W'7IM?1%LT[_1A/V
PC@*="$L6UZ7K!XK!Q![8W,I<Z;+,T,K^>$?PI<R8;O\0;0S%T: OO=J=_EU-BY\%
P/(R &7D5H*B:Z?,+XNMQ)6"!0<]0!-G(9KA(+\LL&K\>-T0>960+2<=7&.M;%6NC
P6:QY"Y2'J+^N'+:%TSRE:K1_)6J8BOF>;,Q?DW-(NG;'6]J8!]8UQW^]E,XV%V"J
PY@H"[G'H7/,';#7&L8&O:#LL:]\(NMG^TO+'KTA;>@@_S_=JOS*B?J <J5)89\&.
PI&!C18E ?*[,S4O&>.X;R=NEO]#0,A\[=!$"H"=06MF#(>1PQ,MI-"6T2LR'\RO@
P*9O>',,ZL!TPVJ(99+;*PC@<83MM^[$^$8$,F^QC_-NM>MIJ^;BCU&^U-26U5!NV
P1^)O-#LS(8@\6FBC+CH$/\ICQ(\2Z)+A;')KTI5>%[V+5[EUA C^7K35.[[W(FPI
PB20J?JH%Q59!U4)A4M(7L^P6OIU\Q1GPY//3;\P*;(DKC7KKAO5W28T/TFOY)&_C
P!6_#^#JP'R&XI#\:G5M&TGFU,\V]6BOR_(BM0%%<O,@!'*KX N6I=><Q)PK)0/\=
P(A([8XL](?E,-&@S%6C,D@3W["W"L5W#W1F0^6_+]=&#L]4\PI;\OB#9>.C.,".@
PTM&\#C#@DJAX1.#VSBNI=CA+2@+WZ56C5]Q D2X%7:;I?%6B;UH0RQ-_"/)1)UEI
P3V-4$B:DXCD8[9PE)PO)ECV#!QY>3?92D8O%<.'4_%UGGDMEG:W[)$62?2YWFN7 
P^F\(_/:QS8#W6>BQZ0P$NE)@KE9QNCBS+6J;%8]LGJ^=V#1_<K)W)V0!FU820J<>
P$;.V/NLX55A?O4O4&/D#EAUHO0_WUG&CV-TVV,5V9X?F#]B[$-YP"2VUF*LC$["B
PATJRJBX.=:"#.%;>5)\]DXA88&S:__N>J$JC7?\ VP']%-JRK-^OHE^&4]T )(7_
P=4D%9LXW<"\VHRZ9V$:I4_*'74S_9>MV&N46 DHNSJKCMU+$*/RAAFOGDQLF^41+
PQLPLW#/1%\\P>-/U#@U?DO*_'":JL374C9W-QU^4NS-:J;0N<6T" #)9WY*]9S7B
P/FI)\W8L&DX[?+*)-P#U94$<CG%5'Y22-:FG:5MUZXT=]]7%Y/QIH@E6<>JEEF/6
PTY[08YE8GL)RXNMEP^%VBM(W^4* CPFZ,%4D AG1/>DU%_&;*667B@'.E^,.QT9@
PI=DC_FZ\GRGB37V:*=_PLQ/KE.',"'S6,VUV"!<V>3,WCZ7MDE:TV]1A<I\RV'_Y
PBB TO,O+R!$OXJ1<?:5M\J1E_H."E'KN.Q48=!MTAFX%4+^]'=C_*T(,TJ=!%*""
PB<'94FE'$4,TS58-MI@!@5U5U/Z.:J8#AE<S78FE9%<"W326)GI5JAZSC7F!>2@$
P3V4]B,A*;O?C/3DM.\1/6Z!M2?T (Q$/5VI8ZY[$%"^'Y[J$HOP8K>TY@HVJ7V'^
P^><F<2R/0.&Y_@>T@B,?)55X\K0N2,^]EP\LY_GY-N*UR05%GW&W)ZAF;&)A,I[V
P0XSLXQT+R9S ENM9+A=9YKV:VF?66V 7!M1450O&;3M<.1\M924/?\-,[BA_^'0;
PWE"W=3XQYS]A0KR)\MFC#76H1W+_)?PHG2!BP$ HJ.2&<1GJG\S2 JH8ML7]+NTX
PH@ED;J,=%O#N("651@TERVOHI6Y*&J40QB1U]SJ>>!.RDRL=""*ET9(:N3:-<?&+
PJ(5203HX#<U'6-!:>L+K<U*&)<S<E-"QT5+OP:_V[?Z"-8($Z\1&;/KH7IZMR13%
P4=RQ.V4Y820!I&O156_L5IJ\5+3>R6BRJD1OJ*&>W(X D/9&/)P"BE"@)&B^@NZP
P+;J/C7V\FRB0 NC]^F&3&-&JA@SQT0L;*1+97[%:U,<]6'[@,3C[Y;]FN[\I*"12
P[GHOUZP5M#Z\YH/]"4V.@4]5]Y*=70@>@L2"8@1HGM RZ'GY]U;:SQC$^08<N8-!
P4A#]O&@TP-'FC/,@'F2/5:2J*!SF\7W(<G?!0J!GO:9"3]*U-KKK%3GAL<0>[5:Z
P>%=AKU]4&P\R0038G )@8A2J4W.MTR+.T'P1:FF?E]2?['3](H6XYCM!,K/E? +K
PIW'RMW9&^#8>3N&=I\\U,'6AYZ?0#9?:TM@:\)()D7K")I29\5<G@F9='AJ\7_F7
P/0$-6W@I)C:"&3;:0U=,_OY3:12FMTRI3OSD#1+!3]TJ=2@@UT)&US4J(- _PD+(
P2U!D<IG&MW5$Z"W#>!J]3:SF)^D^3E%MWK6MAQKZ#I5#(;"1!]A5R4;(6A@^,@$&
P+.'E>N(TBMI>H@@TT4IANGXHWC/ZUY= -,<->M1 /,H)QW=JAE4ZJM3GV0$.P@3;
P^:Y:^]P8DLE5Y_$'RM*NS)D C(ZTFZ'E0C',DT.[#F;-Q.2K*IMMS@"DK.$HF6\.
PN0K;VE JFGL^O9SS+\I3OA^Z6B@6)?3H'!>\%_/2UV,98DE,IK=BVN<@89Q^/-# 
PAW^;Z&EP]=J,%660()B1_&A H6T)(IQVP18#3+9%-*70DOY:MBO34V'Q/%+TB_W4
P/B=T P6UI3M(TO2$;(_EQ&LX9SQ2H,V(;3GCWO$KL/=3=..YP%?MTW-P+I>3RSV,
P,:S+,K]:IRALI&F(KHOUC_7>?'O"57H.'+J$1X9%%DQ19OL*H#O5Y$YT)S&BE)$D
P.A%$K!TV]Z!&P/C!%TJARJ'#5;)HJ'-TD$'*C86%05[1/A4<MWTR3Q=!?,US_0?H
P%/&A551;;B.(EDJ\9)'NYV,+X?^V?_-V8#I3=J8L,5>[;.N;L]U^7@97(%2'G*=*
P79P'W4U&GZ/->^^ZF/N>\U'^5QJ?Z!CKN H>A"WW1[T6<A!^$#:<S<J+^GR%$VP8
PK&.!VM+T816V@ V% SD 2OD3P$_BI.V+,-B[]46.NU+;\UA^)C=V%5)PUTJ"J_=;
P2MZ4QVDF=Z:BWT:XN.+Z-@> 8L1M.P^E;,4T2-C<(;TC<3J@^R5D/KDBJ;,1R95;
P[4D6?\^HZ#!T'>WON2@CE7*Z[2KG31NQ'4TON=.3T\X-]VN_!ILM5??)!OR)V=!"
PYDRUP[^8\RJLQE3X ;E+.@"VHXL(E#O?1%7=,XU9Y<^:-8OL$6N5X(<7H1),<',&
PTYE!*N[YT/H$$23,&L#(3+'96QH)9]ZJB=,1;[I%4@J5?7#7YO+HY\%)$=*;D:@9
P8"<5.7IY.S:?*)1<9N@NC[>5&NS;+ 3Q.&S]1_44L&!YWT&EJ:J3'!HKV&$+_OMC
PUL.A)3S@$6FH\P=2Q_YE38GES^)0Q<"!I V46/;'+-(36"XN67-"KA_.??'K#URE
P.Y/@'"-7^BISX$!Q7KJQ?D#>4*#BQF(\PFV&V!+9>593X$<+L@A25T)([L3!E3)G
PR-A#[F <4 3VXUG4P5LZXP4$M >&==50JZ,0LJZYJP[.-1<@N?_A#6&148!=S=[H
PVT<_H4X$K/[@OV>3<JJ@O\^/[_]4$O7 V/71B#Z:0(TS9G&C4BVEM'0;PSN\U!;L
PV$B6G/A5UQ^ROA*B5(%T3C&,PSX1#F#FK-)_K4D"87<U/B;KB1<D%S#:"@%2D %)
P/D<DFRJL:N;FY ]8I"K3V:++U@@#>Y!2I<)SCX1J^%_G+J5- U"0]Z%<SP'_5SW?
P07>/#3(%Q+F9D\M ZJ:D/?G#&S)$!U21 =Z$]-UX/$"VQ5PV?LVK"YI^4DP#; DU
P:\1EF/LB:(\+8VPIOP;&GD+\>YWTO>'N9R"%CC9BBB?0.B@H%:805LQO*A$4#UO9
PCQ7)]P!]/OCZ6VDW@ *3W=Z<\, O'#R;,G'F6ZGU<F?Y9!N1 KXWLVYL!@):!\R1
P7ZS[(2H^PX%S"^A5VJJ[(&NUE&H.MSAFN"3;AK]/,N.SF@_2T3<D9_/L6(2'.WHB
P] O083''9X0)%%- SZ5#6U_,><U%G-8PR&K>Y\M!Y>D6""<F:A?&:*OE^_JFS+3O
PI1HYO0L^\P0'EB!Q3JK,:1BY]].8X@*<"3,)!1^Z6[6%7C%JPDS*&J87:%R;[WJ$
P,5,0W.!'6E>S1SPF= J,]\)1LK:_F)AE.3J8 $"0S;F4J.S"1F)2]!P*(=7W$:A]
P+TY^-+%^? Z!<^\]E51@8*/,,BVF3DUT:TN(A&2--#^*=F:H3S- 9[ XF_;EVG-Q
PTV];2>$P5,!<]@PR&K,L12P!N:AQM_O78Y&CC8=>?7 F9W9QJS'"1*"+HY]Z9U"B
P$V%XJV%_:2M!@4OI/6OY%.'X'??;7:)>3,>QD8',+X1,*'(GGZ&;$^K86U8%3GL+
PRD7D*^3OVFMS$L/RH_EH$69=3BU)&1_\%]#VU+PE<D[\((9E9*!F38G5+CP[?\4+
PMP8PB*V';U^I7=[*2P\N[A!F^_E1-M4,AO0URW9L !40P5LV MC_K$6M!%3;9'H#
PR0+NK/ [0S6YOM ARPR79.WDUHFH,_(2#]\7"CLYEG$#85.7SZ\**G\FPB0#@#-V
PBX4:S9\_WRVWV8:P ;NH\R;#^S0GV!#[8<-K[>A"?MT-V>ICY#.:):N9R8T<_<BT
P?&MAQ04GDQ(*UL0_IAG]49H1#E5"AY ]Q89??3+8WG_&YE1"! YU=9?5GDQ!_2RP
P]>2WG*W?[5V7,I"*F->73-[-H7%[:+('3)DW7C _CK?=ECKY_O%J,(4W26DV9E<M
PLY0[>Y [-+V_V2P^S"HR,7UY/(,,CC&L*N\CN#<$E-/'\2IYO_-@X0%PO$%2T[AL
P:)+H: DAY$(HK&4EF$!+;;MLW3@X6A8]9 IR163U=U5&LEDZX[OUY!M+G'DM&(CN
P1:(PPPQBGSR %=;C9NN^>CL)!^>L.'&;GF=N\UR)JH\VS5"R@?HO&Z\B9P 1"F.O
P+D]!>GV56>8 ]_%]P*QIE)E!.U*W&F"@()H\Z0=+06V-;R>6AR@T:@'ON9IJI_^,
P)#4_2*+3( MG!5V0:0@282D#Z6M:K@ZT>G'&'%>D<$!(Q7<C%GNB=_N8Z': :--@
PHR*/TD//S$!9G4*)5"=8!S0)QH=S9KY_[<+CHW)@6V >8L0]*'#M@)Y*C'%OPC!T
P=Y<,YUD'QC:15A)(L<[KD+WSDE?=-9I0RXY]N[2![.^F#0)N3'"U=\E=7<?;D5D8
P/OR/8AG)8M'V4>FDWUG#.J^PD51D*.)GNB/H[@P?1XY;KK6>:GZ5S8%Q-[;6<.(L
PS;*X)^=8.;L,X,#0D[K75P&D6ON,]VN7O.4V^^-3SE9(-&B;0$%/60=;71YT%9+_
P;"&5M.),BR;-Z]<PN8E+59CWQETH3-H\*UG<4'%>^#B(D)7)%19CAAV#BT.?!+V]
PA/1/)[88AV$KE>"(OKDYYA[CGOP**E/5$20$[8"C)5U=$_9%^RU0GF79M#!6/P/)
P30(XYO*-B\^ 5:W+?0L9S\1[/1[LJ 6\IP!D1JC3=-8&ADT%'&+>D8L1X"J8RMJ3
PG'F1UL,<.<] UZ[T*;U[K 5?W_TW(CE@6_23%KH-R^/-Y2I&D[JZ-G-@QR\+\L)%
PABL%<7"&$\-.2]OO"C)&@L@:!8$#GR:-5@SYA)D!#_NG3I@L<2.&[,C0[1)JRSZ6
PB&(<OLW50QXI[Y2G+T*GIDIM)0>;R,7ZUL,H( U4H=5K$N"QB[%9$:?-<VWF#"W@
PG?A"Y ;X#,R;?"F@!$>B/V7LHN"T".(PTE.\G@7BOM7?Z=]^Q*:;0)TP#+&:"IV*
PT;V"FFJF$7A2Y#OI&Y>^1U1M" ^3VY"P<#B"+/<U#[]^O)R</KQ-9-00QVI.Y]LZ
PH*F.$FWC<OV".84K:,3COTE%XBUU[ QP*B^A_P!=Y82W3X]3U*_!L)!(;%ZU"Z&R
P'JY)ENHOBO'T8*\(%9I&]1)*AJ@=XA1EDP^O0ZS7*P8?MUJ'XGRF;4 X*4H:POJI
P[)'V\HNDD8_(JB8]<>*,AQPQ!P2,X"@#[+N9!_>9]]3L)9[&5//7SU#BUW,AS<ZU
PDF/TCRGR,K$O(9(FH2QB=M6)NF/B&$^9,4<B<QB0_X:N]-0.AOHOX7NM9+Y/?CHR
P,,MQL?D>MO(&:;#?!J^M8'0-7']FC-13.-DY+4\[/S V[>?BFT/IX/:=_OHKR&T6
PW9->H<"!*4>%-B^;(Z(OYF<_FCA(%82N\N:BOHB\1$+CR$+,ZM7ME_LLM-(\]U]\
P>+<CB/-&S3\16NE-<\A.O@X9P^@=<(@(NL> %ZOYW<V04YB.U,H-I.;CD,C6)=-2
PP:JPDLQD; ;ERH' 2;FG_O_0F>)92!N2TK)R"WU4S 'ZH-YJM?<:4:FR*).H7U98
P2*F!G,X).!J=XA:OCI%?-_#340HYV%(8Z/O<3E7P59$"C^A8'O8S@YV7Q;"QG"?>
P?$63RN ?'QCLYL9[<  Z(,QFXZ[7J-7_CD>BKR);CE0>'\4'ORJ"33 _Q 3V5B4U
P,0J*EF.:/&6YNMGVT9']VGI(<#1.0!@E^J#*\K1XN<B]7!&XJ"ZE1+DVK5]Y#962
PBK1T&H&EN'G+#=AB'TMJG/EC0RR/50=3:X3<A]-TS\'D9 ^VGI51M]F3BV"M&")7
PSC0;!^SZH8,Z2U85+NRMA;6L+.]HU_9YM-[#OU]L"QR.2.)V>[3F"@][DC^A'#5$
P!SZ\,!1=0(/&1F@.1)9:]*14N#"9,]Z8HS0OYXX+U&P?R,28$^!&USP2:)&5]7.E
P5UR,^6BR1?Q9V1--X#P)=0B3B9+IZSB46M"<L03C36%Q1VU5.@U&T6A [']"%LQY
PA1>WE&'O:Y7D1@SZ7/3:BIC]2@JF.VMS2=%L/C5>'W2 L#R:*0I&8KZGG$11+:4F
P[C\,F]3V0KS'<?C(!2&;D/>=D$QQ 5C:2E]'R>SR8JWMJQ\>WSIN'I_O#_,496@4
P@\['5AA^ZYTW'F_$#.K#R0#[6E2!MD"O'@/E;4+&UY*]ZJ.^H."RQ40&1P+^R2(H
PL)&L,&";J&CJL'JV56SU,CFOR*RR74#ZB"+:N1O)1>%./;V>-!"I3B<^[&^)1@+;
P)&ZOPD$DX8464<8B'D;R#%F"_1LX>JJKL,129(,CW%@  B<'\WF3'5?#8T%\ZJS?
P_OE!^K<6VRL.W:$H#5K8W\X%QR0@DOHP=WSH_N)230^;!0.TV7?YU9S5] >V)9;@
PS2&U08?2G=SLR\&A4C!H"V5V8P1+\K< /+#;<UE"]_@9NAT^J2/3NV"SFU\MSSKB
PU\5HM"D:?"WK2;C0*,(P=WB,^@A):=N>E%A),1SK:,.\:Q[RYLSW$\.V(HG5/V*S
P2OHW)X8&V6SO^=4E$4R38)M.F +++H*"\KJ-9)3+!93",9DF!)XAS$QV+L;DGWE/
P-8]O/+2IM02\++=*CWI1'=>-;$7F,_@%U5X!_7 L3A;9B2"4\&2?+/ !#*UX_[))
P^J?W"6SL8IUWW1"\IH<0C13RC99S K0WH%5RX1Y<X\@7;%V)OKMQ72C.3)SS %@P
P<3&1W3$>M-L5OE!'0/WTH"7W/CUTR@ZW/_8,NC@^X\0X5<<D$M\:&YQ9<1YNZ9<*
PRDTV\&)KY1%S>0M24-E.7K=#W,VG0I,WHCTS@7 \2SATO0N&,K1&X>%9"PW_B$<>
P\1M?]AK?'EM5Q^C<(0$G&'A4)-BT9)Z<19?8LX%"%,DQN6?6HD(2)0-@7&Y$B#A0
P6HC5L@'1JQ,>;&666!3M\UZZ 0>8G&N;B7HS[(E84-N6',></ZRK$EY["B@O&3N"
PT"_YZR&M'9.9*=GBH'"K4BG,$7M(2E8D?US_AQ&+ZJ#C196#80,)HS#>V>]CU)N^
P+L.0.P$ A<)D"3?HF*OC:K<(0;OB^M,>8L"($O;W[2-N[<Q>U*X;8;PMP)Q;/_]G
PWKJQR43C7EQ! R6C#*F^%K&Y /6=$A L_Q;=&./FYKOG.8R;)XE)Z(1-AFY\@\%(
P?QR1.<>CQ@V\E5_PX+03TRC/%/0D+WF.:$?H*>?B#C9*3A\RUJ1PT:%6;6+3$61\
P_IF+1(FUP>N!2 C02"OHK/!2*6).-KFSA-,//"8Z7A/B7V%6$6AMRSB87JC[GLO/
P$C3: K,=I<]&<R"JT-L;,?;I0M .KXI8;P:._5$C&/XH;7[X_;RQ+/ZJ"?*4&"=Y
PTKT1I:I':,NJ$)U, #+S>4C8XE[5"@GN/$01\V^UBNJQ=YO4.'G8MA<C3A?+:BEM
P*!I'D%Z>^:(.S(D)7-2U,B[-)-&5(*\,::D%Y[/Z?#.-[K*><='H1/8QPCD,5IE(
PL@9@3K#P8ZM <\+=)2^>720F[C)SD(HR!N78&/DPRU&8AU.#X+G[4MCW"3LT ?M%
P>J /NU."#Z.'V8$C^XX*);#NBFQLDF>+O;903%WU-U9%] '(L[^"Z1/T?86K)=6O
PH<^O;W&)@V<>WP.)0'MHIX*J:0M[ I7\ MFS]$P5<_N7L03W&!K98[P:V[\&^%&]
PP4X<+6-\V761\L6B(_*[K#S+;$_E$.<NZTQ*+4-<Y;*5<]7(OB8XNNJ@^,+U:L6V
P = ,G-.XQ?N1V9^;;OET0 !^KBWO&NE[7K'V6X.K0G^=+C:/;8A-4)888?AE.4L^
PUR;#CW7[(QBJGA8,;^6LI]M7O]!&V-U176YN?6F7B+E./ZQQFD3U%T<12WJ3&^: 
P7Q-',K-1<).CO+G*PPGTG/P<4 4L>>V? &D""2>"?X6"&7HQL394)0Z_T'?<IRJ:
P ,SCV5!,F97@&1!@'@L:'\W5KO-^/&5J)QI9#+D#T1,@2N]. \;H7CL3RH7%8F5Q
P%Q@!,1**6*^&1?/-<GEDLG[QJQIXI2_L\==PC%JY^KI*/N^/A5T@DE>^8TH,RG/I
P?M+)-IMQL'M2U"DI.05^Y#*1(:Y_5-VPO8(B[.^[&^>JO4 1%P9]-HQ<>U*]%#$=
PP^(QPT2?& -*TUCQH2<(CP.]D%V[&E[L=;2F_(-+EH4>J^/=5\677CR%)^SJ- M;
PE]RW2*^V;)DH>R%?49>L^19:4U(26$=YV=7-JF"@32W;K'0_,KF&__IMDR&.7Q[^
PX&;W67RO:7MT]&W< 3E@W'6>!S]I*B%[,6$V-1KLZ*]OCSCT8X0J3#.9;S-G3:AU
PL'#@5\=_R"C0BLB\]C0<6/P7#O#,UICK8*58.7Y!B405N=YN+W(70"%.&V]=?LTA
P?1YH\F@H^N$Y=5SLOD!7V:XHSS4X7T81MGHZO0,WQ.*HL_F.J3BY!;RP7!U1>[L"
PN@*I[Y%5RT'86!;Q-B><ZN,'*WUIAIB//4/#98)D8#!_H2HK5;EKUR[B1CK.2  \
P&>\YIMI-HHMS9'TG9#5;9G_?=$TPB2T2CJ0B* F'*4V\DKO=T=4K[P7][@JA)O4E
P"\:V^AL4T'GJ.42=P6RZZL@C%\8[[V  FFS%M@S%>94V'L.82WMA4XL^ZYETY:=F
PM8[]4Q>GJ+G.*TJ&GRB3H'78<[M&&>_SCJ\>\ 7LTT;^-:U0B(#>\/Q,&PC&B>XZ
P8AZ2?A:!"G&&&LV-32[6E2#7:3J48/?S&UH#ED,5DF#A!^^QMDBP9"Z(C'PUJVFC
PVQ6]JXJ\IX>GN3,L)WQ(WL<\:[9?/,&X!$[6->"3S1]R _+)+_ >+9QZ=KZI+SWA
PL&Y2A<(Y1-(Q ='.=@ RYVLU/;]AO@?,3CNPTJN-QP6WAGV:#<#G88S1MX&XX9=D
P0B?X"R!^@YWJ(>U1<.4O"YAA28: F1VZ(NI,CBT.M4<U88C</^(KE@O9Q0>X!?XA
PY!>JT0&CP=NW[00@%YT[*EBJ[$L@F)R/M#:4MG$,ZO'J;+AY\M5*\ET(R]^)TY9>
PH\1(><2OP9A;F8W6&??NUM+)*48[N9); QO]X1#Q6/3MJQ@NP/&\3 @794"_X.OM
P%GZK+LJ^]G,6%J ,PDTP\3M@*]*7@7+.= )76QU9WK/%L-6R3=_Q.''F/LQ#.^:V
P*3S;PKE=U5;@P79JE*!1$CD[5L-20HO.=RX=[%UG!L5NG"9I(_H%LC@(?1?!UV=4
PD=#?2I')>&M'MT)O#!#^WJ%(7>H/K-?B/2ZLBW'L$G6IV=&<S\G8RVV)E>B-PP>S
PU7:)[ 1#T"5KS+R*R]81<,8.Z+<80OH)(;$3J\WGY5+/5(*7N+'F/ (W6)?<[^84
PHIU,P]^X6P.KR,E@<Y@>4RNH[5BO[\E^W2!2@!FH<!X'PWCF%94H_?8?_"!;!-C8
P;^1KK)T]C@60-KSJ<,7,&&,4L%M>  %%C:QR6Z<+?BAUTJ,6\4A\=PM#V8G];(C=
PST*]Q8 Q1M__JQ%#?8W3#/V'))HBW^6)__NU"6/FO'\??\A7,=,76AHWTL8YG4<F
P" \>.RZ'&*^VO4D*IP/T^.U@1  \^LU#E[\BCXAGM3X;%D?="?5N"F&0!3 GGA*M
P6!2B#+LN&HL8:]-691%C<W;27X UD";F,O4 V5H 4Z9;+S%[#$N\.%KQDST5:L#F
P-/5J[F]5(X'#1NC2#5;RD/M.GS+G65<=I^Z&2?>/]&B&ISB@R]?MUQ^"RH"/7#C@
P+_==>>.)ET<^[]_P)2WAAF+E!,0&68F#/>F=L.JM+=]4J47.SGK*H7/>HS36PFED
P^W9,R T/,?8%>K/".<=P'(B?7L?R_DZ;4I73LK(8Z?\,W8@@;:?7P?P\6*03'27#
P#U"AF-E31*&D,WF3RC08^95B?[5;<>_$;+0<=P@NL50-0'L%X:+J4.[S6O)/:_>&
PEAB%4^)#5<,->;S)770\AM)1UCW2B2F&<K/LLR1[?W@T9@^!%(LKJR!*;IHFYFS"
P42H39X:0%QX>3&$<EA75B"B](/A*50C^^84G4L2X2D6V2DG^+ WS"/(K>/TK3PW7
P<[HYX$K'7\MW.+BITR"DJ\+."[XM\VX*O#)SD[SDYOGU*9_;8NFQ(/]:L-KY]FP^
PV=JMU&YC;G^?91[32L.'><4+T.0I,F<C*SM5=3#QZ)X)=7A%5#"0%;0 1Q0^9CZX
PT3.,/] D4,2<-L2NB70&08*BB0RJ0N+PD"#'E_ %GWKS\[!%)G45Y$STU%?7(&2R
P !2*&AGH(OE9*KQ>N'&Y"Q0S*'TTL0.YPX])O).V[-0J%<L7^(1(?V?:EMGTB>=2
PRSO1K,497SE*G7#CD_.W'1AE$&UJ.ADPI=2V"I6^@;CU>62)\3"LB;J-U/9M4*!A
P1P-;L^83DJHDL%E@&W\Q$0&T>^GL2D>2:._U.'YLJ:F,OUBM]WNWD\!]@37IM!">
PP;[E +Y0&TE%\-#FD?4,O"J7]8@+!E<!A+!D_5'2,$E2YY/D6 IF&0< HRG<Z?_*
PI9H*RV8\6<2E@^2'^6'NF@ 9W1^%K=Z CD,NY@&TER6@QILZ1F0020"P("R"QFDQ
PE')=#N_0;=MFA_S;QEPNM<9G?BB8[P+3W>"ETA,UH8Z$[XVMT1:"_2]J%6<T_I<3
PN"IT+XG1F)B$W\<\--N1U[P$"S*VNN$=%$UBS;;ZK)E5!U9KX63;QRZ4:T["*%!V
PVZYI6DS^I@2+F32\!C\,->^-5.>X/C'=:H\C9ZLZEUO"D/66V"DL M&'LLM]A<A1
P,/Q.FSM81>[?[;$<*_(=3(O@4RM"',_B9<5QJW.#83=!.@XFMH6N^7\NF2J52LN'
PN$-L(O\>X3C24(5/<]N%JVI^RIF2*Q06D[-)$@-"MTS]REW$W0S;WY,&7,;G7>$'
P<'[#P++=H;Z+A^.5.^?Q\62C1Q1M5;O*Z$^@(S$<),-*^XV"9 ?X$(E_X3-68=]\
P<X([14"2#UN%B' SNG#-HT'TEJFMH7O!X13L)+0(H)[GYC 7I-H*@JAP\74U>2LG
PV2-.-%-#?,T.O51N;/\%[.;;;_MU@^\:C9P%\=6V" L'<BO$ZM*XZE(&/(2X'4LK
P__6D%K8)[+:"@NZVVU9($_NRLA.8K*1"5TK_)=EY2T3AO#D/8%J-;%1)6FK0_V!T
P9K\-=!.3J'";;5M Q,'N?VV'L7L6AZ,^+\OF)6>QAZ\ 2:0"@:X:WF3099'24XZT
P2<YQ)"R[T&LP)I).JC8"'ERXH@#(1$[-$HHHSZJH9CX'2/UWQ@W6OLH WX(@B*:O
PHZ#@6RW.#"Z!6+_BF0M%^UF6<HU6'FI^#GW6!/>J@*___#0 M7GBKX&(ZH\2*@#R
P,ISD8F!^SO,:F9!SL-7,HM@3%N4C7L(V)+D,O+4"61C[_W)Y&K&(NCS@6^BZ@48Y
P"F/HG0R,4O#)A.O)@0-\;4X_+1JY:OV <1[7.6/ 9A>"WK9?)M7>OI2H'F$F 2>9
PQM]*SYCS%I7YM:.>>M0;B>--+11;S;T;TU*]+2)^MG!W8 _@:TG\;&#XGLYGC)F[
PZ_L&<VP,@3H?>]68H=JCS.;EXHW!3WV[EW].TG2\UZ/DR^!N,^Y>_L%-"_7.5X'V
P%#(<B(UPYW#B-E3[&>C 8LHE$?Q SZW%-$5SR\WPRO9H\4A#YE[@>O="0#VJW)@J
P<*:>$U=GY2C]8H.)<SNJ$4%85IS%*Z=])$HO(H1H5U9PTCUA'[ZWXM.EUS(<-^: 
PN5X 6\C:Z*W+$,:$3Y3?MIR,)BE('4E]7,W\<1_%X</)DE&9;ML9Q[E8[2JBGP:%
PX)XZH)C>>K@G__7)D(P".U9VV?&MAX2\66BD-,HM4Q"3P_E<I&':[H@0/6'ECF*B
P2B&X+<E/"K4-SR[.$V946$0"'N-LG^?T19N/'S:? I 50-9-'+==/81R:6.KWS3$
PJ_JIAM<<E82OI#:$%FG-!=L=&M"9LA0Y4JL-*.T*7L*D Y?FVR'#6IK:'8S'9D2/
PP:(Z4QRTL.,$/,W8[&]BDHLT234;_J!GLU];W+$P,O9VRS1*>";)1, 8^-_0\433
P5H.8X'(@5[P+-.IMI1 5<2[LKW6UZ(NSU2[RI8O@H":;M4PV>\Q?,A&G=,1DK\)/
PKW>BO41%909PV')Y0"#D) 3RIF46'C33$D*2)2 /DJB4D#E,QTZ]ZNQS,^D+PWG3
PJ\^3F P;4[/!KWLX*^.<.BQ40"_V_E,EF7X*W2BIR9ND6)! [>:MT7)_-!4+7.<Y
PI!OFB=>B0SC'TH@E\,[^R?Z!3:T3AHPW]6>)RIIU3*0FK&!8)MEW60Z9PKQ5QB"T
P\ZBX(<<'AWNLYT$4"BC$(G-OX,7*2,>[:TGZ4Y)?83PA6>_9@.O?J.3 #:?G#3O,
PALEDPF)P0E4Y%!C&IV^#]3M!2/;*Z*_FR8(SD;P97%",>0GL4YJZJ96+S!OD!XY-
PI=U6]D&!%74EY#[>@I/KL I\=XGLW.?SN@9\RE#A7=G79C]V_*<HX)0/)G!B:Z8V
PJD^1%=(,TXHWN/7'F:N:MCH<_*^__!.UU<V*'_4.7<:"MJ% @\0N2@'O$?9#GX[T
P62WAM2]3Z(R^5VHHJS@:":D6RPV?Q,@D50KP+UX2 %:BWQ"F%3H=/75DPO#&^0JL
PYR-(I0*&D+-G42@=:]HRM^C":OEO4O&U(O:Y#N=:3U"+ G;DEI]!-(F5^6N&>A G
P:58N&>>6UR6+[YBG[D59[I_?\7JP2 6R3J]D<D#Q@-3O7UB73 )".7I)7&$0ZP(@
P;8XC1/G!R%(V7)TKUY^[6?N-FY;.;E)Z;# .#R"E^'5[0M>QKN(O0](+BBD7[LI!
P+=[)':.WDUMY(X]-IPK'11TJ!Q@+BNS2#/;=\TF6U>31#LVC$GQPX\X=1)U?J5A!
PD&@N[TY6HCW'K;FUX&BC@7&:;*FC=2*)CTUL<046_(7/6%UP=Y]7-IW1!=0S9<%I
`endprotected128
endmodule
`endif


`ifndef M2_GENERIC_MODULE_SYNC
`define M2_GENERIC_MODULE_SYNC
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_sync.v
//-----------------------------------------------------------------------
// Description:
//    This is generic temaptate for synchronizer cell
//      1) configurable sync level (2, 3, ... etc.)
//      2) configurable reset value of the sync flop
//-----------------------------------------------------------------------

`resetall
`timescale 10ps/10ps

module M2_generic_sync # ( parameter
    SYNC_SHORT_PULSE_CHECK = 2,     //  0: off, 1: warning, 2: error
    SYNC_SETUP_PERCENT = 0,         //  use percentage rather than time when 1
    SYNC_GLITCH_CHECK = 2,          //  0: off, 1: warning, 2: error
    SYNC_FORCE_RND = 1,             //  force randomization of delay
    SYNC_SETUP = 1,                 // 
    RST_VAL = 0,                    //  specify sync flop reset value
    WIDTH = 1,                      //  number of bits to synchronize
    LEVEL = 2,                      //  number of sync flop levels
    DEBUG = 0                       //  Control display debug information
)  (
    input   [WIDTH-1:0] async_in,   // sync input from src domain
    input   clk,                    // dest clock
    input   rst_x,                  // dest reset, low active
    
    output  [WIDTH-1:0] sync_out    // sync output to dest clock domain
);



`protected128
PK>8+<FT4/_8./[ +6)V;P\-=Z]D(F7"XP&K$E64;I(5IGQ7 69I8=A?34^[G1(:W
P'T]]]2/L_8OGGYM3]BF(#>R>+L6?#V7MFV2YKK#*M!FQGL0SIGL='3$1+G.06>\5
P\RYBH]YT<%1 /B1R2B]Q#R@7'SX!<%UCZ&:HR*HSF0E*7E\G%U,0/[IG+*T*A;'P
P#7PQ.*K1K/ZO.)(F3';,00@?8^VK)D0HPIUB\3JFN?&6:"N- -E5%X#LAA;62L!4
PUL3Q<@8QE^U=:$;BNK?/H/<C0PLZ$YU+W@-F2TAA+K +,A++5Y*V"?_L&BL8'VQ5
PDQ-7:O$T<9QB+/#\R,\F#ERY058=/7"I_1?FEK0/> ^A@4!/<2U#7\(>'('1)AZE
P%I;Y&;555?2X@J;-NMC[.[-Q#9EYTUCIA%?@:D"!1= Z1](=GP66="_AN5YH$%6[
PF*)Z -K"%T0]ZW*-*#M$DD+*F#+M;"0Y3?% $ N\*5%:FEA^'+01):9!(ZH[M*\K
PRG55W\B<+*([ =UC>#F?QA2YJK8[G/FO8!'$#W;0Z0=L4:M7P.'];1L'D$1\560S
P_+GB]=&S" 97/-EL)!4;0?7[(2G62LB+O'A'JF_-RLW9BSE"*'36]Q$QB2<SC$ZN
PDD:Y!6^\U2:QNY3$ -IW_*BSAP_QF$BAFY4R-@+6][/=ORN=$0]8TF#L_G<$0%J+
PY193T"4@N-JO8A#K?PQ+^;Q2(9*&.&JQ,9U0,[*K; ;[MLQ'YF+)= ,EKXI!YTT9
P\TL(P]G$+)::@^*9.)\'B;)0M"+5(IPI>;,.@\@W3,>IL.:.\.X)!2CI@/R/^%!?
P#B73(Z4;?WX&T^I?$=;E*9":T&B6'67JT!347"A"/$644Q4,6A>G@7@5.\]#PP$)
P7)SI6]DTU>P#@B4(":9N.;=9?L[H?#U.EP;N^IA'! X;NHRW*SK.]5,V&7=QS!1N
PH@[;B*74(3;H IM1@]D0C%(4A]3E))5A4)4NDTQ4/2Z1+EL!G:@S<=ZC5*;BE UA
`endprotected128
endmodule
`endif


`ifndef M2_GENERIC_MODULE_PULSE_SYNC
`define M2_GENERIC_MODULE_PULSE_SYNC
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_pulse_sync.v
//-----------------------------------------------------------------------
// Description:
//    This module synchronizes a pulse between to clock domains
//    'a' indicate source clock domain and 'b' indicates dest clock domain.
//-----------------------------------------------------------------------

`resetall
`timescale 100ps/10ps

module M2_generic_pulse_sync 
    # ( parameter
    LEVEL = 2                      //  specify sync flop level
)
    (
    input   a_clk,                   // src-domain clock
    input   a_pulse,                 // src-domain pulse
    input   a_rst_x,                 // src-domain reset
    input   b_clk,                   // dest-domain clock
    input   b_event_done_en,         // dest-domain event done enable
    input   b_event_done,            // dest-domain event done
    input   b_rst_x,                 // dest-domain reset
    input   synth_reduce_x,          // allow synthesis to remove the whole logic
    input   ptest_scan_mode,         // test mode

   output   a_ready,                 // src-domain ready indicator
   output   b_pulse                  // dest-domain pulse
);
 

`protected128
PP$\6B5!):>#(GU06:45[>Q@^P;MC5NIWMF3M]+GU/A+>^CA_QCOO*WJUA2V USBT
P\ P5IB45FX#R.^S+XQ7BQ&+1:X9=;06$3%F  VH37PT99;<&-;"";7*V/3/4?7R2
P&OW%+.N><'G[O*8[CTH5[(/Z=!7N*J?[DGQ"RHYH]I-(QN<0)%#39YK0R,;K"3L8
P>!9=SZ*9C.*_4":/,&W/&YCARN>]V]CBJ+I( ^P#KXJ\6SF87Y8I\'5)OVG-/NO7
PWO1BFA_.RR^K:*$C_FH1&Q@C]<(.+O(5IKLIKD&(+]._(=%H7=_"%V-F_DN$RL:=
P6S&?B#(-JFV$6$G-;H0I<'U"(B#L.6$WYS#'4EY66W2VPW,#/6S)]!$_^$D'F*69
P^Y Q"A]0@[Q!R:K0QJ1YMY+= %-PHZ1<[W^40AFH-R.5M%[LVK/_([4H%E'$&HTQ
PR6D[]_RJ1T+=;'-O)RT',Q&)V2KBNV.PZ9MEV21\#.QXQ$30F#3F>NGT%?E]:JB!
P&HGTS_F]0Q%9I-,0"U PC98<XAN.^0V5COI1\ID]*PF?9LBJ68ANOJ5 %[Q_[V+.
P\PPR=C].7TW%FYP&B +0"'VM4"<BQA#@12A*7*XVN 'V\]"4FS.#GAHO@?HZ)SL%
P],&\S)=\V9D\Z77"NT2)FJ]3?XJ5-$$M."N_Q][=$C 0W*$$X=PW$& K';$NY]A)
PHNH"0*"&&?T,J_VR2FF)WQT,BA@N9DJY/T'6M>58Y%%<P;:\N1F?T)QPWW)QN78E
P>"S\!@9*?&SW6+* %J"Z%:="=7[H"S/!XDKR@MZ$\,$LOIBLA9P MY4BM/P+$?;(
P@J+"3QKWVXV%BXJE+H,&S0!-M235O@5M$KEU3WOGE?BFMB=85+?0-#A@UTT=EPDC
P7&*05%^4=&5S2\"23YA 2""6+D=EF).P>;22YSLBP<T,<V_9>Y?&9."E7MFU.Q ?
P"CJB>A'0'J5\#*ZMUOW-<EA=ZKP1TL6+5XFPPC6+VQD#SA2]U#J(31W>>6;MJU0G
P84ZP:"QP!&2%#+RU&]L,@EMH@2$T-TSRB#LQ)MXMFC5J"-&%*ZFP((R% AX& ::=
P3_CGG0O.<OUJ94#F,;K'/ %:BCWGE8KD,FH1*@SS[>BYWUEG%XB ]JDM#STX?GH"
P20=1(8B[ #R)*ZB8_WH)=&T5+5B'%O=O :<%GI=(TY1 0KSN&9&LUE@6,LQ3JX-D
PE;ZKRM2H*R;4%Z,H"Z->'13/6"D>:7:@AK#+3+3S5"]H_5#X.=<>'5F%["3;".2 
P40] NZ:[YO2V-E)"R#'W]\_;(@Z;%;YKIH 2!Y+FT%! <FC(Q.C.HK@!,!^X>G7-
P@D6;0]ZU3Y-G=R (B+)VGKE\85!*'X^,QT$<)X^1,1M9T@\[G;"4;,R6:W<N!WS@
P=?5"_LXSBL*>:-B#A-6>? FW?K*\W/F8B( IQJE_*JR8NX?_&CP5$H 9!>449"L1
P:1X]0$64,$_); <_*>]&4*U/=6:(>Y'XP08?C]2:U:Q%;+0/-(D]_@O'Z<P.,8R.
P?\XSK-40*ZC#Q+B+TE J#%;OC;QV-GP"&/U33*7\0M2&A2:/JCPZSE/^DIIE5XQ]
PK43C[;@=2T&R,]K/FRH!O>K-8<6+0A4"S3[\5#T#/_\\2>^^SM38;\(C\0?*M^TU
P,6:"DU$.IY1-7KP!3D_4AOKNRQP"GPY@OP4<0FB^649<>;#((.'H#:<<1'1YG21,
P*XM2\+>A=\HM&;_\W@0&8?_\DL K$?M#4<B(%KJF5807A+9_,0'R"G$H^3^'JQ[C
PN"1<AYPA6T),;UKZ#;N+*[T?0M? 0&V>4 Y'OQT3/J(+;')%;5>@=B]JA\W7[ELF
P+R3_(,@W"6CNX]::G>"$FR018O8Y,D]F_ $/[Q>U7;,AU^*FQ;-S1)'/@^00]N::
P;C%G#XF%!:A8=8"EY\7LLI+JD]#CTI3!OD@!DZ-!%!W[KE72B,N=,C%2.*)=F*GT
P '>P;2>)S7#W-DEBMY.(XG'\05BZKQ?/_IHJ54C$:76Z[F%#UQ69% 0Y/XY$]@\!
P?#?FZ])2='*<G=!! /+,?9<2E[$\>O@!G9!0(8+7+%,$_ITX2;&.XP':*^1>9-F-
PW2><0#^!T:\50M&[HTU@T?L.F54=RK"_;P\Z0_OUG789 +X1Z>K3P(R%0@LLVKOY
P0)8"ML\4PHFB\L1V-3(RLSP+%T]IM^T1Z>3%11>&G]3]%3A'\1Y\W%*]9WNX'MWQ
P4I-GN/0?9007KLMNRV*JNWUT0(#7JFFB@*UY[8-8;,I0O+-3WD4]:)5- +DNX*/Z
PGT!C.Y$)W&RDT\FXC O0+'F$,$/41RFQ\.;YHB8I)2O-1:L&IBTXP+@\N!64/[G,
P*7-\BCX3S@$K\?/'<<I$ZL3J+%-)]4NTOD,-=T]),_XS7DSZ_YCY A5HUD(=7ME)
P:MPV/$KI()*9H]$D!#<#1I0W\ZL*.?#?"$BJQR%4!!PV]C<F1Q_O]LY?!".$NT '
P+XK=]63K*]I3G#2.*C"VH:JM=L0(UMVA42#TTD26_LG7&-+C6*8?M>V)XOFK/WJ&
PO;4$C2R(UB4KO]6E.FNJL9=@9DI7>]R?*4^WK46*0-^;ON/*)X?\/40(UEJC*0O_
P=IFURC9;:*$G[<0,0OC$.NH#@3+SO<KZ.&]UD#G6=3D;'%+2-P:!'@4C((?6A/N[
PC=3@5,7,$6X-N=[1:Y[DNA?Y8@ =5UF,Q.?>&7@U:J 7;DD%JOC6FJLM^UK+(IDF
PM%,.=* /(8NU^Z?U +EWN]MSC%ZYVIY88M-_*S?U:C*^\WOM*QT1G8 #7!214']\
P)Y_MX=W6$5;N^LE%<+PXP$JOH#45X6?TJ24;COXEI*^6HO=MHQ>W#4@-**Z4?<_/
PV3G29M)6"I;*"F+T3-C5]8!2E97Z01P(2ANK)? #%J?$$[Q#;BN5+U:+K;P^I#U]
PW/[)T"^^OJ. 27-ZI58SC.S!\(O^*WY6DIZLMVKJLF2!*Z*[3R3P=>;P[G4QQHU*
PF4!B']Y-?YLA7C$^3X=4>>/!,\]B,2"!%C<BM/_:/D3)'=**,K#8%8&_&XQS;_70
PT]YZ?C"@SDD$>)A6$?.'1[V3]H<F@TT_R'YVJ$(P(2,X(XP@2%_-)TT>>9X^?\]J
PCT^+$?D ^;,!S,'3GX.Q_FP7$7.V4JP ^H3C9+01PH5<6ZFYE5;B8_M;]E=H9!O$
P0: Q'P''K;]V+GVN5-$,#:<C[59>$? W_%12.?P8:<6!M%Y2D?.(2PCP0_N(!MR%
P]<-('^D?6L_U%AL/FFY&Y3W^?WH1HCG_YT/MD@M_'$II>>*W8-+?U'S'@/<CSU6-
P,]-)>5,GR.AJ166K#0II/9B6(OB-\HCT\7GO;-N3/ZQG:+]ZKF]_)!'<DB5DZV@I
P/=Q8J>,9]42@@ [!4;$O_#H/;L*TOYF5ZL-]2#R7KP[3SAYY2?A4]DPAR;B0:E]&
PFO?*>5IND5(7J7+7&Y#/:(U PS,N_UE2AB5Y7ZV$S8?EC.MS"KT>K[[+R56" \:(
P_LRR=-9KWHV (T[L-W6X5@B?;K'^R9EX^R$Y.1XZE(6C,%7PL)D<'W3;DDLN?%FM
P+IGUO/Y7TV;$X)J<C;=IQ%M/[+[J@ZF,VKN2"D&W/R'-439'DABXXZNA_SI?^%QD
PQF/#?']Z\HUU2Q FJ)=G;#_0GFGHP)W%5/ E. +13<[Q4E+/=I1K\F7*^V(I(V4Y
P-C%H&)-OWHLF;3_%CR3(.^V'9F;C*SNY0IOI[HCI;!ZQDG-6/FJTO]XU1=4K,!*!
P7JX&CISG^[D8+(-WX=81\T/CF- E)'1SJ5^<HL#)/;H[#T #4DA>3QB:KOJ8U\!8
PVQ.#[#X%GF@"6_C,@F&7F7^$4_GH\.W8*.W#1T\BZ-WHBF[?XE[LHZ?((#YU&P9>
P#U<I"WQ%3WNQ=T#IH";F4LH#^$J,O,TB;-(I2/&J8ZL7>[ EE-<>77D!QJ3C+H45
PL18>JE@L6O07= SN"Y+^X%&1 ,S#[G5$6<E_WT>*KIMOJJJ!G>.\?NNLB//3QS?/
P [)_7,SW%[!"'[,3IO?&YMGXJHA<A(W'$W.U,/NN6:&NGC0K6Z4KN#[?#Q+WP12E
PY\(E0R;_:-I;C.4,B-VWP%(]I ;^*S7HCK)ZW;YW?*?\[L=5APX2G\V5>$6 @)!&
P5:]..VNBOY2+"4#JZW4@%[!/%@O9+,1.I6NIX^FJ<NQY]L HGC/I)M.?%00_MV,5
P?_&WL!A*NE:(05Q&FQ@#,&9=SQC]+[3$C4/#594!5PLJM]T1#=2),S>GG <1K27*
P7V$J&]HSUUT_:2O<M$\CD*O57DQ;P*#4P4?]=K7;,]T0)OS#2: <\?VP=T ! Y22
PC:GCY[,G;!JBW97M+G27(]&#2&I #>%FBMEN><3@//E\S_3H F@OLI70[;N,Y.EI
PU$0$*%I3,@%TOE.3 V4!$-KD@<K@8^<$8M<PA1^@-(#R[@S- ?B>'7=*4996F/K!
PO'",BC["MH\?3; PH"0_OM*HS#7 T(V-VQJL:N>J!R$R%5^4:,B"N748<0439H9-
PSB](] BL9>S\7H$O0]AV]'Q.]<_CLW,I:OW'!Q<9G,<5VAF8+7?@G'T42&239\"W
PX RGM(OMG1%I,YO?:0/DDGQ@VU-=(5D/5&)UAV=[]TNDU9UPP%0#_2&8#='\"(+R
P+"T  !R9)9$,:,@22]AP,5@__2.,CD,AH%K_)KCWEHB?@0 X0^U&)<^/W7,V@V,Q
PR0VFV!Q9F%5^A<YQ&;%L0CC6,8ACJ+9D4WHKK!;I@50AU$)1@5O$1SJW(BR+YUZ(
P3B7G4X#8[+-[!\009)T5'-\T.0I*39^]1JAS9F61&3GEZ>-Y4L0T_-'#G#"3(*Y5
PKEVH;%P(_<,U[W..7'1P5HD><9/O.%LG&9*D$0'Z]YR+=M <-E8ZB#Z7ZO[+W[6 
P]E,;PL*E Y;LDWL@\VKMX3)SN4VP3%\=NQLRY@[=!5*_UAH/QRV;E\67,+B-F^Y 
PP4,MJ#"SJ9,%_&GZG<G0X_VBAS <-:^'8+*8]XB*%(O"L 98?*)A:^00=./@RHIK
P&'FG0!4M#_=D,),L@!F.W]DHT1'!?CI6!" T0*VC9%?U+QUQ4SB'^&'N-(DX%[Z%
PW@.(F6EM#S;>#]+D-_AQ3^JJK$X.8Y)O[$X8()Y01O.9M.5<N?;U!WW^X/I0L"AJ
PB5F"=O8L(.Q.[24244"1N73\'IB0_*%8"*;6I$T;#$A].BC:I@4S4=^\7;/VKX17
P87:/N&6GKZII9A,R9,8V7]'N=D?Q/L^6/0\%6MD@HX,/H)K:&H9:QIN_RUWX?&_<
P#NVST'5;+PSK6M5G/-V.[LSH0O&6S4E?FC.3L_,&'/ ''\*%&.OTN]1WBGNN%];'
P16&F_QXYK$OBP4K"K3+"IDM8$?T;7KQ!"B6I9-5M1#\WRL2A\CP5DJV$;ZC=G_!H
PR&->,;LH2'23NKQQRA#^(G3T;'0U5C]T%K03&;K4;)@925Q/H45G++3C_>R+I"2=
P+Y6.ESZ;1SVAT+$LFGKL$P?!#;TD9@C<5MMZ[B( :0[^BCXM\[N1(_\=9)I_Y)N'
PQ;W$V<)/!T0<%D?LBFAI4RH3PNC%^KIR'#IAF6.R$'AJJMHTD&74!_2,6.&J$FOV
P;4VG<89KG$86XO5L$%OJXH?FE19&P/Q6G$@,*X+7*7AT=^429$=O".R+_FK&_"G<
PR.P#C=@=0N^!BAD3XC2P?Q]4VS-ZF,DD.-7@'O%(K]]-O-EQRCZK&QI<)L9>NDZN
PLOIUK3:#?3)F?YW/X<1R/,1^OJJG+)X)>AL=--OJ7UK!C-IO\[,'SV^PD*1JZR$5
PU;==R2'?QO(M'*W0071C'H=<%/S+VNR]$'X.UN5&+@R?W>%S>6QWB1=Z\Y2,8S#K
P.JLY'Z5(@I!JO< %]O_4G%E<G9T(UN19X.-JLGPO5-&I<*H34P.)0-Q2>=\RQ-(_
PJ/7A4%UXJ93$'[4\E'[)>MX)<S[]."-UY\,DLH2E*G2_>7ENZ'0'V69@D4BBUV=(
P2P$ ]K9&\FV*B*-<Q&_; J1 L@18Z*C<9SW5M=BZ#6-=1)-"X]:H9">>5,,L]I?6
P^BT'\1J4WF!+M@A ) 4'Q\P)UI886<R,5;LX[>L/\,?9[8M]+S!;U*@:I7[WS8R+
PC+'K1?FBAUW4:#9SJI^WQTO;C&C*,/![6WRF#YF!7@9FZRB=LH$%C9A[C%CW0RXH
P"$S%EP=1@U3-RSC!\\./.U>8I@U2 L!(("+:2HKH"]&,]P=<5E2DY,UKH"?$OZW2
P;;AYV" [5YZL7RP'>@< R4'7#IZYPY-IXP[4W_6.%T[-+#[JZ 8"T_$!F72UQ1L=
P+<=7849_=(=OMJK"G!K%@'5OC-B32L#AS!GH_6MF3LU/Y*7#<C'25<%9-"--0)Y%
P3?102=__P^_-7?D=J,_/?.M<,(AI*<C/VZ<E,UYTBN#N!L Z?_[%7F:?53\\K584
P2'N8&WJ.G*(J(+*S<<_T5ZD9BUN >I3P;<UJ[XD:,M%WL[%*WX[XI*CBJ>MFRE;W
PA:5L&_[1V2/8(T($*?8K>ZRQ>0=/ >9Q'^YBRP'.(9 ):A N=J9^2#QO]-W5FI1!
P OFLY^MH%D+H7[-?_4WV.%O(P\\2P"8,>_CVS1&DK6/N^1Z %E.ZXACB W_,.ED>
P2M0CRUD"@(_W?T-10[]8PUZH**WUYWT0SP@4'/XIJT6@:J"M'L=H'XT\>8T\ OY"
P/.,PLL;;MF@,MC#$:W<W0$%2:M1:>-1ZL#SWE<I.W<ML!L*FT.'<>TNEQO$_%8>&
P[79[$\39(]*Z^MB*3LTCL+/Z%6S>8J\O37/?G)N?3:']-(M(;1<:N!8%#YF@^DM.
PD H"3V_1V2-]&"(]R;?+*Z-I5KB$HTAH>3;//9A0'V;&,*RJ(34?39\L$"Q'K'>Z
P>DR@?X?FWU7RU;02QG.6<5#T%M"ZPT1R'HTP#DMT6F?,P0#$[_R'9Z9AM49<@,:U
P:D&;6UZL<+4<-/J#\9CD$URI.;*<HDQ_,$,T"74'%ON3"92SQZ7%X>_[5QEEN*ON
P2*+/1"_[>1D3>&_MH.=HC>XGWI-5PCFC(G ]8#/B/FR!+G2#J^T\'?Y5#*1E@1G2
P5N&W@%<H.5!=JCIX+Z.=;S,Z%-)CYB(5,([1BT3EH;2&:\J0+(T:<3#-DU-!&^]<
P*NBZ6<V_V_X'2(4GSANQ!F7C\YE:%H5(>"P=R#Y!A^56(KKV6,BH=ZK 6XJ&,:A\
P"WLS$<J'2F$8'H:"2X?&5BA;0R1BYUKB17&I(^?N5O;/C]3 XG;=G#LWG231<]Y%
P.@</?_K!30*@6./9_FVL%,N$1I\^(RIO==%!Y=^/D^$2N@K5E&+0@/.O XOM3$ A
P:F[-#4:MTCL=XN)\_M\=;5PXY(_4-Z=KISPS<I'%I6!2KP0 ZHD]M'KLSXA)7[PO
P/E6[+GS#(;L8]+530=J&2 O P-JHO#_P;/IV[Q2>_4->^ ]F=FNH4=M8?^#XB]6-
P]EV9\PU-;8H/P+(0XT#H*SE3*ICI'HXKA:O? !;^2NW&!S]' LDUQ9?/?40_!BD"
PN$,7S,LT#6*F2UR2@+:([=IGUY<6K3_L<07GLW :910)<[<B"E0W2HKGN--Q<4":
PM&G7Y=/#",F_7M45_,<=Q/RC/-XZ@OAJ(=O/Z:U:8[,G.%<:_Y8CBA[AU5^+#B;_
PH#ADG,:SGO0]SVF[J6MI8![I?\6:1N.253?S_4QAT69S9)# =7[Y>5FW7!E^AU$+
P;ND@,_SF[<Y%<7;CLXO;9DE,/%_J;6M%H8+5;6$=]$PQW/"@J9U:[!D!N8/;4KW^
P:N"BVW:'L10KF$]]Y?EKJ/KNVB3Y20&MZ^HOX0&!4VX#2]H34U0F-.0%MKW9G.15
P>/4I.(%T?; PMQRMOJ_*Z$ 72WJ"4^LL,.#:"KQ)IG,<*^LQ^>-"NXM;2U3#37!2
PXU2#G<T-LL+$F5^SZ^)"%6I%-*XJ'Q087@:6>+O"ODB2SPQ8!%+-/ZGG.Z(%?G?@
P7"258AL&9H$=02_JU(79]7YA 8@OK?*,?VUM2\SJ<6ZRNU:IF[!9:QHKX7=^F\@]
P'@PO_9I=((%!8,__MWOT,A")4V\5&",D]Y9R7IL[8RG81?60C0?*]NQ(,Y# 0VEC
PU,WXL3]O#6(6++)TF/,.@?Z]F$AYJ3@YZ)A7.O-)?C9U.AX1C9=Y#BT9E7X(P>.\
PC]^98'& 7=I;98:+&3>PN65K2G8,!V:8#U3N=] D>2* 9>"T:!E#PZP!K(6=D<25
PSI,K??>;@#-R V0-!S" J!]57-O;18C4UF75$N)O0!)F1O]^9=TA+E:=3EFQ<_JJ
P7<0R0)E5N9,8')?,_<UUN;&D[^8:R7)T.53X]O(6<[6[UZJ2\>@^\<E^$4G)>^MJ
PQ_/1PEWKZU8#RU]L6"HN+L['%(M&::F&0$GDA"S/9Y0I#L_FK)@WBP+SXYF1\FR#
P3\%P[F2P[,'*T42$ :+IE>31A.]4:7#MV(^A^.:F1;0F22H='@MQ6357=P?S#X[&
P8Z:%T:H%<#2PU-J1JK$_Y1H%%GKY>^I,-=RN\'O@&Q8+KB\E4#<A=89_?1-*DJ$!
P7X9[:LB%VD%2>L PJBFWY^T%L#D%]*C7>S#9YOX6?=?/#LT-N@G I/"AK5JF"3O*
P ;!&YFG8VW&@*.=$&:8C;[2>B&";Z$V2FX!"J7\[)!>BQ(D*<[!%AX0A1I#J9J8Q
PGFC@>U)/ACT4;HN3_),5[40TA&NZ/\0+1!"O_KEW2-B#5Z<HQ98^>._=/_K.2U8!
P?7ZOTY8AR-(PP2&N\F%5"F>EQ)D""P-!Q!54Z)NDNO^J10;(WGKJ\6$0PO;+M3IJ
P466/&&@Y+RV^*6EHVV"(-B3Q[/(OQD=>V1D'!-H;:O;Z-82&]W5,,TT^6^]4<)RM
P+I2AP15Z-2+.0B7M<<5+H-OO5"6$RU_,+G.91*RA?LW2XBUU:Q7/0RV$3GL:FJ^R
PP31H*!D?$P.^-G0N2,C#F^9,\)$Q+PF0"*)] 9*QW-G,10=M0_XT;3E_CME\>U.'
P_;97^+1/,&T6 ,)ZX$A"0]^8"5NIC5H1GO#Y"_[F4E(1EC;A<F3G=7CK5:\ ;N=>
PK@7U!M;'+N2T"[BO54SVP >(ME4&<0H\17PG&9QAF=F3/?E?#U.R@O.W%6L>&7#"
P=;A3MI?_:'3FBDGI/9=%QM\,&L^$E[['ON=;<;3WR.%\LPY [8,BA"EL.B(86AA-
P ^'^_L<W26?@RMJ]#U#P$KQ?H!,2%"G*\ '>?>?B/E^68=6F@95+KNK?9N*YJM6O
PD0#_8H4W6.H]/'=,T,S>E0\%[TYI)K4'T_+57A >_I&PWAA!>\O2=Y:AQVH/JH7F
PBAK7Y_!NX])OP:ONI!W3O+Y$ 7QGR'&(YS0MNN$<.^3XW$;;)HXIRCES3?I;5D(7
PR.TUD1.G0761*%\<J6COH/4#NQ&L,SI.#>&A<5R/Z8R2U=BY+6P^VVY! =W6<[9:
P:+QU)D/YL*=15GL%U38V9VE'\_S,S,JL#A;BD@D&I[%.!Y@=K%DNT H";C"5*>%F
P_$0#:$Q2)2!=A!/MWXOTL6(A;\'5]KUE&#YBCD66?X<C>3H<UVP$@R!MR1$]F_U*
PX;9.PJ]"O4G\F%YE9\5N=3X%)OOVE@7%K)L5VR[^O!7R_#D[ G0E?Z:[8/7!=NFH
P;10N1[DA?C^IV^#$;VN9LGLB"&U)\=P-45K5=:UG1"<^C7>S\2PN5]W12RDOLDGU
P#8VZ 5D1)QB14KK&)I:ES8$PB'5 W)>5\Q0F:;QI)#=&64LTKBRGUTK96W\T67SF
P0M4_AO!5U$8+(H/E_.(R%R+ABA9J</Y44'284W:,J9'S*DPUC[<W.8^:#*I ?1T+
PFS0N1EJ?85'?SZAOP:,7(Y3'7/>&*0UCP+U\[83(C=H@$2SK]=2NM\\F1?N>1@[3
P-]I#?+%X+<<$K<!B%I]A-V"0-7WF1NH2[Y9_Z&[H43:COI94-O0F983+)ZJMH<8S
PJGTB?R0UX1T"GX=CBMW^DQW8 <:BN!?LI#*"(C;<J?OI=MFX7M1T'\BV)&C7'QW 
PO)=(*:;31FID2O9J,B>>Y8)5'=CS[2A640W]_(+Q*UQ?&-+[&C:J4N^>RC@O'ZV,
PQ'I%(:Y;;7_)N.?32#X\'MUC)I0]X#32H/GYRCR3#M/XE#>8NM ;P5-SG)A%A4R\
PH/2T63"6:ZN7N176ZOO?^\8(ASB4_>BH?']M^ 1O']F._>$0MW/+D!^A +$_*1#;
P *98<%REC.2O+Z+1RW=/T[G4!\3#,0]L<B)/"35'L!0[QW:"GDUW8M9]W.H!%-$%
P12\:!>K0."XB/$4?>AD_70V"]UZ9":,*]ZET-VU2?JDB''MW<K.HA_ WAP.%LR^5
P!9<8GICVG:9PAU=H^M$M^IA6.+9Y7O (<VAG=)$QLXIL[J._2/O*=GB==_3D#81T
P&]X2DE* >0Z%H;+)?+^B_*7/M?9 +E/^A%_?_>/0"A4BJ 1[JWP+$;8G]EEP*Z('
PXB6#,DA26=.NMP4KTF5C_?)]0EQ,^@%_EYVL(,=PL[]T8_YGT>F$[W/2O\ 74I@U
P&B,!C]^2;";#.XA8V+EW8^'1NG)O0-L^,^$RM.3"9\$8EYG[_3AB[E,BO+F9XTCR
P::%9I\; ,M,L#$"IG@@DJ4!.$.72QO<+\  W0?#E$_$E;UV);HOE\XW1LM\$N?0R
P/T+K*?6Q<2K)XMSZI&J5Z][.NXC2)ZUG3=W9 UYSJK(7"+^I1,0Y8>"95G1T_$U@
P=%Y3V(4Q.V1B[VM%>I=_]@J)X>WXU*#O:VZR )/5M3<G_,7EBYV\'DS!;(Q]DWZI
P,P?/<':CT1C0V(\Z$Q-@?R>-;JW4/U/\)IC>SP1LH9GZHQ7VH?ZTDU-[YG3!@57&
P:RZ/.^614+\4^JGQ=E4M;BA+3/P5<O&X0,/8KW&D4$NP!,3#IHN/% W]H*;#@X%_
PX5W6F!AE(#\8WO@3-85L]'.-''K6MZ,H8SY.I96,99ON;Q,;X3#01 G2HC-P# _4
P*Q@%%CD!*(LQLJ7*@OV7&S:#5_968+X".?@'8&JQ9+(&U4&BG8D>_&Z,I3*_).@^
PILL[--*(I<GKNRI>-T( #+27;2TOCV5G'U8$E%K<^[^EZ<XO]KK@^.D:=[#0M+XF
P7:+)EO(K8>J&[(S2-/082OCF.O)[YVQU#J?F!B(U&!6;VML&T6(JH!X@4DU@]WPW
PKJ!\]9;+"8T% UK\_Q$65CE62HZC!D1Y%LC4TP5?Y?/4#8+-+95<4?0V;#;,F'1W
PC%M)/J"^E9\)C>=&_,Z=*B2JKW8JH5E$S-B&6SYP@@A/9*6T6%D$.(JRX(B5.-K2
P'#0?0W;_P'*S2C4&2]S/,Q/K0"=:$!$&,2):Y*V9? <YE/ZK/<L I+OJ],YU:P"U
P=5:S82O_'4-H,8Z*?TY&6@O:RT8)QD&GLWO7I]A"I2<SJA*KP:7-B[;2]WM_"82A
P4)G2'R7-=,G!X#T.CA>6F3-E?WM=>5YB138AWHL&U_RG3I)=HS+WN:Q3";PB:+I*
P"*RO20YG6\(7/@%'.G6MG!&LX"Q MLE+'*I+?L%N;JJ\?>Y??!W#R83=CF7D.//P
P-A28[!9/)+"9\KI_T=X*L>9)GCQP7P:J_L#WNP#>BX$EN&W4KCB:$.[S#GV;>9E)
PB "1S)H?S+DI\G7VE 7A%:*@! UV^;Y?XFF/M=E_!<-Z8=\^ 5U:<ZCH$+'X@VMC
P?-I1"VJ<]+".$V%,B=+D3-Q%<L0'19\%<T[,SJLD!RI1&C+XEM8*KFV)+7T<R;2A
P"!9UF0\JJ4'Q)\> *S%AM2/S&Y+T[OGV*F$$4HD5&D'57S$7WQ)1%8YR=>,XK%'3
P*B::M1V1 [Q&T4E;:I%#@LY8I!J\]DM6M#X-2E[N,ZO5K8,]7S_:58UN1-UU"$T]
PT;';EFH$Y[DYDAI"&KHC!-TDKK!;EN.GWB2/2U'F\E.-__N*BX: #S&7Y3GXZ%4K
PJN#W")C-H[E;)8O>M2=4U>C&<.Q7IM[ER!3_I9JNN#LNUDKK]*$8C:"'>H@  D$(
P&?OV_ISTV,XE@=E(OHN8!+X\7<T7BBZR+RDG^Z=%*RM;!_Q#E2ZU8:6$CH#O0T&5
P#X9[#:Z,A,PT*JT**3;$ZV4I+L6 R%L!U>P^3SVL#"B[ P^KU99+LZ&46<PP)QR?
PS3]9YQFYH0V2&6WB=>IK9)@#W ]14?L):O"7C2U9"Q72RUVY3HJ@2$?[#N01IKQ6
P%T'HF,-<+"HOP9!BDNJ=IWW2C[SM)NL$521N08^#MKME[-^^;UG<W1;?K#^QT"7?
PV%=??HU"V$@77C3^QLD?G)-E;5H'"FZR>,UO7':LZ1BU6T54X^JFPOW7@7.P02?[
PWN[IB,?LRRI&.Q@>;BX63$> R:Y@Z-^/)LETM%C4I3'0G@ILY;5DK^*:#WYO@@FQ
P&?+P#?A,P=.L\T !"<DT()Q/\/5]^MWN/Q.4&!8UDWOJ_^":U:^R[K<2+6B/BD.)
PJ1:Y1KE?8YVT[70QC 3AX>Y=MM%P[E1=OW<,-D0)6(:9TF&1Z'U^G?]#CJ_+Q+$#
PSHQ\,%E3A3N>7<Z*9M- VD1"=<D@3HHW]L&7DO+#Q8$2/8TWF;32T)3W5Y\(SWSC
P@7SD\'>G?@B6&!7B[<C?YY%RH$(B=8 [EZH&DPN)(# AHVV&<GLZ_2SFNG/Z80"C
P*(B&4UBY[GM2=58 @=IW/W1'@*A'N;'A-\]KSGNB+3&J#9PJ7TD3*-IV08#LS^9=
PRUJE/I*TRO3[G<09Q4FPY9F)V-V)^+#_?5VXJDGF'0Y\[E68""+4@9GC4+(?"C]&
P_G6>]PCF41&B0!T^\0$ R*QLK"0Y$BT3GET8>Z-TA,"]O0-9K=*43F@^!8XX1UEI
PE&[\B9>YBUEE,6/KFL1I68::>DY3O[U[LZN IKU+:2LA.GVM]'60E#Q:5[-4<<[9
P6HFYQ.K?"'HAU)4O">\$62((#MVRFASF:+.T@%_N^*^[V=S?R$,B2W_O1[=XO9&^
PPAPVO5VTRK%S\=,\=;RJ[T*FJQVY.JDS@%E-42RZ#WZM<"_>>*3J(I/5$3SLP8@'
PTLJ_^"CJ=$<]DZK^M0GT-,9*O5U=]^[?B;[1YZ@ !;-\(/)$][T'A3+$/(@?D#^,
PG+:X81[Y-_8HW((D(P4[%LS%#@B9!LZ0$^7T$VQ& ]^J"1Z=)A0A);6D<P-0 AT_
PM)))Y=^AB&A@=+V[*:3R"PNO5)*<7$\":B/@FQI^'<(LAXDOU\&4-.VN5U^-Z8=M
PZ4\+! KF%E #:0S(O>S"6*6[79JUR*1.KAZ;)#1$Z!DPM&%([J@'6,=+=I!:R63)
PT=8P9**_(R''V=!L:NJICV]P3H><1&FPUK4Y>?L$MK(M"ACMT0M/G?'>29P\XI(8
P-/KD%&'TYUJ9_61"?:#9D.JR&QW^BR6+A\VJ-NG#_WI34DKF25MWN)E1/!1DWMOY
PH4M#O/A:YA*:PF3_?6%A3S2?CBY%]AM >0W+E$>9]D-OSAL?_ON$G?T= >$]DLAK
P8%1E%O[K:B='*&+(&WF^MACGQEJU(O,"4?$5YO6';MK!XP[&F@2>! 8U4?LR:/]U
P,-T"2@&2NJ]PF4W'HOC*96PIPD F-9>>?RHQ*WY3V'#R>("LIU%9LZ$DI '"96-O
P5L\9:0PA+GI"K5 F6(G%ER=G69;Z6_]L5XLMQ9R@[GXI.]U<%=CMTW:$.8+W)T'<
P,-4:F\(.T[SQHGZ:#\9"Y/#;'!<RW$R_MTZA1R9VVT#R&H8EB#45!YJ&9"NJ&Z_)
POI=)]"L"SH;7ONLOY>9I%P^)I82IW44+[81JSO\U$_M=/''Y>$R-,TW^>_42A3@!
PM1EYNCK=KK'.H(UL]YA^9WPBIY:2Z$?&,MXP>B#16*Y5P3S0WD;,HAE\3ENH2,T*
P$F09'V^8]O4**J\G0#V U5[>1+D+Q1C??]7>9B4>F<3N"^($F4N6)I NAA/(5GMT
P31%7\G4O<+'\YCT\K3"<*/UZ!O(4R'F3?%!23L69>3U41_)A)Z***4'1>UO$X#+?
PGU[B_8%-RNOQS@'-B(89WEZS;M<KKIM %\A8!?]1\$]['$41]"7C'XMSA9D3))V 
PQ)/LV3E</74ERHH*%<9=K"+J+RFA]QC\X<2CNDB#S1:"I_5@S4R[ 5SNFE3R63:D
P&"EAKI913BZ+[2XG&K7<O!@AM91!I1X'J6TDG8Y1J"&*OD25<?'[EL9"5D)RR>];
P\D'<K,!/=I G+IUK4&V/OKU%T::1(:R6R G@R_:BLPU)*Y\'@#/T(6[9VI?7CL\Q
POQ(=?KJ ^P9+TAR;]?>GR'('F.#XHK*<E1DQRWD_"IDEZ))!HO4T<:&-BCNLY77W
PI%F\8:V(RKLZTMO+4(HQ((KJ9'1B*=+@DQ+5!A;''4Z*]58NNB3>K3UO;2Z_:S,0
PQ"\3Y'VO[].F2EO@,=]E=XRE>R_CU;[I8_>&1(6+P%_BJ\$*/VD,Y(^D4F[)3IVT
P)Z;R'40@/0&G[U&6\(;5;:[&+@96QI9UR0\=<8!\ Z&F:'$?0=F*)<8XU";(G6M-
P7P4M;Z3J/L1@/H"[E4+^Y&G(%K]6-CL_QL%@SVGTQ(Y8P?-V )H6(YJH%-N0(H &
P,!8;EN'CT,U5FJ!J)%K=@'I^'<R*=YDZ,4UJE)BL@[<%ML5;).*:DSUL9LRJS(BX
P,TR17VFQPG $5+ &YGG7Z(8XT#33'C.Q;ZX9F'?S^P9N:8ZD#]GX+;]A0F((0$?H
P>[(#$6THK0&E[1TH5FC)-1"$Y/]C..N;Q8K^10&43@LI9XD;C.UJ'#_F6/GWP-RC
P],:2AOZI+_+)6Z7%&R;KSX'W,:B(6;_WV8]Z4*Y*&=E0@@WB/AQ"3JFS PFIQ;_-
P*_8)O\CH #MZ,\@YU40;CHRN;<*VU?&ES*^B(&!C2*-BZ)3GJ?;CT*&2&?&;?;Z?
PAVGQFJWW.16%%::3=Y>E&/%O6 45U4S2,;M7 ](%=)#,26*(1S*G# ;Z$XQF[W+Y
P3M @(K;AV'K^9UYT>-AI.#/K+"?,*4YGK8'Y&5'%>0 >MLAJNA"-JI_ A4R$H@#I
P9I/: H.80PT>@H(N<"A@R<\P4"RJLS<_NZQ,)]M_C$0[^]RX+V^=%+,_E0(&IN88
P6S4J(@O@H@WK]$IV0%,\. BP.Z[93=K71($/GS;]5<V+U;#A5-R3@BFB;=DK>G6!
P0+GIWX&KC'Q0]< :)#=G(G19A4P<BY'[#3\S.$Y;TGTZ$7\[$60U"T!.%_8K(0_"
P3A6QSF=)"9C&X*]^I^G16GF^V!J)R]KP%L@>**62=G)"SZ,.:G0RAG>?Y+L$JL<A
PKDU.AF505# JUZC,HD2A$:D*FC"/!8+*6NV=74(3'L1N%4F1&)_& !1=Q.^,C?[&
PDA7D-R(BTZEYK!4/70&.SU>@%5BT(5>(N,<=W;+RGYJC5#4'FA+_)*>/X&7<#3]K
P:H$Z&US[!I3YUOEJ<,T%\!G?WN#5(MP:)DN<I$ E25]UHH40>JBA\#:!L'G2. */
P?I[4(H;29^H;.HHI<9IRPQCC[.-!=7Y-?7V;<5OUH.JCU.%N.9+%X%VU!W1Q#F()
P[X.5MZJ@(7NU7J3J6Q1TWU9H,,1WFW-/A/W[3D.B-9_\23*%UD-RN ,N-%^KE0RE
P&MT!/JF>_!DK?,!O+Q?V(Z\?&)=Q'H-]*@':JMQ1)BGE 2=^TK^G*I>:XLA30.-J
P>)%>="/Y6\I 5.$Z86XDVNPV^4IO5BIFFMQ]CJ"#M2[6%U;-4"V0^^X1]Q06.F<"
PML2+J:+% &D(XXBTC3%KN6 D _ZCLLOY?HR>4$^TOMV__7[2,8*"$0 46/;A$?A<
P,,Y DR8GIQZ;.9_?4/EOL*VC+2I**^\&)LP&Q>'BD#DRGN>Y_DG9<N8,M][_8/E-
PEN*F_"+@Q@%C%$FO*TXZEV>%41O!2UY)TBFA;&UTVQJNIQ!C<5/T*%V^!%S.B+.P
P>@0<WMG,9W=]>E!R9S]2BSD8N"I2L)G!O^4MG;3B296:MGON[.^M__G3#@2D^&RN
PISIRL[U(6-!8N?I'&HP3W"I"%OF-8) [\F@7PV<J<99M"^G)':"],):J7^FP<R=H
P?U*A+#3$K"??\N!]KC_^W*>*^GTUA8K3(2B\N<0/.]ZEPXJQ5#;UI)KDU(N+A[?K
PDN$[HR@SEA(J/A!UV[K5R;&+.^D?V!;-EEQY''L$GM[2A[Y79LHW[%F-T88D7FI-
PWYD6<C--OO0HDR$OO%B\X+(S4FAT*6TUUP"/!L"7SEM4JT.:_RL\](2B4HFCE2MO
P_A#"CN1=?_ JL=4590U)^J0)]%;R$0$0G[. :>!]9]U,=7F3RMA3G*%QU3Z%SYCG
P(=!&,K1=-'!>1S=O^L]!8$6%8/"(FG,VFD2,;BGG2/63.;V&'K+#A?\7<L\P\>;4
P_L#ZF5I'S1I1./N:-$!:S*9&NF?"(@:@9. C@=$"YM9704@_1C=C@@!N8J0P1%UJ
P"*>=/+V*3Y8*]C;#YG3ES\%QW/NLG0FJ#9^,W[2FKW-41=J@042P1,KO,(827+ <
P1J1S?>;@&I+]:HC^M7Q)(3KYOR3RX5+:.1"YR6J1JBSHJ^4XQC<I&,J\."4M "34
P[HY[U3VQJ!;$-6(RE=@_>"-GV_)[EFH?QM-L+LF%^&_-(^)E6[!O+>)?BL%5W0/5
P6&U^T528X'>3>\K!-R4O?RSD0I9E9C]XPS#:7V3!<<B8I;Y\=JVW.&*"3=5&*TL?
P2RZABBHJ*JSPA"5W74?(,PLE%DKGVH2B<*"V3B !B-4XG)OX:YWJR6Y14!)@.RN@
P;5BZ20^GCU:)]>P^CW[1#,P1]D.7N:'Y7Y?#^>+E# MLH0M,@\*UMUWU](>B>+,Q
P^"#H$X/\X9VI =.#UY?#0=2W+[NYO $.)U[(!O 8(^1AXLNB1NH;KG.CLOU?UT[9
P8SQ:T/V:QPO'>9?_,-)%Y%*"('_V<CIN+NW8LZK^-,Y:$" E*;!@KOY64F(H"Y/+
P))\ $UH[<Y!"4/(O']!H 2:*^FSU(S \*.EGP&->[Z,QT^?\=HU? /_") %ST"F4
P<8G@H&3606)NR^5GB%N\HBK",-))FO.%$]<SAO^49KK5&7=?8VQ)(7[0+^?M\ L]
PU:M.]9ID3T4%&)#3X('T2-O':,ASF;_T2P;DU95JE@_IO?2-^%9AJ:^V"6X(HAR(
P[C^.I&AARPDT,;GR!>1ENT/XK\UTR>S\%QGPI5H@ >.,6*[90@D-<,4>.>6+W$MC
PYY&N0G%M#]J+.'T%-?AP;I'GS9:8TI2LA%80W.MQA/$N&GEW-I&0T!/WI<=2(M^N
PJZ&:GEAN!ON 6+68<T>73&!"T_'ESS> R3K6\)]:V=!EK_305=Q.%@!/.S<+QO5[
`endprotected128
endmodule
`endif


`ifndef M2_GENERIC_MODULE_INT_CLOCK_GATE
`define M2_GENERIC_MODULE_INT_CLOCK_GATE
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_int_clock_gate.v
//-----------------------------------------------------------------------
// Description:
//   instantiate icg cell
//-----------------------------------------------------------------------

`resetall
`timescale 1 ns/10 ps

module M2_generic_int_clock_gate (
    input   enable,
    input   in_clk,
    input   ptest_scan_enable,
    input   ptest_icg_mode,
    input   ptest_mbist_mode,
    
    output  out_gated_clk);


`protected128
PUB5-YF)K(:-@H:YQI4HXX*ID\QZ9VJ"(OU+,<>/":N$MBAM-8()6I1$$>/^CI14'
P#3\$X<)X"@>NM1'B+LVU_?!OS[U\";WTGWI>AI$TNHP3Q1!RE^+,TJ[AEDG>8DOC
PXNJT$]#=X46,1VRGSTWME$L><9\;% ";7)/\TI!>QW\W.P1C,6T?LB34-OCJ<CD2
P]Y0J<ZSZPX6/7&KMAII^=N-=(.O -.U1!@E4&.#:5]=[Z$\^DX*1^UV6 V&V'!^F
PQ),V"E9F%%ANJ+U_*,BX6KJVY\!TLWAG!I,KO,2.D3IKH,HV B,^/'\5!,TR!C G
P\W?P/\AMVBBAZ*AQ=IB;74-2$><_N^!/LZ)#B]%HSMADW6F@XG]I-SLQT38TE1!N
P[\Z[T\,9BX3:K"@5\(%B>U&-,&=T=AZV?Y05')63>'D5O"&Z";LN2XILP>\HZ @3
`endprotected128
endmodule


module M2_clock_gate (
    input   enable,
    input   in_clk,
    input   test_mode,

    output  out_gated_clk);



`protected128
PEAW'6B@*I $0WTP:F_'YPDNH@+8E7T_@P/$/0B/611?#M('2W*K!):M(  ,M-DQ<
P?K\[!:3+:$L\S>Q$YKCC-WD[%P3Z6J-!Y&>S:27JB>QNYF)J=):;@-#DAGNIP712
P(:Y"FQ*((W+Y_0_?A&28]WWUS96UP7*@:S1XF^H:ML2L($X6TZ.7[KD'<J]]1A2?
P6C/ U9PECW *8!Z5?LX=YR%=896-LB3-R[68JX69+-.HP:I5)9TWA0S$H]''-O1+
P/Q[?O"F.HS41H6_ _Y&?\J#JC,.Z=, RNATYK&:I_&\<:2VS^?-KA_'9QP]C"I&R
P=Z!W$.K(-9N+'(.'<6%"<]A)2#YBEMV+KT3\0*9W9NB;]E6EE.?YB'O*/1@WAKK/
P9<CI3J6L=7Q(+]GR.N.F\R>QH7C6=V\$*F?0]S+XA?#DG HZ4QJ5E\SN8:3A7R#B
P.J4@V 5 TQY=A8($<'J=X,]LQF4PQ6C7?,(TF\^D 3RX5OFCN=;Q0-J:M#9>_JP9
PV\0!P!SS%2BWKZ&"$ G*E3/Q"EA&H42.>!T4"'$_-_EG_+#3I(U??[29SW4!GTLV
PH@V=@RMD$KB17Q7.*>\P=9^^W@%MM0;(C4X?RR%"HU^LY)*"2(<-/]T-[>7(?E/_
P:[TR1/ %/?T8 P\6[T[63>VX.-;A57S/]_:H#I>\I.><P+:]*OY!G;\&:E@\:_V[
P_%1D"Z0G30FH!["*B_+KX_>(UY'%&?G[\O*7I2MZWQ'];C :4%9,"78!2O2B#]QF
P]XD_]Z"\ *XG=0>]&>.25X1,&3&B/C]K_=)VC^*%&.4;&_]HHY\O_D4D 56V%+EC
P?TD1OQMRT/W$I4Q[P@%2',#BY"L*(0"<!P!2[=2M31+@+CK:)/L)?-:TT</5=A0:
PKS<T9FO]+DGJJU +XT4$U_TPM"L<[F[FPR824U<;) 5Y08J4EUP85%IP.&!]RQE&
P<3L=N-]R*UH2,<I1K$4\$!</[4 H(GIDKL:%:J3N^)KBTK??F$R/R^+,\:W%V@OD
PR7;R%H:[* Y,)A(TF*C2Y527;!+Y#1MJT*-(]Z2)B_9&TLZ5:0722\.-$=3A?X\@
P2&=@488=C[^H&*7Q%P/E'"\O6[I]]W%H*4+FYE;,2 ^L&/$I3$W7T749EL-^^/$I
P(B17)H]WMF <2/[V[=X[T(=*[Z#,#/6HH"P[59P]!T+E@YG3B3OO4QP=T0X+BMU 
PU@G_#@C^69)66L;=U;+;AW'Q6]Y'839Q42WH=5([AGTQ,\-KJ@#.(B'?YON,HK2'
P#KQ.S3WM@]C\CV;O1>=0185_T_MS'H6[HS\]#>92=$?" 6ZR=WXL,"!89M8\D3[:
P!57T82G\DT$9Y(%).+F)]L[C&0U-=4%S$:D/PF99U  OGL2]C!D2 ?\TG4V!C"&B
`endprotected128
endmodule
`endif


`ifndef M2_GENERIC_MODULE_RESET_SYNC
`define M2_GENERIC_MODULE_RESET_SYNC
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_reset_sync.v
//-----------------------------------------------------------------------
// Description:
//    This is the generic template for reset synchronizer cell
//-----------------------------------------------------------------------

`resetall
`timescale 100ps/10ps


module M2_generic_reset_sync #( parameter
    SYNC_SHORT_PULSE_CHECK = 2,     //  0: off, 1: warning, 2: error
    SYNC_SETUP_PERCENT = 0,         //  use percentage rather than time when 1
    SYNC_GLITCH_CHECK = 2,          //  0: off, 1: warning, 2: error
    SYNC_SETUP = 1,                 //  
    LEVEL = 2                       //  number of sync flop levels
 )  (

    input  async_in_reset_x,        // async reset input, active low
    input  clk,                     // dest clock of
    input  ptest_scan_mode,         // test mode
    output sync_out_reset_x         // sync output to dest
 );


`protected128
PGIMZFB?L+N"FJC"C "H51$NHT)I^^#4LMPF_XC9_'41LBHU0J9O)CB'G>!\SC9;H
P(!G'4_8.24>('YWYY5W''+UL:'DGOH2_<X(M"9Q!<:-J^H(-M;9F_IMPKYZNJX4J
PV><OP:H]/;B3?*N59 TGLKK 03))A-I7*FG/M0W&) ?I?</:/J7R;?*)5"YO\<1L
PQ[3^/G V:=D7OV^? @)?>$_62QYJM )DY/&7>M,QI.Z'/6K_$M7W'O,ZYUZC/$_P
PV ;2YM^:H$(K:-OM$#63^6/^,ZG5E7[X.*@O)?GF]!UC[$40.^8J@R-TD2ICW('9
PBCB^?G?0.6K8-/1X]=W#.9[@J P55UIG-EPON(&)TZ]& .3=T&*ZNJ*PL1'#4F<>
PD3IWMEPX]5H@8WHP\]C!#O[=X)/U_PR*?]%,,E$F*I0=R]X8%3YX>JFD '6'W(!4
P(S2>Z:?@'4RX3X.5'G?D_@HK[EKJO%\\//@V'K)I'(NSGODW9Y;;X-J I_*EBADT
PM>YH=30X6?G^0-R36TS/M/CEM=E\I2K:&_M!E%L&T>YA@$):SZ"/ .)V$B\P^*JO
PUNF)PU)-B.B]I/2/?1=Y.'/,JX^&=BM%OW Y2E\V12F4/1QL<% >(SY-8:HX46&8
P(U/Z-2%G/L?6*YH?N3'9;K AK8R=C'CW\T0K$=%(QF#7K[1+3L95VN<$E%)E6-U*
P+T _5>CK[ :Q*HZ[@NGG<F7X(A;YZ0IZ<TYLI69DL6--L1/NT53('[#GW<-(F<56
P.</]^Y!>,3HH<T-:^U^HKACQT8<U,O@4HIR_42;VHWJ7M(37+%&[JY]V;UL";9]T
PPRQ_APGX(H6(+)>Y,]DZ&%(AAN1O_4T[.W:V%;+.#N?BA0[&M*B_M'40L_LY/\B[
PVK^]?[<)A)QAW+3M6V'<%^H(: :7^,QJ:,YX*,15_'EDJ65_N9MJJOZE74EB$IY'
PGH<:E^6@?4;,F<TF6W;MTZ2+\11@'D=@K7F,&P+8LNRJ-+*Y[=#C^PVYQ%F-N(,]
P2LB*[K[V6?&7NH<U'? H&)D8!:]BOR>=2PC5"+:!_%A5)&8NCT@AG$H^--3J1"=_
P[OR)783CX=BZQKS#V8BXE59=>)ATKQ_>_9F9-7@'=\4&U?>W*-*14D8GG_1?VO<)
P?2>K.(N&IC!S>">@K]A%K)-,67$P:[)66.4H05='/O^>O7ED U="M"!I=?YE[7 #
P\R[\Q+7K&8X@@FYGW_0P#7K[:.?F[4VPU,JZT!0']?<FLMKB,"QS6?8B';/DVRB!
PO#I'Z?$X$NR1022NUD!^%KPCNKYQ4%BC#]\22<%;>"Q#]\Q*-ZQMR^'D^K7FO]<'
P#'26?$VK[Y,;W$^[T:]/+K+\1Z8I7H_9KB)31'VO4+IF4P44*>^)9).Y+TCD_&-O
P"[S5%$R"MN6 W$\=()Y^ W,4;9-LES%8KE^VTSS&O4YXU[CFT"-W]%:=E3 )031D
P2^2./Y"F-X58?&=,E.(GP8LR>;C:L0C-.3COVXMEM?,JU2TH+$71#;3%(# MS.DT
PZ(B!6XJ;C<Z2;\5/OJI&:1K#",.$P0%"3!K1'U(%?K-KPM2N4Y?RV3,0C4&/E.E'
PT)K'>J'X@"C %#Q#A:) R<R^YE*0S:0-C/L^F!41D83_4_[;A*$^I7S8J>Q+S;!1
P+0?C.8AW1!_FM'F'ZWD:LEKS!9 (4>X-T.,^:>WS^NI^QQ7FK@#X@D8$D-^FLX'-
P(Q%EM1,T7IE_(@)?89-A,ITP=X#JILHLH8H\U>?)))PYPJPMXF)N5-<47O!?:[\P
P3X>%*VEDMMN&3_/_B%!D]NP6:Z%_#U+,@9AAB<%?;"AFO8C]M\CD*X$^!10R-!+#
PW9.+*@?X0EN]N8BY?*?(3SX_BSYV 0I1MHK]L*RT$#A91K8Y>IGT*!+G;]^?"R;.
P4RP'T%"XA:1JJ&K$A]3U\15+O3)/+U2H1YOAUN:/XQ<TD^HSOB7;N"S)Y6]Y ;R!
P?GA3\^[9X8,P71*I:P8=HQ&P/$P>WTT5%#S<.A5?)I.PTAVLYADFJ1G-;S'K86OO
P'-&&)DA[:FPR=7%"O_CS<G(DS#/ZL=JB1T*EL\X$'J7Q$$.8S@) @I\X@NLW&/AM
PWJB57GS;'5/YX)'!=@MJ+R6"CU/#.4U<L-Y,_X7U'&E:8:$L=*U,A8YGZ6O(7UVS
PBI4LAYK&C;6#^4#2PU...%C59VB7:7#"!V&@Z/J^S,9^=WNZ^NCJ!4/_&Z//#7JJ
P_=L-IG<O7(.<HIB.1 6-Z)^@M+3SP<]%&SS48=#3$7M4,S\#A$LQV;R<(3J"I.U=
PX:CV*C>7R%!"HT7%UO?^)[MVP8;,UZO[D:<X=CDU/'"ZDN0BBB8);M4D'&M]$9C8
P<!H%QH 51%UT%1_%2RI9@FH*,_C3)_"2(ACDTM[)F4)>.2+EOT*&NY5NBQ0='?4H
P%M$BD2JPSW"UD"SKH>C11^%A*S;-:;5QLO5C?>2Q])_!@M#)K.TC-8R\92/EQ@6!
PFMU1L-? DM"IH)0HA#_?P0,4F<*'2R,,6P@9"!QB?T#"#"'6]'.[1QIKQOU"^[>8
P9=E7=$,3V E/6(V&6: :)&N,\1/(J-#]4)#GFCH&?@H8=AT&9<_)S-F+G@1B&C_ 
P:LBTXTVX!L$QCPNYWM31Q+WH2N?=W(X9ZO0Y:;N$JL5*>'<!&]3BV-#>,F_25-\U
PJ?)/,PEQX;/2#9ER81Z# P779,-U1K[9,LY;I#U.,J"2HW<*9-G.,>6!T&[@FD0%
PC21)"!#5+I)]/R.6TI_C&3]%HYU9];<S],(743N"Q(3^YYSK'F'+-JH3:VN6.N%X
P7MG5+'6M?''_VQL$#V!&<\EH?I%IM6$.6ZG4 $SA]$JP*99W>Y2SGTSH6)1YE^IM
PT()_KD-I\$M)4FG8R;*$?I!Q4JMC8&E:- ^=*((9IBW K&<W( 9\B%9&*&:O-:['
P%VT138EP@J_Y5NLB?[[?Z\HGA*[Q2!.>@=UV ]U?+2I$3/ZBK^$V-&0KV[FY_M"G
PC6H'M-$"09WLI>OL?-1+[RVDG)$R?M=>NI$05DP[C3,'K$TS@J2)G00NI&E(.$4#
P"0H;N/1@)G43MS0BZZTGM.8M3F%?^3"=&B>DPT[=LV'8A=K5P)6(.J.&)!%[!!:L
PO9]ZQ/,S7 I'*SH^Z%'_)$F$8H<[535:&J/JWH>3_XWV%<@DI_KW8L_3CE-I@YL-
PTKHI2J. +>5 ]BO267Q'[KB1+K5<=A$6\2>T1^!CQ%L&WT(+:Z?4S8?D*/7KI=H]
PV2,?]GE%$*(ET_^?O&S+@XOM]G%3(K1X%Y+>Y0JVX>;\(J3R^.W@H=W\\G$U;">M
PMTE>T?!)NW(WKO$>7%78C5^$"^IQA;FO8D79+-XQ]!C0L&R+U9;W1(1R@3S;.IE:
P/#MZOO77+PML,5I\N8) Z1 0GC12X2KT]XM"$5 "6\P*.WX)N(.OYV+5^'-M1+<?
P+I#%=-+3N9<[HK2TN@J<J0H=5H7:XK-14)+3C0+^CC&GW-2\..LAAU>;JO*M**P5
PC0<D,1#>0[5(:&5SLA2W?;7K%L\N:K7CJ1T:S+Z#:.=,(Y^,^DU6QB!S8/G8[/S@
PZ9REU5?_'A+WIR&[CD?KI8,^]_9>$.L:/L.U$7TZ7&^)2#!WVGNYJSI.L(]C[B'[
PX[F&0A\.^?1N5ZP@_+0R;D52N0;!0DRWQ)S=_LF7<-+4R5.V@*<P8X&$#$(KWGVU
P28S)VTI/KUM._%]$L.=ZT[IGU'3N6Q*4H=9X+(>=HV [H;IP0)DR=WO7@*#JJ6#G
PBW+BT7:*YQZZ2<+KW83U%N5P77>R8)^.KOT3JBY'[_%\DC?;=I_(?QL0<]:N^XRI
PH2U$[#??Y_])#N/*&8IE;9&GA$ _N""5;QA$6^_]&C+V45H70,A,67J&9."$#DI[
P-9+<]Z Q-)/4C@90?<;2=-*X"CC@;=<L/!<)<5Q'KW[Y/<O/&@6L=*"[85\Q'6IX
PYK#?+T>%HCY*BD(6"?[V!K'OIB=$4)P*B[$]#OSSJX)/CIN\SST0G_FG5QT_U0OM
P\?5K?UH4#T PJ8AN*DNN-A7I<*Z'B.-/A^-)3@N2P]*THLMFHU]RG[TE!]C&_>Q_
PQO:75S" 1@JW&3"-$*G!N_,91#09*G<_=&%*G)$0+L&7/T%,%8]LW=F">;KQV?@6
PJ&&:O4XEQI/WP#K*FR3%;0-]J55&.7':WH=.;&*J'\Q8*^??21HHYSK(D%U'&VTQ
PB&1,2\<*BI4&-A?Q_36H>1>?_<O_D%#Z<GXS>E@;=XZ9(PB0'*9\D&>3'GW\497F
`endprotected128
endmodule
`endif


`ifndef M2_GENERIC_MODULE_ASYNC_FIFO
`define M2_GENERIC_MODULE_ASYNC_FIFO
//***********************************************************************
//              M2 Semiconductors
//              All Rights Reserved.
//***********************************************************************
//-----------------------------------------------------------------------
// File:        generic_async_fifo.v
//-----------------------------------------------------------------------
// Description:
//      This is a generic template for asynchronous FIFO.
//-----------------------------------------------------------------------

`resetall
`timescale 100ps/10ps

module M2_generic_async_fifo #(
    parameter WR_EN_NUM = 4,
    parameter DEPTH = 4,        // power of 2 depth of the FIFO
    parameter WIDTH = 32,       // Actual bit width of the FIFO
    parameter  DELAY = 1,
    parameter  LEVEL = 2
)  (
    input                   flush_sel_en,
    input                   flush_sel_rd_wr_x,
    input                   rd_clk,                     // read domain clock
    input                   rd_flush,                   // read domain flush reqeust
    input                   rd_inc,                     // read increment
    input                   rd_rst_x,                   // read domain reset
    input  [DEPTH-1:0]      rd_thresh,                  // read threshold (rd_aempty support)
    input                   ptest_scan_mode,            // scan test mode
    input                   wr_clk,                     // write domain clock
    input  [WIDTH-1:0]      wr_data,                    // write data
    input  [WR_EN_NUM-1:0]  wr_en,                      // write enable
    input                   wr_flush,                   // write domain flush request
    input                   wr_inc,                     // write increment
    input                   wr_rst_x,                   // asynchronous reset
    input  [DEPTH-1:0]      wr_thresh,                  // write threshold (wr_afull support)
    
    output reg              r_rd_afull,                 // read domain almost full (registered)
    output reg              r_rd_empty,                 // read domain empty (registered)
    output reg              r_rd_full,                  // read domain full (registered)
    output reg              r_wr_aempty,                // write domain almost empty (registered)
    output reg              r_wr_empty,                 // write domain empty (registered)
    output reg              r_wr_full,                  // write domain full (registered)
    output                  rd_afull,                   // read domain almost empty combinatorial
    output [DEPTH:0]        rd_avail_entry,
    output [WIDTH-1:0]      rd_data,                    // read data
    output                  rd_empty,                   // read empty combinatorial
    output                  rd_flush_inprg,
    output                  rd_full,                    // read domain full combinatorial
    output                  rd_sync_wr_flush,
    output                  wr_aempty,                  // write domain almost full combinatorial
    output [DEPTH:0]        wr_avail_entry,
    output                  wr_empty,                   // write domain empty combinatorial
    output                  wr_flush_inprg,
    output                  wr_full,                    // write full combinatorial
    output                  wr_sync_rd_flush,
    
    output [DEPTH-1:0]      probe_rd_addr,
    output [DEPTH:0]        probe_rd_bin,
    output [DEPTH:0]        probe_rd_ptr,
    output [DEPTH:0]        probe_rd_sync_wr_bin,
    output [DEPTH-1:0]      probe_wr_addr,
    output [DEPTH:0]        probe_wr_bin,
    output [DEPTH:0]        probe_wr_ptr,
    output [DEPTH:0]        probe_wr_sync_rd_bin
 );

/*
  parameter WIDTH = 32; // Actual bit width of the FIFO
  
  parameter DEPTH = 4;  // power of 2 depth of the FIFO
   For example, if you desire a FIFO depth (number of entries) of 16, then
   16=2^4. Due to the gray code converters used to synchronize the FIFO pointer
   values, the FIFO depth is limited to powers of 2.
  
  parameter WR_EN_NUM = 4; // Number of write enables.  Each write enable will be
   used as a qualifier for writing to 1/WR_EN_NUM of the FIFO entry identified
   by the cirrent Wrt_Address. See the specification or implementation below for
   full details of the qualification logic.  wr_en[0] will be used for the
   least significant "write lane" (wr_data[7:0] for a FIFO entry width of 32
   and WR_EN_NUM = 4).
*/


  
`protected128
P4@4"ZA>B@"Q,O!#7&^!)OS.?1$[HJMV!U,%G%U5-(#(EA5_"RS$<9:%SLVF#@*7O
P=G>CH.0KM4/MAG.6DI0T,IR=!VU*6L<KJW99?5IO)PD=I()"V!@8PES,"-+XK!?]
P:NN"U^G0)''NO6&:IN7A8(?_3#%P.CBYU&YH"B 'T?Q+)= U6 @1J/DH/:LW=,Z@
PF30P [NZI+HE4!E_X-E])BZIOM@:EF@YW(:MJ:\MM]&J9N8&:>"./8YD!\?V<X+(
P4!\FO1YQEF#>=!2NQ2A*'?M:A0;$ZH]T'!['!7*\1G&V^[%7W[M.".@2;&SK$^+#
PHQB8ELV9V*FC4D:]BL?,D99=1 )[2<\J&]WEY:T#B1.M?4\! VY(D"1WC-#FM 3)
P@_&TL?=Q2D8H AT;U!DJ[:W@2)L[I(A?%2CB+&&NIW4+WE'VF/@,O56%PUI#?(J_
PC+FL)0Z2NMN59@>\Y+!/];+;'Y(IIB5(SM(.+G">\0]%V!W<^W!O;FK5?\!9NK5_
P;BRLL'YF6_5$S98Y^IY!FB'(HFQJ1B-+P4?_94+ZT_!,TN&"&^OG!/OX,/,ZB91X
PFG)N58<E. E_'M,JK?(X$=VSX+&B>[*Q!4$VLP&T+Q9MN)]DU64_M_*IK$2N,-I+
P@C6<-F2>U-77""*7W)>AQ4TK!M:D/"ON5$8<T"=;-<HN,.QY3:?-1@OA=/BBSR3B
P[+C2Y?'1&?#$66%S'S/$LV)/SL&#A-]AE#Y;9J%)ME=Y]YUI3"KF:/:$9<R38""2
P :P!B Q%0B_UH9D@)8[-HTC_S$M(FQS(XP)7)%G3DUO:'&R=[Q8G9G18EO@SE?A1
P\*4!_8HK]M.C%_'E> 6W FA2-*+M-4])1SZ%TD.QZ,3=C;J6K5RE;>U3]>45_/O*
P.9*3?,Y95Q9?4&1'LN6=-2%(7\.,-$TR/=,#@DX97$"K5G99YLL,^$9#XF3'*0Y7
P72_9R7>Z1R:SHZH=O/BG_! X_1%;4?HB3P6M2[/2_WBS7HZ-%^^\X,DOXO+F'&PJ
P\'<%@W+2;?XA2-GIR$JP$#\ _^J^0+K@851*<1AGHQ(#;1];K:HX,%0?49%NTOK:
P[)'5<I[=(#,_(;7D<TO"C$D<;X.2:2E(9#$%5RW$__.'8'37!XP3RSSGT3['O"4F
PN%%;]D@*_9)Z$WO?EC)=M;^WRC#W).K!.M.,P,Y&1-LG4.P.,$DM>^\MJ>8\L?NQ
P!BV@^DJIUUG_AIU!%POXEV=%2T=Q6?,.LMO<'&VKM/T%8DW1#=AGL5,V///.FG<'
PK^/QR\<4R>+QI*XF-\CY$2#=W-]>PQ*OL"(:3/(@"Z#V540-8H M[HS24QY&E)LQ
PD:15 ;O\N3#=DQB5FWR2T(8+39!5V9*9ILVWW;>$DL;S\WQ(@8J(&K;;TLNA^PC7
P+K"2UQTT!D&!C9KLZN)<P?B3RU(=7X(9PEP/+KQSYK6B7%VO_U[2LL8CATU"@>4G
P?AQD7=DI' ]O B#LLM0R5.[+PX./-O\DP<2]T8$@O/@0CYB/N#+B0%;.OABSU7MK
P'V*3R=6S>.,'F:YIW 'JF:@\S)YB';XB\D;SEV<^S3%GO^ %-I&K;E 10N6'98@K
P^#.J\;\SE90<_(FGM7FY]?4FD8HM7K@'>UG=QU),HHSGDSB=3AGFWJ=!A+P)1C,7
PH_WF"II8Y/?BSLO3(:(FU![O*I Q'I?+#:8>3=J4*>PC4^[WP2 LTQJ=#VLKEH@T
P'20!1C E:/R*]HV<[J&/V&*/O%?FY^?'CA0R98I<MC%'&78K9S:T5:UKARI6A?:;
P_UN/NWH#MZCH+%51LN]3W&S]'/&=#J1SX%>K?2G<7%9T/H)%BL[19 MLJ,;Y6$^"
P<9\OPOO-H3#?G&2,WKAJ QH%C;^%>=?GP*0[G)TKM^[4Q=KRO9NC%R5:Q^N;)<E4
PY6E!+]829ZG1"U"F3%)>2;_%H7CQK39 OYQHM-^,L2M2!F;<":E.1:#*Z;2+'\]A
P?_KTG#9$M$;(:PH9S .]6I0:_>)3C6@.:S&_G(])&_E^.)4$T'U&T^_IF[LAWI)>
PQM>UOTDO/L&T!T0PS.64:$><>,V@CR:UUE7&V'76^POMU(9_:UA$ &D*?Q'I/9$-
PG@!>L#:.]8J"C.;@,5!&J4./L]XP*-&S>//ZI=,7[\'-+%A&?N4S4!45)E229_S"
P.^I+0%C/E-"^$UF]>+C3[AIAC(_4+9&OM";;ZLN3"'LE'K/39FA(8.\92&Y1VLR%
P@9SYF(#69_DTP=TLO/[TYM5PHA0_=:,@I"QK:39)C,?D7/B*3:H!=?U;'IB'MY,H
P:\-;0Z=*?<$0O4(E=W(IC%86\RNX73J?:$/J]%CIFNY4B?OBPGFX2DDR50+A$$Q>
P76&RY%.%1MU4]'R(3.7K5QP1WE2X2?AG>.8$6J[0.?JMA&ZR9\0ED5&^0$MBJ[^2
PP31-=<!62%8X5AI;1=KNNJ;QG<@:@\\W(WYC%RQ>XW9 ?2*5&IOT\2:;L% NSP=Z
PA7A4QE)!7 ;C^E,3/ZWI?>"'-CPM/7>0S>/S ,3SNOU*N'@_$7&NE6%IBG[..>H8
P=D) IL&P%$P9E!=<I4_."".<XW^G%^UV+]W;]-PYDT;;J!A.:+UV;(>IB>1^0C71
P\;6L><0(O$9L*-$3QRJ/+SX6Z<-UN+7U'[*&Y^KYPZD:+.%/*,9_8^FDT-FO<AF-
P<9BQ\4O.M:P0N$$_%AO-T>N1XEDY0^Z79?#%7Q7(I%8=P\8II<^J60?@]7@72M=7
PN)'CSY';=E-C$&T? (/<(LJ,%1=&+L6&@V9H^,P$5QP8)\#E(CU@<C30=B^SE&,@
P#_$U"C'81^I_OZ=T/>?8T2\\?,D(^]%HIAJA)N-'<T_MEN:M;)TV E=''.^>?2IE
P>=_>41QO] K(1]+E-.N)CAA)B)*87J.7U-:VF"[XTRE].A$I-/PV+KL'^ZH'UGT%
P/.0FJ+W#]_\>IUN-*67/ >(_D';&V\*B(_L8IU]D&)L$YG36,\R$)._!ESF/!LIO
P,A46BWMO*5TBS9#[( 0SCP!R&:G<L"8;&.<'Q@?3OSV^S (J9]^>C)!&&8_Z<TEC
P=_)WFN&GU#.:3F_0-_F8<M;G)--M8Y$5Y96+0FTZX4)K,R@K+K52DZCN61P WN_H
P#P7M8O%\Y5P'$=#*?1]#@2 U)0=4[.]$FXG<;)$VZZVZX*)W&[-SO?#9X_:?^C<A
PX7M=HD?"S@XS1%U3]N;>F8C9+IT9.@IIVM>BWK8TNS;Z"W)YK'\Z*&2!!D?@5^Z?
PL+O<<UT^W"B"#3H6_9.AP-'".0:TFDTR6WUV(A05=_FR1F'T[MK"L7SF=P1W'PB;
P^:R8OD(%1L=1)R>ZEA,4 &]BM2#$[K4I ]:Z##G#?YZ$2^^DGEO4\L6W:_T=Q=ZG
PQG]0;UQM^_)D"C!'%S(3X&XT'!\?=6++T5BS?4'5[K5-L _*NZGNW_J4F4R*M(UK
POL@52%7J3,]FX?ZBGZM9,7O4NG4)T.JW,PYHC2 =9DJ/*HDL9L*/+A$H3Z-:56:/
P$!S^2&5-N>;"L[YXI7<'4-<FE>8QZ_2/K)F 1>$MV>!MJSG%JEVRR&5*J:JNZ_.Z
P#U=N&8L9<_1+^"-9Y+:.JC;\@#7Z/HYD4YSS8@CX6$79#D3%X3V*BU^6. IC4>QG
P!K*&*%]T_S$? COS8*8;G;>SW"<$F>NS*%>Z (>49O:@E+ZZ_84F+R;!CI;B-5K]
P9074K@?I1!5>>,ZA*R6<=(X@&+ E6ZMO.C7:H:*-P(6R =!G(?LR1V*CM)<WKZ4E
P;8*8L/_NF4\1A4G/6UD2DC]JB$,G$7_M#-%PTLRN^&ZWUTC)3AH-?C1F%?N_#[#(
P'>?$JH4OPL_X+V7_Z>Z[G&4ZF=MUT,GR26OW\-VIO'MWBD,%6)>#\NZ E96"*I>\
PI*#Z*9*_X #,;1S$W&FHIQKP^8S.IP( <"YN6S8.Y1%I7<JY)#L+KU!H'=7%E(]0
P/*_J%OB1Z-N(MAW$M/R7:]1ZJEOX[R+E]RJ!J'2$N&Z5_I^J'D#=)F9AH[-60D&(
PU"SA-V:VMMKZL-\_TP-5^YBA'YK$M8 -;$&:,>OYZNT(JR\1ZW#S39G*!2&-$ZYX
PW 3FU7![8+FS#D)7"TB8%7I^#(>!LD(?.3&.5M$HQSX5]E;<-K+B;$XB,K'."?=P
PBM-#$J]]:/F21P%BLB3'U@?;'6U41"#K3QH,^>>IUCL07.A^(XRPJEESS$8-HRK-
P-XZ^NM[L>*%NHLXQ8'[V8@'-[O"]8*:O]QA>\2@M7X<2\!HA>U#7P"3.-WY$W[^[
P27)JMYM</=!4'U9=5'!'V_SWIAKKRT?(&Z(-H]^;04C_LJ0G(H)?IR25//J$/#2=
P//YENC WX>]81;#]!Z#6N0I#5C<.];7-.!.Q;F=T90TY:W&HNX9B+0M^9H)QT*?I
P:\0P/__9:"K*"1B[S9?#=&SNM9A<52LVH7;A^A=16$":9M]2'FPF?I20&K /**VG
PQ_<G5^ESF@R$P/E%*ECFRN^]O G:+%6);#K#:;(??ET8V1S"'7V;*\F&4MOHJMC<
P5K&A&=5%U7=IY;H1:P44M.?D\C-.Z)N_0"MXBE49(F'I#&6&,''$/+#H14</BMFZ
PX7LPCA3:O] _I4:_%6:E%Q5:JLP*R2V)_[Y\<=%.Q\FO>"A"]9I(9*7*]!BC!W=0
PHN:HO[X \@H1OZ]DE9PNPPRC1?/^M]NUC\(HP54W!YE)Q>C%,=0R8;H7!7JNAS? 
PFN -DRF.LU6\N_\U#%N&U2YM;]<$ O$".KO,_IN4'?F*:R0<&9(XA5.=O'E%?;J3
P9"(??K/; FFG/2*TO!A-X[K#:RX 6;F64@NO&-#Y-6]A/IX9H%(G6?NB?9-=NE^8
P5L2#(/]J0 ZA3N& BJ.@M-5A#J#@QQU &%@E^S\P;6]AH(>1W9,;BF9Z-]O9=.*!
P3QT0)TJ![3FQTV>"G^14G(' IP).:7SQNS8RU3-3 ?X@I-0ROMO4MB>#G*VA] 1J
P!]=E>AX_T(WLS'NQ-FGJT:Y/[?$-T?-.(=8?BZ!OA:L7@YP^M%,=/#-_JN&%ZUAH
P;.[((2O,\I>:4!K3YL4 ),XD9@#[S0?>XF=@2+G=W7BK4)IJG;=#1/,#LK+WZ6&W
PNLXU/G4=/PN0@O>OIC\4P(4XQ?((AZ].5#1<!0Z:@K<GI[LW%]QQBXF:E9WDED[$
PIRB-&F@I89S88YSU"VH)WW82\/ [<]T79U4EH!C5!UE5@*_5]9W'R7PL$[25Z4<H
PUOO9L0>(?2?._%^9<785_V4S.E=S!_(0L&Y\#+)]W_1C-+-Y/3L<'8"H-(V[BC4]
PZ%Z\LN-#9)*O9"K39 LTY0/Q'_Q4SJ(''*4U/)P):@>LB::G@'SB76-2^WJ:!*3'
PN5GG5JF3WM/YG(R'$;QFIF[' -WB',02$MJ\[N_MVUY%-?UE1A72C#?6FD923 =Y
P4C>5 $+&T96 ?.X)-V!X@AJ;,W-3,-1 PJ7!#S3%V1]F3LV >CPF8E[D!7*Y)J_G
P!.BQ%A=M&/[HM1=+J I&<1D?;R&PY5*U95!C@-8B[CG8WV0RJO9C0B)S!@7(K#,Y
P\^HSQO.IBU<T/.YJ?]Z=R2<DZ@A&K#3QX^ 3>:.V;U\%8]<^Y?VHPN6W1!PB+13M
P]PP?]\-DQV0G9',0LKV8Q51"LS>Z(C(#W!EE>3\FL$\ :6W*DN]'?ZTL/I3 =R30
PH^G@&V436)U"^T9F8^<A/!MP(?N4L+MJJMAAR*?$?9GP+?+DN$,>H@=8:E7>5PQ@
PYI&#:PBK;J+\N)E,-)*8="!PJOCPU=P6#6< D*W>%L<& EKS67SRL1]9LEZ49&%7
PIDR14UL0GKVO$+"%[K6*7DU&HI_'2I=.>IV<K"(T[EM+TOZ_!VEQP28];.,N)H#T
P0'C,D,;F,X*^6UX$Q3#)?I+%U+#6+;SVBK!47$HWGY0MB$L'UF'2"&>]11VF[*R'
PV^ )6DZ4XSMSQK K@'Z#@'XM!H=$93-GZ>6:?E&]7B8A$TP*Z",*1'$K@8S5 ;O#
P9US5]3?$F#4&LQ%JC<>!*^_='6&T*_F2HXM+ZEO%21."%8\YY,&8[OC9['76R8P%
PWVF(#1+VYJZ,F.[9(3]?("]KAP.J?G\!X/S'AMED]R.ENP/RHIDK$^=T^1OO6R6I
P,$6AQ".K%1\'D#!L+%M4/\B@@!.>_D'JO[+E _"J7!,T=8RLC>&-K^&^)4@<ZP\2
PB#C-KC2-H3L#BF1/4W6M2$VF)*^A5<T6QCV>B)"U ].:FPA$SAI&,>:*'C>8\T=6
PEI'.D0])@0:TZD7@:V1&\K4EOI.AGG$OP=.7FP_6(\6<D3$4;?.V34L.(9Q,.OG8
P@27?_!'H D+\Q1Z7ZF47.&:_Q,QHT3NUSXI]UP>).PBJ,"DV:,L!!FNSS?I:-;YN
PD?9_LMCH;CK/9NEW?^B_G9"!%)/ 3L)03<)8"^$*]R0&ZN[J&>C[Q#0B2L,9IW4+
P2H@ DTY7V)B[1YX%/L!J&L6&EJC=NZ*]Q8.SI]YYB13_&M22J.?6.31\0]2TYSYQ
P0W)J'IFS,RR!IE6X\?V(%Z4M)\7T&_8(JB*5^%6Q!]5%[J>TW$EWJ7H!3[VK#+.'
PXP\M\)Q-U<1MJS"V+Z&\K,*T$=9!B1+C&?\'SX2A#7>.:I4%H]@= )1@F[S1H[H'
P,40SS_6%'@] '2)3Z$0D8<]1"PH!RYP#19V>> G3 UA _J:."3TQ8?Z]/B@<,O/K
P!; B0E!PA[IIMJ*7KC(2\9G<H>V6:?M?A6QN#?PCDD-)J\\ 5W6K+& :&D'=$0,N
P$S1#^P2"6O-%-LZXTM7T8S+?L)+!+9Q:CX C,$%;Q&_E*7$KJG.V1M25-S]<E\1:
P'C,1@@PY5,)'OAA#X;"QKDG59:7*6X[1/Z"&[V I.JXUYGX.K"PIMC,$SCE"R2L!
P+S2@"NJR=WF5WS7Q\#V.[R<G-Y17K*>E9%B&$90WVC )2TLPC7%7WTIU!/CQ-4!D
PG58?*Z",V>2Y7C!W+#)CNIL6KZS%=?Y>.!TDG$VR0>;_2)NU>3YL6*&OVC_<-H3X
P7M3+>5"BLKW(;%]G"\0)PS4!L5B<D/RI[6TO=!>>)+:#J%B[58EP\@X<0+7C$LBX
PLI%7'&Q8411U'^\RZ.%?9X@8]WR=R#<5&,-AEG\HAJ)N8(XC)/JR[*B6#4)^P^V[
P:FWXO"=8#A=M0D!)Y)DT1;DL(#/P&I\'I8 Z7 UX6L7Z$4^^LS?K,H"39Z2T'M6I
P\.T,WK+@L4.I[DVM12T_0-3IJ^+3(IS/&'9,%CD;7-L7R!J&^3VWK)&QGKV<*&P[
P%<NXC:<D<RZG8F+@<H_H)CST.83.#POW%XQ<05$;PL,9?;VAL+O5D_3#M3=GJ?+?
P ZUJ'T6TYYD:X;/A'50QA5IXR&$(]X2AN-\A-%<[+N-;'15Q+?@SJC .W/?<"P %
PBODF"=!F]1SJ-IUZ!IOO)<1OPK,N^&?1C09\.-#R0OTAT@D9/_+B7 ;QYGU1(H^V
PK";+23HDKOG<NLZF.^_F[*9@G1IZ%V):K?$WZHN<"T5HP+IF1FVZ3&:(9X[[ #B$
PZ4KOF^&I&/V>UIYYIB=73=L(C='N,)HNO-FM&:9( +WE3T)Q/<Z0YE@R)1>&M&><
P3+2O+)%*JNF$ J(>O,HN?+WPS]PN3!X>AIP <*['FSVFL:P&GI3 M'IQ#153%->D
PP K) <!D/Y1U#CLR+E>HIH,>[,#ZGYY/%\%>X)+H9L)=90R%UQ2@,Z<;]0["0Q2H
PVTF_EGU;,#<#A97F.G*KX\!)V'M,GOC3Y&"Y)!"'9\1S;]I2HO2IP,.^IPSDUI$O
PP]P?_N.-F&3)?WXA9?@T^X8>Z%AT_Y!PV-VG8G+$CBM,4=%F0DK";5 @%O;6D3.X
PST".R@0ZN_2J4D\@DJ*6I/K\UJV%0WZ'F8K$S%6),?3N[BUH/0QQ/'%ZBU#[R!;_
PE5K[ZR:O4SCX&BF\V"TH?[>6WLH9#9QV<U]1<\T$ER:0+D7V&!%U2KRSXTG4A,!%
P-;S(N#A.3Z.F@ZM<,*]=G&SW/M.=LQ%,V@X@=6_+D@(JTNYY(FK!KM%?DDMUDZL*
PJAODX.[%;6\'>ZK6=1V5/?9U>Y] \]3'&P@>#*V'> XGK_L*%E18W^S/]K>N./<)
P$"4[ 3@TA-^*-7B> CF^*L<BN4I(C0L7),#WNPBKW@?3!SY0V+Q3<U7CRBM?5OVW
P\+QU.0,&/ =<CS91LQ=.<5!I45L8(5PW "(E#"!*@&TO216$XDF6F9]Y-@6.*Q'[
P6:HCKW-6\X=U9)AG861@_?J3)81F$A)C>]!#-3YB5/ A)$['$#QVN4Q]X3<@[4 O
P5W]&XLQ!L-X>:![>P<M].#"B9HU@*UZ/C->_DT*: L^O1.V-Z-.R.B5+^;B]PQ^:
P9Y.^*AR7BAWE<%#QSKUFDH90>&)A#=G*;V%<#\>RSPYH/F9[^?R0NB@24:P=D4G0
P;WQPE5_Y]6&?:<.AS:@#-G5 S4D)A-FAKS>+N.X4D*@+$#V0'<@%$4Q0!%/!EQ2H
P=I@$;$FI0FL$2#RJV6W%G6F7UGQEC#<,0,Q"8:TH<V]MXXL7YZV;5 0AKX C!'D-
PH4-/#W7BM6"GO\@ZF&!:UD0<[G#KG+,<H+80Z,HH/#6*9K8LM22E0-0RH#UP#]!7
P1<*#97.+W?6MJW[(#)['(@Z?76</HF=OR8RR0=*PV<11#W3UODCR6J0": [Y8#N<
PQ^(K)W3 ?FP.2OKS/2J>9,X?&ZZD&^.^P+D^]QF^>C"I' \M5EMBE2U$/"_\^>:=
PMK: GVH.C+%,=IG5Y(.P>C\T""\OZSAP G!8G<>\#--T/WG%_E@VW_DRO^FE*M;L
P&^3UL_K0,VB@_U.W*0@% -Y#LV&'U1[B\3J6>N],XDCB8KZ)DIL11<S*'-O"*@/>
PXJ+%?0]/;6>XNEQE-Z5,\+L)8*_LT4?A)2L#\?((//E^.L05YWOS\Z#\.DLINH"M
PW4FM"H9W$^T<T&[T$HCG"]A*>#L9/4M;NRNE2+ &]LA:PB /@=P!00IY5YG.?YCK
P2W<<M<]D#392]  ^.SMU-!X^VD+P=8R*YTSTYJQ^?(KBT5+E^HPH0</V*@HW4#P!
PQ=0)-2GNF850(>1!9HW'O2[E?(H(1^P;@2D($@9@E/?2\TUR/G?4$FP^8X*GL1\U
P<6,65]/X=#Q0<T')'_4'+"R\J57TA9\M!81K&Q"=ZTL.1@V;L6S?J2U:2BJ1S_:W
PL@*&EIU6&?Y^H!2EJ=\KG_K.OD<U3K_>N.$"R'+*]9"S\B*/R?K,LCF:J#>Q)*.H
P-$$<#8M95/DLMS.Z@!GPTS2W!4VO TUND"_U>"^?F96_&83ZA-IT9!\MB=[C#UU3
PP%=^6%A,,E>7EW@BWF,O#R3-2+!%U6D'3S'#X_*FMZC@QF838/604)"&=#X7"'/K
P$H"XK9TO"F#C&KS@&Y\%!W_YGCY+95K5,VS=JWG=>"-A[;1T<YT(4 Y:D?_"_=NN
P4Z>*?,:AZ;HTAG[E>58LQT7J\_U,3I5TBC$;6DV#VELF*)<QE2MMZ4F&^*<DF5<D
PBXTB_$G#?<PA-;Z/?%R>1&ON+6/:#T-V5>?>L+ Z-I2\1;WKY^,4U/O7!W% PR70
PYW07*D:0S\" ,A6HK.$'1L JL8_X;6&%2Y"3Y>""N[.(W1@X/*BB&AYK!OV,^,AF
PB*LV9WA'^0;L@Z0X)X&9,#>.'/44WH+@I>FVJGK:W[C_PS@U=IHNHETDR83?<FOA
PY@ZP"5XA&^'^\VUJ1UW9A"#Z>Z0VLN(#4(-\^*VG5W\<^I%]HMD<<3J^./==FZL)
PJC()9*<0(07>'FZ-T415DWY(18U1$/.M&ASB7U@](-A1JR$L=3!9&N&HHT:: RKM
P"&P$:7 2-(&@.]>2]8I.O+EGVIQS1?M;-DA.>TB['J:GYQ'LI.W(F:)S#'+&=KWS
P_9L+)' 7P,NAE@;R&")=H]SKMAM!NLU!2:]:"%*M#L8#]Z0/SQ6DK'KEKV=6.@7=
P/8=--&'XR[?99AV^KU- W]W/RTJ/J!G]%L&O0+': _ L7*04Q]<N[1=Y_(ZSGO;$
PUD:VY)F@S=1-#M917V1$H!"*V&X%,%D<C ,>M:=186Q,Q#O)&%MKJPT<R!#R.UXL
P[&M22>I>_"0$=='8WM,-;X=XK5X0YIDQ1>C?0766N?CB'V\\ 5Y[&6 KJ&2D( ?&
P:%R3"#_BQ1,"KCH.#OK#L4,X6>4Z_.5&]VE^[9:D"2D\B%YP/J.CQ8JVPWK)^0W"
P$#FH=DP'4;=E4R1?:?_$'W95/+M2\OD9]44!ZF2JJK%YL-TK[<-W1M#Y@$+A;DTL
PDM"-)OX105&'>$N7+=EWYA\*Z/B;XK7J-RH?/+2>SA)BEGG3!K<I'=RMU5+B3HK9
P28GK .!-NDVC%V.(1B<B1.HHP7TF,K>&K0AMFB-JDL$';S:AND$UO(%2+Q@C8"?Q
P#TI'$N'9M=P>)FB_!2>5AX!W@MG[@ZP[ 5GGHP(0RH76#A6=4SC#%5KNKZEHE8J3
P74V36J#^IDE PV_F.7@OCAJ-L:=K^R#K'IID9WE*L?C)U&3D)7*KJEM__=/&L OO
P\1Z$CM::8<<14H?U$AJJKFV-H0ZW'"G<H ^(\8+4C_\!1[X:\<$"6]-;FI3P>IJ#
P-.>[]=030_DHBRR2G20W?/^(HRR$OD>=%)0B9]O?11(G/[AT/A!RWF -L8Z%K!LX
P!$&\T@LA[1H>90#4]D=Z$M\B!\$[;"?)Q0Q6O.OK&U8M^#4\4/PW6.9934<W]S2-
P3EW G3=ZI124"L]*IU*'DGF?#52#YQ/!>^LN&.KQDT5?SB>Q#PH'TY.S7#H+5&PG
P5DQ74\5O=S!OA6D"^D?NW(Y7X/]-QY8%Y7OFS8O?QW8^$;D]4&A1Q $I/@BV^P[:
P+Y*R-;,43I2TU5]/ZT'YL'$.#&8DFO<#/%BHX0)9SZ(\NP:I#\_!0?;<OV8 &3"!
P6\9E%,L8H U:"HDZHXFQ%))]_,Y+'?XH51/*58\<[,CSH3C3P+[.#%#/ 3<?$ _F
PEC4C .5!/9R7W&A+_,?ZA-<:FQH D:K/?I4_@L(WTH)_(U/92[H7*]+1?'JYM-L_
PHT9)L)C2-JAV7;;7%CGE_<)X?(2L;%?9*RW5;BS^GV^4\7695>*A$4T\&(I05VE[
P=+#=?>AH?"VDI3;!PLK$_<@[!('MII(H;$JEA.5[[/R#48ESXT3ZQ:.)']_UN4!@
P32UZI5)+W&A+>[J6)2@KNXF#)?OZ2+ W-<6=M(_<H*8K@_([#L4OKG5'6@.VFI=8
P=J/>&C+LBL1UY%8;0ON.U:=CQ^%I\;QL8EF@-@O\$J33\!5=O"_9 +0<I )B!8F#
P*SPV:O.)MGZ7X*6S^Z "=CR \<@E3?/K%\HL>\0>Q6K[0^CY-L)?DW2\O4%[:, M
P5\YH>CYUFW/Z.\01HQ!.X"%9E__@FM:BB4AE+NB;798ZH\LI<!!IZ;T;3'6Q=/S0
P-^WS2VD/\*IBBR,W-D'>BD4_(1W;['/M5F2$;3]>L"'DY2@;4LTDPI#F_*DE_B/1
P9J$#2;=) F\J(.?*F)/[R/MJQ)#QA7./PQJV'[Q(%T4<]K-ZZO8-%=S^N_ 82K)D
PG'\3VZD [6E=*##MS5T;6J\+&V^\:=;/"X&<;=" B I%5<.#"3J&EFCU1_D8B=;U
P^M[!$":@*$:RS$..ABNG._"U%N)E"%%70^#XG?9VRX5VU/@ ^QHG8C3AQ [0?YOF
P=:H<&\TR6XCM2E5U!7P$:'\%,&D[Y@NV5B()71;V;ZG63#KB3?C>(T;':!DM>(M"
PGS)MGC<AG\&7Z<8L_\Q[0FRV)2?;+:*^+^86YS8++C[:$0('6W>W*7\^7XN@.8:X
PB.=$V0<]1P!:Q&:+?[AEGM8O3[H_% "1\O2KDD-])A"H.#7[> S*AS;_R3A$M\?%
P813;(^WT$$!RO:0+W2G@K02V*!8:TFNF=3QO,CVR0D99* N_C/RINHF%%3TXJBNE
P;UB97W[^):L,TU# -C<&<^]3;9L ZP^B022L'A3SN88F=;5>Q#F841*D1NU$\Y7U
PM1SR%XA79\%F15.W%<YW\<AA 6N\!K],#638E3V'XD)E<D"A(U8>AQB5PQM86G:*
PY:&GJ692! >G,@I')6:?/@ ?;,JC 6/*0>J;\!MO&:N.*C5,1_NQ'/%J$S,=N(,C
PF#RZR?3W'AUZYJ*;1Y#I5)U;Q9=:U.#\/E!\;(>$Q84FC$MMU;Z?D?;KWM4@#7%*
P9'IJ7/F3J=;B [XQ>(;'Z_13/().*RDZ5JH[;H:-M]G2/H5DYBI1@N/GYS.;V<]#
P$WSN#1I"7^L@D$'16;(4OM?_<?-6KQ;>QZFBSHVQ(!T;^'$/(%,(/A@?>^M=D7S 
P? .##6B<J8R$.+"/#:(/?TXX("A9W$<BH/3))60]NU@5PNR10/MC!"9WO2JC5!VT
PDSR!%Z#T)B9T<$@(^"$U*8-*A3I+FJC3G^),/:S/P5\+@0<]5(-;/=-#6N ]!4SX
PO_\X[ F!H5=[U2I);\J'9;^#ENF7?3%LM[L*8K#!XC,UF^DTL[>-TQ/^Q>/4LV.A
P[V @%:*XUSX)0IXC;CGD%#=0ANL>3<9-/91;26Z)YX^09!"*HZM.0;NT$>-"VD1<
PB7ZQD#FD@%9SD'#,N&78/HLW\.SXP0[U(&ZA)#PT-BYLYR07VPL?RS&!*_'[-]UQ
PV6W<^D+_&*U33B8YDGTU>E1LOWQ#6'GIJ5;9%O"V^>Y*3_V[] D8#>TOK+)U:<6Q
PAC4-"1.R*#%'+<^89J"CW\#'X!O#J&:O;%L7WF$DBI=JM!<]CHJ18+(>P)F ;)'K
P65XE#TP/+J3D5YUYB&%>1M<G&@[$<F5OX"$MXRE6+%2(\D*E5S'5F%^.#L<*XZ/+
P-,%#OCMGGO=-B!U']KH?5#=Q449JC1%O I;#3RK%'-ZHD9WU_= FB>-,AD*C5P*I
PBG,],2DPC9E$V)?$"N>E-) H;U?U+@B;8ZB9!?=_0(_6D]#GB4 65\])XN[SZ4&J
P,@?5_<O)%G]%]%A[#A((Z2,A!-P2?SSX&GW(9:XAS.!+<9K-8HH;9@B@> /-W%@W
P/KJ#CCI0C;9L_C*#+]H-+V;0C;U"7]Y@4\DLH "6TZAD)/1S([H"H/6D\U;%DYCF
P4S,[H.R4C%Z+44=;X2OKJ?2^)G2$J'8R<D+1=^69PY=/7I[@X*K'+?C&$%S8%0Q]
P?Q&<^'J/+^D0X$>&63 UT[@XK[/6%<K$UGE?E39Z<]YTNF)+5BQ9HBV"VE\>N43<
PK8 \:TQ!J #&+FB68%+,Z8E*Q[OZ6T=%4CA>!/G]')A8R[MO4)T&BE*0(H:D#FED
PK3O^QG?U@;I5AO<!HF6^(Q5]V'+;4DLI-*A1%6#/2;D:!-"7;$;=.8Z-^KRHI7C.
PKYZ'5ERT<M;DK)A[W6>Q(**1,$ 8';RM'6@J@+K3>>\#TPPB^5;W5;FWF1,FU0(G
P4!*DPD<N)^I,V/+$0\LLPH;_"P$(E?08<4((@9L' A=\4*[JA *7M5]1",C191XR
P/!I2=U+UYA"V"XU/8P&)Z/];"OWS]TED CA$!](%&OE()O80TOBEM%CA$0Z9ZNB 
P>#/Z(!80:BR#[:N+#E@@\*4-H>RXC3!"D;3X\,,ZY"8-N979:]BCI2V2CJ13!V+'
PNP. /H?,[[T]"S*GD]P#*LU@%/YT%HD=GK:""Y""Q!A[V2]P0(F&;T1S!:+NI[##
PVU:*_=QC1JN;'3D$3V6^JECY5SRUOQ/&+W*!L\TMVB=S(A01=WF'A'GPAT&#DV!\
PFO;%%9+X>/@J6SW.FR:L_]?).Y&)SFVS^H3^>D4,C@Y0.^_[ATZ0NIPC%R9X@#(L
P>./VP,M!3]MW_X>8\*+%+__(^]#>YNW<4Y7LW/1GSZO/=8,[/1ET$MZM.HTCY,?U
PP#$:\#-# .I%=RJR$DT^-A0>&T%CZ3$2Q\C4U35+?295() @14%/+#B#=F:\8H%*
PI)PW_W#I&P/5F&2.U8&>@7?U'%@S=*6LC_Y]!/Z"+CV:)#57NFK#]U$,I_1QL@DQ
P_*M'%HQABNBFY"B$?REPRW(S,8F\6MCR?@S[KQ$T1PMS.X6W(9<F&26 )KG[,0MK
P#"U;/%SEFB-Q%!NLT*5/LMLL'IGLC@OO &*K_*,,M LDW:WEE08-31R&J HPCLP"
P=UF937?#8D=>\1 G4I6%>4XFC;_UA#6CW WDJ7"5(BD\ G6\VD-/F]527V!"XA5S
P%JGQ]F 68@=YSZ6=+C_<ZVZ[7<CV7D$M.1<KBUB[+H7L2E>$1,AQQK;?Q,&>/Z"!
P+G/CX:XWK+W8O:!V-J:.=2QIA$;B 1'^RZ[SP2DV6'3-3=_JS%S:TK,,\*>@@W)[
PHC$/[Z !PDZ5&G>.2QP8^T[QC*" @-^)6\:_SFN<G2B(D<I_9B1Z"/DUVMD!*LNL
PJ%;5N-J2Z,N%1W,$H'13E3.(U9? CP9GUCD01-A5C[IW#M/W\XYIDEAZR=U)Z]@Q
P%I=/:Y]%X[WET_:OSL5\H;D(;K4U8,(63@CT+NWE>.8##+YK2_AOZTZ1+Y)C2GP,
PQ?KEFF7<U8MEL'E)%FKJ4(L8/ ?9VQ;8TYF%/H!(NL6%S?,=8VI7B?H&$DH\[/'O
PA2=H>:&7%4\=)GPL"%CXX.Y<0GN8&K?2W>Y)U([B <S<(3$B.A.<H:Y7#PBQO]NJ
PE-1[06%0.>4(T256W[TAG1,TR3#2XF@)=^UV^+R/>H,11>TQ\P.XM8;  QL"'!IM
P=Y'KT#0I&'RX/*L\CBB>L 5* 1G]/.U\;.M#Q-SM0RG)J )\@_D8^J=-5"/F4RY"
PBO9^4'#2R"-YD3C21>7?FNOS+3HK5WA?!-^<S^?=]_/%B:I_!.Z3VY?PU'-:0W1#
P+Y?Z;KI3C,CPO1FF7DS;28Y<.7#;U,><U@:J-/N*<^Y#:]46C:YRAG1MKLIE2NY:
PG+##X]_]7";!C')"S4:>+RTYNIR6I1[C^+;KVD3@W1VQC;9%/_"67VR8FN"/6XK*
P5Z6:%*@K*H^SIGY&(ACMMNAC<D\-"[!'/+),#!49B^*K-#3?\AZAUGN=N&DI5.1*
P!MRJN-C<*6[?W%MVA)+%M'YE8\_KF:B1&#!;QY;;.:*A_>PU9< EM!.>$5%]OX;V
P?,1X21UYIY3O@V1>26;NO(9(/F.V&E('.<66=C*(=)S?N:1,P]COOE"$ :4>L(PQ
PW-7:A'DBG"]ZTUT+'5\-T0_;HHT?/IR=GM(P/ZK2:1]S8PM)[3QI,N^D!YQ <.M9
P:(?20E.%+(+9_7(JC"NCD%O-4+5$%AKTK_13H%WA /J)= RO03 .J9]3OP^3<1V9
P82&CK#'J!AQ\KQ&M2'LA;O='QIE!"#E&VT947TLM"$UM^MF+WE1_I64)WN;2.QW/
PODHRMJ]@0W5I>%U,7%=B[6@MF@ZY-HI^4T]5V^D8#5A<4 $>'_+#GN!;P@G#V^ T
P\W%X@IT=IH&2SD]<3HA7@A,G@;(D4Y*RE0QS=6>;JIKZM2'H5NEZPU;SCHS*Z ;=
P0@S<JB,X0D,4 T,\!OR-AC\.?T,+Y+Y_+!:X-7L-D2L&M^?-\.7P4GZ>;<8 X<OD
PKIIZHEP2D2AWZ=,!ORI_[)X9U>WV:X_+N,;(?85,77*.G[RX\)G+FF,^,Y&S2,:O
PKZO+1VZ[K!4#Q7?7WIG_[/$3:[-ZN"UFH!Y-K-!"T-+> ]B'\33C,R#N28P\Y,O^
PC657"HXV2XK4@TQ/\1(ATP9#^:6]:VDCD1%/3V0QD@6.P^4@T1:$MU-AVPH=GP61
PS0" 7F^>@$+B+&P_:C6NYMB2M2LL:GJ$10GM\4+2"(I/2SG4U13 Q:90-\*D5, M
P4YB9NN=/&Q!0;468KR7#2B3#V\2M)6'[K<DH:T#OI(\30FPY4X=4V@C;H?E-6-%(
PGRI2#!#<WS#R2K2UO<:!DQ5;8?;>#RM"C>.A-?"/SLY6$+SJ'^5-%1HT>+E4/H6<
P@ 7W]0X)&GY!ER>*_LCKCUP7R3=WU9P]NMT Y0H$_UD?,VDZ4LJN$5%>V@X-*3)!
PO6' 9(M8CF\;7R[4OXD.?E2')*[]W6:(3RA5&H3!#C9;)\W'XQE@N>:P<:VC,%VE
P4XK6E]HM"M\8UY0.K^2>.<'^1K. -1+[^5;?)L3;KS@&EP80%NSTE<'HJ2C>K__B
P935';<PF=F+S\]#)YTL])5_SOS&>WL"$:UP9/Q)9N1/[IL.?0;:6E\59<CN']:)0
P6Y7_^D<!3&%<]93P#]\X6TF BW[UD+#?I\V(%=.VTZTDEZ6J5?H%!B!WQ<DQNXU2
PW2)YW/'/\:-&9>T H<,G&$*X@/&)UFA?,TX]O''S<-4HJ<1D#SSK-Q9">JFJ]TRG
P>P-%RQ26^DB-O2Y&VAF,E#+^\0RM*4!P#H,RC$(GC\0J"6"XBN?/: &N_94==B/L
P"G1X>(0RI-Q %71L#44%(541![+<S]3QAC]XV0RN!L0=/:VHWG\IN2#13=3V -R7
PS9Z>UOM<X6SP35TI">V!B8^\XBAU%JGSSZ,*058$M'W.M4%ZIE5:>UIMSQ1; <*>
PV7O^^F&W>T5S!BO=2TO$0UXQ%K5@>(#SD&S\.*<O&Y-Z]-77N('!LVC"(/H\=36)
PCAA9S8X,?93:K'T9SYR>MZC!"N-!_2!DTMD*8JOV&@X=!LK%;WS;&'VQ36?E2I!E
P7(_5PDI\A:-,O-_O6E>YRZ]N#1:LO<\D[^(N"0IX7&/J0 STAC>(AT\&3.H1K#\4
P+DUW2J?5$^/*N5$U5YZ OB[Z*^D/?!IA2G 2JOTB 0G7#$R;)&-E3_1,%I^>C[*E
P7IK+$XM2?]D([880': (I***^X&6_QA8,JIN5 +2)8WR,93A-.L2".QAFM=[+Y9P
P"_(L)N3O%ZJOVL#T][3Y&U_85&[%XXZ(VW)%],Z?"A=NM[2,HPFE%<WND[UN':55
P6*<23#VK/Q>2)V-C1^6^KA>S0ES0K3!5F'X)2B\5)9T*QW-!/UB%&"./:[" W0@E
P+VOS(=6&6? %3!M09I<3'1@?Z)AGTV$Q0D,Z@QQVP!5%.,#P!.)G;)7<;#R4G =#
P><LQS>2&1@50A^S)^F7!FE\7>Z"CZ<?'YT)PC)K,7/DJ*5EUCM1?AA+ 7^OY,T@1
PDC)\6GK!D';RW4(*TD!A54N57GJT.CHU]TWPY7:$#G^9GBF-0*6+'!5 ART=#Q(*
P@I^<68!K62U1%1 =<= Y-UE.FYU2^U@BZXYUA/_;-BZ!.\*[Q'O.^ '2Z(_Q,W+%
P+H#,5'MIEC<O,1SX=B^?"^7)]&3@?X10[1((OQ206N7:]SO$7S"EIAI9N"(%ZF.E
PMF<$BU2[KPB SJ2VF..HHVKWP$7G*H;0,+7Q@7"! M]I[ WGU"W,S.]")MN>KMQ&
PW\=5HK''A: +ZJU2&K</Z6&@0'+84_,9=K1*_3O!<W[CY'AYD>R/2']?'+ZIB2?T
P_:&V#<LT+"8(L])5Z?;4(MJLN@7LP&S-V])[93@GEEMK7J->P!\K^K++Z%%@LO'(
P3^L.B,;3@>/8QF76H5]A:66)(K,2ET-FYC^]=K\%FNC'^M7]?%OGY$<$HB24%G@4
PT#[-[+(I.L_M%$/'D/)!U(#!6==R-GBXN5')\L25YTW?=>'_XE'V:^Q\I/F^+%&"
PQ$+L$-L)4!96K+*!R+9.1LJ@/LD8GZE2OAQ5?T:<MKUQ$/8OH"(L?5WP1 MZ0Z)N
P)$?P'<U2 PVB<:VYL[11L^9X\G?65, VVF'2><!EF<0K42_Z-I%OQ^^SS-D-5S(,
PX+F<:M+/I)AWU%3%0>JPIL"(Y,7 1F*R^*WFK*=^JS]KI+M[':?(,ZKP^>ILX!;(
PR^&N)747?U=M-!XPCH4#N+ALI@3=U][$9N@,\N:UG[)DD12JS!ADKZX/P&^$EN<,
PEJ)7<F=TH4VLW.:F2?^7K/?26L\\"!?<)$$IG;!8HJT[PN&NO\XU!59M!T)2T%JY
P=%Z3!0+^\H0M=I"<3RND/B>>'F':-9-?&)^#TQ:-VU7C-.XD_T9D.)6@Q\..MBGB
PG&WS+6I"COK%R^@BQ<J>Q5T>)GCI=E5]'H<N7O7/5XZ=J[_2A])DJ <!# ;V6H4Y
P W)7P;OD+O*[>$Z4,TU7_C-._?Z#<XV7LF/4,T!_6*BV:@ O;L,1T1?R\"KRR'\6
P[B<C:<@K+1++&0. Z3;J>8W+R&^!K1Z *HW$O.80H1#8N%.32CNI"D-X4]%7JE=G
P&LTQB&=TWK$65;SKY\)7E(N:Z>D2L+T^(F41J65M1/$W -&*L2&I8M6NCHK?!J%1
PPQV(6OL.#%3U#%9UDV:9Q<0WW>V?"-R8Z=W;JT$+FH7"1U0!GUDP.'YM*@V/CQC1
P=L0MLP*AH_AEE)@?B; CX1C-9DBS-5\IE I0*W.>1KJJOIZ7CE*,%L#HL!7+C)9Y
PXV2GN RU;$&P%5"*''PI_K^QZ1)_@H@]:L+Y^W3CI4IEC76/6'C$@DNI>V4T6I_Z
P""(-]'OC<YH0+]_<#M_]W$ 2?S6?,!"YHG?%>,RFLH8>K6O3-<34>2$S-%#=]7*0
P5N,#B"Y'K?\@89ZK98/PG.NC8#5DN.HW-.F)9%L$B5=C?29U7*?@NQP&"LD0I #=
P:ED8*']R,<\TCA(/C]-3#F*B[8\C8S0-&,N3B6_/7+=HMX1S#O12YT8/+%UQ'Q_(
P@DO.LI*I)^5:N!!Y*V20E_H#@*^/,!63FH!M4XI&D*S54+*TS^,>)Q(-E A+?6<"
P]+R47\U8/&GI:N*07*7'B2@28\R!B:/P9<E(R ]M(VD-758A>4[]Y]GW@V"A9V6S
P>)Y?0V "[(E57!&_$WF=&?Q.</=ZSBLF>OI;)7&U5:>?-A0;24"^LT9Z#\34&)>-
P!C^U3B^+I(*1T?K:G]" \/R<LHM'S[7W=TV@F3*5\M@#K'_A3P@>*_X/:I$%S-ES
P]B'2]/A6S<?1__LCK!YTZ'L1G2!NRDPNDC:_BW$J1=6K!VA#=0\L>-%P>]L!1BOO
P,;B3E>>2J6C)?YAZ%"[O)M_Q([L_A]U*4V.Q$4<"Q?'+95D"\/Q\)K-[DLP^,[J_
P76I?.>>"6M;U=!4[SX0R@U>!1FJ>+?6ZK&>K(!0\<#P49HAZ)<QSQ:U .1>?(:(.
PU42'GW *T$;$S1QSZ5ZQV=;D?!"1_KD@YGDU<?-7H0]MGU79X#[2N.9L$/:UXPQ3
P^*GR.D\G@=Z490'::O-T\_IE#JEV1\M_\((C_+7\RE))53N;YLI]0B=R_UP"-G>]
PD&WQR96@]YE71-;T$MKSG%SW@_B0"Z)TZMV.@'%D3G#N(:^"G)%?S;^?N/BP0[19
P5 YKA(87I$&/H7EG4>4\/&:<.N=LLC!,<]M"#U?]PN<>Y+]UP&BH? ].-]28LA (
P&_)-T)-IF4RJ]0QD-IR,LF</KF03LI-PK%W'N$MD[\:+N0,!#39=OQX"S@_5*/S_
PC2GW=HK:V=.#HYCCEP%5>9U71/%RJ2MJU\IY^,^;[ =E[#N5_,%J5BM^HO)XPGZ4
PN:;OT%8O@/O0=9KL#\J1,,:#YQ_02MW]0!>' :Y^8\84L!?T#!?QP5:8Q]X?/'3@
PH+EFY_$AK;PG@9*">?V+NF\0,R-EW/]@?U4=E36>I>)13 /Y$>W440L5*4R&RM?"
P+ <])E?&B&')JAZ%_#RO9S# 9\4"UA^@P3H6T:7NXE+<TQ;? ZW&X)R SRWU+@L6
PH\H)@YO#:37TN(:S_A-8UC90^-]%A<%>^]=#8UV^=ON-P8\2K4/UV$?LXKWD%JX$
P?IDL#S%??SC B@9KNCYQ$Y^>[ O7&*\031T^H)L3@9W\MX[)>W;4JZG/@DE$7\G=
PH3\5LUFTP??<X\O9NA/GYMVN<K+(&+K,3CK\+E_-QE_9 T6U5*3,,GVJ8'YBDY^;
P7!N'21$ J25M"VFZT<QD%%YFZK:V(A,SI]3)OWGR:!8*P1V(QF=>!* 3PPQBS^1X
P?)$LJ1XI*^W\3V'&4CI";ID/J'UII-29<4,WF<N3!Z)W0><5L)19Z(!">QF*(@-R
PA<"^0EIX>^2F;)>5=&+,9V&LMBCI#X7SGEL@5<QY8$4%Q<)(I!=02V>A>[LNX=\8
PI$\/P^L]C6, LNJ5'D*1,N%5@0()9.>I1#VCLE2&-=%4DK'P&_+^DJS!CS;)[@=;
PX&\SZ(FSI16/+"_ M/,A RBCLF=O)09KM(IW.1!C,V"Z]H/_;@(G"S$W3CZVVYN+
P*:>_LZX0IN-_<0IRCB3J2'W<)R.[^P'7'^CNWS(M2>S=@73E:FXX((N>+)(J>@$8
P.HA!Y7@,2)MM*_J_\KHK(ITBWA4R?]CE=_\'7O4[*W*?H4+:6^\CO4P[]N)52*O!
P7L>CNL6X<8P+!5=,E<PVOR._@B25=^K!J+N$IFR-TZ<4*UKS']/O8[7^@I3>X%9%
P;)(QP6C\ 4V7G#WU[\I2XYRI.,A;:3I<4HKNW#;";2[$"]]6G=ETC\W'\;?*X['D
PSM.T=AH(+69C1JT&(K:6(8/I\^N1%>MM9+,#<;P@IQL6ONM3+E1Y2F7R"F*'M3VM
P.I<CG1@.^50! ?M;^ 5)2VJS+Q(3J/W&:#695Q]]I,+MQ?\M2<8?>*./ZKQ(*T +
P@=V6RR4PO6MZIBY_NK[V[,]4#I^P5:(9B,A-9UPO:H33^Q\Z2F,9N3J9\?03EVZO
P4:J*[1^_TW= EAV,_I6,U(0=AKC\H2)6_W!(+.,';]ZB3_*FY:RD1&JU:/U>)1/@
P/EPT48"$$QH2P1X@CC[7W6/F7\( 0T4P U<(II=OBK6=TT"*0:ST T-9H]4HOXNO
P:_)NC8>NNO9"#QS1OQ=<J<5)U(C/2Y2_#/9W*?0ZWK8YG%X*%(#PQWN)E[.;[%P,
PV\:5B&C"90.OWBT8:A"=!H@!1]R"V>\P@-<Y,JP$:6;S!;;_F(7(DWT\6-3Q5U@&
P'.\J1]2/= V-O11P%T5SPU%N(H/)Y_2'6SFIB,76I&?G2D2<_RTQ:O7&\WQ?M39/
PL==9&*7LEW3=9ZSN.,]41B3V MCBRI=.NXYTK"</<0BP61SBSW1D!8F@[U+<?1%I
PK7<QOMP3[?^F?^"M@ETB@0"S>>OY[#T^-\/H#\N6YUG.N7+0GHKS4W'2A_".KB78
P)M$!BGOC *HJ#BA=:TWVL-\@P!/T7F7=<E1\H8%%=6\?JPVGU2(WPNJTEF-X?I0Y
P9[]> 4LT:([9#T6E=9\=J#'+GR+;X,&1-2$*J&@;JUROPM;/UQSF%11FL@$:^9"F
PD [6$:QY\I-G9]7_8.;U3#WR#J(OOA8J\L+,P)#^#,5XG18EB]?CS(FC5%S.O_SL
PF'1P0:1LHG0V.PL*HFQFWTU%']8S@8(W]H2KA9$L<P4>5NELF+.N\!APN1ZNM#(G
P16Z:4)8L;#J6\KDL[GP&0]46&$BEN(W*?'Y'I0=X\#$&RT(!&4@ >F:NIKWF['ON
PC39L@'J91^R,SM7L<.>ZGUN9#"2]EG@"M:+_-PI"X?DB%KAZU^[XXF$4RU1QLO=0
P$2F#G\H=1DA;M(-V&DM "GK([W&F!7;JN3Y)* ]- G7,4?H:M$I$F-129K-U5;,[
P0?(=^J;PR*AZY+B_["4,G'#@AZ,)6IM8*^X"9$DH'N7&0 6_(6O?X$Q@'4_3.8 =
P! EN>R,!0*[;K)QB6/K5CRCT&Z9[@Q_5]@7X;71A2[LWPID;]5IXFS3+NUFL-O=J
P>X4%^ LT;/X/<O1%V%R0\54J4J,,==(VP4YEE0O7WYH..9['=U/'O &A3^!62OS*
PSH0/#UZ- TVL!V_)1I3F+%<<RD,Y>3%+JL.1/YA/OPO7]4UR"=Z'7NM%$Z\K9F;L
PHA8_S'!XLCW+?()Y/J9?XA9[<;@?:DZ8=S4HE!#-5K*3<@T?Y%GEV/+SQ]+U#L6P
P'OZ1JFQ,[Q8G%WD5PP)N8@*#L85@CJFT<6*$L;_T98KT!Q;=+NHG:BQ_:UE@4.VR
P[5,E659&Z_:SKM_AV1&;^[/@@ QWH\6*4 /X1V G>05"+DX8W*D3#,L/=_TXM('U
P)0*4RM^K[R:"2*SXW2 NI>*$2A63$\E.C.82+HUX--V3-$+#FL=OD>P-V0%'"H(R
P>>^7U^1%,O&40%U0>1GT)CQ 4'=(E.@&?.T0S <BN>*Z;9S\OK7Q#>,V48M9.1HO
P(D%<0.[@D)RQUIVK5"%],-5HY<A$\MELPX"B9B.=R%.(HBUS)]:^:</*K32S'+.7
P'343(-DLIF*F5]LDJ/(4I^0853'&/TVU,<![U.-VV2^;_XR_->(E_9 \UXH>W\1S
PODOB>52N8W<;!S]^(3?#B[U&7W\\ _'*,[M@  .Q98'?8>'J+Q(A[10$&Z&U,./#
P!4)-F$..!O04BR+KJ:<E9J\&RC"/SO6L8-44YCX+U93' ##=6/GCGZ,SL+3,F@M5
PY'.=#M"6?KB,4!A<:1E;=6%:UQ>]Y(S57#?"-86%2/%BSYRY*7KM<!;V4,&5%P^2
P[2^AOG63]2?*GS*4,^>+YF/5RW*)CU=<T2(I=R@*Y2BIJ3,?1[?K/@;)]SPV-=7J
P<]T7$3^-9=FP-N,$ MKY@@TNW9J%(&/5W'HD,3DW*NM&O#NSW72KMJ)IJC]?L,EO
P-BQ(KRW\..\J72["!U2PI>): 91E\MAWZW0E^!\V<]Q[D3YGW;G>7CQ#0GE'$5>U
P3+JZS:RDCEK#C$,W36BWQY[OV3&>IWH[O3-'(')7O4J:(/:5:,A;DH,2.-C&@.(G
PQH2[OZ"]^3FUGJJA!LE2T@=$=)M_/3#X\E*'_(8A8G,4>8K5GB5J=!)*-])5CW0#
PS2*X(?G3P.XX+7'1-7@7*,&$DQ%:;38?A>3@9G_-P W$FOQ^-1.Y1_M)#;V^L_?_
P6M]21SQ)6D$:5\ E(;.E.7SZ%>0MJC ?SHT7?L_LY!D9.$7\@!$7&2Y$P',B\PT#
P9H)H!V3;FP'</O$T]>A1!<VC',:6:39E.S2RY=0O',$;P/$]XYPC;\_+:))<Y_;$
PSN5IK.!XR:0LRJYG, [;A>WQRCE>& _5*NRMC.5"'_]2 X0HDE&G"3X0LTFO*-<^
P-BX(-\%2PV1=)9!&HM8_)5\NX)$,<M'B%'15!MJ Z3B>'Z9M":7H&57(O"'5-,B"
P4 SIXW=20V;]+0I*R.JS/BCELC^:D 0,T"2XQEFIJZEJ,7M;5&(G\?6%,60(JV3#
P6R1$RZ2A*B$.T!58D?0KG*_A/Y+R!^X*W'MCX!^BG$TO';(%([__">/Y< ]G\+Y!
PDTA(HX('R>^'3%%F3+L>%:OD4Z='WS5IGM:U[:9N$-^>P]^<-@UQ_18!C,NKU.ML
P'YP2]U$=3:H@<R#H/9?P_/\_&S12KBO/'!!QP>GTH]_>15=G6%%3%YX1E1/8JOVU
P_XA&/ODJ.8BG&9>,[DV0-T0Y/'9_1"S#YQ4-4G/J:+])X?XZ=',B<IT6(S)>F?ID
PO9'^-;;)&;1'&@7ZOBY7B<[$)X?_#J ^M^(-C7*J;)51MZA:+BD:("?4Y/5AT'YZ
P7(="E#Y.A6ZN7;KYL0MX?60+3DFS]'=PT%XNE;IW6JZZ+6IDZ44\,BI#2*W,2X<B
PVQ6FG$I6F:%W2I#-WS7,)R[KL(!2;8 [#AATED-S8ZM=G;2&."J(I/IM6!<]J>6W
PIC9\),)%BR/0S@/KZV"2SSYC>*&41VZ?]>2\LD[F;CJ&0"U6'(# #F*> AW(+3BA
P\(9YHY(^G5PL'XK">$N@Y<['QLL00]$*K#6S-,\G D?MK_=&@./BRHXQ?&SSH4.Q
P];PEW!=E0'0)_2GV(1[#:$,&28C3AA&U>JD(RU!Y%"F@D4/'4->V1B>:5&SJ"[+Z
P.H=.G YZ;G-%T@H5@M+EW(F TXFO>0&'9PLS !3_H$X<]/0BF?=5HR.(\%@6!\A*
P/Z5A')/(?9$Q^\?7IR^A2[%V5J;4-/6@88Y:(83;TBCA/"F;/E(TKN>$T^VS=M:8
PO0T&+.">&[,C[MSQGVF4\#7BI'*;G6W&DPSU40KC7ZM%?G>"ID#6G):2DL?QIUBR
PR<HE^AYICLM0G6Q1EUI<=(;7%:5HQCF0)=RFZ:OW? ON15%G?,L>M8$]K;_WS6([
P[#Z#1?#7("@UE2CLA^S+6',I^GY-#,Z%.ZS>7UEU+!I5.3(7G:+'I*K^AS?O!P@0
PC6RQEAO<*=&,E<+YUM.WG_;&WCGVH-%:MS1@I\:.OG%J/=K#+BG,[I),&J<34;$3
PQ"3>B%IMFXB;X9M@6B:^8 K_E$H))G@@7^SH#,%WE!3B:V XQ T *YG]A^10I)J\
P)NYQ/[:Q7<V8B$)I$X:2O1!=3RP3.<GP'8SA9J>?7)LW>^ "M)W >N9_5SG278(9
P(F/V<A?%WA0CT#??4_[)># ^,6NOT85?67;YOO3:XR[=6Y'D@,'CVYFK*J98X=6)
P5N0%HV!@;O'Y>K5QI33H'3D(@^K#N !1RG[^@ K$M(P>@CJ5K+7J78]%4V03KWG[
P23-725B@G#S[7+ZZ,7:X*R)*-0Y!=VY]Z[>*=!">\.)]J FD";J2.;FXMPUP&AYK
PS%J%N)E/=8SGJA^K<K\_:C.=;=BKFG'#P00Z_TH ^$XWIIS>J&"N<\HU"!(W[2WR
PJ%+ W[WWB?5P$HO]<$<Y<)%)'1OSBCH5%3_(;@+649J1($5_X+%B'IJ:)H,(24.1
P.T:UB88>E3+?N Q:5S-WE$9'9Z1"*\T;V,^#4:\XQHJ,2BR5M )J2$'%LLEPF,4Y
PH?D>:+[^'V_LZ1<;_!)IJ<BV!UL9/X)V0C_&%2IVC(;0MM'-BBN?T8Z/7D6=(,J!
P@%H];Z6$.C=CQ:&L*>WC\)KE?-RF"K59:D=/O39?42]HH/L^Y5=4B9=<=N(K"HT?
P<E28A:A[ ^8N^.^?OZ L?!6+'%QH('$PX_<;I(:/3!Q[(K=FID6%':1K-JJF6MQ$
P5**.Y7Y30&$X[W.!7*T'N=A8UW 8FLV=43H)8_6>2(3\K6(+D&" 3;1.6@$CZ++;
PJ0XRT R9+?GS?Q7'(&LQZ38_:"F$?SBMN+ 6@6WYLXXX"72UZ_W'@;D18< JI#;7
PEU.JEYS[L D%+*/@X295>:TJ,#20%=!86/\M-#NI?T:?U5JMZSCW@68PN''ML .J
PU$$0-A]@@0'&P>2&M'M@_,OK69D>'>X^)T:T[;#7Y5<50^7Q5,GA@[W=IS7#O(L*
P:$*5H>93>Q>49]TW!5D4L(]%VCBW#O(-9@0/B#0-W0:*-QU:"!P/=^X%A-SM4R T
P@-7OW!QAS-D?;E:K[<+[DA".O61M4&B/;+P*!&@_H*?1$Q^LY9K\4I\&>(0><J)*
P.@<1O%*.5+9 ,'BT6=TV/9(K%>R32!0[PO.=F-,++"UG@6I53CHOX[0[/;GCHWN#
PXQ$G0O:P1+01RO#3XHAQY<PXJ3%$L33;2L)1 6WG!?X7G\-NKC@0%+.!8Q19IBY#
P0;<=! E<Z,Q"S2J3;E3$^,+"J'6/ @0.PNU*_ <DUQ<$GX:@ )KTI>\P\W4&\ARB
PMAA'E.J0(._@_.&%5H)^&SJLK."YKK F%59K\WF(\(P!>/)3=1&+>HF!A>(HFF/0
P*USI8[>S&I J6+([35;!P9 PU(@'7W,+</;GD!,-4I/_,_>9RSU;K=PNE\S2@$7=
P(0X>:FF^ES/*S.7(BT(A5+=O/^*[^&D3)3&D_^'C+(HK2C?Y\RITJ^L-7MD5FL-3
P=*6 =LL8K\2*_#4O33LBYC;H6 J.9@,.TV&"20JR($0AU/NV'865Z^KRTDJ3?0YU
P,/:?0)@26<6308 \2H]2"-Q/;M]LX 3D3I\ <I*Z'<AMJXSB=O[4G>8X05FHPE9#
P\:TEC15=5NN%[VDW+L]J%<2([4B$0T\0%L3D B5V-^5'CY!5=C"#E49(>+_@))R7
PQ'^('+8GG,1>_:9^/8L<(,W2US*) ]X-';P]$Y.!_!K,$;[R0F$DTO"45SHH$! 5
P4,!>)L'%4E:;/GD'8*<6-U7G$1HYQC$K.*(6'54B(NYSUO4V_P)M?]N;L(%PGW 2
P_[<4B46N^KG:5Z6 4L>74#Y.Y&DU\HN4NVJ$@7KB8Z"^<5995<8N=(K0D5?JI65B
P:FIFD[_&<>WI =^AH-B]JDR!S:)P^/4D3D8L8.NK4]<Y(A3R\,E:&./)6C2$3LZS
P";Y#M-3!/GE.(O^BHO=Y6)<%>XBJ1! 'YH$2PIE,L];9?9POL>(\Q8@-G-FE+7!,
P+V3D KAI5)=.4@:HZQU%*P.A/\FP"+JRG>\AWHU*\S7U]\?RN<U2%LPVK;,%_[9_
PV] @V[U)9->2GPM[ZSI_^FYZU$,,US8*OYL]UBV9@I6NH",O6,LF0+<HZGF;,[T4
P>WT!"R"O-*ZZFS@51^@_<;3I#M6@)K0Z"7Z?7TB7H>B6=&]3DB[TD&Z)0"1M=J:]
PE!C:(*K)Q(SO28^M/3(A<6X1/WJ(OQ!H)HN=VCJ3^Y1NR+^V%PI$M<2@X#&@Q+V]
P?" ZR)-1$2IJBE;7?5RD5-'GE9?;/ZFH*A.;RM#W_36"YO\*;0E,BD%LH3W8UMR_
P@!2Y07@ZU>01]B48<CTQGI/*H)(PC:4'V^ >Z/1P\.%TCJPA/ASB&"+=PLIV\BJG
PZL.LEO#0!J52UOWW-&U%&)QZ*O/I/A)X_AW?"]C(<#NZ 3R%L=?;1UW/W36'.S!6
P@S?R$5X[GH.$SR,C[>,D=M8C5U%P,EC7J4XDX]4,G'N=7<3K!#"20[M1]S)C@6QR
P<ZH#NV,'GK= ,7 "H 39#.<A;O3V\GQSZ["H9AC4*08S1\R=TI@R0JE\\N193Q<:
PY.]JE(^\6K@PIRM]=%*,@FXIZ"<BFY22/SALX+6IXJ"Y(4S!+7<9#?[F^,=;U5'N
P,CAB/#H^B8&(G2)A#;>N>5.M_YGJMABK487=COPH[O99+H>^5:$@!9)B%(AR$ZJP
PDQRWGY9A!>$5:RFG<![R!<+4G'"870X73UBMA<_45,<2)>ZW>G_!#.=(464:8>A]
PA?=&:JVQKZ5_'9+%K%!P''Z&O+K:C:"]E7RD>'C=,BQ%:5F7A9UPR4C(&6_!2 B!
PH_XY1NTMICJ="(FL'\I.=Y>0% ISO856TN3?])H<\)C[P Q)&:%9O01!VV$KCE_N
P989\+C?A'SP<RW3LVF82>17B_#%P L!43 37OA#CM#Z_SIR9]^ 4KC#Q;H_C7X9(
P6H,C9;(5 1,;2>F880]PYS-L;FIISNJH=.>.^?*VQ..C=0&1U7<4C!RQONAAO$U^
PUJ'S+#EOJCY/ZJGM!-_ZV+A:HOZPJ(VV!\6\>9QA0SUQ'97 \;+VJGP(ZG*H> A?
P<<//%E.RSB)=N#$UKGQ8[DLGD(BY$A*%"7QYX08QY1OQ8^K[_)R5ANJ>&KT/?^"Y
PDM P8W2O_J.7 BDG-@N9:5M_C3B6A)*7VZ)*>!MR_U9D_'F(L1YMTE$]KI*"%7N$
P3:+)%7WA&;5-M7L6D>Y#:D\H8U%_5[)[;)R6EOV>0YJW7EB@MT:W'Q\HV_[X0/-1
P;D2?1"7P>8"S^!]/^C?QM-6<@86+)>GNF:G;J9@^2B,%EV&JW\K%#QLXU="*.K(4
P)@8H_ 7.B4:&;;6QOI1D-)98OF*-=B=\YRV##XD'"OV5)[Z#+%N[P'C^>EY>]EZ6
P5J*)Z1ZVSCEM)3X=JY1<][/\B?O"ZGUI[#M4$GZ2Z@WC6_V#2AH# 2(XN9-RLXV3
PB%#RKH!_QN<42NACUOED*E G(ZBL<!,BQGG#?AW=-K1=;#ZV"8:'N9.>?H=/0"R'
P7M2I%?\[<@A_$HU/-NRH:@B\^ZCK\HD4QS"I1B!SFQ8E&.BLN(4GP/^JN!)^X$#M
P)*5F8!;;LF!\%<-@=F?\4/#"I6FLK?_(^AE1W1KM1BBM<'S-AV\:2'7\L#>W1:(!
P"'/#WFMBO9;]EKAC-G.6HGCP"@B5LCW@ .(11=N,5K.,2-+*FRE-3O)+%%%;7&HL
P[PAL9XZ\M<*JBMQF[C5-RD5Y&YW-!&2<G7L0N;.L$%>:9 '#)Y8QE#40#2LMTPYB
P1,L8,?Z=,1J"HQ2$"R8!JM&HD-%E]H9T=M"X+(UW-@#0B[<\;SMGCK"I%?_++1X;
PSSYXX%LM-*G1Z8$@UW)Z@>]!4ZG2QS!>H3>6CA[>Y9;"GH87E*U692$HNQ9]%HO\
P,2JO63W_R_G E'C2+A$$!5I/>H#]6!9_;%:C4]8;EN4Z5OEN$<Z-2SC2=;%-H.BX
P4\!K+:2G"-N!/5U<L))#7GFN%.9!U/[J#2-=F@?#/=U[/^A!5-*;#P.0O5ISTX;4
P:[6K>)CP(NAX-+>:K;XHZUYW%W>53F[O]F2NAXF91[UIB:1=4^:*9;@/1&UT9L;W
P>52A*8!O,?;9_>W\Z""K#*4=-&)&&-; 4**T)[;'DGUC:N>$H"W#?HRU=06":[0%
P8"4Z279Q#P&Q(/W;N^2D3B*1$07*3RN-)YLS3[H/]P][*)IK3L#4FID_QHOFC_O(
PX0&57_H@,XKSS( /6GNXWRQBA\UC_M-3@S2'R)L$\..EV3#G= F6"A"%T!@+P@<H
P^,+P'HB!HT-I44[ ]9FH>5T%5&G/Z EBV YE*/!F[)R2*4T&R>:+0*Q'Z55:-/H9
P4%/)V@W8 C%USRN__FOC[SH(V9P?7RU@=A(+$C-%<<$ CH+2]7!_*\[/P_(OS>1W
PT#B (#B<P5YP=PS1<F>'196P5][7L""Z]#UCYP%7$[ TQT;HW,7/P("()*T4*DT3
P'5G[9(_@]WPSTSU&M"M3CU\*?77#T,Y!/)0+*MB9RY0Z+JXG$*4 K7*)KS5F![)7
PF+I#I%RK@7L9PI]P>V6(4M/9$&=X$"#M@/^L#U<!8HJ<A+=@>>ZV>@2?S8$_$?0-
PE?(XY&_[%SI-ZA8'A[3#=%#+L7V+;W[3_F4>NFY&,A0O$)8EJI(;+X_A9)A9A@OI
P/FX>_<D-N&^)W>3=3W&N?6(Z9;+*M_BJ=!91W:1=1<EX1NU;JD,T,]F]A,!N2=DZ
PS]32P0#V?M@.B!S%3PS+PZE_^X-]_-A<Z]L&:[F+$4S8L]0G^W0<L&6XG&&%EP@[
P\0>M=B14W&E;7V5DZ@H'?734[MJ'N5]8O4X^C51.#CPE8-EJR-*.(])1+%LY$KU"
P^>#TL]L)>RMK#W/QM \L#'P!)Z5(FO@AQH5?S%44'?CO"K+TIHZ5#)I8]IT!!T+.
PDL0_@MO'2X8+?HMRD%.&%5,8$FG"1$WW+S=;*MYN'L?CGY1A*!1X] ?J2<N4DZ*,
P@%L2(S17=XL'_#T3>+.)0L: \Q>GV%J_)PY\ L?O3=F3LF%E:VJMH($)X=&YU*[G
PF'][T+ CGSSRC__/JT]4QC$ULN9&O(]HB"_1U%6$0(A2V!V%P]Q+X;S*LYP.M)?5
P=SA'MH3'D'W@$#PUFRVAX*H5]@TL$:+W.():B36<NI<&MLCG&J5W)?ERFC2$(J:\
P0'3]!@#^E%#<@82Q&K9M./:-;@/B=N N<M<;* UZ>WG]/;)[:3J! 3BC"XK4<6<$
PDKGZZ;+HC*)2"!(%LU^"*HIV1=MJ9/NM:!A4]C2 8>]VU)");O5,66F&?2Z&T$%Z
P-NNR/7>OW6P8C=.;U\G46. G\'ZY2M$NB9+Z?^O/J8Z?:13 /X,*PP-B 86VK#%:
PEY]!IU/\D+!UM,;2:L:*=5VKL,M2<2"98N"]^&K5Q__"??>PT03704LUAPEH88^)
PK/Q>".:1Y3O#H35,3@:H(Z*$N##8@J6L$BEI]?6=SJ3*>H<XD_-EB$J)QMF.6'KB
P?%NNA]B7V#W)DDX5WCQC7\21D*EO!*.ZOEH*;+;1E):4U>\E<QX]1)<00,T>.UUG
PMMB]V$Y:TZT#"_18\$>B5"*^63P+1K_"HKZ*0_2IE%J^5.:\QAORE'27CM=NC1(4
PC7]&98<,Y_4)"[PV,B8:Z"/9M'9/<,(#[,EZ+O!Y&:[:L,$F5(^:-E9!N+6V\"D*
P$\(C53YQ$^7(AIS2I?O";$83\_5UXCLK'CV+6ZH+J'S6=%^0V%QUKO(U+9&\Z'/W
P#5+]'R&$;752DIJ@MY7\C% +CD^('NW+%Q^;UXVQ@>3UWOD (K(0\>$(HZ[_SL:9
P^>3Z+>@Q2MQG:49 Y+_]SHEX?<'S:X5G!(YY!X<@ ,V*Y,A,V5:,28CYPP+FT/#X
PU\N1 _-B$Z8 ,@AOFL@RM3/*PWH:0V2_ZQ1#X]%XGQY;SV\@]?G4IH;&(#4&"@6C
PP-(JA+$@2"S6 P!>*NT/G*AI[<[R?HK-1?1Z_Z1$5G;>F@225GGB:F@'AKPW)R4J
PQGO$5.<<$5K&*'FD3PLV?K$MMXS??1N_1'N_H@>V5(Y7Y3[-/@AS?XY_J5E8[MUI
P.VV;6/W/'A#)]5L[1])[O..OG JMDC<O8S]8CDR NC"=) SQC'M&T7L'&%]$5O-J
PE\P<A+N]YG[XXHS[B@P=./%7K) H9YJ<B(0,&JRRVE#[L@4$K2[TJ_$BT/0L1XD 
P"L\R]"?]9^ /(_+8JH]1ST*%:E5:Q9B[#G?9-O-TKECK0*?J-J$/0JM0ARHF)*$"
PK]&#+ZX8Z.9[U!Z\U<_#Z1_,*X;(;RLM?H;K(*[!<HQ#NX$#D^;XN'D:":<H#!A-
P)&],@W8@?P2>KL%;;2D4'-#V!5K;[,=6C4773&'P"4#TF986A^H\XDT:(F!K,PV2
P>%V/K]HI%>TBO(RQ.-HK,%H/R#_MM)X88+_2 VQ8\:(<;GV%9Y8+ZW?J'F74^OSL
P7-Y%4,>"H5!;L'JN8*A0[>,5'!!LX.Z%@%O/<Q<< 4ZS(SXZPGEDA&!8MS</-Y]]
PL^-2V)?+$8!X$D16 $ME])9EL+LV^P1:7 RJ1I%>&/KHM WUL;/%;G?^O'^9"UC?
P[PF64;.;;RG(WU:9F=M&W[.#-O%REC>8,<17L/465=R%#'\7U_B%$=[8)'KG<XR8
P3Z A(\Q2Q&4MRELPE/&V2X!D3HJN0X<X;SQ&UF7PA/JD?V\0D%L[L @!5JP'M]>.
P]]M:,K?U'@F@4G[X>\0))58IZO%'?#$LKO9F.]TU#[./M\?SF7M1_'LT;DGDD#A.
P.U,B0/ZLTA$$F'FQ;ZC:=.A*7]5EP.I/RQ%KL6;/XU'4KA<+P>/W1!,M5IN41U7F
P<GBB#JX=)=LFB8AEQ55R>RU'\96+T3]G[$7#E&]]>Z??D(^O4QT"^T+S="F%S._G
PG<\.TCNK^6+(Q.#! "@(Z>-#GK5:<ZN=IF>Y-1N[F"A/U*J"I7Z3GD&#VN2&2O%W
PFL^VG^BEYN0*\23C@5H\*QAMFC9Z<4@R6B(2"$SX"&2;"9R_E/T/H5H5=Q1W52;%
PS16#K>QCG7342S<SJ8H0R',5S G''0O'U9 D+WDGX\F^15/BBJ:!%%=O_=WFB;M4
PL54^=\FI81-G<</U"OL29#WTS%#.'W02E'#=PZB#WG@^;R78;H01!^/N02V+'NO[
PN'Y!9 9G0-]R3%B56ZWMG1N1H;2R6;?R<QMG^P"Y])I0@\[",)N9[]ZZ7#EF%;<L
P!9+/"O$234:3/&Z@B[?^.M<?)Z8;(RV;ISZ]5+L#@/,\G:]\]2E](A-8<![_$PK\
PC_Y1:%P)LGPC6"*!3(BB^]NCS2]QIG'>/F"=>;13V[F]0'KV[@^@ G?VS 7TV.Q>
P";UA1S?)/?2;1>0AX7PVG1&=&+>W\5F\C%9N,55X:=*\%.GMF%I3^./*!0)D7<!"
P%>P)'Y4GXJDF;ZEF;/':HBB ?GS)GZ[ 0'4/MDH<!1293=)%T=GJV!%!B?#?8)Y9
P4)+OV9J:LATE*R7:R?%S,;?6*/J\,<+=<W_*R/<M&U4B.I,\VO/]QV L^WA.7)8L
P!5H?C#T\"H99<1&8#\CTUR0>+6G&8ZU5&UO^N  C^_V<1+:0STJ!)R5 67'9MMML
P  VZAF2_E"^*026@!SH0XL ;1 [J7]F_N%T:&R6D"[2&/Z4MM9F_Q$R+LW(8][%>
PW:/Z+HE'MUWW?!DW(H)RZ->V)ZOOZ&1QH)1Q(*.SB@",Z'E-,5##*.?'.&HUVP!(
P9T*(0Y9$R'5_ILY^_\B\=+"= ^IBQ+:JI[7NG37E=2B8_]7#WE&[_B)Q=Z^Z A!X
PPIDL:;R,_'8O; Y,PZWH'7L.[2P0+)R]DDKWE93W02C<,;-(56E(S)MF[?"20]XR
P+N0O6CLF24[0:+55]PYB#/X26L0MH&/+N/0Y[)2!&V87=F/0?M#R$^@@;J@V+]!2
PP'2F/K>OK6P\AM1]Y;3N,<VL4ZD#%#EN9JL_A)&D_Z1N&5\MYWA"DRZ=<7*H8@%5
PK6XQ-""V1L^GRRC2<NCJOL4&LSN-U52E=S;2/90P9WL 5[3-/\^7-Z=\L"@K<ZM.
P'=#)E4;I$7"97I T::@W.T5M_WDDU9]B0L_!9O:#_&.\-FT6^% H/B<%FRTPS@[2
PE;^R59U?5+YD!?L(3E(QFH41,.J4&XB)6U0T88M#^IN44?]3.$O(($]B]&"@+Q^"
P :E:RF&';TJ>FY7:BAH^\H/P+2?W7K *&"K300"0< 7:9!62OBYZ%GM);.7,L6Z@
P$R1YV/T<.,F_1!=IEF"[%U&A.6-8&6_9TD/(9%[' B0__/VBY\XINQ$=SG?BF<6(
P38C7[?[JI]3-#>(YH(7R*]2L$47V"Y81N8(+-,5\=-W%'QP)SMH9DM5K]V;2$!+ 
PU/I\LQ'5U*\';P*4+?7K,_:S$T)%6G*?N8,IBU&FS;"D70NB,Y4R2LB,Q\Z@3&/$
PWS&3,K9%AK@:]N#W^\_)DM#U6-&3FKK?R,YZ\HF05 8?RL7BY>_WA/2G5];B%/6M
P1,0K@,JUVM!);>;%<(%&7TW##Q@,OPGOKDP.,VMOJ W0IT@2!#:CG[NVX3M;TQXR
PYLH;43;;JEI[8YCFP!%V>TW<:4]'BQO:!36]952'T+H=HWTN7'2:KM4R'66UO O"
P WFQH"MQ-$@O3_$J&.&J3\X"GD#S1CJJF[DEP.2 S_8!7\$)]\:LK$USV_R+C\:Q
P5@BV?AHYM6$9Q@D+#5X*H#]59-T-Z:X 8MCW=Y3<VME1A%S%02P55,*/'[L]()?)
P?1H?V2U0=^&,Z  SY!]H^TCK9_[$(_4BU"-'L7D@/.X*@+B(NC$ZO68T2) Y#PP2
P$YNLP9*?3PRG3)^$Q=9+E7#R@&H,PVN6W_ER$5W$38R3;YE3ZP_-YM'<$_8\\8_!
P":'GZ3 I[^$SG5-Q*%'?T2F9>A0W8Y!8<9)(0K<%OF?:_)LZ^S,"X(Q^N!)A@1:V
P$$-G83_O7?]]T8/'"ZD(:("C@6R(M:Z169,GJWO43_U+/JEFA.PJK,+@M:3*?Q3:
P^)"6)O6D[T$W>U-A$F'^("52A%'/.R,%"8TU>J=.#[1MAZZ<)[$.1$-DL=\U8MZF
P#_M =^D:Y#]KQ)+%BAD8D'/.U)36N#J9B'%P=5#ZP](1W]*I^C:9@T<2^!JS6>A.
P\E;M/XRY7W9^I.=D# ]]\/@NLJ1>R\6"'XGHO]7&("SM5>Z;K3U<6B=VPP8['1LA
P 3F"<DC_&6V?8Z2>P?1XH0] E^ZWMW0X+$0R%B>*%#!GI!*-7P">75B2PJ-# MV^
PX!$JFZ'O11KZ_:T.J@@/@"Q2G$1DSJD>^+8J[DVIP,>^/NQ%EL(% )]Y0A[GMUV0
P8*_R"U!WBH$VFRW,1"\4G7,FS5]N=0B1*U%)P]5R'2;Z-0#,"JO4[HH!J=0-R+#?
P&DD!N1H(8SVP;4^J VFI!_Z0:JQH*QG!9-TEEVES]FXN;5&*.Z1'S2 88I#FXA/X
P]N#>TC7F5CH/ +@6Z/\=]UGT S$-A(09+C!=;YU^9_HNPZ+K#S;)%:>X#*'U/->(
P#+@3(Y'T/DN&G.A'#?@&3.Q!@',>)BO02WC.N)?)O"&#\.9CQ_ $#EW-AL=Z^!VD
P@;]=@AI*BQ(.F^6T&687LTBCGNN9S1+6;XQV-$"!(;Z] O69D1(P/1BWZ!4QY?RR
PZ)UZ2"G_ 8RD5\?LS!5C3,>NS.KQ#/B 8@+TU%,F3$#RIIM<X 8.4.!=VG+0SIV<
P%F?CK@W3CU!:UV[QF1;Q@[.6C'2=N&W6CU[V'E\*>6+$;EI\T-W++@U"CT00T^(3
P(N]@A+37;7*RR^U(+5&^^Y/I0I0;1.4XGC/HU(JD;R*KU<)<A707SJO%\]+,[\M+
P(\B9H%=>?^ "*Q>)UQYB[H#V,]+UZ^@<AC-%,+P"C<'K6N>R*@^*LX*)5IVY*'92
PG]C^;,^/EURFM<8?NE' #S9S3Y#6:S=Q]5RS!UD+TJ;?A768;4=QU>WJC9ZL>N@7
P+<*5#;U%O(;+;TKME<J#I1F%A.Q2(ES2\6^:EU/Z$585@H^(1KD;AM(9M>JJ.I<1
P2_SCZE(D<;6]"'TWO@H[UM]_@5C^CGAU(-3SQ(T6]YYM,7( 4?IH1<G'QR6NM"B]
P]_N"#I2C6+P;%8OZ-\9U@)N^U#7E[T67"L];EPR!C2LB_-^@]\C/?4<06,TG[2-%
PX-!-7Q"1Q]1LE8^=8(Q/E-:7V1: &08_+W> /J5R:XS;K7"K9#>^R5'LF;MB9[[X
P2U&0J5/X#78[NZ@M6<-:9!9])C<Y0E:(Z'RK)!2'P_ACV3,R%..B^/":1DQ%3IWL
P289P-D.%,<2^8X6'UN@$N'H7OI>=D=H,NDS>9.C_TS'L\V%:%:O.]!#!IDE0XY?-
PY!#[1YD5(K-V$-'K8ZBW)7,A8*8S_-&-*UN$4M&3-Y('W .PD.6Q)]*9C)%5&WM5
P[?.D@?Q(.LW*W>SYH-S#FU+[$GJ!C-HLDKWS B%D1K9"_#?-B*9).CI21;;SK643
P.7J[;62-FAF\)9:[1)[@Z!!;!+FL?]JP]^HPD2QM7I9B:*)IT=10Y\6[N$9D& B@
P$+!L9B#]6]MSA/TQ'J&&DY8NVC^E6E;>[7;"EO7\@YK]56;&825=1="-B/S-HUAF
PNR\4D['&TK/6%6).Y>IQY?.7^ED+5YQ&?1H](4BY\65([]6D(,P5"7L$L!/JWJFO
PJ)_6]7^$'S,I[+FLLS,,B7"0!A#R_8DY&4DTQ7O5#<9<;&]^'FA*/(V+>Q\DS,-O
PW</_(C+<;!<AK%2&AM@R)GF;P5Q9_A]/KSO<PSM9V57QJ9JX)BC3O+@56&<A(_;T
P^2VQ3/GQL*2*C7\#UMXDYEQ.4_?TJ!:C^82WVH9P[1..5.H2&BOR:](I J1X4EK0
P!>WK- VKYBP_2^IGJBL9*(AP6Q:^6O"K;ERXM1DLUJP!]^ATAG,$*&Q+J*.>O8T?
P!<3)^=]4KL0X<ABB@7&<M/?3""JU<5,DR%[Q 9[?#]/"GI3^21\FMHMN[VCQ.*"P
P3-U"&XSWC069&D[0\"CBCOO$D$*6/D%.N9E#]_79D6F/?3R6MR\NRUQP#_SYMVF[
P://LP[:[>F2253GG8I/C)2K&&0E\#[4@D[!0(&:-5B2)T94ML, %\6D*/J,O"XKE
P.%-?$!#[\]=B K.$K@BT:?[0([Y! G O)_NP7+E*\?0IIQ7@EH^ALPP#;U!]''O9
P#D DQF$)-?R3Z-?9+*2S!G,8?N (_=Z-[(:(>C*J;P$K.U6&@9D\-3NBOAB+%#T,
PZ472ZQ/E.Q],KO4S]T@MZ$F5L4;(W[J,6!^.Z[?!L(6D$]TW>/UX*F7-6\.@$;#C
P;_D:=,,[>Y0S3R!^H;R8@8<"WV^>7GH%2\_T2YPG*V>/ E!E%)5$H4'6_N9&(Y6"
PON<VI=,=$C=O"";,CIB(]M7+ AY%\J\OT;^\^JX9Z(.?3L6EDL&]4^:NKJ:109_4
P$R^B9ASJIRCRGF+5T*K"!/5I\OO2$-MS-9G9EJ;Q:<!TU7J^H*B(,\:M^8DK9CK'
PMLG A=VK]W'K4);V4 -<RW/#:2U$8G0W?.C[//N1MVIM>)X2M(DV*T;%\G@(S3&R
P7C:^M8E:"&E\@\64&G.Z.,6]).1XC^6U4H$L9N_::@>N<'P,J4@VQ$2;0@TXB+AH
P'D(!EMEM*_ IL7L#N<;F%S<JMU0+*D)-0.J'EW>@2,*+#7W62=CV!]U8;#+]]^=6
PU79LP.7)IP&%\2]98-H[9G*&(!^^3<VD(34C:K?A_%;;<%=3#VVY.G*S[-A&Q1>?
PZ2C5(A#9-7RIMH(^FL@P= W=*%")RD"]1JM=BC.,-DS(*W-#8$/V-I)^\R(; -I>
P0#I?]2YJ# \(MO.Z""5%ZRE;%%"RLW&5HY)VETZ?5W1$VC;-<]"'XVR!NRV#^@::
PFC\N*2HID\'8F.I7-$DO+<[0=:!T;>C2XUFKFK&[$KA._4DM"?6#3(DLSO*)(=L[
P*E2_!=R(6J6881#9I?FY%\,-3@TST?]HT8<=%?(G8-)^GR*YQ^6>V;<:B#1!@F*]
PRPO9Z\D\CGCR '#&Z.+MR9%W#,IV'#ZSE(C#O]TX@F3+=47$.0VLU/$5I'LMLU#D
P3S?)V'_U%@!UF6?RE7VKQ4&R/) _AOT8(\]H(LS(W'F#A97BE0Q9G>F<R[]A+UM>
P6GN(W5E&[)/$"YV^]6><IC;]2UUH8R\,0ZVF2E61F60@&IUFH+E[D&@G?04=R[WD
P_8TO_.88)\Q,CT4^^71]E5^,R8 11$XQ#"KE\W)S,VHD+5!WVKP@?Q%>#"GPRK'4
PGJ-AUU_V^5S2*<+_X6D&BK9CCG;N 1RA"(H(:1O1O!A,2] _]+@CZGJ&I*M)M[B/
P#S,XC=>+$5SZ36-M093C-\E*?]/.'8]!MGI@KO(Y%U^L'>*0J&(U-$Q5"/+QQ985
PM>1' @IH[AO]OJ'^UQ?BBZ17FTVC4&;"K7'RH+()8$&+-*3,A;%$1JM%!GC'>3(A
P;Y=*/&+>'EDB<?&2K#5 "7K8^ONNSIWM5W03_D&W[@NM>J Z1P=702<+@(EPN%"S
PBU9#D4MYS,G92;$WI#<B;.H:N!7JDENUPR8\R3O/<:BU)J?&QX'+ZIL3U"AR(QPB
PSX6#FZ82=)5,:?M;$% $(/U>U0+-P%]]2G!J1Y9 5HU[Q^?:'M84Q5;E!UDD6B)"
PUWLC6(.LHXJE3I-+=DH[=G=8,_$'!5N? T($44T4BN[17U.G7=5&%+(\^YH@B*WB
PO&<,P99G:TJ;5NK3,MS)=8Z/XGX"<3\Y:$:=P>0%ICG&*[BF#A44)A,0L#P'>7?#
PBHB^@_J6@PA;+UA\:&M8R>B?T")7)N(M]Z\%*GXL+@YY;17!F$? 8Z@0L/N/:@J<
PKDFS4VPKH6S23>"P5ZC)7./DU= LNJ7K6:>8KW=?V&"*"""H9:$"9A\-YYH5Y4GB
P(;Z-@'_<:P6MU=HE:Q \=8QMZ8?]\_(W9>@4XL\6N;>-FC9+>:OVZLL]>64A4Z?/
PP8GK>"@BR W%KN X'NB\DQ+?16<=9S::G>XT,!-?RK(LPU;J>?2>4+5NIEL90'@V
P5O&@O!<PR5IN^M1@B5E+4H*O99[I&7-37VAW*U#P7GOA4MKJS6RH4"C3*<^(C1H=
P'IRV*V1%6?N]W[I#JH="<*+D^Z/;,F! >RU.HC/)/5XMM?ML@T\:732J9$"YOV-:
PH\D++],2$.NW,!<L&;*+ZU_'V0P5+*4U[Q!'.Q%O0F\1%TO<B[^[X@-GSE7HC"-6
P(>]OE[.X0C 2Y/0=2NL9[77_([8_9-RO/MO63ET[@)$M+, 8?(? %%XNH-QS93,[
P$\&)6B%09J/7-94U77U 4Y:'C4K01?U&!!D2:9Y&($^A<L>@Z(]U+.?&Q+!"M/5:
PQG)$TJKP"L)-)%'<EH)0'L;HAC0 U3VIZY./2'R7*]0GL$2UVMVK3WW^DB9-.6>Q
P5+W:F#=*@$@E4/=QR(2$="Y=?S4[5!Z%1/H.H5$2!( %5PJ5_$7/)*N]M?AD-ML(
P+H')Q(Y[YS@P/M[](KKCRFL+FAUU?',QKV\@#.J6M1?8;9><A26=X>G5E6?OX!C 
P?H=EWW^OO+T]L<*,7#2D8>2EK/LG]E!OTU@=SM/!.8VN8-%&($_..+ZSF:;L)82E
PEC#*$EI*V +BA ]UC,#E"8;0C!P]&'8* ))X:3J%K.]E=7>]6I]&1?)9:%B!,^)?
PU_&\-=:2+*E#BZ_BBI@=5RI?4>0$+8%*I&&CFFV,1AL"3!]G0R<-)%;J+N46#H]^
P,6=7?B9Z*<2D-R]['4$S!2,]')2O,4:RO?E4,XCTYKY;NZ/Y,;JZP.II2))JWA\7
P&' IU,#/3H*!#6#I"=27W1CS87 UMB&^'F>EH0W[^AN(]GB@>D<OJ@!8;>N/;U6:
P7^D3Q[NYID$=<VBK/%EP";<KS8Y4M_T0,"H<QEHHH/O0'ZK.W(OO6+KZQDBE$AE!
P[5U;:<7X7HZEQEQ&GCQ!67$ T0L3MS<OV&63A #?9RTMB]X[#IT;DCC5& !84L(1
P[6_L1[;-8BLJZ&I#10;*),3*X V(+F[X$&JMF:G1_'@\ZH2H#C6),'%.&MWV*(!E
PAC>;PEJ?!U9B2/7E9[,9QRE\N;PE<R 7_@,4#"<WLO7#Z#;M+=*Y+I>J!-!Z/OK]
P*(([T/-T24T$=88.+JM:YN(#9>^K5#TPY*^A"N"2'#]FE6<4V ]5PRK29("#54Z<
PP0A.)509_>YP,1&2N;HLXZB]8MA*DCRZXK,J/2T)!MS3ZLIBW)4=D@X7H;MBRF#-
P:[1CR%;-]/AD%D3#/V@:*0JV@+\/<WQZ1-)JG?'E"UO'4II75X/9CVI>3I/.4:E6
P+#@H>A8MW;3&_4AL_H2(YL^Z3#IQF8C#1B*>U.].!3[;,/_>93<J--='H$)^.Y+$
PM006#/W$ED5[G^KO(H%6_[V\Z?L/=6]_^']\,OY'"G6MJAW.FOS\G9 W.B6\/*CY
POJ'04]..294J!NY$[@@NT @X=*17.I-Y1"A+-3P*H,[I(PS4.)?Q4B$NB;G-V=I-
P#;2X6WU@S=_8.DQNL9"CH]KP-(+M[=%5'R!J*4FL,(P=_)=!7B8X)0ZFG$+ZPHWM
PE? 1XK<GOLGW-Q9VP*.(,D*/.B]AO,P(@(,>P^R.(Y>L%)32?5C,'O%I+#'.293#
P<>W&T]..?([#1QVD#M9\%8_5T@BGD!%W=D'9(K3#EK=%I'G03^BY84 V0Z85E7'O
P\Z I;;J/6OW0?R%5_#)"3!152ZX6W%YD>*$!--S6^\[>0W[0$EY9%+^ D" ;"0I 
P]W:B:B\ [GJAH_-O'\ /8ILB$&KT#MZX(]IDA0@&]IMU6^K\&0F0E/>7@SP_@''"
P2!1!:)AK:=>K3K3G8A@"C@>X1H>5S]-(C9'BD_P(G9TCKI64YVZ'0+CAO*(9[[)[
P_LJVDA9(,1+EFM/E<!VSI"'T0+ &?C@YD7 @*IE>AR&<BU0\%@XV/O9-/BC.<XNR
PYK1C-"] (*5"T+?=8%W 2V.\$\#>A)RSX[F08U"N9W]:!ZHNA&]9E3*;<Q_4CTOQ
P:WL@')HC^X5U<1\:A\IVM+!X@88(KP.5DFZ6D*;#?X2'$%Z6_O%IY(AA7@>3SI.L
P,!Y;,>V:0:T8<P0N(D.ZLE5U28D-R^TT/B:,O_?SE-E@LO"#L2_E7#_N$8-5>@^#
P/OW!CGMO"*_2XC!N3)%!5*5TD&CC@XMH#/=+>Z$@=CYF"A#Q6BT9W^F V+E"K#P:
P\"O&\N[=Z$&OU1_>$3&QFBSA3>^LB9P&;DKTHU;LVOW7TED?0X\GB3S92K@;=O7@
P<(7="F?822<)K8H"]\Q[,PBPV <<PV2B'<:(E1A@!'3/(B&^=S5]'^Z4A&ADZ*<<
PSD2W.%!AF'ZF, X%(R6+V*,MFM=HNY?IU-0/.5Y5$HZ,J;Y+OJ1U<>]8S(I1\F+6
P]D/"*[V$4<I*19^/_62G)*'H2S/Q\(GS5APA".*?%;RNYVK\0242I,+Y =EP4X"O
P9^O<32%)+4)AIR"9F3=A!1?-^-7MCZ:A)_.5##EBHW_.+%4]4&)4:0U".#.W)':R
P'3"4T,LJ'I6L4U-/6ZE2E4-\77%1!J8Z9=VP=,';4-J+K%H66P&?$F!WXY4$OPW*
PR^(F:@Q:B-.P.2VAAZECMATC &'L74&R6N4^G@/=,8$L6U%LHBU4<-B-Q[!Z?X=3
P3;8HSE>Q!CT"5\IOXHRRS"VAG'7&N*ST$!U]U)4E3%!(FJ#\ /97RUF9H'."]&#5
P)T"+YS\.V,G&5O0RV; D+0%3#J2Y\NOF\K=1_2D&H+-(T&5!0:0?'^W,0FLR3] V
PF&*X:$T3T<QVQW,G\BW]]:>] R1LYHWH$@N?9^2F P@HC$#?,D(KU+V+!*EJ1E^R
P<1R\C?8[B&XUCU<IW3\S>)>8TJYWE23M-GQ&&S':O4$&\^!UX^,!9=J,'&KXM67^
P:)ZXQ&FPL#)0]E\T\14OP3NTQI&;U$D-[;$%$E? ^P7C,9=*I(Q?6()M1JT,XD *
P?IQ)^M;!;;3)9.L8(P>YRX)UXEHOE'I1H%A&"KWX=AK[-&S;)S;*D[,22X4+J[<%
P<,/=AB^F+*ZBQFV2YH[V-L>#6V@/ U3<IKN4#N?$D:TO+%?) 2(S@&<Q%6JQH<C;
PXA3QZJ^2BSMI4 8PHY#,GE_7?,/;<4.4*Z;M>D!\2"<MVMGLJG"&J"!N@^W06R2$
PFD[/OAE>F*T;'6)CB"8$%2TID 7VI!-"'7=_PN(460M61JTOCFT.:&Q@$U6/8N+J
P:\>#27Q5#33CPM;H)JJ_T2N;G\DZ:,IO=[X@%-+YU*Z.MD351UIX,$X=!,>FZ>2*
PB:RIGV\R>G7MNOF&'D2#0SQ@RH>ED$:P P?&TUC2I]CO.<$H;X&&:,V2,FVA=*@Y
P&N7F7>8DSU0R!;OI%B&@*+U?W]C&Z<EP"5Z+BD@4Y66<N95XV'M]5Q)M]$B$#$J-
P%1U42#%X"JQ$/-(3-2BBS0S4L]^#!E:VZ)KYTI-.;+=;QX#QZ)2<F'"RFV6B?03>
P">-HASYO.A98ZG*F *(7428) -H]2B:P>Y+]>DHU^ G2/G%W!I 9.X&HDOG:70,8
P<2I&*7A5PB9^)0:'4;^7)(<H&ESZ6?*WQV40+MWC6Q;N@S:IVUO\=BK9PQ&LT#:K
PQC(19D\ZMU3AGEO1#TY JFL&IYE(" JPPHE1N,>T+\^:0.:4^?*8,&B=58%FQ&?A
P%AVT58BFE,'L>W4/AT^U?MLQ*#[G< X8<%,&^CW>T/P #^JGK;9":7*KY$ZS9>T+
PBCHY\_>1"+4ATW1*(^! (&ZE.4\,NI5F9GI7-2+0$ZS9KGG:NNT6PK'$/"FH"K-H
PM&>AM9=AM:^4DR,'$SRWNX+ISXGI8 4  (O8\C$?^P&1$V6U^Y1@>S#'QUMU62_=
P< OZ])%J$W+TBM4[E!,0N9*N,8"T0CC)I,_!6[XRC!NQ&M41R[N#4==\,6O,/NUY
P,?N-SCH'WY%RJS4DIVL@DU3C*#_H%H_7WRL0C1^=5 BWB7*@'35&-QK)!4E6HFOQ
P_#[P:%D@[ 0>FX*F+4#E/> <-_&"W\!%.9.05__T<\(#ZVOH\VEP[M(+8?N$5!N<
PU5^JS*U?W@P9(LE*2<,KQ&EOE@^+T3DG0@MN$X-.P_=BA3&8(U"HUZPQG\)'G;R\
P+R%/!4?$MU)F 7TW_ Y)R!Q !/XN7#HV?":$2'GQJCI+H@/U0WDC<I#BB=( N>UE
PB2IP>X+1&Y_\1VX"^MW;V@KO)?Z-]+$[9.E34EU<C)9$5RIM^0#:WAM8MP5QT]W[
PJ"\;G?<R1_V<YK^NK'M'CK=VX;-G5G626Q).,)6PY LPZ; C!'0421%BZJSR>I0N
P:+'3#K?+?M+V55HI';N#-VS27C2(LQ,3"9@/.7>TD_UY9)?$V_AQ5"ZYK?_-84/?
P0LA>ZD97?IK[4Q 68+,)=YYN&NCOMCO%S^473+^ORQG=/!OB6&^(5V2C"/\?N@S3
P8YE+  4=/J/"^JR?SVV:V*XS(2742#G\.*C(ONDE$UJ]-[_EN8U]VI5_L#Y!XGGV
PV?)$$OBWP?_=MWKXOV:V('DZ89%&.4\U:DHD5SP^=W,.<U&QV;RC/SV(:!_?@R13
P1UYA=NC3VW^C55_9G :55]WI.(25O":0;QL=]$Y@Q8IIVSW4%S+B8H,>+.BW B5+
PUKH+#99;=I,<K5%_C9V(\Y,KHQ++[:3(W=8%R@H-Z'.Y<;\Z)\M9 K-?DL*H:,>%
P0JW \K;7)$FWJI,<?)C/7 19WZ*+A@S,@K_R*:!]E3JH44H4$&_+UV&K.PL9<A]Z
PZ.)OT) S ^SNNYR/=.A&"<+HXJU->[:P^<_!JM;BH6^QJJ?6!E_P@TV>(].$<5N_
PD3%O5^_.#U7+EA:^:;AVK7K*H5_D] /!+]GMRWZJ#J8_Q%,%\S61NIF+\0"@I9GW
P9$CF*B7D!X]-*B,ML=FB/@2T\PW\:)]>?(>O)%K?LH_)(Q$X%JR046=R!]T@1:KE
PW0L BNXVN"T";RCYL]2^1LJ ;*P(&%S@)<2J7(.SSQB8[3J#LWF1-:H)P(VW^*8Z
P9N?J79B&'3V'5*Y7T^@::J*@BF@$5SUNBJ[;7%428$G0#<J>P+CV@B,4L'R:9+H5
P)J+=[&TSC\"5W51*S3<8R_7O-A];.R_,7:VL,]&SDP+4IQ"O_+UP?S#=Q_V>AJN#
PZBDV\L.;O<,T21>4 M ZPJ7X4F;X>4)I?NEG;S25ZB0D,.PT\S.F\&VB8I2<"T8^
P.\A64/ZW?1_EM)!.):\6 )3E]M: , 3* ,:!MV?2CEFZ !L4B"U9\_$)8D3U2+,:
P:OT:I]9EPDE97*()2*&\OXR3J%!==$7.:W9L8^ #>:YL-BP0:P-!",0/K\NF\W'"
P8?<R-TY_DJ8BKAN@%)X4AZJ&F,3Z7R4<^J(#XN(5P9,Q.#W$F^3%1VDM3^$Y?*@;
P4J_UA?0.B5!JZ!PO"^ZC?.W*=SC!AL<!S/5<TY(D*L>2R3B$O1\8\5C(_S5X@4)J
PS3%K_64R)^C/YK<A7N'+ZE^V/*](6^*^Z&BSG&PK(6F 6.B?$"9L F.-=)<2%YP;
PSNV$WZ-D(@GKU-@K6MX/G969$=,(.R&E$H(+C:CYK#C+)ZY^5XQ_%)&$,G9<$@>7
PA7F<F<Z[%DG8#4-6=?YSN\.'C= R@AV/P^<E]"9]Z)=G.7SX]WQMVHK;]*3Z]ZLW
P7PSCM=R7[#W--!F.F>]Q>,(<B)3_+-2%2#=!#[V"7P,N[[-;SF,#*T5A=O-^+!&>
P9;;:PPL> '?W=1*U02\QYM&/W)>_+EV9'HF1!8>X-_PQ=#%2M]U%9J=)L50H4N!,
PJ&6S01S9N$.#(X,SJIRI1OAXV;L()1.K:18$B=_,=\==+B5?&P#Z-XXS^7V=J:(-
P(G#+#8!P)',>R =HTB1ESE$.RD, D5^E#BE/-JSG>2X$LR&2B9MFVGM0/-IX0:TW
P3CTOT!Q\&>'&/5D1Q]+;^Z>$&YRZN6DK_NXASOK,9FRY[975G*^@QN5[3CD4UC6G
P1[:EY?J_1BJR6L/9FOG-*3$!'Y6Q$"".T_KSX^*;>)*E]R:#D [=MJ.C__[1$6F<
PYV8Z6?,":NF52JB'=P\BIQ$1?2OY*HVVCN$(?:^ PS__;Y78*2<#L*/ ^6INU\")
P41Y?X;-P+877TV6.>CX=1+1^DU(@63@RP1H,ZY+FO[/T.ZTR^I&8.:5M9P?6FP[^
P]@4AKGZG!>,#"G[YYJ(B"8TR(LE!=&))+"KYMOQ*J.ABM'MX=JKB=(?$X<<5<E^N
P,[:"=R*).GH<C-I_A#*;O+!676F$HW]Y51ZB8^SF^D!%#S<"OW!#?(I:>G(IKA\,
P_BR'CCL<-D42:&,A?I>7>KJUYQFEPPXC9R"@"6MGWD5T/27.XX&%(NT[2)*<;\YX
PBET;/Z_3JD>!- 9OGF;+V0OS33#]BD8'PN2ZPA=_D*MLK-\3NO7HAHZ]H!"JN0QW
P$R;4AM6?Y><>>(@ID:FB]%,OMS).[MN7S!N*!$6X->,_/2@ YX(\94QY7MN5E!P#
P4S,<5/)3+7O[S>1,<"V<\>+ANM)2V@#\,Q-:PL..,KZNO;]#&Y9WS-K:ABZ$')KW
P*7V**,U@[!_RWST'%VPW'89E'-[E3H!JGA4TP4?[YL@> BG;31+4O,5*JP)4%'=K
P1XOA786JC="W.6R0%TP$\OUR;;0E_/\)L1[]!G4_<JY'T%!./B]/AE)M[%VD<@4L
PH-SGBF][W/H6#GLDV6?]:(!,9:'553 9YG]L<0X"<)>*8L;Z>ZLQ#3+GE#U<&BPW
P@]8^5(U(R([,3$HDAH$C4 I[X52JY$OHB_^3<I]L$T:@_9):UT<_9@9>P$Q18]5P
PT*EK1T4S_>V)!RN21ELN@:Y<1ML]2%+RBH3%D"4T":[ NG:2Q)<=&814<,GKX?%K
PU3T&C2\O"K\F:B<*1M.XUMP)9OD ^1I^OK?'PTUGW_"5U/50Y32Q.=6V:+7PTX.\
P4@'(<$7&?)_8W&XL:B/*3;G0\[%Z$P"$\ -"1C&J"^1.$,.%)! JMW?YE:U5Q8? 
P:5/9;GV=UV PG>6D98;^BB^WF*PVNX8'>O=(9[!(-,J^'0+(-,P<<@I!AZCTL;AD
PVMOU%&FF\?G*Q2GH^Y%T^IUV5W6<Y'>1BFV<(]85LM1B>9/@'MH40AN3Z:UO%,NQ
PE@6%0&6L7Z_(EYIL( >R^]2PQ42YY"JU/"T,Y(.?*N+\C>$A:RN!DBEI%FG.FF@,
POA ,PW=_!$Z95CV=8]&182.!KK)4Q)_*$V^(_94#@O><&L$;L"*C-UKO P13SO?)
P%>.(H1[Q'JY: AO.WT:',Q+J=)0[9N:AH2Z24P WB9Y-"?]K'73A00FC9P^D()>_
P& F18Y?/!7'D&P+93809::H#F92BK[K>_HJAVI&(A2%<R ,+/^4*1""G[BD >KP;
P5W+A@@D#=M^SB:,, 8L4I)]RIM:^X&W68P1RX"1G#KVY%4IAKZE(\3NXI3"ITB?F
PIM@>I 7%,Z^3JL\@CJWMLSQCIJC$/&@8+#0LC[7UL,KBS?@=6N1[^#.2#U-09\"]
PT@GA+(-KT&7-(MN6$84NA=IV)G\&H%*Z0P/1R%&G-/2Y>7!38W7%YC+(T,@_RI;%
P^77;L;$C#/4HT1' J)?1X4,\SB*!K3&W-OL%3#F5V?&(HJTP2=G'#_B9MIX1UE1/
P:_PO )*Y+:9D_"83Z9P=5 SY!"\I YZ-E\!YK[7J<^DN/'UH(0PSM;3@:1"DU[P2
P76!Z95B,**^V\.PQC)\1Y92(;?S*Q=(2\ZW\*OU]2X=.<5[,93'WR2Y)+6+1OQ:&
P.Y*$QTK[.A\NBXFYML'ZJ15OU5^%1RZ"*U!PGMQIT#$%3I'R=G#.\%E$">,OC5?9
PYAN-I+0#SR'],5476ET8S$UD2\ &Z0Z#T, R/8Y!@HU Y68(VKL^-T#HE#*^*,*#
P@B+P<$<4L4P)6C%?(FMQ])M-@;?Q>!H\&<H[G.R"N<NKO/]F2>!(J\OFS7&?; WJ
P8JQ=V:OW1:P4?2&3OB_=S*]4***2I2N;(?5X#[WX.M.Q%T[.!>5&^S=S3(P(?^K\
P<WG,_N36!$Y;B5)VT ^TA(F^&!P$RUV"JD<>JW*Q-=*R%^E/ Q?N=-6Y[*\KF+XJ
P/4R.(13JX>A'_]5T\87[:?\5,>L9)(5V@*1-LRO!> @6I G;L)/@"YC-;3@*0UD<
P%XVX?M *5IKMD;X[/L9;:F&6:29DY&ZG4UV^%IMDS$8%A:Y+BI'%<)NV<(X!89"9
P_T+0C8QO@XMS]XQAA.[T=W[X,.\0N(4&;&H\(J"QNR@MH)&I4INI8[U1][E(#H<)
P5M5N)46B]E9<:O :Y+)Q0B[:K[[!_MAF>#LY6M\ZHPZ(I*4.Z7'NT+2;+'DHR)_M
P;*+4)]2KQK)H*7+#TY@!ZG-XF!>W6-Z78U5[J4.V7!6922PL8P[*?=[Z513DT'%[
PA59:NA C.SI4]Z&4![)(VT2KDL%8W/"W(Y;]AU?1N5V"GO!K&0*D0DBK,6@/ZLK\
P9/G&S]_^'<[Z&^;GHJ&!><!WE%K6TXA%P(4TDJRBQGTGOD.9";PBH5/9&;)U>?1H
P8()QD!U2+$@+6E"8'#!YGH#=BX/&8XK-D,P[V2Z$!/V+LXK'261GP+JAI^W ;S4G
PP]W,&SZ,^M\6A\(_2W;,711&\ZMUU.1(#3+.RAA =,0+4==YN_1?1XF7)C$SV/R2
PK1-<N#(HPT:?2>Z0?.HI._L02#P84C19C&2RY&6K_9'G@9QB1.%A]D99@:;!HB%7
P="F"@W.?MX3UJL1"&QQ?DW!H#$JY*ZILL<2A>,SH!RJW76L]S^W-B\O5 1>C.\*"
P)H1MNEH;QWVCP$OR<()7H"87!/GJS*=9@HI*FNSS&&!='/*+?+@P@H4M_-'B]B4V
P^]G5"'78-!AKOB=H R-J4Z:)# QG1MVCS6UR/U^'#H!]Q(FD6$9H,QP)X)<6/9,S
PX X+7K<69\^#$V4%,]$1LC$R%,YDVF*;B#QCBI5=7H#@KL_,X0TKA0P6"'^%U60Q
P#I\>PW5O<>[,#UKA<-_+H*" \4.%[,AO>1;A(%6Y)J3<853^0FY?2^:XM/]&*Q>I
P:DHRCG$:N79UE&&Q/,=>RE^?KDGBR(*012D.3#X&U(&Y/!O =AO,SUQ'PM17Q;''
P."C<E#(E%0:MVOG)-< $3S7)I!+-+ 5R(@5=9.!;RC2ZGZ:YU+5B!QIDAH;A_>+P
P8UN^78:,2QY!QG/R+KMVFC3"D.G3H:??[2<&#B^U6PK7O/)H4I5;&$OJM_0AAP@%
PUI2I/-J#Z-E)#G20DEA: AI1Q^GX@I_?./Z*K?AC14]?:GPC*CZEN+Z0UG7\GPP?
P(9WZNFEGQ%[RG!.A_ABIL@14[W!T4LG\IC)9Z>LL=L[W8F88CY,B*YW#5!V36T^_
P P$0!1&$'6*_B^F:H2HDP&.\S#5WH5%;XAK_?S5'W.F^*XF]MQI_</G;80]T8+0_
P(_ C]XH%2VH2^. MK5@T)+I]6.<W+C"CL,6A>+ZQ*_@\W2=&/",PP;MUYB"XORI3
P#>6]*=3I+3Z]'"3G4?)<&/]* TT"VR,BSA.4KY^U,>'<&Z]"XMOS$]AL+#FP[6I7
PA%9#H95B6(4XPFA1)1OAS;'\:(59924OFPAC Q#]=C/ #R32DE%CV33?-UCLWI0X
P<C914CK%?A883MZ(7F+6WZ9^G0I0H=&JKT\O0!]%$JN#D;#%?QHX9>IVJK,+8@*3
P0?*_2SN9ZUL9-F%BXOP$$YHA_270.^N]_3,E0P6;N*1&$QW7'YIH"YE5,#;G(?)9
P3,$I'I'1_5O>J'=J<R)?&+]QOU@/[2-I8P_H2V3Y5D#?+R)/43$QG4=\IBV+2KW3
P\O$T'=ZW+.",(ROH,"]:6YS?X.&$5!N(S*.U1!JTB4\<KGEFP4L[XH!%W%U%6=$*
PR2CD1. N/ZK/^"[!XX#)+W )F@_=5T0)$B8$G.9C%O'_(,?8="7-YRAU[?[DG04%
PE__/G[-ST)Q-H+&J;W58,Z_,U+.]IEPD"3,LT5LATT20\T @6I&TA2#8W 414A7%
PPAXA[R=_->>&QP&Q0LF>A48")684V,(5IAN^Y2>.J%2"]W+4\C'K9!W-1#<GS6(1
P.<J5W^UP  QTUMN<FV,4!PBT6'T+%0X;TIKODQ?CBS?PB(1H7KT3SC2GF3]'%1-=
PZTY*--?7E)SRI)$A)U0HM,0;2O&\Q(!V.Z% JYR3L?HW)*!Q)*MZ4_RK0R-FY^?-
P"&A3&TM6PV8%G,?%"SWTTQQAS&\2,"A<DI?$X:E>0U47Y?O$![5L =,:*7O]6P$1
P> 19)!$[\3DN,I.O+D#>8WMSTN^7KFA"021E5^UO4(B51+]^G"R%Y3FUPGG1>D$3
PQ\K76"!-/WF/5UQB72ZJ]8=1U-JPYZC4GA5!E$6R//ZH8U^:U@-K_ZR:SJXB@^MP
P0T]U&)YU?SMOSS^IOY3\KJG1H;DIGAEVD939HX?-7*UL"8JITL$Z1RRHLBAGI)%E
PZ"/+2=DT+# UY/KO>L_EW=/M0/G $(._O574GF87W)A>SM=<F$@?*JQ3R-$%3Y1J
P5:?S]4SJCP_5QQ==VL!QE&#._X(,5&;USF48[<E5Q\%>!NP&[CP+J;;&3TDZ'9QT
PE36U?G9O%@$(PM61P&GFBQQ'.%L7Z^?U_*US'CH.$R?W7A,QR9/8ED!3+.PTXZA4
P(^Y[.=(X6)?PO$'V-L., #=P 1Q<+W:=1J"C;CGQ0.6"#OMOE!=Z&83DDV:T'YA;
P.18^& MY<3=;WBIR4$/35/1%A]_'[P&:D!)E=ESGDV[ERC*2D<?\TO$)"^Z R(@8
P17K>@-PWCRSGH2%E4*]9M\6'R-.A;I7,ZFU&O1BE_,/^BDIKIF+^C?)=1B6(Z EL
P?,L81DLO!]HXS,!3!Q3!).-?(MX8A%@"G"( ]9MSCF B'C:LQ2<'Z6 3]:L",_:_
PQ]=*E 'T4^/7GMNY0EMOYPCG@2/E<Q\6/B?XF#N%*WSF# !;>62L]XA.&7<@LX+9
PD7H Q,-1J7(7I!Q>CX9)X==-A-9BQ+)D]< +3!]. 8B(ZSF['2\2+ECAFW4;HB.T
PMT^U8]-+W)#V/C1V0MN@](/0S\ ZR//%IZ2.(%\A!BPTYT!28Q6PTF(J+UE,%N[&
PD)I[-NK '/E2^B'?KVR@4 UNZ_0R4?5WV1JHE7CZ8]ZNS3HO*@\YUB[]0K^/+CMF
P8 VO+(UOTT5 Z-2.L,J0C(KPJ9K0@Y'8W;(1O!4F[ 8>NFI88!4<D=1H7[F[O$%L
PGL*78&P4BL:Q*7DC%6,C_.F-J/Q#/!:J4CQ=%6;<ZVW%63K>*EX<F/(\J\AU[C_ 
P\ORR:BSE3@)+V&5-\BT)(/W2;'&V$!T^)HC:3C*?EU\X&#DKA0[VYI[$8ANU,Y/_
PR6>?SY(%$_A%?N)%7OLS6MY?0PN7X3)@N%\K)(JHF:!JNM</'F+?G%@=9^_(" C0
P @%;%T+JW.J_A^D8JE3?_6$^$4"4XV,UJV^/?ZM]LA&#$*VSMUV9?6B2TPW.35QG
P*/O $@'?*"-NAPF+VYFV'6X%)3 STK/+AMNV34(?IW1JOM"M56*B6R5/Z,&_ 1)/
P)0%^=2/%#$BA$$/O[8+^.BHN':$LXM-AW"O][[)E5H-Z-\-!#]0B1^?'FE]" >@?
P2Y\K\<1'& PR3_59J_6Z1P'"X:SGFHR_&'-#(3/YOAG4J_STPID?C206@G3'??%,
P@$;(03E!>%UR6*:ANS@P6;MYNV[CFX46=AHTU%\6/P.(>FC6&&^75#L=<>4G'?CK
P;B:TD$:)D;F[?$YJ&/8,$!*Z*#BOO-W#5^+19%%0/"UM'%W_MW6HR6'\[?+=9*]K
PTA4%]>%=3.,J)JD5]HJTB!JIF&5.OUN]JXFD:"[[0M9-B-^G!20^9A5ZS94,#6L?
PA@2?U[S?>/*H46D9A%%P-$-T99@C92:C ,SP1*:^YCP2.AP/I:*H-5\2!_GT'CI<
PVBSG68*G9*PF)D"C <52:VILDD],=] UA6E:&J<,=_Q5'>^\1>AH[T($!211^!N1
P+'=/P[5#O:05I"R-,7 SIN[2=!]VH].ZYO$Y-T33J0=Z2989VZ ?QG2^<3"QSE4Y
P5K]$2-\,8,>?ADT9;KK?[L;%L'^3U)A,(N= +CV7&EOQA)"5Y/[D[**F*\#\[ U.
P_/=^JNR*\ <U:OG>XF\D2F3S1Z@4 $"PXE ER':K;IX]QL:+.#PM'?BM6O\!_ IY
P$V<6EAJC5PR"T;;=)]59WF&(8[5=03R_<Q;,@#P-&X">]  2^I:1U<,101#3D?L1
PZ&H4+%$)WI,K%:(I+$TNR(@Z[2<HD@#W)(D6/$G#&9W7_H0XIR<Y^XQ0/*:JI_M@
PV!?0*#,QW\*[UCST&+\W?\DD?Q^4E]B7-.7E#$]S#(K_UB+C]G'*BP3]WO,OP'\'
P/0'-OO'#OV^<25&Y458+'AP8?64V_+@^7_.5Q2P=N.!K4AX[E]M3:R%S":>HET#+
PY5TGD%Z@A&ZFZI[;H1=4Q5!]PP0=[K+X;*T7==_'(?=CR:OGZU&\!NG<:,)O/9[&
PCXR^/]NXUV=9IKG&4U47BP.9A&$GY'^?E)T ! &0WB L$'HT?++AM)"S,YW5[I?M
PS=O%8*"X(,?(QP_L\UD.<[<W<4"XBK]M]JU=EBWR15B5X)V&V]V11V;I4#9,WJ&J
PWCSC./,AH(]3Q]3XC;>?"OHIQ&4 7=G6]K7+%YF-;CL/_C/-[/:XGHZ-EAL-)VE]
PBN03@64/9ELT2N^[S+F=N[Z]H,;FS^A,EO"R\V3=)]."(L9R\<U7IG,P/%":]BF2
P$O#Z$/G6^S@!EFEG4,#7P+J_ L-R9%A"Z\FG-78R;O8 :?<Z28^L80AC^X(U7^F'
PQ9,86'7E^\$8*KP9"T!-,N]WVZ]DJ 71%.;)[^QM?VU(2H#P3?+\&.,A-IJU$#3T
P1CG: _A%8.XIA:LOW-KJ]TL&=^>W >QYIQB2LLDBQH*/T)IH8T<J<L+@.,= 3XST
PW-W&_WTN4Z\!G*LA*;:EM*QEK*C*CD2CDCFR2S QPU0'V=G;OJ2 =MI?+,"'S<*1
P @Y7PRP$2[0J;RB)G$6]>44ZR:;8:3O3N-L[K0^]TIZ<O$BD_SX];@M=02H)GMH/
P3Q4),=KH(XTGH@FO'E#?')6.+5Q\#<U. &P%&%PO\1:*SAA- MXF!?S#!'G,EM>4
PLFR(@"C1XD2ON<ZX+0%,,I4QS&-%\*-Y 3$%/=Z[\/;DG]A,#$ZLIOIF504B\;,/
P!$0&0;[XUN)<">J2:ROY\O]B_3-8_JW:19HA"A43"^O  AQK<,^%,MHYNC*Y!RST
P@&*<C4-@OKTJ7Y-,*>1@.\E00FH')/PMZQ ^:\YO-9,H*I9?W^_#8!$1<0DO!>:J
PZ!M BAV&T$5/8-S!D+&\HY<2K'#%,/7;MG6A#-XDBV>2P/Y'?$.&<TKZ;<Z.$B^T
PVZ$97$7T.-(]MJ/'[%#^NH%F[;C?EIC][\!@I\%(]%+N)(U.'5\::7N#4CWA^&R 
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS7_80PARA__
`define __M2_PRBS7_80PARA__

`resetall
`timescale 1ns/1ps

module M2_prbs7_80para ( clk, rst_n, enable, vld, out );
input             clk;
input             rst_n;
input             enable;
output reg        vld;
output reg [79:0] out;

`protected128
PR:S&>;(N!#K)X]RKSYKH</K@KSN%Z^)]T/_OK46.U,D%SU+R)N"QOHL350)3RU;-
PS_91<IQAX[PMJ-%RO#^)^W/H<L_0H'D9BO0P?+<?!QZVVAR@0-7B1E5ND5C%?6BX
PQ;PH*)?]ZOKA]\$?Z_SR>5[H^'V%O=I*MF#,6>RI"4ZX/9>H<C[2.F=7'_:,Z21A
P"_YQ=[)I K%I@XU?3+K5Y;YVV//LZD,&F]_V$@;F60MVE=\3^]4!B4[$B65!;(5E
PU*X_)REA$WYZ%K!).>K[QK+C$<@L0_4S>QW2EZ _7:IV%$3Q3T8J_^PI]J2AJ>)E
PB;7SS9X5^MW]4. &>9\:P,FN@^'%?L^?Z>"1GJ6*G8C)"KRB$Y$#Z\=7$^(^61!9
PX<,9^O'DDYOY::D>;@X;QZ[!;QF]!S@#VHN8<N63W2T^FVKWL)[Y827C?AP$;SZ^
PTU2*%#"5EX2"@.%\G:(E__M@A #%PLY!?^[V5\,534*)!SF, 0;0?;A@G7F.]"X3
P5XW&:00UA/2I'A"1,.EH4%&3]7=AP(,T6F+#)/^:.BC#I32S@I.)"FK04!2DQ/5 
P"U.SUW+G-:.-PL>2/<5$MS8P=)_6BUR7YL!T])@!I"TZ:XSB[HU;PX)DE(5ZJ)*/
P;W"Y1TP:H"W5%!SNHP>F"]\%7*X7*MM W#H&=\"N5SJ*V 4?)!DIA7@+ S>S\@7E
PG8'CCM3[7I!CZJ>KUMQ@">O+,GS"'D@_.Y&G&6TZ#%PKLZ/)211.;\R9[7UOPD'6
P+P=[J="@D>J*>?5D99$9&F /Q2:M+FP\AJ",Y%RH2O'[#CQ44%Y+DV?+U-Y#UE*"
P6JF^W2^_@ Q(K"];FU_=I;Y8S"3/6%'*D@P1"V[D#OL!8 !6(&&&]C.$NT,P/B4\
P@N'+'O(B[SL!EXF-CP)4%=M[LB9S_5@QF\2.T%+MTV$'1<PC%=.(:&4$#)YJS3A,
PW ?(!AX.4XN8YT6HEILAA;>C"2YA*MLF,?^YW9'XRWX59J:%J^"$J]>?+>DQM#:&
PG(?.C$-\:Z/?D1P"/2DUC(?\[L4<P(+4_NO-/H3Y+\!=4"_#P)2=GM"'QR C"RBG
PHH97S%Q&*ZM8K&FI(G49XY0,+ZNF+T6&=UY8LN2E]\JIGEW\5A1>ADTF$)4=<"]6
P6(8)"R=]M[AW]0=Z#?8Y>\BTE\KKZ0CF#,K:\Z2R$H^*9DM>(OMR>W\E=O[I!9FW
P(G>R3:6]&A."6:<8S*W51.LJ[EVX@R?28*'1;?A8RZG=J^I"C)$&/1'MON,( S/Q
P:$MKZO162.6/8"CK=35/56!WBNXG)6U3&$+A<BS__I>M=]MDT*#64K @:-;HVDM2
PE\+&&+3*-3C0*#J+%CZ1_%1418@_0WX2+.(.S*XW7@05X=4%I-Y-"]*^;0Y@=<T&
P1.,7=S8A)&G/VK@WK*/J'_)R#;F:3UOD23CXN^34K-Z'-80(Y_!Q"8-^&>.VE4,4
PZWN3C^/]E@ M_]C=P<G^]5R)2'^H>8I1%E2/LZB1DY@URHX VE\0 _)T\QDNMC)'
P_Z-3F@CT88NOYQW[NI*7*I?IC8W[S?!ME?UA(F,X:L4D-)(D<*"ZI?%L]TG5O3A_
P^7XW$^7#US0C8CRQ_&BZ5GP]>JP]BINWA2J^_&*B-I6Z/FCV^D4L0R"EH9:JS?<'
PN5F6,*#+_8OY*.5DORH33J*(M;HJLG&-7#02F+X TQVNG?RD!*)$_.,+(,7QB%2<
PTMH8JJUL^YM $9QA[58L*>,7*/%HVFY[8J[F1%.94W^5?J966<)=Y5L*B$ZK8<I[
P"U)_YD8M'-D;-ELS43<]Y#!]+^\QD8\DW,==5S8/)SG8MZ++9N\3Q_MGA4NH6-8:
P!Z<#.*O%(^63O\KL#1L$F>AL22E**RK>1?KZ9QRZN98]-[UB1@R)PM:$QK@"=KV 
P3RZMU&ZNLKYT,N5G%&[1^S:>)JMD"+!V"(*:6QOFC!?$27L32/.:=8_9L3@:.?W@
P+72<S5+G58;E^S]Y/"RS(0X@/P-WE)EW= [(OC#RY5Y3Q=.I&J]GD0GJ',69/B*?
P9?#[LHU_^9+C48)*LS5#SIA9E\XP1?/89^$G>U _;AC=HFRSBT4^('*,(5,EV80V
PXZ!4 ,HPT-@T$W]"5P^MZ[=B^Q_]<NP!OC SG]==WE])YMUZ3$*+%&.C/M($DR3_
P9^$8^$1DN+/W]I/50)]I#PHV'!,".YUL)#3]H#19[F@]QA]?^!V)A.U1]IZ:B^$&
P?I>#]LYF5P9,BH)YHT*%3;'G4*5L+_M4O&9'37KM]V@=+:"%=]#*<BR=]X2/8NK=
PDZV$.>O*15Q!L\H&PHB[]/DSZ$GO$D\N,58@'COIT[@VZW*E.:<L!;&Y%C:VDU64
P:S#=G5A<LO5/S[ C-'\4(P0B@T!QD3V]A:4=,!%+Y)VA?\J2V.\SC_JG6E46VS1*
PC"V7^+N9D,K=9UZY'I-MO @^KZ]A[TD0S2)[2MV?.P9 T\/[!_=JZMG =ZGQ&APC
P+W\S_W9K?C$&%N?&HO\,Y[^6#>F27/=7EGV?Y\L Y2D#-=9Q^P^WQJ"/2LB$%#"F
P>I6RCBB:=R42 K30X_Z;TM(0H#6HD^>Z8H5_!;(E(16M==Q(;5O_P%_ITDN)MKH2
P6">* YH^1V!$U_K?VXIYQB\>EWU_HDDP<<WD@TX=J19)B2+@4H*':YK2Z;<3:]62
P2T+P5M@%0+,>@S#FOVV_$I7]7O]$/<!H_?_V,7>JH154M.-ESE ]L/F3M/9AFH0V
P?58QEH,[IJZZP']:_V^(15;#9E=48C\\7_3A=^UV.0[1D2L\$JE:THY$V(?>Z7^/
PO69FNSCFJ?QB_7P#^,4&+-<;P)%*7AIP\._Z?FJKN#S)&A& H@#L4I?2T).CZ^E(
P7X?.=/32R\]MW8&Z/$ +!ZX:JOZ+I)HIZNR3JV4P1^II7M&8:ZEE5?*]/-$]56XE
P5G!/2:*PZN5_HJ8J(+#[/_BZ6-CNE(.)J.<],P]  EE$@2Y.#=C;-7R=6/]/R.F2
PI%X=/G#Z-:FH%%6LQOHR>Z],8#G$6K\N,CV4E9:5^.1AR_GR0A_V696$H79.*]]0
PAX_F5!S>)P,O&)Q"!:\W-041<MV1IQTU(<$79/92[9HMW"%UAP@SHF=D0ZE^4E5>
PPF,L(TZ, 2ZW]SVR%/X5/-H8;2,+0E(R(1*+//9#F4N%6JRMS+3YRI>./'6Z%NI&
PG+*\5Z1'ORG!7U_D[=>^(RW_G6F?2"'?2)YM.U:Q>J:PLS(H8S;XKMTPU0]!<,40
P O3W@K%";89%I'&Y':3?V56_4QWB4#J*YQL6"=?VII;NOBXZ'EM.Q>X2[+U)PK!,
P[ &D3^[H'99>[AQ4P%<)WV!)&;8*&^ $?B='KBVUNBV!BF1P]-P91PTG1EPJH)4>
P5Z/\X3R(@3 $Q;5SSTQ'VT47R[ ,'"]'#W_SZZW81WR[2G!.W6M!&QWVR2'1RJ=R
P+:_;QJ0&;S8[-4B(X);X2J$,<IZ2/E9@Y<K2H(3/?-+?+IB6-#D!.^LOY"\RR8S$
PD/U?#_0XB!GMW-7#N9)>'+ Q-^B4,V  "9M)GA.>G":SW+%^$F@%S##W+,'L%VVO
P0/F+L^K#V=^GM XL @P@>;&0A;!?F+D?"NB?\!$O%GQ#,]R'NCLZZ7+M.?\45 DQ
PPL'Z%Z1+AMR.4S+I&*M(ALAXJ^O9?]9Z'[K,X*%YA"EG;-?J1%"1RPK%J-@Y;;?"
P(4X33T>XM20*4"E:3WF7QA62:2N :MG'#K9NCR+']D.-9^/9VS7(2$LV<N47<(&Y
P!P_M)QP^4$ D[)FJOK(IBRP*(55_&Q5<.C"M#B)/$=Y:09"VN9%8=W=]".N=SXQ3
PP9-16BS%FUHMWGYPA3>CWH]J2JX:#_/WIMEQDCQ-9E--E7Y7'\Y=7RJZC? /$Z*;
P79XZ4#::>=\_B(9S$'H!:< >7NUH9UL,LEIDP YBY'#6]-F7L!Z?5\-&U8)#==[!
PF+EH2NQ-/7#RU]WO-Q=00PM%V#1Q:S!&B=N9SJ(Q6@<6_,L;0%::/D&&869L+V5I
PPZPC2IJ3UB[1<<PL0?]A@''YL3L9B[:=@(8%]U3(+:0JDC@CM4#O:BFBC/C0@BEQ
P4/1HYK8233Z9XN!Q;CG7:NDMER+<.K3X3F)]+74?C$8)(3B0 [AK2I><NY!U--+G
P&J-OA=4TUZA5K?+7J(]@N%91!7F;0SPBDE_<#N,6JR70Q3PNPE*"DV=0&0ZN;=3U
P<#;2B7BUBB15Z'0(B\>/.>$V<TJ!(Q5^2LSHB':J(]K\D5.)RQ/A6Y+@=3$4OA@.
P@$6GP4"Z!(?=1S>10.H<0RMJ[_VI7]"6J?! &^"$88D^)2:V&MQ-H0=^[?. 5C%K
P2;Z^:C+<@R'<]E@7G-=O TNF+?/BZV>'\SM[,WJM#=&=#5T@F]22HI%;K.!Q4A=D
P,WYGTQ:T_2%+_<V;2B3WO'O_MT."XATR1:5TT^[)[Z(O5#,8TJ!$'6>+TQV#Q4!F
P#O=,@ZI5AV,7'1U;;A3> =?0S!8Y40@!BW)3A.-)\8H/6DYKC%K$08,*>?R*%5,Z
PG??9#8[>8$HXB//@5/]IUF:.B8"Y+6!@VKKZ$T,S23=>?7#)BG5OC<_'8Y--QMX"
P-ZGIZ@YD-G12D;NWFQI6)04'\+87WYP%91=Z%7<!7C<+.>&H$![M<'L_2>F($);@
PIG+5-C>#MA!%!,XN#.$EN:#<U\1"YWP3'.0%1LYNP*WGI[\)!X7N:0CHH].B9BZA
P#:-C_[Z0\&A2+_UY,0>Y6,A)O=#_J]05;@RG0[+>SMJ/E73L1N*=[H+,U['?"H5<
PU84T<-?*;ZK(C)':;ALIS3"G4NL5UR0)$8*LK+XOEW%2U=U#[A+FB%SRI;58NMTT
P;'$6'<M'D[1&+RVG*!N F%U<[3T@D-K"R[*M'+SHQ8>:#^&'] VA&ATVQPPS '$/
PK%J=W1%;-AKR,<JP+DY.:-'8'KF517]K?(=K:)B_9>L1@ $T!T(Y@=\8GJK@HF>,
P9[U*[V?Q=V*"T-*>H,;;;:Q<YF/'X(D? @Y#\4UN?#IQ_96#$. NHM1R<+ID:^BJ
P4E15'M7:/'C(GU8>DL^4"1NX4<XT;IO*L*K-%T!&1! .EQ"?<*XS0/30G?:;<$4M
PPC;?UZI6F#I@R&M>6"T>Y AH(G+#$EDN(VO5$:=5[NPZ=2=WO_"*!O9H<CU%%O1;
P#]+-X,6;3D"DQBT](?LLW-AC(Y)5N%EAK_-\:F$V,5>;_B+.\\ ?V+&/C 6HYI2#
P]A51QB!+E*![6'<J*9#IL''ZG6*'R<(]U/&[^.7\Q,L5%OFY0'.KF6@Z SP4Z* L
PT%L_EG1GY>Y1I"\7',U'M]#MA0-M.9K1HT*C,*/Y!F[4C_D)6K(1>&]L"0! IMFY
PCB7?V'/"J+R<>M 1,6/H;J_/P:8/\PI;89$=VS!G43*N:I42\R]"A6O5_:V>.0BD
PI-Y+G:KVRR%CO=\Q&Y^-AQMY>XWUQI5H_K\_0?(P<W.DF;2'$T./+9CV"BL1_A7;
PRS5AJ<XX,).>)$%X($H/S1Q<95D$??&1BH>EN=[E\#GUVC^:7*0\% "KZI<Y30.<
P>VF6QC=9K['\G,TS*%1:EZM[VE!IYJ>FK2:'<*O#5/^\&"_HTMO%:CS>J7_N=>XS
PPF'0BBLD([O7WT5K]8$GZ00A3,+C"6L-!.7^74@Y0,KY16U MJL-V\LQE $EIQMX
PE9S2Z]5X\$$P-9IW$[.QX.W&]]I)U7IN_[7$_+OI;U69[?#)O[<O7KYALYCYI2?2
P 8,61O870I"<HE'/F49T=L1C] Z<QNI(4:HU,T Y8DI0>$2 U =?BB#/C-QO#0'C
P> =9<A56G;@P,#OK1S<VM94/!QG_S!?P?A$<69K'N@4D268LF#4?A.ZMBZUMI6R7
P/*:+6<?^[=.D>%U6.:'250[T"/1RV^7<T\,R9Q_;PQF!CU2RN07-CXW_I!4-O##"
P^"M(61I.(L.0V6/F4NM!.?(+S9B0$;TL9F_P[6YRFJ"Z,+:+%.R-B7Y-MT54UP,_
P1=@<(361<JU[L&MJ,U(/1_1T:J:!FOCE.\^&]R8%IV8??AE= %N(ER'18^!="T0!
PP=WBV6<B;MC(%IJV#097<BU)>?Z'S?&GH0J\MV=-+2WLB2^8;5V]IF]A2FGU,Z/D
PK-W9V/*O2(L[(CN&:ITT!O#8E$AM6#CUX5;OR7'U E2S ^_<&7[=&49WA*_TZ5> 
P?>MD+EF<2MZ*_BPMH!(W-P+'7(MW(S-Q(FDWT:B#HJ+_D7(5^_T$UR+[2\T#O/T'
PZO&CTJ8.7G.R)0XT?98V.-M*X,U8^7Q^_3P8# A+9?5YP^V-.ET<5I$]6:2 EC:%
PO?;;>=(\LL&NNID1%T/3L-/=.[^V)D-#RIB^2LRYUTQ'T9O%.I;S&=U'F74+WUKF
PP?#6'@IH<:7E:"<T0'HE=B,1F1*>Z"9?HP]S8D+*86SNC9E6<3/HAD\=J7#ZV357
P0CUQQ8A#V _!O?'+(^;MC(@7_^F 'FQ\_@FWN"?[O*OV.0MDI5S *SL?U:ECQ%T-
PHH\'YO35GW@87=CT/?-!O2\(#0MM.V^G2RAB)<=HX,._O7)Z%@LE1"3*BD _V*-'
P?5J!DR=:5U71?6OLY(X@MJ1@J:X2FNF-I$1$R!T**O*'']19*V;*CD/QW0,U6O-F
PG][+;:ZN>OV;)">\\O=8U0^UFZRY&AB[+_O;%QLJD1@>#]@[*G@+;88NC8^_9, 7
P@#KK!/V?F88@-NL<R*TR@^"OA</=0KNK1Q=:&#W "^68KBQL)V?NEUPY>6$/%4)3
PRO23,-'(#/EFBYU0-X;B/0KEJ;9=MI1,ZI_[YG"!\B.:8N_S/F,#[_XR*PGD6-PH
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS7_CHECKER_80PARA__
`define __M2_PRBS7_CHECKER_80PARA__

`resetall
`timescale 1ns/1ps

module M2_prbs7_checker_80para ( clk, rst_n, loop, enable, in, vld, out );
input             clk;
input             rst_n;
input             loop;
input             enable;
input      [79:0] in;
output reg        vld;
output reg [79:0] out;

`protected128
P)A*E#RVD@;LMUU+J:-Q+**>CI=*Q [6AN0D:*FXEOM78:&S<4IV_EO/<C@V\E#31
P\RB.H(XWJVL+6"#*E[G,_ERPE;Y@(Y@ZELYA\WFUW%V0<=)\2(&ZDKM2MU[BLN66
P[0E]3J3B+,VIO0!@+;3=Y?B[9-QK;O DCC3"M:JZT*Y_V\'N%V#VN%2B (W>&Z9V
P^3,=WA[\V.+"^<G)C3-,S>D5 %J_8M@!0$/#'(A_% \9',M*.#G@K"YD&4>.JA+0
P=U34XHKM%_?Q\4BEL-G/ -XPN@8=/VMC$W<K>K\"V2I98%S,Z^G@-B';^#2J8:YO
P:V0(I/9/0M%;0\!/! U"T?(FQQO_DHZ+-VTX2V<-1U'/%M:25$A0S/!PV.Y26B;V
PV]B4!6 H6V/7TE\"=[G@8>.E-MDSJ66O/G$AH^GW#@1N%WU&?^HT$( ];4%\-;JZ
PV1&GI2^^MLE8-_2W>.(.&%_II_5\'Z7$]6:NO6$Q$LPDALGZ$8\6+<WK]:6C#%>H
P$>)6?S\^Z7QPK.IZ.!O!YK^IA"7#['6M=M \(4$IF91ZS<,GQN/",49V@*MS2P!?
P8A>7@XG#.1Z:=1=KT2SDC*,4S;+.!;D .XTD5M @/0S[C<5,%[XEU3P6'OA.19^;
P\]G[9<G?5O)6*H85P=1!K_V2/L$ZPOJF[LZP($B$3$Q;DB6OOTH-4A6&':XHB"O*
P%Q!4@1"EPKUA58MV4MSIG7LU>%>!<+,T83">,9E5ZK-&K:J'W96FO+<+AR41DH6L
PX"N7%W%X%9:P4E[>"^>[Y$9._?K]C<([N9&5%#K&>-4+/W?QFL'([F)#U;IAOEV)
PAALD'W!/6S8$SZ[B<_7J"Z<)SJ'PC^0RT$](53*!;MX/OCJ3HZ@4^_$)YYTH^,,Q
PH_PL92^;%\XS)%>A%^PP"9A.+(&&1++4.1""E(<F >C%)O"-K7(&JJ[\-<*KP M$
PM:"@6M-#@7A)IVR&-0'[V00G3]-MD&)MFSW+"9R-;&Z8TBBKL?:8./1A9HEE0UG%
PV>],E7H"4QRR0_<O.?4&@$KXHQ^+Z^D((/Z'L07W N)1PJS:ER#!N7_,NEC?/YQZ
P*BTV]05_]YI-9.XH4G G'T#"V'V52(#*J)BIB+0@*A^]/2^"@$5.0$<JG.ELB7K/
P"0,QA\&!)@_IQ8N:DLFGS7P&0(=]!K,1NY&/]YHN9+5?30?:YQ::B$+<WM,9;G3%
P(#^&8SDO1T=9'*P[] _8=&N$+@?D[S:N-<-=-^:,DD3P=V@7](Y8<8UL^*3_>#=$
P6QC/29,9 /?OFC _1"U$2,V(?/O2YS60P(Y7F+!ODW\N6P)&^+CW.40E<2@:2JOI
PW/I(;BJ4"'N(0D8X3J=@.1BEJ1(J6KK;<Y%6A3<@Y(G^W##Q9UB2O[M?[8X\,,:=
PWD<V< ;Q4&3CO"<SN)/&MAH4]:RF-S&GY"ZF=5 =G.SV.FPK#X9;EMJO53?3.J=[
P#"WR\.NR86KY1.P^BD>599>$T:;1?OZ6LTYKUFIMQJU^/>J'[K&$.#B13\ JNL]X
P@WQH.+V2X/V*H,>51=]F3$3$;I7'PU]&%A(Y\IO$760OR41,AU2!YUW<HTC!@ZH-
P\R5Q!^5) N[AR#YEJ8%:9:,YX$^OQ#$A51<@GU>('FY26N6#&BKZ$-^BL1D(.GMJ
P/6OX0?&*N!OVUI5?^%C*!WT8HSX9\U6K,?\F!@V2B2GN/EY2R_YZ>0QGGK];_J?#
P^LR@9H;D_)S:>N\U2>H\WJJSC^Y]:@<@'J\;KCFVP_2T:D'R6I6-$."TEVM$^1M0
PK:8EP@!=F"I:6,2TF"]F_ZB0IQ@7QP@+G3-:*^,<4@AZ0MEKSAI7#-D"ZI#-K*6#
P%S.+DHWW%@.99J =*C$DWS;\VOXC/>R4-#E-7IUI3R"D%:7RA@, +>"E)U^!0PWQ
P@O/NS ]'\-6EZ[R5&5P[S4JMM_='S[E@R"E8S4#5_/NK\I*U25U=+"?7D-KJYXO>
PQE9][C"3+<$#))'_FD>V'6,LU^&6_4-7"C4??=%NV!(\D2F"?NL(<C-!U/I94!'G
P4=@HDC?C@$H?%&?*JBC^_HGLX_FM!LZ!(NS=?!QW,!"=[U8#M Z6_V.LCJ^_[<-*
PEHXM\ED37NKL$Z?+?9;+Y.+0^G(9Y(6-3PQ[5:Z2L_HQ6S!<-HP/B),/\*%&%SI;
P<F'AM-HC5CX]/M];B395^!>"8)7N8DJ )-=?R77@9=(!;,ML$QN7'GT['?!?;2K/
P?"EOG!7&,_=W=5=:E+%(U;K-,5_<-O3U/H&U^!#^)9 );V"X"Y!_:+%O(C/#>971
P3;C3ZS<Y1'QI]28RCS'-O*=UF_*,T&P_Z72*3@UFH*XQ(YQ\\A"(<YFB_ZB@'L[#
PIK=[ ]ML^I370/7#%;38[K%HO]K%?"RYDQFZXJ8:5QZ;2UCWX3 S@U,0,=4 [.UH
PU_5?QJQCN\2'M?K6<KLY2<H*X=P+S%2+3H+,I&9)(:(I8TY"%*:'R?R6TI;\<1J@
PAZPSU[XKXW<.SIQ#"]4C"9&$0PN-QXW5HLLE<TE9EU"I[,( "YCGMS(4W0N7$A8C
PH3M)B!-AKM0]E*P X5M3Q/G0>Z;9L:(L&/QAVN 1C)OMS^6*"GQ#1G!S*L2,^GN_
P5,_ZV"N"2$G1WCVL#VT&%LN3/%<\J&$H<K!?FM%D#4&BE5LCR6RJX2]AGL4MFQZ^
PS _*>=[%HI>6E=)"R ^0>BTM:=04FFHO4C&[D^.$;+OZ32<^H_26H4FY9FO&P,Q)
P@[@K]3$#.2AWZH;G>U K^.4"E&?G><+/1IE"P!B<$=!9!EC))[T@^_T=FVH.ZSZ3
P&4@MMZ-]% C[<O94N]O-:D>O9[Z-XK\(.LH_%?7Z\F-4URN2H!^54@1!PZ!>(:6F
PX KTY"[!1[_<U]<U'L?N#'O^D^NA5\+2H)U$6+%?W7J.PK5$P'6?\LCEQ8PU_IX\
P"JG<+X8;1L5Z]0EX1LN*VQ9^B8QU"-LWDSW-\0(\Q[6[ 5W%0NBY3K-+:A3\ADY_
P(EX_?^^JN>$C(<><^H6IUCO5B1?3OD'H_=!9$"# )148])O=E@#(6D-.J"EUA!+8
PG,MPD%TK]%VTZGTP;PR;WX:8<6-W'[I1S^7Y:AU(F?.Y^9.:Q AB1MQ-^.NF'UF=
PR%.*;(&Z%I-S]@)@</@%SB)+>ZZ[;RXT?^W&4CC]C'SC9@)QP]P0:]-AXUG^]+X<
PV2WMEL20FB3"Q.HP<0SS:_IHHBO2[%6Z1#Y+2Y%8!LLT..XV<W(, 4W3[NSELGRU
PY+B)Z/Y8"F EYJ=(L(YO7"JG=Y4R()._B")Z67E$7)2"0'W9!:1U^5G1ND_!9SJ#
P7T':=![L@IT\@$U_GG1 2\BX[ZIA.*/^0ER,/J@:,O=];^GD8^M-_X&EI\?6VA08
P QMOS*]X$:>R_XC,M'G"Z8[7%B/S>0-+[@#_-X[:',H+G([!K>\7B7[,<>3VRPVL
PMR<1PHDF-!UTP_2?KD9(BJD<=(#+R8!1G*[VRVZK'')7TN9U$@('Y(K"L,:FIBEI
P[VK#*].(#N^-"F)9P[XJ;AG!K]I)SD:T6/3GF,<%A6[-B/L.PZB5?[43M*B2SS(E
PY=5A+4]$[$D4&;[1N@>4Y E704+IE8^.L=Z%&-.1X[CU=%PY;4L?Q;U624UBH*!Y
P5%#55F18<A-%#::3HU1TD>90$VRT8_&8LI3&;%P_TD\1$F-[6Z"T&/)4WP!@FEV<
P9!+@7S !<!1E8Y6X@_D-$S1)LQM/PR4Z=V-<IBT3/7NH!(_!..UP2!Z#!7?-4B(J
P""228+MN?_K86N0-03.KDZ,5T2X7ANN-.XD\G@&J;H'[9'+7*K?)"A_BC3%=H&)N
PLOM? W PKC @#LX0[,RG<2FPW4\)XLH0?!N('8LRD#Q.=QR9$GA:NP%1$\4:) R)
P5BISU*Q#L) T8?L.WHB<8UL%N&XV,YC>L^'Z^*]-;=L47M0 J2GUM\-=9^CR1]$8
PEKHDS*^8[JCG/2%F\=A%):9":%XE%ZX:)JC%_FV;>U)0#X$2^R#=M:HTJQ*<D:GD
PK/BO%^03!+W1S&B;PF,4*!6&KOBZ_WIXEX X[H5#OP*VVE")5 288_"E=06"5&AW
P,(BN*_$R5Y%N8B/4J_GZ?=]46;\UY$OD_+">.65;J+U0Y1TPK;W[C_G_B;*/S>3.
P<,H(D=*B'^;T?=2YJTX8DF/21\/F%APAK"CQ.%+X7>40EXG0=$O'.GABU!,7RG:I
PIA0-+0IUH\S=6O\A3/>B7\U@T->X:"NQ__3BAG#@LBNR/%E)/F<ZPUPRU>KP'P>L
P,7=*>]2V?*-$V0>3#AYE^.NDFW+]$:SY=3KS3+G5- $L&^==R#]3CMQ(6?<B02U,
PT@K,( ;+3NXK/>*J96G@?"4KT@*&74GV9AO,,Z)IO 8(_DC]:,R"UX 9<O$[J8O1
P@&M9_0@))&J]MNE1'Y.R+C&^EV63Y&+T9@OQ8CF'."81!/1_2(*QV,&N$AF?BW9 
PPAQ?-KE?9DE[+OG-XZ>$_)NXJ6<85=>KW_V_Q=?.R(S#GFF_GQ0D7ZA!E_C14A_'
P(ND/B=$8WG71ULV8%^C7 6HW.PG1R IH:&79,:75^DSSAUT":CYO^TF&_!E\16/U
P]]][A6IIKH560@?FUTN_.._9^>A=9,>3$G%]@"% TYL>O3<E%B,,?O62]K6B(4]K
PWE5?2,VKS1GFXKUKL.@VA@96?1]P! 3!Z9;X,?1)#-R$CU 1#)5$<&R]XY0#1H*0
PX.'=^?URE7;9!-;#!L<XJ72F1RW'K%SQ&3\A4G7:;]=R: #R?%KJVJ/JQG6M7!A<
P\YV:M5S,X#[4ET)GA\PXU<1A1)XEKK"'";Y35KA<:IK3?-ES*_&?W$AJ(KC:@Q?2
PPC1:P0)MXG^V9$L(3Y#RW8PU!1D;?U;,L6DF(1,N8X=T9VH/K;[_6AO[F9HM12CG
P1($&?DK[3OV\F7*"$W-0J0>3W,"X_#?@9\ ^W]<A^<AC$8B!L?/(;NG,^5-Y93X;
P'5@0 BYKW-=3I?,'Y$]_&:3%HL?NL! EK#CCY!Y+TPU3W7+>@[-F88P4\:%H& <K
P9>@%O@M"=JSK6NJLO2*)7.[9F,XK'S&;1>IZTF[)9JE[=IO2%P ^?'X8OB*'4,^!
P4++SP5D(E@4)$NC7:(70.VHIFN(]R"RKVGO4TA*O$V"'UP6X2/G/5L<0[] _-U3V
P&R;C_[[&&F+&>"8"P\(4BOP8<@M-U'HS+YE:\U4.6S9)P47. >/T XKV?(02C9A-
P$MC$;H*\PI%SOP3O&FK1K1=1:]/@L=_(B%H'EC"WAF02;%H5 43<G\4V):=, DE#
P&M)AR+:9ZS@5VL"L%=-7MQ)%@8WI:.@>PLT(<.T+P6\.0 PW'GTLYJ2BP(&DL':&
P^*69(*1.H39_VXS$\"%-/8^PPOF@7*1VRVS9IZ_-)O=J+XYEO=K3)T)MBD<2X!6F
P009LMN#-840 U.T-*."0R8\C__Y KFLZ/O/ELOK,'G"*,FN%TS\4-^N&Z9IL77-F
PY4:Y=."['-6("7F!;S>(WJFZU],_M=WD.U+,IK32!;[I6^5/M)-T2<Y&9U11>N*Q
PI^%'O)6NNX9E8->HJ[^"Q6A08A\5-"AJ[MP%C$M22VAZDS$V8NERNA<%Z&,]C!9C
PFY%-ZU<7.,428![&[$-5V!@I?F=VN0 41Y?(2SB"[X GH"G+K<3% V,Z:FF*@RF+
PN\X8='8A:GQ_U[]RU#7P7H'JYJC:4RY9:%3$EIR6U:+U/\6),=LY2;?CHY^"/>AJ
PD&_3DE/]83;UM<:F24F3%@HXW,-(.[[1PJA:%B+&HB%JG*W!>M2=C, Y'*U./62^
PT**\H4HDP-.1P-#OZ@/&1N2%XQ-F:O3UFN1,474\6QX/#I0?8@]D4N*=QO"%RI_4
PXD$>=WK03>*<A9(0N3&@>G+6YC"CX%:]A**%+OG=C4V:O+$JBXJ#:B4LPA<ZS FI
PS#(S^0C7U.+;@&[HQ<V.P?8'QJ["@0MA3SXQN^^[U;$M:C]<H]+N -$.;/[ANT$F
PWCLO+\>G:8#[B!6WW%F>'@6G02\J?&S15N$<TMI)AAU&7M@@5]'?S+.^@V8Y^;!8
P4=T)='I=.ERAQYHHLQ@*W %?8-OFZENPX?@/V9X%O*P(>7D]>K+&/9-X[!D%0Z%<
PUUW8.[J7/F!U4BRU!Q3#D#R!ZT>&/N,CAHM$)Y4FQ/O\$42&_[<?Z03MM-)*R6=(
P(!>7T&TWM]:1#7R56 QBEMN70SP;R-:P5 "UQX6J/3K!W@5=1-+]A53"F-/&U>L9
PH&.DTKB0*-4([O,M[.8T23E>1\)OLA)EP?Z]T'CZ=*0@VWF@)@Y8(9&R61/AI]D6
PTG#%I9GK[6@E0SY>?G8,8\*S^E:,8U L**@/A?4S3V5M3 CK ;:'DX3?:0X.-C%G
PINOH7E[J(49+S_H8<T%?EDQ7R;X*I_+SI-D*_K[]#P^&=_(4G=*=>AI_22?VPY"Y
P/IC-5OFX]=(D3"])4%+R>7:R%).PW+^5[_,P2EX0.YDK$@/DV@T@&BAV@@FBLU4_
P+P>Y.OK=\C-@ES.'!CX!'/&W\[D&&/0F0T?442&1?J_FA*<KP[1-O\Y.4!"0^V]<
P",UW\\M\B[_A_3O3.<RTF0-5V]F*?W0-KC2UY%YIS;TWR=Y],3YO!RT]%U5+A'./
PZ%D.[>UY50V0=I60#GAA])%"E<E#/(LN /A6V*PN+6X.T%^6>(?QB:L.HSMNZ[K 
PX:3, ;=P8\(R;$::CN3 RC!TT<D^*< P)146X7DG1A  %JN)JGZCE(Q0:5:@=.HO
PALJW1PK.W"=[&EQDQL9=PK@L4&LM./3@M6;S$MPFW8WN1-7KG1E38$=97.U-&P68
P_A1A*)M"T(W<J-(E/<+6UF;NS^Y=MJ<=CYB8[--S@EG(9N2JF<7P'CB*"4$*;UH+
P6QS@..PGIAX>]:R7BOGPSD^[/<HTP#\29F5[)O-@%]2E(Q=AF*MO'?D]JL@M$77W
PJJD5]*Q-#W&9LVLACN;8N;)]62(WTK0 _Y%P_G?!P'IL! =2G[.F7R/R#,,Y)B3%
PL=(2;!HP":J)%)24!YN/G70A(>NC9WKD"]!_7CDY6+^C5/""[V:!@ER"<7;@1?^K
P/TJN,,CHHU'H#J7,^ML-B5[?H:^U$R2W5ET(^!DK)3E8\]UHAJ#2:GMDF;P;- 5X
P,7(MA=R*S=Q2XX[14JNF=J7\9@^I /5L;]F  1BNI$*P7#WV&0[HI*8X@,:<TN Q
PGO:!D<=E?BTIFMOC6W16*C)O)=J;$&.W,],J)3E1ZV!0]B[71#+]IR@W(+L^Y,@M
PT9^L*\FE H2,[W=1'(,/5M,=)$QS64Y*FD"R/;HLU9+#?6UJ]5&CUUHM>\!HL68'
P@/M./F.=)Y(ZH"HUH02<,;?_@8TH&<2DD.,.8;R4K'8[_O4IT)_Y$1^;K1$/@&=2
PA)1_]!"=]T_RA]0#DP1?:U_3[&8](!.0?_Z?..V6+#X4FCBH87W]'3?!)R+N$AUU
P86-Q&SD]:>CB[>C^RB#P@>FS7M\F3 GL,;1M8"#NT,XT48FG'NU#N^T=F T8)V(,
P8>?><%B[LYUYOGJNNF/.1&%I2WZ63#E"# 5T(;XD4WJG028LS_]9*H7J=W0;=#%%
PN]Q 4]U)CA5,!134:R 6*-HJ0$B(OG#<'&.9"M!V!W\YHR+Q":AUBB"63(DGZREZ
P()A_/[,$O*X=O)Q%Z,O/.+CXUM631FD=!H+!A^[W8,U[AUG%4@BI5,5L(( =9_B[
P>^0OZFO^0)["Q<L4W_V;1MCT1[-[OS -8S& 4P0_'@BL90/,=3:QU4=L43;E4I',
P)-SK"--6=A4]:%B7S,)=V.EHR7=FVR:&CY%[4;EPL7:>&+S/L9LC^JX?27&T_I]"
PB'W\?93W^IBS,L7&UE C@6<*D[N'^;'?/>,69N(,G12@0K==AVBD2LF!<\&+.Z][
P+G=;'02L=.,RLB>2W4.2I0ZY5X+!Q[-]1U@V>(##'Q5A?-XQ@D.2"@64?E =XM%G
P5U(4\L7'F;6%C394@PY](Q$?/E&J0>1#H>H$=^Y\$_#)W=7#1-22T=W.ZL%.6R?*
P+C(5Y6^>QC8NR]-$0*:>I]_1-M[F_;XZ98A4$3 %!70L],TP@O:(TYBGL&7X_1OD
P\%W"ND9E!'@CT#M(,XS0G$L;N1"RE"VU# U>EP*=RX=ICP5A!(EV(+M2)JT-:T(A
PQS4<@##HZ4]^)E&@H7Y:!RG2?OR(S>HJ#)%I;;UR[LGB@$-7(0SF2M!,H)Q.W;:1
P4U2VS3G"63=U0OBY&]"2D[XD.@H81)X?A!YO5IY?CU8"91CU:PW8AC/:^;&/0*>:
P8<+K@H2]*C!Q-+7#@2:?[U\-Q2/K%:;M]]JQNX-UL<AW)0VM#^SB>10%#!X_"*4'
PF76U*@=3TD-KUFS'KJ)'B#(DL+U0^N,#>C^TJDA-3M6:N3==_P4^MKT\.KA?&QJR
P H82<@!![X&C%)C#(&Z"),:>=!9MQ/AS5 #_%[B<L>EJXY!763F.ABKZ;]"2&#A3
P#ZJ-.RI6GB*X>,FO#\6<?^5:'=YJWP$C'/@>I)BF4.'WD7Y+;OP;%+$"NZ(W/0:8
P@Z'VQ%J<&NT?T:,N)<@<P-DV=1/YOSWO_]),^_' +_^=8B!61FX2AOJ[771^U?5G
PW[_-.D5P@QDF3WTEPWW,IQ&Q!F,[D[\,V'JQ(5\@K,N]NM/-NFV@==)SK%@B6+RT
P^=/M'3(L[IH#3J3@9X*W-N1RSL[^/\%#M;)4A\4OP=',N-_Z8=!I:HG"#Q>EI"($
P(3)@F$#R",P37SJ:(8[@WL548#V\0*]BLT0R*XK[O^>W[W0-[9\HA=\-$@"G'MJ$
PL!"S@T6E$GII'WRW!/#3YV!C1\:8:==AF]"WW'HL?'A/#C5/?&I"%&(1CX?M_.&\
P+(.F0@IG-Y;D8$AH8"Y&++=YL_5NYW<60/1C&2]>HUVS0NN^?NGZ[F1AFB>L <W:
P\'I D\27!"_8Z&^E0"8K>*R2>]HM+%R_W2=,U3:SYWW1",_J.YU"%B=+Q/=P9EIN
P0T5Y&G?I4&TQ=P?3BX54:'-HU.9.53RN'N/ &^'R^5!5 ?4T^]=_18VK=TSE2XE7
PEE)#1H >Y\9COS_QLHDN!&60CJE18Z8YG]YB*,.(AB2.TS0P_D$/J-88#*#J0H**
P\1I5\^BY$>VISB<C ##ZLREB4/P9_FFQ<%)841E0$@_=4Q5$+T1)@#MOBDI79$"<
P,?@2]6,2P\Y1W="49Q)2@C.FWN)30X&?&&H?],W9(:0@Q31;Q'TY]*;7VXE2AQ%*
PDC@>Z*^,AI!&<I;7CDO[\91X8^-;A",')XG8#K#6C.H_;CH=?<X*JB#!=Z1.R,2J
PA=MU&E]GVYEI+K) QEY4R2Q6DOJW\/UH<KF%H$9%U#;@YW)ZE*8CWFFCY)VCBA>4
P-Z+X0>IY^9'^U#[OF_)RNZVV-6_4?Y9U$-";F<KP"^]K_F(863#^MI41UO:@I99.
P"*4?%*8EPPK$EKZ2'='>G9H!R.8KW['?1R(]I<<<R#)M0_U _P:GC<XGPP*SB'03
P7FTGN+^"; TXUU+BT>0\X-/VC>8 9")24!2K7'O3, GB[01C7E?L;I=4UA(6K1R)
PROIXGJ0'M&X;O52+K]F,VU1?Z.E2ZYIJ7XG9-$G1V#)J"LSR2?:JU +A(\85"7D0
P[W@<$@9$DM;V[FS0XX!A/./ G#KO9%CU&W38*[&63J-VSO"[Q,67_;^_P20R%[KA
P26B7"''^)V6W23"X+O*=6>,?&(^:K,QE]GQ3R!7?RJX_01,+B(E$.SN_?U^Q/K1M
P)UDR(P+286= /WWQW8P^ZQF=]R%%Q*IY;**M;-/T>OD2SKZ0<R7420N>+)A@!%ER
P:!A.=T"6!!XMP)&(]*!^H%!F;/&WSO,Y;[#M<OY9ZFJKNXYP4"_N?V59\H9A]A_=
P\$=5T%54CIK%HGY9@/=M4H+48#(%)'#9))YA<FAKT<:IYG8/ EYZ9BU_'UDTWL<[
PW>I*NTL<8CM$F>I&##5M 'VJV62H.EW\/-K3D7:H+,_40=4>S]$DX4\ U#"AL$M:
PNB(X*)=5L@XUSMO*9M('B!\^G3 3:APH"84$PVDGOMA:_PI)]WA,JFX'95+GW>"N
PC/QK8V4>JX<["O!3AMG'*;O.%&GX=+L7:_V=/V!O;F1L/51$#^ERJYP-4TV38Y.V
P!OKU%4(;;5PQL5,!I=JH5DT5E0)X5%CK^M_$'Z=]]5,%3>UFF!_P6B@9F?2CM5AW
P[$W2O=;3Z1J;?S2_,CLNIBE\%7LI-)P;U.4OB(_W0Q;,.X"J^-1*+N[L;RH2[#'\
PD>?<.14/@]@0TW%;,B4ZE4/5SK  ASUP+'"->-7WG[IWI"Y]Y57'_!,#-[(-SF#6
PXG0:!ZSNBX2/R@Z?";3P+MT!3$;E*;#.V#XXJ!>F?T6$1RDWI?73FZCN' S,(319
PC#D<)1#AA%)3T_D(UO_!J!_Z=/LY/*M)CMI#D2!L?;B^M$3/,#; 3#0'FV 6I!]"
PW$Y!1+2_U7OC38@@?N7^0O"=AN0+E=]>[F_51%5G<C4YD@P#R=NL4FF#QNC^$^B2
P3RP7[1B:<-F>B@5F#*JIPN7K+X]KW#\ VP="2AD'A;;0D00)2HI@-?G]]/)Z02DA
P(;SUCM(!964\4C_KTA3 4R8NM+5!B"T^JQ<8\VZ-(Z(/5K<DV6E!)<^9/#_Y]<7]
P4NQ4=.._XD*SKLC9CEKEA\+Z'T4INY4>2+T:<PU_W2D>OC:A<SA,%#A[!\JU3KX"
P+7_DLG"V1!Y@#9.IYVQRJ#D-*V-Y-I0"W,S%EMTSV0$<=C7J@/IPLR&W&;7H@4T_
P^,PI_3]SA]5D\M=EPV;12%A<6+)0=TO*MDW+SDWEZ3I+!%#YB7>XN%BT^X4 %O-A
P&ER$MQPA6)PI\FHZG.@D*V3"G%N['QM%*2+ZEXVXP>[[W21B"! [6O806FEG)8W%
PKZ>[(]P,W75I<5?.16V^O2O[;!FR=#('QUBU/V%XLRQ6.,F$+)AUU.Q=XIMG"%B(
P+-\4X5F9"71^O%.% C$Z E:<9\A&$<.P^844L#(RG7XL#:?X\P8B!\^WU"?6@DSM
PFDYHC2U&OB&>?<B]7H,>3"NP-]-]\8K-7*E\2USGX $N*E>&63[=:ZLEU=!)F0P-
PHH8282KN@:0O>W?1SWADIR38?#!/%;AW.LXN;\AUV]C]L$[I.I8%<S#XO,D.*_]D
PU #"XS\R]:68KG7,\0//UA?S!X5QR4P_V6\C8Y9<;;8NGO(7Z1I6$[E%!J;&,5X$
P+U5W(,)GC&JQL]VU1*7/MNI?B0]XK7N[#2]-081[3>*R_H'%T-""QZ/V :9)&#W[
P9@$".XQ%]RVP*/3+J@#M&,14E/ _"@UYY)\6&Y<E-SWPY5UMM#/H+AFM2*[05'5[
P+Q'C,MGKANTFSLA$-L'#)J)BA+%V#^ZQT!WJ?ZL)NP"$^)[,R#85S\C]2\+SS(3)
PJ6.A^NBT$9I4)K&A@Z2 3EK\T^F([704M'E&!:P4Y>?!Y-M=P,WN7,]4EF>!].28
P37=0CJ:(C[(R)'64$;=E^/]$$$ORDM_'.,:EI[?:5D;WQ'0X)7U,R0%'%>04X7/R
P315Y2<(^Q!N%/S[9@H%L!QIP,-F*-J\)W\;AFVZD!L3/)!^%LOB#%VNE[, ,IWYS
P]13F5<L1FW0CQ;HM(K13]A"/9T17R7P6(<'<.__@9BSECTGP!ZS]HFF I,L8X> <
P&+ L2I21!N43,GX1P' ;[6#5D;3<4G>P&&!UKM^?WBWQSYVN_$;>-57"P(NM/@HR
P-4\Y$ \ 0%\3)4%!<#T'\!03CHVA0'R$M.9#DNVH4F&43UHN4S%8>TO-$"6-;[.J
P,(/RE^!BB(P=I#++:L+NZIP/\_U1KJ[OBHETFC(@B75C'7,XB(=#,/K)NI6&(9?F
P(-^V2=/_QHM/;GV=HCO+&2;2U5@%5F%SXFQ<?$R3B+- @^S5BBJKL9RP-$N&[2#7
PB-J<+9&QX#_[)4(<%.(13<WD4!.V79>E06P0+?';^KF<V(\KM,_8%RXP8;YJ4*\.
P*)RY]6M8RFRL1;*O/VK%"Y-?$?,7)ZX@;ZM1>RRZ;HERT;"POG$#/0Y'69/KAQ%?
P5!F"4;[C=U'Q%C]TB+PHUM#2L.9E)G<@K%7,@2,3;\)9(<O_MJOJQ]\!A4"7S1BP
PPA?8\?RN-P>HK6]0PO(QF>#PWGB41BMOKJ'54I$YBI?'AYGFD'*;FMANZY:4CCA3
P'\[5U8!L'!-%X8T0"&P J"I=X.\$'?X >LT8Y8(,9N7+5$W-_*BLB=&=&Q8GN 9M
P+^7,[,$6"0)W\/RQ WB79%GH&'99>/]"R.FY$&TJ9R;V#9L5%<X@RNHRG_Q7",1B
PZ\[<C=47ACG1:,2USHXZ;!LR"K<W9PM%_S^P)*>A#!#6;C9QL@=1FPWQT&!(MG*5
P0W@Q9VB,"PV]SA_B81A _\*S1(&5YN,>G#N**WZ%0%&T ]2QE<&4F!M19BY T\OQ
P$N8U]S@M_XJJ@-(2\1H 8@DBPNX@,5?)/Y89BNCM)_3+XDK3@GQ*Y*BF2?XR#WK&
P>W)E[>: QY;^$K'0TA"'IA!8F&0BF'B/K2:A4%R3(3Q+$MHUI_NB3I_V-B/@S\+_
P %4]HFZ^29IY#LG/<=5=[ZB#'6P_OE@]Y%('J]LO0,<4'J6C<J,V3!]RV*,O_P9X
P>7LA,<,9TD>*JQ;#)>)7@L[L>K-'+2H12?(A4QE)]BV:Y&R_V!H5U<E%H=A<<X16
PEHRB/*-??DYKW?OE6T82](9Q)VG<W0;2&],@K<&<6A<BGD-RT8@,<43A_O-K-;RU
PI!/3.Q&Y[0%5<)<V^?P4,.M%,^&($(P6 N^1<HDZ?QR8=8A>+>BZYY<T@!KUK5U;
P3ONB0M!(;T:6/T/,*59.PXY/8B0H\I)1^2J_H<1J4=H1\X"G;+5ASUE^C8R-Q\68
P]DHV$6<K3]/.JEUCRZ/$2REEP<#Z;_O)(D&[G+TA>1BB6H<*-^;K=\FX:-:UUQ8G
PH64=X960)_W4VK]&RWTP%6C!.2]V\CQ(0 ;,"NURTT ATJ)N9!PNG)_)8D7RMFUN
PB8<R>=M%Q,#_7H$"@8"1=,7:C408FM=L?59^)(WCUU6"<])$2(,A,KWO T7<ES&L
P%&!@6DD@G<3+#^D8QL4NG1_[1N6#4#J\(9L31<OY5*Q;/UV=&EQS=4+RHOU7$W4U
P+SQ ER0"LL\0RC?NB&KUZ"*@*.6V:L//L)$'&O$[ULDS/V8LNLZ5)^+E)%_:S+1 
PQ\.(3R[!+7[1 $Z[31329-^'60C4HO< R>5\4:OHK]%-G'[/,9R;Y/_E-\W]LZ9L
PVDB^-PL^X/4(URSN7$F932_=K_\VS "'O?]*T;)>G=*=-V_;G0%&RSTW.:X"P&-B
P&ZFBFN"+=REZC=*!E9(U0=Y."5^)T)T-93B[YO?$5D-@F"M1W!TI/(U_(DEC,T.L
P!=M^&(/5IP]2!9^&_ANQPU/#L6_B:/@R]Q,K^?H5.6F@J=7ELW=(#"(ST5R 2[:S
PJD?U7+D'0GB(CQDC#JX]N]@OI+JVUP_EXQC5*O2$[C8IW88J:S%H<!M _R'0\T6_
PM89V]S52)>E\C*E-U)^.5#MO)<G^Q^=3!Z?6'>:/U#(K4XD6@IK3MB-V1DZ)K87>
P4*%=7BQ]V9I!S=ZJWV$UTAALLLJ5I@0&E"*HR9@$@&.2UB.<'BVO?)@'X.<F3;,M
PDM9KI'2K"PB#.M0O? _,0#7PHR9]XZT6$ZQH%OJ=#P?%RQV?LR&CY,:+B)A .E&^
PF93^Z6BTW@^[9)!,_NZ+5A?/^8\JIH@T;ZX)I8Y+^J^RI5 5LGD8EETX,SQC[$7A
P3=W.>>LC8NU7H]E_K=]^U<;MI8T+D%[EPH"&G\O.4718.B:4QQ/%!8I2UF/$NID#
P"-HT<+%O&-@&,>L#*M,A$GY^'MQMZAB_R"KE2&O B<%2.+]B_RJ)BK/=76,QJJ?)
P]\V_>%GDD71CI0!4YAD*KK[EWR@L"P#EW,%[K164 DDKUFZ7UM;&/6N\K 6OV4&+
P?(^"U$LR];F$6$/D2TCNJ(CT0U@C.U2MDQ\]<K[TRRZI55BDS+@8"\0$E&8XU^Z?
P^D"SA(DQV*4X- 2MR!-VT)]N +8[\37J1E1$,P\[R7B^VD$4^#7TAZ%\;&I-5,-,
PBU&*@23Q6_W4(45@FROPISM9YUM_ 4C+>Z1O)'1V6DK?)HXX^F,+_L0Z2EB4RIPC
P\:EQUOZ8F6HF5>(QQ^C+1P62&V7P5PH8ZJYYF%PZLGN:*^90*8PE7_$H*(^D!H9*
P.N"C7M_MS,-9,T3%%D?GVFJ?]X:J175Y!D#!3R);7%B_G$/8:'1@-57TKV!R9R-=
PTF5]%2AL#]?@B^7:E%=X?!GE=0> :VFM,FQ<LQS7SHZZG49AJ_D*3'0F19I]/2B#
PRDV5XN0M1<!;:9@.-R47ECNP+FMQ??;&7DXX_8#QBQ+E(M>_8>MO%'S45C[<5Z,U
P*,D;?Q&Z)TB:,Q:;OU^#'BP[>I8+#K/*T]S[WZT7(9:?J 4\C#&V IB$%.L:F:$?
PG8V?R1"#41FM,>[L@>QCM.G!;X,\-^DVYW,1A%QS9FE0VUG1@[Z,&&&U 2?\0I;!
P,S$W+<?=A;0BF^8:K;,S![K9OG2AQ,AV[V5#7/; EL#D"=,+L59*+4^$Z6R0+KZ>
PQSIV;D@UE6D^PJUF^!?P GNRE?N8CTUHP-$5*O7C$;V9EQ1= C3-FM@7 \=PMOGV
PP]^@_]Q><:$2A:*9<XPWA]2&KJ94I>6:.DZU"94J$L\2X>@.VP7&@<MN#"E4</1/
PY!>]Q3[0T.-1'5>W<&<:0(T^OQD;M1DV-=CQCSQU7NT?MCK)P38XH7NJ=_SP@#\W
PIH5I:K(G;K<C,,NJ;)X4!EL+AFU1*>K?*V.NM+S+A )*!VIPXS4UQUH[U&81 GDN
P+VHZ5.NR04P()B,:B2L-.O:I4N(GVM=J!SY/79O\_3Y7!,,BO&SD>8^43CZ%4&(8
P%'#6HA\ VH%92=,O"\$BNK4ON$#P*4(H3PX0:<4:I$/_[;E=WZ?'?9-IVWW=RXP8
P8;/,.G]<1=F=/CH3<K$!1F8O"(JYI3;%,2M%+7+SXX0W==;J_:A/ZLN(RP ^3/FC
P%=C6M77%._]-F*):HW^%?;_HB<:L;3L]@AY+V=6JL7GI[+ZLI/96JBG1'68;)A:F
PD_2(R_LARVM'9;PQ+;[2S''?%"7Q&)FSPD&>9.BL-(WG&V#!W(30Z]Y#/NE>,5]E
PR,_0>X1MQL_&R15)'DKD#@Y^@ 7NA3[(Q*P:* U3%76DK$II*Z_MVWX<;(XX*^"B
PMN(.+OR0S: G3A8[=H$#6M !=[#?'B:/(> FQ#9WZE<4 \T!X*$>XEK_99;^2HS$
PA,P^X^="$N6U.\/[_"HKSC#/]5%..F4"O'!!O?K38(S$@@(I.E>,F#V'-4O35LOK
P\EDT6ZLZHAK906ZK1Q$C8]+&) -K;\-@,QI]Q;0,M5Z-4?1.HQI%HN8BI"E58BD 
PLIR(/)F5[K\)GM_8RG/F^S@]-Z82,(,RJMAV[%=@,;'ND\!5)!.RNH +KMTX)7<=
PW";2VH5P4[D/T;BV4-U07MH*JJ?[?MRJ 1O@3A2F4?_Z2F@DN.]KA5JHC)?I#HM]
P34=HO42E9A@MJXX6R.F>(C;&#1>>!#N47G+?>W*1Z:$N-D/1,_#Q5[\!XF['1*8:
P O[9^7$1(@\L6O-G'_*.-#9#P&XH:8HS?- TST)ZL4(K_B2?@TUFB1J*2W?'RCL(
PR:26?LW5K44%T8]RKT'')6@X+I80T7X;0P%5,Q*\8X/E&6NW87MF4([^*!T;F[QD
PZET'=LK?ON+0_.L41?V"TJ5(/4[J7G<"QQR%FV.88O&V:?FQ2/5>TMSB6E9=-D;L
PU17GU39\&DD02U4;?%9,)=',3;) Y1_8S4-5]:YAQM;<;/'B3(>=YC0)I42*Y2#D
P%2PZJKJ/THE'HY(E"3/DB+EMI*#G;4N^[^,\$254B+5)-FD7T7T9'J?'R>'@\- +
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS31_80PARA__
`define __M2_PRBS31_80PARA__

`resetall
`timescale 1ns/1ps

module M2_prbs31_80para ( clk, rst_n, enable, vld, out );
input             clk;
input             rst_n;
input             enable;
output reg        vld;
output reg [79:0] out;

`protected128
P<7W@07PO17B94/95'IKFM,HC9X+VP!.)$A^HG.:> 0??/RYN(.'+<#<X<@:'A,)I
P&6[CE6555$%3%.%>CT@G99WH=/[_D):[B7ND."%: ;2@IS;6^2*WAF3D1DO733%S
P3J%7++&SQ\$!SSWH89MI+;^&(\BJGA3AN(:OVO003RM8GD= A]]\NMUK,-BF4%B*
P&;+,"3%6Z;\/^P<(+RX. ,Q482#F](47]F?,2Q'\.NG:R"Y*=-:M N31[4]MZ8GY
P_LV"154$YHG_Y:<V-.6T(E$&;, QQS I 4:V(WMQ<&1PER\? Z0N0)D?'O.=WX7W
P3%H7Z$>,@>\39?4W?L/T<L-K[.%,'+"YV;O;%^07>1L6\5F3SIYPO3RZOFP0 Y+E
P<Y'@3L6(AD&_V?G$1$5;LP48*%BKVZ&/K#T$AD_3M4D"$W%IY:6>_S)3A;3SSQMZ
PS-'LV2V*,!2#EY"@Z2QA$R$1F.>--:,M:"<3JSQ8+:[P6D/6HO&==WP6[$;YZRW*
PUFEA;*4N[_RS9E4)?X=^=]==<>U-2P;#L<V,P=$%;T%BNG5M2"Y-O?.47B'-*E3]
P#/UXU5,%@(-B\Q76,=KX%WM6A<)40IOIP04\FAV"+(Z1JI@FW)_^%?EQR9O>[Y<8
PW!7-CK(RLUVY<.)LE,HYOTFS6;$0$%=Z*#X$!U3AV0ZJ:D$42BY1^4#SF=0(1']]
P@'G - #N5J6EJUH^)!V#\F0*/[V?%R4%/^W Y.E(B$*HSZ+#G980@/7/NK\$OS 8
PNP^VL*_QXPP#W?5/5'2$K3D06D4ED#!O^_0F@(G=3V'4%O-;7OI+5C"=;;D)D&F0
P8?8$DBMAA:O]U4BBS3G.Y3-UY.AADPO)>5!2-2&KU3ZHIWP2 1..^A-U/(."+5+^
P\@^R5L:[ -,-GUT^ZVQR8!S<6;ZL>)0LUW%1$RNX/:;XYVH]IF98.I!:DC3?J<*Q
PQU'10*6I7=K+)MW0)L%2F@]/E+DP+LW,(H?=I7$S_,R#"RVZ>41>AA(PIAF*J[UY
P9U./+"+N,PG&1JRC>^&P8..E-^[4MK1$07MUJMAT/??A\[MEBH=J%X<NF%%#PVQ%
P)8@QH(B4-:M:$WOJU96YF=9"9_F7C&CKAQC?[._3Z!S+>;3W6IAE@#?$( ?."Q-!
P&VN7E9 50 K4ZE,B?S=Y\8X7%@2-;#]R[P-H\6A;H\V?"OQ=S]ZW:A5W=#Y^F8H=
PJ56064B3GX$$53<K.G,=T:.##2J4MV#$$F='=,>Z#NF-\*2ISRZ##/9/],-Y,5(;
P;AZ[_RMXJYY&'<956_KA@DV":Q('?)0EZ?0(V$8GH-] ]F=+Y\@R0TL$#N(#>7(+
PV."_X$;3O&_V6*:E+UKKC>13(#H'-$K6CIN%)E\9B>.S90U;?RQ@ALC#CG6[YHYG
P/-D%SG..+M.Y:6VXC/ZS>-F69:^<@,"8.%/#"VU$+13#9#R", (>URD^T:9X?_B2
P@J6((.,-/]M?'D24D4FJAR>(54@WO3Z)4LL5ONI]AV:T\@@LU_"XIW8'=\;+^Q>6
P6L AM(0>*FVQHXRFMP;P2)Z\W;3UXYY/59YXP7*-))!O%5:2PI@-*&0J:R:3&*GX
P+,<K/5)7WX(G];>6-ZABP^2M!\'PT=&4XCZ(>XLK.->\H-EWJOG(DP45DU;_Q*M!
PTOJD28JE7$>U$42OCVH]?T.ZPOAM&)?VXH^:[$B.U[[[,!4 !#?E[!O&54.[J:OW
PU,'#U)Q[C_46/)P;K1YQ7,-0TD'SWNV98?+O/V1 B/H(N'F$BR _[!G(:)0S0'5<
PXNNB,/2DRJE=& _RSQ=Q7#HH<&QH2E*XQQL%.XM?IM@L:_"%#V>5[3-N?45,O-?(
P=]-M\/8_XWJ%A^4<2H;WE?V!CJ8B".,I!F7K#[ BH$&PP=Z0X0Q&C<809USX'XR3
PA0WR%C(6+9CE?M;.F\IDE4 (7H"5:"PY\4,PW8%TN*KT.\O@/RQ-V@PI;_AB!!=)
PD0A<U:)&^R<J!<6QM=LG;>U%=%I=2 "&*Y;J3&G'#Z"ZD!]<WH3A@SD\(DXZ+:LK
P-Y!M$1SZA]ZX?KF14&U8E[@[O$>SA:N/KS\^DNI//'U\&,QM8P4.\2^%:W* ;SE7
P*3.-/=04,>9D5T7GZDB!0[_!FK?&,H<MLX5=N[<J*^VAEGD53K5[@CY# 1V1@2>8
PNKT[!-'N/W;B$P?F![BJT=9UYNN>XT/V7]E]$@OUF,6/15-&ZRGH&&'TN := )L_
P7]N,'@FMUYU4J_/KC>&AR5^V0DN1T0<#>!=!QL'1/4Q K) %2MV.Z.+A&!@B_]);
P5W2<^D^EF)>NEZ;$499/0;X)\]HXJ&^C0EVN8&Z*K#.EM/EY2<81X'!Q33CN1Z68
PYI'U4D4WFK35&L =WT,P;)%<*EW\@;D96\2JYNF.QAM+!X-23TCRH19F&SP?SRJV
PO  EO/E0\=#HYA_7Q?.PBVA9U+%80NEFHD:.#=^!I*6@WH^)HNB,8W[U7Z4H%[IV
PS_DL#2_>3F#>6BDCD$XV\K:35$U5U*GB?(AELR1LY4HM\QCO/,*^OG0U#4M]!V?H
P.8LQLB/T5!BD"*?J4$'U999#(\T'DKBPN!ZWI6'I[O4',FXK3F)LHQ\)#(-1M1J&
P1@YIL!?Q[C*CK6T5#")J>C1\>1X<9P0>JI;LQLG0$B)F<!ASY;TP %N$F:,R\!\4
P>)Y#\?KQ*48EX]D7^>)FV0(E$;4+;M>*>O?@@%Z>5#=;E?2TR*UE QQXHL%WHOQ3
P:R!V"MG5#4*"UE>&(XQJ%="\^TEG(DV3[ND7LSN!O20VU0XO.4*CXA31:?$Z613\
P3*!B4%QWCS!8ZP_<(4-5(O&-6-(YB.\* UQ IVG'$U@'O9@41!.!R Q#0-]NU[;^
P*%RQQQBOP0_KBX2IYWGT%,)LB2@&0<I3F+#/G#+>?F_.GP6!64070G@[L#,E1#^S
P++>)BP2L:#))ECY<\4SS-.#FA6SRE/1.1'&JXEE.C2IGU/<WZ.6B7HPL%$VPOOEG
P5X-:ZV.P\N>6\M&H,2EATQ4(CW'T/(6?RDR#S 70'-=#?3$2IO<39]0LE(,Y@<P_
P$@R0E8L[T]VPIWF*M(T9+K<11L:M8P+)!\[?1*-R1FJ[Q8C5W5X#0"%G?#$!&U;B
P0V4@F3UT>)$'CLX YU%->(9/ZRTXBW'U]+J)PEK\;T<!O15L1LQT.@J,/>P4Z?;C
P5PUY@;]^$E=GSZ[89[@7OMY\$7N2<J'&:X:L9KJAR]YU#N#:&=<D!MAI"<"'1K8V
PX" <V*OQW*(8PKXD!)BV5!:CT.VE^0?9!3VQ1G9OK8[HY>6R+P\;Y2W=7A%KKU>V
PM#?7Q6.AHE_-2:$7/*-OU+&+!""I9@</9"82":9H+=-P@D.Y, N5!"PSIR$)D$_D
PD"5WQ^J2R^,O]+AOEW_HG/1U-[&Q AE,BG;T\CHRDTF225Z_0D,TGZR^!%I0N<('
P0<]5-5KW^=_N^<)]MDH!I)H=\OX9RVG^VGO%SS:/T;E_J0(W _8[*8X9,>/QC?P*
P';L)N4=)+[K=6Y<PSVYPG,\6^UUW<W[3<568NC'@W @Y3(1HD)"N*V1Q_P(O?V@E
PR9!8%K>$[QKCFAE \?E"7IV4O$'-ULP#2)&8C5[4I>/=CHY3]TJ-152V7K+[Y9Q%
P>UR6"V0LDNJ$K6G!-NK1G=>0\M73ZN3#VS'^\0)OJP(VC#^K8</LIY51,OYXX&<^
P;XYC:,J)[.\@CBJN3]6R7E_[*),[/++;2=:[PFGRT_KLS<XU*?,N+=JS;>'0\+%Q
P'*([Y,T:D8EQ)X26Y'NE7A3:$HP3O_>D/WI/GT;<4N!RBO_#RF) 5578GN33F .5
PI^]LW8!&@8^;"<>H((ZT*6?.IMX3U%S9IW%>A9T^J#&@.9HN+3FV[\&E$3A$\&Y8
P.Y#WOACQC5["5T;'$^Y-(OIDE::UT9RR%?\%''!^3&L@6%36+\IB1PRE;8D:KHOG
PPAGHGV^);B*#[D?R)M!0+39HI$G%&XHNN8 @4.3LR#4K'SV4:.CEI(9[8R@6GO$"
PHD)9XIS(L_YY$+;S._V*E3;M3F:,P@Z"72ZI%VNL"VG6 )TN,G\+6#R98(C]&<X$
PE#J\\N-KJ$\I]N :NS!_7 9G-7KZ'.-GZ53_'\0(])"K_DQ_&L\-E2C,.!N7]*VX
P?%^[K6X/$6UOQRX]99?9Q(>9F,Z$>G<]SRRDS8O] JBMG4A@N&DY *-6S,E/^F=5
PU=M0>!FY-E]YV=XC2B/6:#A=BFL7SB<L?ER^62TFL_IH3"3Q%#%%VI)C _+K!&S5
PD+@6R 1U4M!_4TJ8O#,XXEE4:,0C$T.TXP'(E@E5H]<=@]WIMF03$X(CHO%G:15$
P0J'I$5#%R'XD('1F7/_*O@ ?7:#ZE=_Y"@!9VA:O B'6D- 6]S3AF8N6?;8@HG(1
PXN!X'T7/6!1T 0E55 QPI[8( :9%KT[&;4_ \G,\Y+1A0_M+U'E*J ,LWW)KR('M
P.?$9R7C%WSM')*$5Z"*3]?);.E3MRPANEG<_GF8"]R8K0K9JT%FL^1W+8PW;1PC*
PVZ+QOZ<P);-QDVJ?<,2SOG[E=3PD%!9EHXDPC"8^'.O_Z'/[1E042PY:XVI,^=?F
P#LX3/;,J7?4RC!N,CN[5"'LN8VHQ ):H!XT!#9,VMQ2'(,<W-5^W)V8_-GZROC0,
PPM;:X_A*7^8@KF@N6=*0/-W7K[(RR!L,OA_1C\& ].SR]CT3>#P;2Q]G0,LA,QJR
P]Q4 RY.W9//AN#"BMFP;N13_S#X3B:A3=@$E^)=$.:Y]G3:]JR"V6T:.X2Y=#ZCE
POV.O=76YA\L*9<FYQ8?"O4T^[\\\F<3L$^$CC4M3N7D@O-"!!L+6J2G8Z14D+AAK
P_GLL1J39*"&TD<$'U::CQ$A3,>M0%^7E[(\&+4&;S>S>%?*52>6BTX./[# )&!<7
P^XFTA)^F:BUV=,>ME36Y J>8;4)%)Q;VLJ@8Z=0Z+0QG%M'ZP&7HC('Q#,EK?-.F
P1U>0?2H;\ +(V7-NIU]I9$UY2^]Q+)M:,)@&]KLT,0AZ.X.9]890Z]IJG*!E7*(I
P.P;/,M;"8NQR[<IMT8Z[B[-0FD@GY)E5#/)R@/#ZKO(.O.2BZS3%N7V=4!78''XN
PI#[KT/ =B^E^O))A0MHIZ4)>NQSUF%*/<DU$@(([6C&0#_B607>$[C9=CU8_WUY,
P^6@*T4U129S8.+$C $.L/3/?6YW0.U5$@"\/.+J&F:5-R^-HD(O;%8@Y,&]750?U
PJ A%!-Z+>CL54P4LW">(^F576I+X=TR=:^%&_ OD'D=J42ON+0L?:B3V.AN%ID#<
P0QNQIXBMHM^&/GLEJ>>Z2<">R4KF<5F(?2 X7K+L:)5VX0.%O>$LK%01'R0$,2+_
P1I1:P8>GG,B0*-,'[=RLWFS0QRAN\ES 2,'EC;[Z)!89 DVF*OZ5EH_<EP7!UT![
PS^&9G.VXD<O<S\!@E/7/$,=>Y]D.Y'G5\<0%<<6:#JP.E'4+B%N''"M*4BGR:VF_
P%*D)0#PR)S 7[0W/;MP L?-4BIY\SA#HU7Y^-7\A"HODB.3ET@;]N-M'TU_"BO,R
PZ,O_KM8FS@V%-2N9C[X;B"%0$+AYE:"7_7I=MM$. )NV*@BOA!M354<YIX*/)T:O
PTW6$7J*GJ]0:FA_<ZP@8TKR!*@,WZA(9*.1+@D2\$=H"GWI(+^]<G$W++>E>B/".
PP%XJ]M%O",YZ0*NRRHWVT.K,L!P(LL'#TQ.K\I^>V#1I$=&J_6EPJ@N:O+#R/AZ<
P!0X=,RBM@."HG)>995KRUKBTN&ASG/.R4C/^' ;3&4GX#LXSTS'/61O%WT/8XQ>#
P?V\7P@9<N8H&RA8W#3<:3Y#XJM>;ED6/OC"NTL[R4+O0"+OM]C)7,N+5=>GY]T9!
P(LT&#--@:@6,AD\ D^:0=81C%*UYPWZOFYD"UG&="2*R[FQ+AG]Y T3U*YD&+F/#
PP[P/^$[UM+810F:V58H]3Y9OZ0''O*KE$"KU0_ZQV1[3D\6^.GU3L_*U&4CYH*Q$
P=7/SP#ISI'+/63 !45! '0';\Z#^/J_^"?\S10?'BB<W-RUWNHIUCC_.:+]Z%A^C
P3R;S6E3HN?Y_*#^Z;>AQ(7URY*40J+Y(^H50LB5.=UMT9?,"7A9,7:0)D2;N<>S+
P(B,$GP)-RM^@+4[]%<DC48J_O_&KX^.0-B%BM,]:6$K)TFVSXYKW&=:P)EVNEU6J
PB^"6.3L)H4"OBB7E\9@_ROT@)0.G)N=J%A&W:T]A0MN6#EU.. #QWRUDPDOBJSWX
P-5UL65VT*9*#R7&' "N5%:/W$<ZS,XE[[I-<YS(_;@@]%/>N;FKNL>%#L8:Y:N!D
P,\6%5XY9MJ7&:($:F%6Y_E-W+^%1AEX[K DLA65,;DD]-@R%_>DI<X>JH"B*/(,X
P"&O OH;QV7VODJR%B,=O$,NRUC)M+J]]@JW:Y;H..>''.P+E0?UB(_>#7S2^3TR4
P^N 6S=D%A>L\]F>N=L:>B:3X6&Y])TZNCJ>3$+BY4/^Y"8LB1Y^CFU_-+ :^)D7]
P\@-W&L-6!)+#_TPG\$7NO$-0H>5D'QT(<B9RE;>*(B"=W/+SZ3ZB5 I(I<0A;"(7
P7;^(Z($J%FE32LXEM*Z*&%I&>\:@:3)DWWG6+.W+_@495VBU:>I$G.RN_EZ97A,!
P]>YX,S_HG2JA33C1H> Q]GINY#9C1-Y+5_!^WF/ROT.Y-68^J#*(CO2>(-H PV2=
P H)H]V,1?*P9&EHY^1QMI:S[W $I>XPW!+SSUR1[@5,'2YITHF87]L>XF>-)Z=D:
P0P/,UC5<OKK<"A&NEBBZ=6C _RU%+Z<,R)_X7$NIK0WVB]20%4TZ9+Y,(%2==OTP
PTI@HRGS34.\./_T4$J-?I4XS<#BB9.6)<D]2:<D!^28NQ@6HA.!SX;/(B24I.9T9
PXHZ<(RL^%X@(!M%V"EX\Z:WJ-/DWTD/M"M<I*IZVD')A1C$+W\[2^R5V+I^[/A\J
P9,U+2HN'VGJ:8O6D)E[[N7J$.\F;8/V[]B! 1X8:]_ Z@IGT7,D.6-)TF8?6%^!P
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS31_CHECKER_80PARA__
`define __M2_PRBS31_CHECKER_80PARA__

`resetall
`timescale 1ns/1ps

module M2_prbs31_checker_80para ( clk, rst_n, loop, enable, in, vld, out );
input             clk;
input             rst_n;
input             loop;
input             enable;
input      [79:0] in;
output reg        vld;
output reg [79:0] out;

`protected128
PPE#\US5]B(IUS?4ZI>J/NW_"/QU[",Y7^DX)C,WPW@7=TV,HEHS6]7ED2#!'<6-M
PPC7RT\.S8%U.%?DQP?%M:  IF8@I2L4V;KQ/LN+6,H@ E*'4[N$3]0#QO3%SM068
P<4[XY>M=@IZ:PU;,IU'.A//9MRJ/ &O:2I,)<S):36QDF]RV%=@2\>DJX=H!PC4>
P?</9YW6O&94>ENZ#CR0/\!IOU/OV<"#*/PA#4L]<;!?^@QN[$73E;W54-7;"@VPN
PG:J(U=^'7T.5U&UQ1.A7Y,+5WRI7:#ID2DW7H,63SP]JP2;V-UB \RVM^Z#VS55&
P91\$/.S57X>3GK@QO7ALR*#D2&)@K7H/\TJE_:0+H%'2$5G;*AA_1>O>;@'#CAK(
P7F(RF[1B6"SRU].7LP9M>R6[5I!5FR\R-1O^ZLD*'\;S#*:AWYZDAQZ\C$CBXO.&
P]N,9[+4P)#_-\Y6X&$Z4+/7?EJ@N+_@.N=7W_;.Y7"_K<\0"B4R3%LI>"%#HCIXM
P+]/#YLX^I(8S+64"WX]M"\U11-5QFZJ!?M=G7M0Q4GK3P%G98Z+BJ+7O$@I]-( 1
PLQVT!47WC]JXX^:_@R%#^DVOXA]17P)GALN QO0R%@/#77R70\XO "RGW^GV-73!
P$3G*;'D#-J(-YWJ3I"8L&E#Y__K&^3?3@AF@1>=*2S-][;5J'=20I^I3Y,B=(,3.
P(7IR?,<Q/DL*BUK/ G?=F5$9@A*-[NM.]X=2;7>8M+2$) NM!WGIY:TZ;I7PFG$#
P5+B"=.@/EC>\<:/,=TK=F;$H6LI=;^V(I-'(*$X\7=JHF7G2=$UI&([-,+H'T936
P2<X/C,[IP>O;P)'<8Q'=W$/JPO':*R_>'-1_OY*OJGJMNG1@N*^(!V?J#)TVT)^%
PUPP.DQ:BD[%(0;M)WY2T=.@V"1D7BW2Z"HCM1@B!"XH2B%(=?B"I^N9*@ZJX/,0;
P<TTJZ0"H$C,_-'Q0X<\4?E=O9\V+\J1>3(U@2#F7YRW=M]&YI;^L%J:-#^4:Z<RZ
PG$/0KGB'VC6-:?EEY<>3SZ*#Y4E=&+&\0EQ<_]ZTLI9#=5![<4V:_4Z6+G72,O'6
P0!C):(B/U4S',.MJ%-WF \"#CLQ<(9\F+/E!I>U544-26@"RL"P_[DTN?@, #^%A
PT<)Y<@&7+'>T.D+440RI5%6KP?):**1(O5KX':\JG/?53A3LHG*VS;B2DT!=L;DI
PGR>X.FQQZ2SBPS!S*Q^C')>-#\(Q_7TP3X=2%_LB70RYNNY:TAKBU=J\W%AMP7<"
P%W9QXPI>)[C-VN:/HMA0V#H1\LL&94(M/L_OG_9EN?SM+9J\)@M\/#\RI3C/&.>/
P:54Z.61N?;87F7X:+R^)B-E3S/LI$F*S;G"S>+^X/94&79/@U/8PZ9+&%RH#(J7S
PL2;,VP.LQFN 4US*>+ *ZT9QP5K$"2HG%Z\;3ZX65D]=UVS]=8J/]BPY/Y\C_*+%
P!>PM2UYR0*P0H;,GF=(AS!,GL?-B?;#:X0H2N4^!Z6:+($?HNYL_;\1\6LK%5O&W
P J&';WM$'MG3TKO<W6=T!S'UG_*P O!8=AT1EGY^P*C##!HD5&-F3J*9AJM(WF'E
P.Q"$'_M:-LUE]MN)-O:.@W7FM#3X_M:YRKA-.JB7TWX==\LDC2!OL:D1ZP[5OI8;
P1*A62L$/76R;(=TA]!^3A_1<4UB56E'5/CMO.@E.+NS-"I"!V0#&=IP##D2"\9HQ
P5)D1Z&6?'R(*NZQZ?+W)-)R)60 Q-\@P#6Y, 1738+B=?^$&#?PEE3PH6E$:TFN#
P5\S-Y<7)4%ED+=$V@CSF%L9YH%6:C8&=LL40O%[+$X-#D2:+1 [#K(E)$G,^%(.&
PV[TRAH<PX*^]7U.=I"(T/:W8T@EDP? :-[Z&,XMD*VI+380\'WTX,RY,+E2HY!V^
PA.5Q[8$:6J8OSR.\$+#XLB-K4J.R$[+-]X#'P-"[U,D\+IB8\A<*@@>4IJ#QTJ-F
P>K7@Y?2,MF=G/H/C; VJ_< [SXPR!QR_8X?N)BD0D\(<:E0W -@#=&4]0[?OS.M]
PYM[VKWU506^QHF?EZSGCB^]"2'6K]M89V]G'Z?FD(O2?!"#8.QZ-*$41$_>9HQXH
P#33YRK"S:3)NM;9/7;B3%P*KIEI\$:'I:;7%\\(94 @6$ZR>;'?IIYW<!\(QQL3[
P-)#CF'3XYB8_.P_G$XV3Y*.:RA"EOI B2G^]1H4F_3DT9"0D TE2),10#A-/_OB"
P75AAR 89BD;M)WQ?9[R3&!>F\,2<85>MAC',I8$RVOH\.VD],0)]PV6U@87/YYK-
P0[VUD5J\'+,\=PI$5%W(V]@+-7'=+.].:*Z>>D;FR:V[@L&QT&=, =A<=+?4G(#>
P9%?;OXL.X<HS%0\0"ZY*,D?#; 8TW&)M<W7DRTL<"Y=^FT4M&$P&D[*R()&D:?8Y
P%[Y]\V_W 9,EX\VVWAD^&\-\AE>N3%?CV7[+BWW>NRGH #QFA%?+5P88 3.HDLJ>
P@K80YHH^:&KR96&!8XG^8 [A-QYNYOI=D8.L$2L*22<L0NN]((M]KG_*#YE0\5:O
PM-HOC:KT8%QVO&/X.,T5T*NS1KRRANQN0[3I.:%#"N\,/C9'OO2T<\EV4P%4?1O<
PMV]-^X8U1O$G>Z;&P92N7$%D?#IK@365Z;KTVKLFPKZVI&GV6:T8OU7]XYS\ESZB
PE^ HF5T4IL!'RE->5:9W$4I)]_/%(']'+1P@@Q>9J(@QN8AWM2&2[6>ZY,[WR!UM
P"7)@#.=L?'IFO@2(31ZNRUIKVL:MFM_6N%X,'TG815#>(EB]UE1ROA6)N04EBL.:
P?S9K$#0U,A/D]T7D6--Y.M2:/P?081P*=-CE0WJ;T:^"O3.>$/#99H7%Y5LGOF'V
P^ UJIXUF%\I>YR-L"6F Z'9HV(]L;2Z3+9BAZJ+>J):M7AP8'(?D/X,+F=W$,X?I
PWRU?Z0,TFS4]-K*#BZ-TIZ!I[K!0N!D"SWBE*]0M/;JDQ;#D!O\.2G.<':)6% ;Q
PCR+#@0@OQ[3T/SR,[YN?E2J;=MPZII"/8+]?+L('V5%([2&F=,6JG-@82!#83P"Q
P/E'Z;<MFUQ_#>FK-F*(TU\/B,\:%*?0"7'0=O&+>G 8.I)'T"#J^GR<JFLPY$P'O
PIQX<#\H0 A)8\E[L<R\#U;?_&U5%WZAA/X]3;9'V@[+'C HF2J[=%50$=GBJT-=@
P<+DE=R1%ZFE,5V:G((!? (=QS.,@Z&@_(H-N(4[\YX,.*V>K:XTNE?9IQBZ0\',7
P4TPYQBC1@22B12=N-AOLRGU[?(3/;_6&;!DT,]*&;UA+N3J=,84])TNH;($(1"G]
PMR&.J#@^7XP &?.PM9AQ%N,XC3,QZ8A#^%<5/=#'W3,0H3'9,E5=6:P4H0,G(FF;
P[O#,VJ.KI_@D]&S$M; A]T;GX[#=1(=8.\,P7F^BXSS\S8I+PQ9G #3\175G1/_X
P2QSWAP[\6T!+C,!H0YAM@W!I-36B[OO)/')>_*N, &3"?_^VG+36H<*<:AOBM"# 
P !H9E 3B7B-K=K3CUM-],W(CN>O-]&"^1(%_B!747.7B8B:<-A.&N^MK'U!?PZBV
PK5C2*F/;.5#R1W-41$XM*)V/WP#Y"&C]C^A?NHXB3Z5F@<'BT+4MIQ7'>N*=Z^EA
PI+="1C6@E"1UK4@P&G>3([T^EQWT2%\"9I(HOVQCH).?027BVA:?,!TTQX[8]K"K
P']LF;ZN:(T5A,470#C2+?1XY:Z*>,0W/WPC3<H,3FE?_CAR/GQ@[E>AAY:QB(@)U
P>DBQ+%D6[71I6(Y8K/#BZT@B]*<F B9-#-/#KRBJY(_RN7I>V>M=5*:Y)G2%L7"&
PCIH=R2>,@1 2FZFJ"9']$M$&,-]\7\STUTW)7._UPV0/]F&(74'(5@9G[^J9<12W
PO0![/5 9G>&-])7G,+40?K/*<\M_ QQWG6Y&*HPOSW]SI[!R=R-JAM.+T$V\,YCS
PH).%>JG]8+C>P'*DCC!$#:/C%<E(+9CTIA!_]J5*;_Q33&>^X*$)@7H&8?#M*F@G
P<B#P/R$9FH%&QL4L!94RTT$9<AC$E4UVL<W^9KC :N)I[",4-4WVX)=K,#X"D]I$
P7.$[%&:R>WNW:T'><, O[>$7- ^*8<RO[32(*"."I>S*T,$(N!#YK6(.1(7+>-E?
P:2V1L"85@OPOW[(Y!QV!(56AFQ>1_.N:T3CTJT+*'?GA-&"GNC2W)QCJ_M3(9N-O
P#;[ A6'LR:Z&LK2%Y:]Z6<9)V@M_)S$?2;HA]J> (M<-3'-;&)*$O*(9#:%MQ[C:
P&_%H8DL;S"Z*DK#9JGAW'6 ^#:'K&(T7J_;.434X+]5B>0K;EXI6Y315W"\(*%^Z
PZREOJ182WC0^S"([96TLR^0%1+/#GG][F\"G;&C)7O/QY)^5 X6W7M()]GYXE.A_
P45RPE\4EV;P)NNT'M3?>,]#0VK8?#&@\]'(-4D8F5C/+M5C.'/^)[YX7A$Q.R!DX
PWU)QUZ?C8>,DY!<!1)[!-L9P&42-<7$86_L+]EU_]IL%?XV@]\L#[QML$EBB!I'F
PF[#(J-SKGZTG5K4:YN]J[EY0.PTPN%P/7>')!KT."_LD, !-H5##.V>G/-URV^E!
P#G%0BV>N![;E=C0C6;%WZH8Q+NKS &_6Z'RI]+:40)5[&3B(&T7>9AI G3$O1X8V
P<:)YQW"M5$O*S\1'1#(CWM"!C*^NJ-&[Y2UZ+S=P#G=?1^$D+ -RXI2>,<E]K':)
P$/0!*5GMJ;L[/%HK7R%GCGW*A,>PRN12[29FD,"S#,J)FUS<IU7>="NTA,O^ ,4U
PJ1KX/+CU69P:PRQ/;:0WQP?H8)V5BM/T'5\:GHE*=][B.J>Q5\ON]:554/[+7=K'
P'GW?-YC ZG Q86S \H ]L)IW?P$2L@;2MNTGZG#_1UBL&''0OY8SXC?; Y0CEMK+
PI0()3$?_O>0XRB"O5'/6\,@DHUM^A%$*,,M&&\;O=YX)^J;%" 0,G;+^R%SU\B&H
P\,WEBJ&'Q#5.'Y_,:33/>BM'>H!'XDDT6Y'CWV4Q@0/VZ::B%KPVF9N.4'J%LOIW
P:A'OS$>]2R578\ES&[['S+SI8XI(E1)'H$8:385WC _-KM@U*8NDR[Q#Q$6D_ ?6
P_4 !OSWG!_YZ#3R99 Y/X;0^M%]=2NQ8+:?,4E50$NGS=V_<M)S+PNBB[E-'S_I#
PTRO>W@K>ETT'_3]WG9:)&VM&?VYL?Z8L7.(")&#>^]/)E\:[STJHICBW*!1$$(&D
P9300IZ>16.PR@-8=#)!@P\I7[46_H+)O)8S+FA)]T93;<HMK^>EDOO(4Q-#\"\"(
PN%HZR,*,9W@N#A?(!0X.K@3=8_-Q\'3O) 4SMD:>C\4]T +UJJV:@:^7O$TS\PE=
PM' 13.72>UJY:X@Y50\=9ZJ2_\CE!T(XR+AP](Q!QP5EX>Q^E!3.5N?-LL<3\X:L
P,M:M;YNHB5/SPK%"9R "V^AW >WG5R@#;?$N,^;WN-Z2P"<?+]EBP!*9"'O@W^@'
P6*;@AS3HQ19*?0A]58W\N57[XQ>A"_3N ;VD?4[_IW\]:6T3UA]9 &$>RI\PR 8#
P4]UT7HE+Z@EO&@N8"JCFJW7+Q 4+3:C!$1B""0="^3%AD\O[1$FL1<HRW56,<ROM
P84M2^E'^!XT1U2OI>/(1@5=MV0S$9;O.K;)9NVK&7N,/R]M <#:1DI,T'67Y[B4W
PQ9J="-NY*F#$CNW?XH(1& A!%FTD;)HYF#TERMT?3:JJQ1&O?8MBXQ=#\S1:^( H
P]'BC35S9?F$C5/E7)U3-G+ LLO#OB/7/'\52[7T;P&$$7O8 2[N-ZDK@Q7)=1$(X
P>86'P)!M5Q%&U2T''@"I15JA (R/L2@9JL3*<XW[X*B23?I(FA0VG7AV=*JB[X"#
PTGDE?;>5V^F\H=M+<M,Y*\LO\MF)6(;1FEO)V<0MGH<*U[,.H:IHH 'CQ#7:HG O
P+XM@(H1M>NYDNC7%K+51F*H4P5J<"^EJEDB&%H_3&#T@NC3P\-XW^'Y2H52QS@3#
P^E)HN!P1\2HZB-4BQ;4'5;EOEW@2&A0RJL@.J,M:_9R4;9& %R@67:F%!^$@LSGQ
P\S+H7Q4K<5A)?*5N--T#!; H<;,LB/=X80VIMC1,G>?T+3G?L%:)C2M.<PP\ "*O
P!SFB"_:([YR0-K\7H0$PNE17?/)FB4.UA23U3^%NKU#_FT,>0R5"MT$4%'\4_1 "
PG])U3^TH</;<6TH17B*L6.U[_GA-#.:S&WIVTEK21<A]FY7CTOKE2M=( :X,V(;<
P;66%9R4"$VGR.5>A/<+^ECLQ^,-O$'!MVK3_*!1GY*:7S-XB\&:03RIH5"/1I[.C
P-%\9>7F<:D(S-05?O@CE[3'#/-6K249E%>JVN&WX!0CY64GJW2-$HU$N "/2JD >
PHVI6F?#V'!)K3E:%#]U"@&/DH3#N.C?1I-!%OQ&O]%/N!@!IB?-K7U/.F!O%)_UH
POW'HN&2TUCC57YLS$GMG$65T]SA?R <?OVP*QNUB3B,%'.N)$9ZJ18V[Q@QAO&OU
P_=W."U E$6&@/3P67CBF/N8\((>TY?.<AJ(97X\O*K3W_L7"/P NY5FJV\Z38VJ_
P?SD#(%MAT;[CF9W^^@'\<3B46%O][ 6-[W]9=-:\MV+2JM(',:=-Q/,IY'JSYT.[
P$WNN?AB3V5WN52N> I1+G+S3MW2VIL+; H/QS2-'Z\TM@CCR *"%WY<WV +N]SOJ
P<$DL6L@>6A##*U7E::%3(Z!7O9;) T;#)L4SC0>Z26-[AZ.XNK*XF(BMH= D ;@ 
PBUQ[7J:<E&:]\]<,^XYZZY<1$T5S4XJU?BX?[P E?'X08+UWQ*?EEE)CX_]=\H-5
P(5VGS/H\1,9E,A>5T(_2 /X)#'>JAU$@-!=R^^"Z*^&#)X#E_J/]N].51C6G@'C9
PBVEQO'<;AY)ZU"F'AG\;@:F@[X03N=+R9@NP*M<]5=CY"6$A.:#,]A+5>NB\:GY^
P]Z^9"DER85-H[>9D.)9(2E;*CSO9BY<62^U8WR5#@QO1]4"HLJQE3NVAF@M7MG)Q
P>)LVX Y[$\J(\J?:]*32BK/4_B__MF<N_2?7Q2K>)=[Z9H2TV5'JWC22JT-Z4'G@
PDV:&6_ */=[P?7LTS]SQ6%W;_V\N!(%CZHI'NL$S]X]><'G^8DN^_<3:[_ QR(;S
PO\-5X@L&FVH=W#=1MT02\1 T17U*(^190*<]C$F-5$7B:/]=Q=_@\-.4-WYKE4I<
P&!OA:]6X[&[J-$XZD@-J;NKP_3SG\8=LMU>KE-J?>P<):-7'(NHQ/C99_7?T>6>O
P5I50N7GD_EX4R'QI=B5X?#I\(RO3(Q@23)(9S<^8MK>*#VT?QAEB:Y+K9FD!8$)I
P&U_^>,'A47#T8RR2(FW$<X7NT99M?_H 5L[;/4C@M1T5YX"\3V[DOI;JQ]!\/+G-
PK72W*C^E+B??->.'Q$274$GD%6\E^,G6;O.% 4<JR(6#*-:=VO#&@5"99=[LIZ  
PP7ZE2]F>0T\*Q>?JJR'@2SIW5%'].%T>#XXE"U(QV[^IA%R@L0:>_ BEQ 7@LDNZ
P4SN)D\5G1_HA+SOI)[+QT297TO[]ZQSE7F"R=KA$_9\/UW2-M(G=_&B TULU!Y0J
PI,* ;*B-;NET<)EP1';(\5,@41<(9_)279O9Y\O5TA4UGMS^\O!!N:AV-^48U*!\
P5B2$AI/$\[Q._0FA>&,D/K;]&03B&<!8=>#.Z@#<JFX@8";Z[:"FR$AY\/5%W2LA
PN 5N(WD"A<1[G'U-R KD+^.D#_0*8L\HS4U@&@B[67M*.=-(I"GSOM?GBO'P*)UX
P\F">L+2]P/:VB]L&@PA)[4,>_+J/60T>!0''%D))5$&EZS(U&15I-SF9EIN:);UV
PCH##0$(V[V[](IFJQ-).)>)#OU)NKS6];5X*I8^/*?PLGD+#DM!33C? J7O;BE6Q
P3HB8+CLUSXD=$Z,K615Q8"'.\C9,?P]".9,5S0U9O<,M ;*2JM@+Q#'COC(6O*PH
P7Y(DU5Z";)+2SUX<N6"0V&+]2&\"*V$Y(,M\(G)$A)\,2J<?M)V[)'ZFV_+@/N:)
PE"A$UYTK"R@D@N.C)NT9<\C8$2R$W;&>5  /M#UD7<3A!6F<T51BRD\0$U:49X^'
PB*FK=@P7'^N$HQ=.D[ PO[R@ :5OE8AR\JF/_;FYG(0XU<B-P&1$KZIB>].TX0N^
PK; 4 \/2#':G)BMM6GK^&\8/$KGFH!S8=C07Y,Y$\SF_QZKU-*=OAV]* S*LZ;$M
P=)R*: BUO?!<W 8ML$/ F_P %+^WW=5)K9;T_YY.@/$%U]"@,O_5,U5X1T8?#6\$
PM'9/8CR;V!;,-?+\BQD0]-/LTY>#ZH-?-PH030_#RWJ0/G*-;K7\N*K&'BQ567PE
P'IU/Q+,!#F-#-XGZMCL+EZ#EG*O9AAD 7G/ZV(0CI,"80D$8&YX3VT19Y+D_@^Q$
P)_4LVHDW]'T DYJJ_&Y!_6-&G:+GAH[]XJX/)AZKR\(3?EOS9>#Y:RG'%>!3)V3)
PP2<2_%JR@(53X#9F=C]@ C1;KB3M]ZRWBYG&NU4>^KW),M1[R),;; L3^,2!WMDI
PIH&3;D^372V*!**"YA'%G-P@NR*W^NQVU-UW_ZPFM112E5I'C&^>"GG((BR&?2-Z
P4/_J\TRVG<47'K;Q:KO4RDS!_5W^6<@DM(TV[K%S,0]T^9T4)_?TM_DP?GBE0?DF
PH5K(0K)IZOY$HMY[AQ)1VBM;@,ZP\8PVCP*:7,#A%TN-!8)U<!_@P<-3$6.AU/SD
P27 _SAXJW$!62D6Z';A\G*6]W2=/VOH9)_%?^_V%@TJ3FQPV4T;I%\M'$P<T;Y<;
PRTQT]LI$@UX:3:=\5='.)/!NS7]H&S:>V!%8)]'VIZ34S[>!#WF2(RM.:!U))S>'
P,6\S7GV2^[;UCG%RHU3/G9>O+C2%YVF>__L=F3(R0ZCYJMM]--T24#S".M'.'8=T
P_?5'\*&4;S0?1$"[S+A.<YO?KXV'CSF\I9K5  &SJ)P<^ZSF>VTA@ "DQU6--!=[
P&4;HGMJC[J%=NFPZI !:&G^%J6QGV>54-8^+%QJI#0<1>#2OL24;-OB4AP/5\%:8
P$*L[ESNAMPSY;*N0+6&\)K(/KD-4T]2AGJS;*S?P:O%=XC[A]_+B8YZ),L.F!3$V
PO2$RIGFC>0I2@%P5X7A2Q@/HUV9LL+%%&7@H%2!0,7=8;7F&\H+"AD?DS@("KI*2
PISPCBU.+R2+AC_&@95"V83-GM_58'U1W"C[/"?-!R.X]JZ8;0N06:XENE:TQS*0P
P]58TZRQ#./32#&8#9)<NG9430Y_.J&5K>]H[Q[5@B'(<#M"C5>6>U<D1D.E#?($U
P08W;Y-H(%\-+UHQ+ (KSBRW#ZDX7IF[@.RT$WO  >? P5JW\2]RPED[EDW"1DC(Q
P>5B>T>-_ JN/.TPW+4-PK%P8/N=MM-N5>[%X1?E&0 GMDB]M/#$]K=@A0C6ZW8P^
PW['._2UZNH&A=H14#_ 7?B["CP1 V]=B;9\ !(D%L4/"+3!QC@^9TA,8G(G.%&-X
P8%#';,O]O,#1F,8I G17 C6$R$(,GN[!E840FAF*TP[/C8I<:8^IT!08<LM!X<E"
PXHZ6&N7GN7E*B;"DGT5O_/P;E>C )R UY[[/JK46W4'["$5^&%1GM\OR'<B<AB&,
P9W>B>9GQ=:G]MRD3XF0M )0TYJ-/+W1Q-B64D0,7W2.";>.;"H[LS :KT931H3W?
P=I')^&'C>.OC<0G/*O@OZK#XAFL6O. JA/R&=(R:5)0-DEH.].KMJ^=*9M/'0KLS
PCNIY[.;&CV%N##L/8B#\($@,TQN]A36V6L"2[AFF*XJLT)L=A,U]-:T<_;V2MD*1
P))\-ULUB5"E5%]9)T<3V7:=0\/D''+%$TL%Y7[Z*_(,1>NRJ\BFE*Q53&#HB)88Q
PD61FX@R-*A&#M^UU<"9MHV?[OYJN7A!H$G@;0*!&JO*W923LI7M&92RJX53_6,3>
P8=\Y+@!Y^8I+A*0Y>#)\-O+U9&C,H9P!Z+H6:K3+Z?PJNZCRBF[#AZ)G!03W&$@O
P1A8VHYR*SMK5"78*_$<VN;ME1V/BR>%G134YEJC-PXY*-XG/.&?UV)Z,&JID!9[ 
P^&(V.>*__.%T#$=>095 D/VZNLR?,F\%F8DM[,^HE'H.UEA'G\2#45B8?SYI.(KP
P"@=>(#78R-S (U%)U[#@%6<M2U)D]^[4MI_Y?#Z:6_!6^B@>FL!(]T9>+62\VXG1
P+8"[XB;A[-Q1%XO; #UIMOE0C7GAPCK[,DP>!08#@I/Q= 9@>YH65"C:)AL$G?LG
P[\QF@SG\&ZUZ0C*/09LALX-&&^,VA%&CJ8,/33+8EO=CN:Z[:^,B8H^?E3A<:-3,
PQ^]-*>-C;OG_NA^?)APPI1RPK#PROU6=RNQXW4N?4)8O#4;-CE\T5E/]?LT ^.!(
PP,J-O 80K#<JFN"R=*<6+BM7KX\+YILHQ.:WR-<'A:EX&HY"@!Q@@VN69\:X"?0Q
P<5I^$V96"D#R_K<WC W>*PY'ZG %SHG((PV]ZY,FXGE8ZD65DVY>8)!A/W3J?T98
P*"Z',^%0_JU'71LEJ3^(",1P2;#^ %SL[?UF5&+,'RJ\U5 .G!5M60#XI>52_)P1
PT7UL.CK9BAFEA4U\AHFOMENF.TYA-JS<H1%]>"]'CG#]-]0Q"-/,/Z]*BE 5U5,/
P/6\3)'@VN[X].73%=)$N%$F]I?0UJACJ3^<-_IF@\A!U:!P_)7@.<:,\<%WSO/9*
P):OM')-JT%12M26%5_'7ZUGI*2\&_Z"EZT4<OD@\391%@3<C F'M,W OY#?^IW54
PHVT+F<-V] R#1;K >*F1,J5J'JN:$\+4"&]7!HOL?[GQXY=--6.I34DY>72=6O40
P= L)$M ^YX=&M:%7\*ROV_)9C7O6/5WS+0[VJPL3RDB,@Y/>?4<V27A6)"U2'M3+
PU?4$+<27-$(^Q$&],<OM&KF]+9$W:VJ4(4I[ :YS%^ZNHY@E,BS88[@4MS7AR!9!
PWO.,04=.T(]R%+)8)!+\MZCRI<4WKYZ."Q9^5KSD9K(JD7?V+Y&[87W0/9 5:4UY
PFT-(D(_<0K$QLQF:1^K#NH!'/OT/Q@-\O9%7>*/"S6RON1-Q7+#!UK6N^P*WV,U0
PL$Y3!4_%\NSZ?%Q#O8."Z"F@-QR&ML2Y3^!$'JH!,:'?[28H&)M>;+NAUS!C_&8_
P<&VMY4L,YN=!%/,QUM'#0_XH.%=TM\QMXJ'3.=08]V9)5.K<@<@@)FW8#?&3-)OL
P9'+6E8OQI<^0['3]G8#Y'?%^ZF+BR&*W<<-  _0P*Z3S)_O'U.%U5;>5:QZ9C&;.
PTP.8IPW4H-H)J:J;>F9+7 -6)MBQIM>%&]\U=.N^F8%#Y%;13.0]$0='P0J%)NIH
PRE ,!9PJOL_7.><Q"2;8*^E7#$1+?WD4!!R+9X2!-OJR>YKQ->1^ SN]856I\0*9
P9;2KR"7*+GT)DEQQLIQRQ DF.1M[!,=>LC=O-??'08 NL@ZO>8:5 3FWD,?/;T)L
PLA691&VH<;*S'84HG6Q U5UD0;!A]'7DQ)*B0@# S+$"$.LP ZD3%N?P\7 K!F2/
PLFK4\"$2*9.R/YX7ZAH#L:78@_+CWW-$GC"LP41A3QAI;I0DT\?*(]&N-DQI REG
P07M4KAKBA\,?%GVHY+G&<[:?2O3?QC?I^>XL:W4BSCT;N/Q.ON=([A_&'&"OY:!]
P:W6Y.XI)$/B99#O=:-2L38%U*L8UI,I\I6&?V0&;G%^&EY]%6G7AB!S_V^<\\BF0
PJ[%\J.S/80Q<H05+^CM@NU*%K6+&^:9L1[ ,PJQ"=OFH$@!0F1JU(+144)(/8=:K
P@'?6PJ^#-,!J@0 (4NA3+L;W:D.3>=])UOBX!9IIYMH4_/;XVY>AY_1WK)8W$O,:
PT"<B-&F/%6VKPE_"^,HX^1FX[+.-6R%NEK^:AX7-44,R([<JV7#H@;_XD2U",/P$
P(+UP'JV,M.@8\B*9QTP'B_F'#HIB:HTI[%-!=R<?RT0&Y&S&GYS]A*[FBP\=T)U/
PW.G07DVFM_PU[N=7<_T9F#5FIF:] K@JYP=XX=82\5QQ>A.T!"9Z+(/;KGSRU%^Z
PH"1H'^J$-HHM1019,"X/7N9/7!^&WF\8F[?L!Q507T$I@K[WXH]X.X(FM8X>?SDW
PS4X?5_:)B%2+L@7%A#ZR_KQE[+"MZ5$69=R*4.[V*H?036.0T6MJ4"2/45'/K_(0
P^M%BO<)K9"1D>4B6#@).PJF/3QK!,$/-2!O+QS_#+<^OKZ7:S354[ \)!+TU$4B]
PW 1BB]&R#P_R$("!(3$DGP@8M'V]\<0<*YU5FR3+FA8<'S?H3B-D^80:F![E%+8Y
P&-=GU>?FP/G/ZFY2JP+_S(\U,9J2!!!H=1D5CCLIB B@^9!E+K$GNN,;FT7S',!F
POMK"M)GN1<6+_.CUFM5U1AQJ1GXG:9;X,JK&OP(8I&!0DS%( Z 9H+:9$/*()F^6
PT#P_ (RK?@VJY5;Y&MU:383 CK*WS6QI;/<&)D><:Y,2!;_6_+&GD9GA5(D[IB_)
P;1KJ4&D3,!RJ&8!=_4)ZK,F.D3X#'&]'80J0X$VD:BH+!6E(L^)2,>;?92UA<@=/
P"(]RL!)NU>S/W[!X-5]P[NEJ+"L<M>*9;XS^+. X2I1UR1><%?6K3+I")&)4=(#A
PUMIG[;'9C8[WT][$F@5H&3KXH:5O@9;Y[TBS&::^O#4*\6@@_\A;#+. 4OZ/Z#V^
P\]KTIXA^=4,!Q9^?UD=);DZ"#MAYIZ,S= =F><HK'CZEO9!'<EY^O_8-GA<18JFU
P7A1U"X,1\W U4?@Y=,.)(QT(2B!].MDT>*4<:\LA)MSB"4X#+;".<B@5VT:9LN?5
P2#TV_ID'4']G0O\Y,PS0L08\9:W+^A2M8"MD3+QMRW199T7GR+$SEB.AMII\KX27
P3_5VO^]1W71:FA?DH8R@EWC6P(? 5GL-D\B+\""<8SE6M>O;L*!95[E!M[ECXKW;
PS:IO*D)"#4ZS:BZ:J"?MUI=[$9MZT%<%"([O<(>Y5<U.[:&-+"(77$"^V=; =@!X
P"JT0I?^8Q/.LJM[Z;Q$\BL_D;0B##^*%-Y+Q<IPM UAZ /$Q1#&,FF.X4NR>GC;.
P]2P]8PXDX"%#+D2"GE4,=K/EC,O#^T/O&W'>4@N16983&3QO[)N)B?X&_!%%.<<D
P<<]E*#<65*4K#I#W $_E/D$^CC$&05S\/F-Q*TY^(6DR%B/N_C5)_O#HW)@VA..Z
P7=2BKKV]D$A/ \$%F:Y0E6S0,X<Z4CD_M]1&8Y$98B0G F>@Q6X+W'+WR_>.>VK]
PEYA'8>^,;,=*U2=MRRH\>CG6#'T(SGALFM-E#2-D%4O;6@6\_DE9Y"P_8KZG)Y6)
P&Q')<; !E($5^JL>RSG[3;C1RX=J'K>4WN6Z_"Z%[;QA\=OV*P#Q,TWO6:J20C&M
P5KW:W9&81WG&K8YJ,@-]03!<X11')E I(U+BK&+<4CQ;CFH*<)U'^EV%RI^,+*GZ
PF"R@IE!ERS-T,"+8)(R9R=$9>O>:F\'8VYVKNLPO8<>_5Y]7GJ?WGC'C0U:"2#%2
PNB>?\-38$MR%])&=/H[V-4[96+Z3XTW_R#0R<@5%B7O2U68#NE]FV0V%0OY@6G^_
P'D BZ7,?=J>?Y+:A2"/T[P;OI_J:MIDH:9J$F=*^N-]MI[0H#&NC<,@5W.>KK6?Y
P\:QL.8&YQIX;<R %G% *ZKD$"Q=U\B\_I(9/(6L7%$17N9W+Z5P2Z=3 C%"4,=:Z
P[G^*OI@/<!]K\E&&\5J&D](FI[@0#2CNJ>./,I(-I]0]J50S+;N2/TTZ+%&PD,"L
P,8S<N+"9ZNPVM360*Q19-)+-]%'CX_79ZE8VY2F.B09LC0:*Q3M%&E-!&#X+! [B
P^X?CV'=33<C8$!TO?"$6::AMEY^_UH[;;0%.>2^]T>]FU."G$_EP>.KN=NKYYIUY
P>H[Y_$2#0XA[3BILLI]WAN2-!@_-M8YFR09L7]$)2B?4%4$:&6[!'V4J4'X@N MA
PFI9.'9[Q F'I<]VM3%NN S#OOMA.2A3YK'X0O>14Q+09/X!>I&F3OHH^.6JVQ>1E
P6_W&7<I>> !PEN*4*^S484!E(C_/R^#M\:W#$T1,6&*OD+)1Z;,66JPE$*5_*BB*
P$-B<F^3"/&@4[;I+<:.G0X]5D 1GAB1[,*\@&'E#KF 1/\G)CL*]7DE6HOVK?QR<
P^%!>P"Q&62H/1'/SIX"W()4/<5XX[M7?'0E%"5W@IA_RC@^/<J87VD7^MAI]/#YK
P7'5*L\D0;\;QR+"3(S=Z2;WCKE4 X):DALZ15AJG_0\-VX+YYQ4U&U2?3Q_%SGQ[
PE:6P:WI?AX3=?P1C[PJ/WELF@*OX:2O(RNF(0'Q\VZY9E9#,*JW;HKY,/B9>":?1
P;]\R'L&QU8B$M)),_0-97W>\CRNE,W]J@E;N3V5;JV+9MB@*4KMKBF^-FK#Z."J#
PA9R<V.)NI5] "491.2<EY0Y@8E#M#;TE<$XM:E[ HB_NR,?D1W9P&K'&%?$;ZT40
P;Y>JQ4F<:W[9FK(W8)[1,PMT7-7T9%]54(H#PDF06M"#"D->UXLA2(2I+XU?5ANT
P%P:JFWE+ZT'-6;M QJVS"+-#V"E$E1GS+].PT D#!J[BW&^+@-MR[XM"(H&73B=O
PG@5[/\G^/:+6YFACSUT=7"D\UDYG_IX<OV.&/L%4_A9N-YU,T) ^^)"U:?T\6 68
P;Z\HG"3)2*][Y AA2LH_4#:3G6"XY2=_&#Z< 9!ZG>UE+B<")<NHJIK,MN/2!8>O
P]U1%2 QZ1LDEQQMR7!T9>FQ,V014^,,X$U50!ZP,H[KYU 9?]X;:Y)P!\;'J@RB-
PYD2Y;7]/!7P1?,QG9J+=E/?H6T&[3(/R2NH:?Y+*P83O;S)A]"KPR*D'#&\*-V.9
PBO0+B-_68X,-DSX,LCUW2Q$R1(]J[$#2\UTJPLH%&=(]<K)2\NJ$4XR4,X)C:Y,T
PQ&$Q'P;?1ARLXTJVK43FS!'IB]/K0X=6I(P_;MDK4!<=VBE9^W3\G8S/N$66.0"A
P%BT7C,_I,X:&Z)Q1_;Q#\+* \K;O]RUZMUH4Q/E<<F.[IY >/=&PMK+CRE5W>TT8
PZVA=SH^8N(:(Y_T.M^5E;_W6#K!,F;C3 F"M9R &VO@S@R&!(<13ZJ7-UAO@BG3N
P<T>!K;!4%]!(8A"X DN#&;M:Z'%,/0"BY.8,!/5KO_P$B%;G#0<#(Q$:.Z?OX!X-
PPBO3 @#GW('3$[-Y,/'AE/:FE$ZSRVI'HZ#_OWGAFT4?GCTCGX*)-)V:4QY;N*&W
P-LF;>J]$V-Y*F6;>*A2&IQ/:4HX\NN\EG!<JAQ+!CR@41)%CS,R4=XC =I3P@T(-
P6HS89NM)__'F@/:@F+'!4UL9?3M1"EW9-3"6TS>7OL;D-QX)E3Q?/DK=#O.=#-_$
P[Z6Y$VPK(71PLP$6)7.4,_2 26P]NL=Y%K2PE!O60)Q%C)H7!L, DLFR\G*_LDLO
P;KV1TTJ"E&0JMMO>'0I(O#WWE_$K8MG<VO6M <?X3%B(C'3%P9H-B@,SPI2S>091
PY8HXU8V1#?BD,)>?\XG,,DL.:'.O&VG)VS*D2EK>%R>B7UB!!<8@SGT$+@S8- &<
PPS?EZLK33.9S8-WO10IA:1.<+*8;R^2Y5!7 PZ(0IIP#;MZ\I4,D@4)@0NJ#BH40
P)R[ Y;\_IEI?B:)S5DF@;OBQ =EC<XJ,@U'GIM1U%5P86PZ$I(\T]@TV1*I9U1&\
PO+9:HAJ4TN?=^5*!.#,@(5,<2"6VGGVW"[D?HIU#TS!C0JJJT;VX,Q0!/#WLA4Q<
P^Y% LD"<"P?H^UY!737V@*$?")(:K23D[!^Z2&W1,%R#3+9#+)S-9K'ZLWQOB?MR
P/[L/JC4IALI JYT!@XG\L?[/\5]IG8U:N.WI8]9'4FUUWOK2[E2VE+WND&3O0U.A
P$I*OZU]I_CYV4G@^1OZFBR>0J!D]HT<N]*2.*0@01!Q+&+-.69R&.V0V7TI1!T/*
PW]_']=DQG(".95UC2;J]A=M M;0TP+.5D! ]A9ZD3GG^0)A8"WE%,%2$"!?P<I)V
P3Z/?);C+3TEZCU7C:_55U5B79)1?/:&@9;].-UBP C^?FU3(0_I3QN*-)G2L!R?4
P4)8 AQNY1:GD.RA]L.RDW($P#'-QI >A>H L D4L6IK6@FP(_H(#S)E;&P9Y8)XD
P%R?DG0  (F5&26L8(G-@AM4PO?GD*$:-)AX YY98E<G_.&;P .#Y.\;")I1)X0&:
PBY=0+"F$X*E^B-WL(B/T*]G[  X6&W>@_V/]@ZXU"!.I-;1 HK%W_.$4SNE8"V'5
PG7U0T(Q54%@WJ>>X-R(;/S,;[-"4HARKKO*(.&4^5Y^U_W6DI4579QPZ I-B8S'V
P>V=*5CSBS[N,ZZ]N/;ZEV]8!PA(D/0Q/5P[1=\*NL[9ND3)XNLQ*?\J-B]812;AF
P2E1>&+93:G[C/0&%S=Y>YE@:+C]XLC*KH2S\LT9V$\9<AQ3+36YZ=TR2M)'%?1Z&
PE_&3J7$N4^G"RPI,(,&? H"+GW@O0RZL@M;^]N1]#IN3H('XA7H\E\INB@GW S'&
P&.1003B$1IA)>A@QS"MWVR\-/2)"[NO^/.:780VS\'J*OV=TF!LF_&D/=-+L^O^&
PT\[3VF[YM(ZZAFLF5&FK9)52E12H!3!D"KGDT^+N^#[5NN\$V^IO9HT8^B0V=9Y)
P)B.V@O)&\KI!U8F8Z0GY)%GS21A,B IJU?BFR4,AMQ6^YK*".S$!X$X\^\5W,()'
PR*V/I1Z'BMOAP5-+GC3+2OQHE1TRYJ^$'C>5(L#]6]O.V8:+-/HRC61[]8=E7S=Q
P/3@Q^9%1,ZH('D-ZD""D.S/+-R4KP@EKSY2V<U1[@1*<467QU-9+":&A+>LGA\)!
P!JGA]08VS2F5EBY.F\.:3@KGJ?- 7%0@,=R8-P?0!*+Q#Y:K6%%YR9:\]I68SX1N
P[7X=L@'MG6:YDAD-9ZE=0)>< ^2C ^O3!HCXXR5]0O$>(K,)B*^F0. 299M A*P6
P^[4,U0U*GM'YB=Q.]OB,.G*=D4PC!V<YSQ^3"4$(G^S;DTJQ65M_<R!Y&#P&PBP4
P)EEZ7%2**X5D#] +K/1NDC1RZ#LK\+ K)ZV2:[SPB+VH1!?V(SU,YBBI@O;+')1D
PV^L(-TBY8&I_"=S1NE,^X ].C#GE%L_E-?3=K>DJ$*^6[K/B4%PTT8:R3CF8I!I?
P;VB(QA$>)A!5F[=WV)4?MM$H8RGY2_YD9KDTZW,O*ESZ\_R<[./+89(M>([8LITE
P%,;IO^85P!!\#+&J?;R]'\N4!FG5!.PQ?WE(G8YO[+$JZY2@G$&C KK,GW4I'>Y"
PO<'^09Q_CR<02?,@^OT 1T@AI>03*"Z] I- *31V1TV$I4S5$6"7L[:B:TL K]PR
P5HDO]Z!2+2X:2Q<5\ E-9PS]BYZC8XWQ=9E^?1 Y--TYP*'N CB,8R?SQ4DR('WL
PXMTX1KM!'V7PU?5&&M7M(UAG(?%_:CJG8Q$.0/<=J])@A94?YGSE,KAAC&6]P,@#
P:2ZZO\2\YY*D0Q3^92F^/7"DUL&47BFC/ER_%]""3N]FF_9 Q/:+\ 2;PU+^BC6;
PR\.&>AA')+Y?9,@PPT<RT?*F3#PSGT$O;]'CQ0S&2$_QXT"U:!&1 "ZO"]^(/,M6
PEU;LPMEL6<7.$4<2(7&#E@P 9O$ Q@RM768\L:U0"P'0EO2=O+;P*B&QJW3IF][/
P:CI*#57#[O3U828CEE@D]Y=!X1[1O^Z^@&[,C[D_6GO??L$.YAU5+RU]T2<LN3Q3
PJC+'OPF0#-R Y7>\#?<I3K9$&<P\(EDE)KP-X&K/-#@'BJJ'/5M9:$T[>A?\[09)
PIK>U9>M0P>.WCSIN=[=D**H=$SF' ]!>">5_[]Z@K6)4'0$U /;_C*-W,P0,)G_+
PX^80)F"2*%'.T^"?=5PRY64I-KK:&@+  #%8U"(="[H;I,$-Q!.2H(SG(-;L$8X\
PL+<ED#VB TDQ<<&N[V%I84@87*%7<$\5N>[\4AFLGAN:%"0P!>1A3X0>R)\)%MLP
PO@P8E)X<<-,1,OAQI*9[_D(28"#F5?/'F+X7*8[]2$RG<M"J&>BZ+XCX\'QNOHV!
P;%.9<%D"LULDJVSAPF[ UUHM!Y6*O']6.%GV73\1S_VL 2-L(B@\(CU:5FOO_?;N
P8%^7<W9>.E)U.$\R40' 8MH#+46JSMAVE.$7Z$))99RBN0\/4*1D8T4U8TW4DD4_
P-;15AFBE'SOFL)F&YD^OS<-YKNJJAWHU:,G:1;'>=+<,T(AAS$_#")*"JR(JGBF4
PH[,./<C36ECRY&^/YKG#'NF8!I2I7;/2T')73+'X*@-BN.KKV"X$V:A^_:(5Z:*6
P<2Y#!Q1-B^1+RVB(8IF OW9*\)'$ X#;#/ZL312*YO2WENJC/1R$^7_@:STPU#X,
P;3<OJX56J"F1ZG;)"M9"B>16;KW98QKGLEN2_'$BCF^Y%6FCU?:D15(5^_V9Z"74
P5 VUC[UT9@([&&\V\:FA1_O0&;(W,OF6X42G%FTSJ8JS_3,8"UMX$4*QY/Q*QH:,
P"2F/P2'#H]I9^V+<5\.B26KI@33(S)Z\?4L,P\L,Q,^4LUG4A5Z]ZX<7Y'Z#S&0N
PJ[DB?,1@DWH?+(/E6XJ?3?$^OTC*C[,MC]7+81:/.)#C&/DFNM)G&]G5@#H$+C;E
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS15_20PARA__
`define __M2_PRBS15_20PARA__

module M2_prbs15_20para ( clk, rst_n, enable, vld, out );
input             clk;
input             rst_n;
input             enable;
output reg        vld;
output reg [19:0] out;

`protected128
P!R!QQO_PX-"TM&PM_0=XHYQKANTOI74[,2$%D?VGUNF<XNF4^^$';T:!_[2/'$=I
P)*=T;86OY&P90^[BTGB3S+-UI=S5F*BS=T3+5WIRJM&"#DL1RT4+&PZ'*G#&4\XV
P*P!?(E34EYZ;IPAAF^90.R%WCFK/SM;UD48NQ(]3TZ9S.1(O+\]DGP0_M\"2WG#M
PB7:][0.=)O/Z"V7?9(,>JC.:$?)O?QW8NFWQBE-R.S9A M=^3LXD:-9)DHJS#DL"
P8@6+21'?CH: SZ_N) C"3GP(T<.:'"\2T*< EP"KL!.7:MU+N(!JBI:@\6D>>^G]
PA7;Q=?SN;7:0D66-Y)O,,P>O\[9).5R964HAY?1EY;(X:@&[0[CL%M3(>W$@LJBP
P>FEWNZ'<R8@VSYW5U/K9.\%F1PDO5@109_02&@QJT[?6X6Q--HR[?[XV'DWL7#_D
P7=<PI;[C7:B'"F]?#T$+Z(%'KO>/9FWR:7H<VQ%N/KHO2?T<1LY]BHRG<*E\.MA!
P!LYJ0@4ZL)/3B[EAAB9,P).?#W[CF^R0H*_K8]3!I+@@12Y;<JW,CX5#,@E@4L.'
P@79[M#]FC"6B3X."J)+0@T_&3.1^1V"1Q1/) +</.Z&_(1&$@5R+BQIXX2'?Q_K*
PJCBS<U8P--D[&Y9%K.F!ZE( 7)E.7=*J&KL1D8:<T2?5ISR;QPY[J7Y^[@WK-V9A
P14F=)L8ZI[)QH#?95W"]*.>LF/#4 / 27X:X)39/Z^F6\A 3EFP,Q,]XA!^\L%GJ
PN526&-SD.Q=>P3?JSC"<GFX)(KW)A'?*O7+)0[;YS%_!T<(#>%P60PE%9=YMG\:&
PI-0[?C:;!!6@.JL'><;*+H;4[645I4F>6V"&9%<NKQ-DB#&V,NE?_(L?ZIPL2K;J
PTBN86E<C[]V>FJX.J@7.JRU7 ?A[%L>[BS"#U1U#O<&-G9OX=8U3#AATH^B<&"!Z
PO&9'KN6W=OE6N+0V''+.M 7P(?!,^<;ZUM^3\ZR^F.\1_>[.-#QH 4?^#UH$C'?7
PT3S)%\/KP*-_%E3KT)QGSDZ!,^P66MXB8K[K3+WZGGG-%//FLH=(J$]8I06E\W;S
P#.BD/822APM9*0R;=Z?%7V0+<(LA0PX"D\]&NFNJP/M//:NKPPST63RAA"2UROW 
P7LVXD%799^G]G#=\W-1TKI+O=\]FOV0&6.W/$A[K\W7(Y( O@32RCT#&I?F2"E'U
PI_PFU.>DEK=N\CX'J@7L(VG6Y;E4F]D%D:\FAT7$$SO5SA[P1^A+D8N)!P.2N"ZZ
PF<>0%HN\WY;9^Z :06,&RW2S.O: D P)8(@@07K(OTF+-A1D*T9]@Q7.1T4(:(N9
P@'O.>\RVJR&=RLQJ^6O8&)W3/*%;\,FWXXVOYA!U^00_NZ$ R2$)ZAT<<B=S,<RP
PD^<,XV=B6?@LC_[]Q2FG,;53BE8M0V054D&)(,\^C7YLQG_4 !-@9W*C60R+ Y[9
PJ/3E=O$A3[L7[AF<N>:^MH7X1GB%E/Y?'AH?=YX.&N-%R50ATI*KJ< !/1[FE(_(
PZU*6F62=$/'D+_V@YJ,&#->&K^?UFY(0IOM"("#5 5E6_BB^%E6,3V"=J9*IFZ$5
PXQ6H2?HJ%E9T#ES*96,J7RY8PDY/(OU4T3Z9<XNL98QXQ$1RWX&-J^G:+,.6]QCK
PM9S:9BP#AM*@.U0)R$FX4L>*W@:_:28UG4M%\U6P2!U[0=,-4&P"7@:_GZ3MC-"B
PT/E$7*1. 5&EFQN,P@$MU@W95@"2TH&JUG^V_*$+U#IKICMXMQ)NV/<2Y].UHT]3
PA[=$BHY>:Q\6YI[103I-QM:8WP--&Q/7/Q[HLIY,D.5.3'!@X38W,?%3!/*259/O
P3J@-K*3^+B9(TL+?D4O8W .^RX>6Z)A@^2A)E4YJ!E.3].7ZVE/>I R!+W6+VN,<
PDCI6TY"O/$T=IM.RMXJ3! AI4T.EF9 17&,*V+68"FB5\_5>#B\N[PMF16ZKM9/J
PL1FR1HG[B =F+S)-WSP>&/XL0?4;S2P$+*"7CD<+@8MY0*ZW*IQQ([:9%$G,N&<F
PA^]O.$Z\F+B2H^:R K6*T$F92)>,3?.$L!JW!LW_5%H?)UWZ3T![WS7?'A91S^Y.
PN]]C:HOE"_YD4DQ>TE>E;+P!L'@1,I[2"SBQ9/26"9)NC8:@;^[-)Q,/2&MC3BS<
PP"/TNEUN=H?#30Z!PR-G\C&;K;^A\\6/(?(BA%7(;0M^,ST?LFG<$FI0'Y;SCI]W
P\__%Z6-6OP1Z[4/:B\<(B4GZ$V*B $_"@'VCQX*W'W_9EN/_#QZT,5+'9CI'PD7\
P^O1,_9"Z#S9A]&.T8EH[ +?$BA+JL+GA+6CZ?X=M!YZ>&%6,^N1I:FEX0YA<C4HW
`endprotected128
endmodule
`endif


`ifndef __M2_PRBS15_CHECKER_20PARA__
`define __M2_PRBS15_CHECKER_20PARA__

module M2_prbs15_checker_20para ( clk, rst_n, loop, enable, in, vld, out );
input             clk;
input             rst_n;
input             loop;
input             enable;
input      [19:0] in;
output reg        vld;
output reg [19:0] out;

`protected128
P*CUPB=:?85%:5=B&9V;KN?5:G>[T]#I\K,-HU]2PUU48E9!<"E:RLA4MQ10#,C:\
P_U<C&P0="^4@%J4%2N\,W_3BWXO0CJ RC"X%3MXTN;"'#^!"T[P- +/+V/FFW=<=
P[J^_0%ALG^A7X4/LJ:HVU"1;2$Y-7\4-EH7-6Z!DTXFG0ID.Q7# 7$_RQRV-TP@/
P[&_W$A0AJ=$@*M._;(_28<./ 8O!9U9*S'M0=\Q:622G$]U_=:-([&VN>7[+6R6&
P5S;UH/>7>KAF"N G;UO+AY%KA\<C&?YY=UC7B>0I _B_];3L8\<37?KF"+8V;G)B
P)OGJA:Y4 4?B<52W1\Q,==5J,@8=R2!=@!0A=8XDK \4%F@Y(VZ.!&+ KUI"__?.
P!1()PD_>(;5KX^QN5UJ[^#Z^(-N]IT+;4*(=,S9/IKDYT4$LT7P-I;BEB2=_E#HN
P*P[2C9-Q,8++<[KX35R(=N@TRR]R^O<YO5<%YJ5!C:6D(BS3=F)H%C2%.XFT=9_O
PH8P<[?Z;6'7K.#"\W[MRR4"H,A#?ZLTJ+\I-I]1S[R[\[:$ISZ5[!JP5V=IO&-A 
P(:@,;%M)#0+7[5V1XMS+(3,M-2>7&Z%]2\A J)W$_\T^A<?2'<Q0DLU6>>. --GB
P6C?D\1Q590+0[N2-@(P\7Y:B9B#X*DTI+T\G7)8EF9D//X4T;EL20?DDYZ(T2%ZR
P-[DR'CWL.X?8RKEN<O6:\[AX=\"6_G<]X*JH0>#/RXW#NX_DF1=,SP'K-=J7K@(_
PS<5A(CYTN0%\OGAZ?G>WQM)V^*<,P.\!T.ODGF++>HPQ=TC_3<O\ AWW-IS7J34"
PINS6]CIX7R MEGKOJX,ZGB4#M*$G^RQ6;E1>U=-R/.D1:4N:"+KHQ7?'S.YPXG0V
PVG.+4[L19Y5XN#PKOR%DX;W U3'.$XBV\"JY.%/+M\CN8'W\Z<2(IR@$Z6-@'L3]
PP6YQNY"<A%'")@H(=_!)5R*&'/4@,JBQN(]S.A*" Z9F5*>X8*D1WFYN)%B9L(_Q
PO380R&OL7"W_TK7[Y -G_T,I*[D_8.M%/70"OS]4U39CQ,=XAY,7Z,"@E2?&]G"0
PUL[6+/IO=[S_[@\IM:B[25= PIT%3-UJ3WSM.:!)D7IF?C#:OS]2V7CS!9829[^;
P+;PPF=99D9M$*JT6KYM<@55Z'$._]6EW&B<\%< +D^\6)]]ARI]1E1GCAQ+AW'=J
P#!UPB^8?(YD]60E %GN)J"M7'J,L%5N8NJGI3PBGVT';9:?Z<V%J4<$L7'.U$;]U
P>A3-U2Y*F"N;5++HAA;&N]$N I)0J5(.'2(#GW33[0)B31ZJQ!6GABKMAP%,\E!&
P><Q/&6^?@#<;7=73MP6BC>A.L31Z'95>RG-:68 L*^UK8'WL]U)9*U:^:3", ^V>
PH4U*.X"M?P3%F(+TM9=]AZ"55)=]C#DP+#FU$QA56!(#G^QZW[[I5,#.5)B?N)3T
P?T9' T[_B<A)[ 31=?JBHM7:@2LWV*OSNW JLP 6;TED'#N> *#@@=XLJG!EL>5#
P5&/BU,/$/_<6U3WZ)<-47^+5%?,AV"31[=$T9_:>1*/46414SEC\?$>FNZ&8G-+[
P/,@ 2W">V9K+CY-ASIHKQO12\UB[8_]XZ=A#IT.USACS"CF&JYH^?/H*&]+)S(1G
P2F!, #MH;H+D%EG0NJ7.),_;N5*VSML9A+GF*KP=SVD0]BVWSMQP1Q3^LM7#W[XF
P\FH3<?%Y43Q  <T(4IAEDU7O>QWFIK1(OS)!7O+RX$<O;Y_%]&%;M86B(MU3]+J6
P+)O\EH>[]'6W7J;SYJ%7.;IH=0GSPH'6_ [;J0IG;4]1,@TK785GP+,@+K#E?,>B
P: @JN#A^-%L"R=LWM+7/J0%0?A3R.#2K/DN$-PIZB:ZPMW&5_,1SKJB5_?RM'M,I
PHY"UN(#2SB$B!W7>FNFDX TFR*8*0%RQS5]?7E@V+:2I&%=Q)G&(O!UL%-$/92W@
PJ* ;G8=I.RPR74Q7DP"(8^1=(JOSG_0/"V(\%"9UR;7Q(GDXBMLCN%+B'^&U@0<8
P"]\[/42&ZVD<P9.#&WDCXJ;GVWD+E9 )^BAMS0WS18.['QS?[K2Q_2&58ZZ3%T)D
P9;38:0Z-V&O\^DYE/+0>/3E&HNW3=?23OE_EMX319%SNKMTEO]1ON X'B7A=7.XD
PU;),>4O\3N2 K02=9.P\ @K>,FZ#1)1JF]",S2(#HLYA> 4U <V5@R^#9B$"0Y.S
P),0VW1!0.6&5A?(XR7K]K5.HU=7[B>L*\G=.:UJBK(Z>B"'D":.%&%(F(LOEU;-E
P#CX]NL>L)"GL;'N"!UG\C;[.)-"3PB(^>?UVQ%3FZGQ)8VL,B07@+0\J/::PRSD#
PH\WIG%JMHD]+^GGM*R!TGA2 $I2==8,Q![Q6AWO<BSM[7F1R)AOFI%6?<^#4 W)T
PC@9K0UC8*U\ '5-)=2ZY^?=K :7Q^$X[B!TFBU>$N7-ZI*F]C$G>B(TTD]C^L CR
P41\XX"AE,5"&B7!^-+0".),&FPJ1(>:A@,0MY7Q2T_G ZK[['E1QK.M81ME9";;-
P8X6HF7!:?'4 0).UL!N:I[6UY=L4A=,:])+75,H6UI^EJT.[WG/+4(7[E7'^V7J9
PIF__#@M4 DB]/6JO_VNUCS7FM:GML/C_4'3>'\;96C?*)GW<4?G_E!L)F<:CS19A
P=+:-A\[@KORP/.K+3%N"0@573KANAH]X<[',I,$#2D/V)H ""].\"M7IDQ _%@LY
PQLH0GDV7S-:7.KEX%U5PAVY"3C_M3[^_?@F3W)DPY1\!Y+S!U)Y3%4)@ M*L?1O@
PJSFJEGR24\.SFQ<@(7<I360K21%_7E.D.Y\E-4X90MTH>75B-$C6DT2J(,3(^*$>
PP"6VI,4O2$/)5Z1Q#ZF5*E@ T;+N4F-S*JL)SVU[TJ1BU1)*I#]EVK^Y<\PNY=Z!
P("KQ'4$3^9Y\DG*FDZ*2E$, '?*W8L\@LU[E0:5D0O]^Q,I X[\:IC.YW7"K#&_Q
PX [);"L(;(90+]BT.M[=!>^S[=$+S9@,DEC.%'8\*E]<YQSK/FIJVXWX170QY>P#
P/)W#DS!$>C*"Q\)>:5=4A9ADPZ5S>M\J;)O@B'+N<%"^:-_2F#S),NV)\)+'4L#9
PTE!P&._*B.UC6@ \%R;]<C$]CMI%O5?0:#1Y2CS"M,S<3RI PB,O,7C^Y%MSP, U
P%(H@J6K-4 12BH'0V\MQ/GCE57BIR!2FE,Y!9])O% @0)3B2!AC8P#,SQ"A[""L"
PY1CSH59UZ'QS]3.J=&NLT>!#*EX<3W7 >M\3Z6U_NV* LDTL_1_=QD^F'C"1J38)
P/M]S.F4RVK&UNW"&J"5:W<06E;J&Q]HV9XQ.^6-6?9&A\3#L#M]VFFT,?<D-!*T$
PW>DG (L6O99N,T$VA8O$=-30*>YINV3HX-&%7A-7%__U+M"'T!X;MF59)D.6\2M)
PX;L#7*O [J!(\\+'],#F--/^=6E^1&F[(\LF8/R:E<'A25,G%DA9H%K<"&"8+;%^
P\04!-/OXQ<\53^I7@\:?+U#),;1A1H:;-0XSY%Q1AY9AYMD0RXO@\R?E2\U(,YB.
P-9PY:T9SOM=;AM:46<F/ M7T=J?S6RJKP",HTUS/LA3I71P/1^AB-^T N%#:P+4:
PU+;5?'))K>5V:K.NUQ0J UM.B@6KY:[D(W9<1RR)'B?$WMX9"0C$%-'M\,@7#W*2
PX9 1XO;X[J?.L+@-'^57E8ADF'B@;(845O)2KU,SUM&%UF%>J*X,'@W,H^E]R1G/
P)XTEC=]+/1_C^8?&7**PMJ7/R3??_C@;EU4Z<#.X/;B'[L9BZ8$7YM^$FGGJV;@H
PM.+?(LO8-59HOW3S^/E/0YGD;WVKX;.!XN%V1*P'M-]B,2?LLXMDP,C$EH]BBL13
P""OSV@QOMV;I J(J\Y;3$R1KMN*3;K#QPR+ ;Y$YAY?V%\DFA!' (I4+GX&G<',O
P0-^G.S^=2=ZGIC?_MTAA8<.<O@\SP/E?EGY+XB 2>EN EC>"%ISV1EZ5 7/?2KJ_
P; JV$\T>9D=W5TPO\N-;@\N$2!<E+A:;/%-4D.GL'5(6UVR6^Q-L&D;!/?-P-EBT
PK<M-(G23SOX^#Y&U&!FACN0G7RFJP".8;XL.62K/$G8TZ?R5>)@IE[;PW#T2!<O0
PE:*0NC+[3AYF;HF^<E^LYSE^>D>O8P)3S(I/\2ETD^!YT4.QGP6 !/;&Y2SQMCWH
P'2]A4)_V"6K^-A(+<?*MX,71UXZ0G'-&4& YWA=(#?=' CZL8F0"[QCG#L)&R0WJ
PRSWI<6H'+'@3L+UB_A.IAA:5JDXR.Q-&%+>@+Q)JZ,I 8%PAEW"US;:%\A91N8/.
P5 ^R.7*PRG^5KF>-F3Z2;+])@.T*O:T9(_CXR!RQ?C ,>3@U?P_$Q^."C= >W0MG
P44-).H7FW(92#//.G]1"P;5%<7*SV]?B*1O/O>) _%DB.LP\TQX\:Q5*Q]Q; +#Y
PU?YL=R#18-,@*]VJCEOBP4!FXTU+H5F5J1>*.^2\6IT/W0?3=A^587RYQ&Q76C<#
PTS''590RKJ1K,=AMD2: "0!C8)ATD46<7CS:V4%O8D(]@6G4@[H&9@%/+XG]Y68:
P-A'BJYH,W?; CEQD+Y@\BII$K&3>Y3S60QU?3BR@[AQ<]!6LOFS8V]EPKMT-W]TD
P_>_41'U>):@3CM#P0+^P'\14FHK!<PU XGJ)C1'VUG99AO9K B(QIXKQ[DO2MEMW
PA&SBPFR\UYA7SP$QHV#0#F&$SQ"8E[@AO4%LJ(D);#,6](%S7HPLEO"'_V\+$==%
P!?:X+?3@<F:ADPHI_50S':!4MMW!)Q9KX3B+L61N<?5C*L_9F@?T&K6=*+JO$<&Y
PN?$E1&F>&!DS$DBZ)VRB+*EE_@V.0W)H\S)8/@.RYBB=(0"?:Y!YK9<V?4-8BHPI
P\*@X)7/^TXI.:6A%,6^L+8,+H 9 T$AZ#[:K@[FN;E&#EH!H8<T@R ;-HFMN<X*]
P,^3-W7.G4>$FXZ5;::+T5?8I'1E1DH<&]4Z('7X.Q'I_TRT"TC@M^1KB:3?\P 1-
P/5-*1_&I'0/<F>+Y+X#YA(@(0G2<FM$"37IV5<O@U!!0 ,B3($2Z2W=5@6+AAWUU
P Y)9USS.>5P-64]X:+P=RZ^@!Z?=2!;7^);F8%4J:]^[HBSHTSVJM#=3(@KH BN,
P,,O57?=40_]P@#I4KH_S+KIUO.J0LLQ\8!V,EJ-D@V!,"!!Y_^Z6T:0/,:X)@8'*
P>IXXBRY<*Q:U,?-K26"R$FG*\- +]V.0.6(BPIY6-*GAO1G-V<>(>6?25HSAFY,X
P*9DU1APK+70ZOM7[GQ7JW"5JV:\=,31=S5%GVE?SH24K#9^N2A[X9T<N5L>,4B%H
P]T")--ZEE!!QJ%^Z-C9%6>-H.+#K4/%\$\9O/F0<R:MJU^GL0QLC"T71GS> #>FY
P(&Y'$:433M/RJ2B\[6@M$!B4E<MB6'Z(@MC1#$MYG%*!UK [;E:ST,\==66*@O5K
PWAFJW>@%E('U,#H8X275.VW:EAMQ;XM70Q([P+5 /88+C!@$DWD%@<^R".52@=4R
PC,U,:'TA 0]^Q35H)D0JIXV,PI@&<C,@X=X6@\1+AXHU.C<AQ.#*7+'W0-XMG)]B
P[V"K)>6*N&QH;B0@)H4%%+?16'U@>579%(=)\&58^YR?_X]3B#AH_MJ%I$BU?M\V
P;>YD#Z$H@<9.[*3_V3RORREK[:7>14#7@L?("W,_T -%+;113Q&F2B#V?3$PM&C9
P0,OS=OIP"PV3Q9P1A58V;!E[+-EL3+!/- N$NCP!5=2BL.7GPIC,V$'0,O9)QR'0
P@!-EN"$#71)YKBWL)&W090)4A$B[QPML3TZS0;3 1ZU;Y#U]OMX*U)1-@1!E;W?,
`endprotected128
endmodule
`endif


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : prbs_tx_top.v
// Author        : Qu Zhang
// Created On    : 2021-07-24 16:11
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PRBS_TX_TOP__
`define __M2_PRBS_TX_TOP__

`resetall
`timescale 1ns/1ps

module M2_prbs_tx_top #(
parameter SYNC_LEVEL = 2
)
(/*autoarg*/
   // Outputs
   prbs_out, prbs_vld,
   // Inputs
   clk, rst_n, prbs_en, prbs_mode,

   scan_mode, icg_mode, mbist_mode
   );

input                                   clk;
input                                   rst_n;

input                                   prbs_en;
input   [3:0]                           prbs_mode;
output  [79:0]                          prbs_out;
output                                  prbs_vld;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;


`protected128
P33>KT#'IF<CM-=V>\(70K#&6/,#1;4?: <5<RD*NUR,]I5V5$U&OZQQ:^59G4SEH
PP$-[/.1[!*7"U-Q>O MQ13H:N7+663 +M&="Y5SM"4?VG0#+'SDJ#02$:#DD51;,
P<[@1^X_?AE4S!,2B+<G3TUH\6_6SI0]\E<G756<)J".^RA#4LKAG<7)69 %E5EC\
P#A%3&'&%0)BT'VB*^K-S&]V+:V[NB%:ENI >0O%4ES@DV#:FRRKO .5H@Q+(^S"2
P#C<8FW$N[_NUCOL<8:9J&:[#@H?#)H0^!W*0@+_WM'\R'"P3<XF8R(D/<A+<AP'@
P+?7+T+TE"7&Z5M+- !-(3CD'8ONK[8;5SS+!8B;"_EBRL&>][M)P0S@/,=\1@D?N
P.=O>B9_H"?0'; 9GN48QKTEP1GZE9)JUXD@P9N\TRY\ 59>Q5[?^H@7XWY]^'4,%
PCM"^AP;G1,_D:#E7?<H\8&"0N,_&$4^TV3-"O*T@I\YP$.R%S?^SAJ=['"<Z<^6K
P=/":232FAF(G(-8:4_!PD=PI <OVR.X4./Q6&B8.-8GVC7H86@E_F_4^\$<5AS$0
P!ZT!-RXGV*1T3X/5-F3>A4A!'E,O#^4][6\H/)UYA*GU#SY\ZWRABA$"9>Z GG%S
PG_<IT(N(GI<R%8E1N:2Q?&@Z5?&>_$ >U3UO"""];4Q@!M7BFHT>>$#^G=P=[:+.
PQQ\ITR$^[_H7GY7NO9GQ-,,OFL2-ZV?F6?8V2O*"=AH.-(X;"85\-?:;X'[N9<UE
P$R:2Y6'U:&O;=L:#((S')C(43-B2>=-WF.F/1X<S7.5CA=V=I2A!+TA4N;FRW-ZG
P;ANVX8P)3UX3I= -:YCS]D_-6@R< ;$VOZ":XWDOT=;AD0?Y?B/9>HOOT^J5M2O+
P!UI-O#^-P[KK[WGY*]C;*F ]SRA%U9QTJ<S_!-!@V/!9<D;@WHBBK"/S:/G'^,"3
PNP3P!0PJPMD6BKXR8@#(_#XEF?>EU8]"=O7CFMYSUFF @0VW^$'L\G^>)6EY0Z%>
P&6L"-?@MD; TTL2X(_F;PPW3*H9B9\_L*;HO47&'JBN"8+J\&WLZZ9!1D]UP7 =I
PW(JG%VCZP-G@?B+Z;-SGF>UF3R;8J5@&&Z5=J@/@YN8)%72E8IU_S0.KML0E\IJB
P%P^TZP"TJ2R>MKY[(;E#26D\)Q'DCMU3TF,HMAN>N60DDB])=6%HE /"@ 1=OB%4
P86#T@2H$@F[U@_/122=X>)<\"=N)AS_>4DVHQ(A@W0<QFZ) ?RW[[B^+"*%*]FZ;
P\0F2\\IY%X3<<\B]EM3&[>3%T+%_DN6@'8T6E]0+?&\4("%C+=S=D.W]+PPSRG/O
P*I#TN&OA]'&3H<%OI1HN2::%E2S,HMY7MD)39E!AL9@=<].I1DDTXX:R"?M^-=$^
P$ ,LEOR;3P+#S20LB=A^3S#.*;!@^N:#ZP]$@<L8?)$Z%JP8ZQC[C ]CPJEH+I7.
PV5+*9.[=O:H%] )_?-*<N= 2\C4)PEDN].^@9D-L )>X;#^^!F:;1]B^);YY$![Z
PPCX9E 4#PI@!7T ?ZM*@I9AAX%$L>HSJ"A-B4P=9)-[.^Q%;'R\>AF'!#;&X@,'@
PR#;1K=TL,CZ9_ +XA7?,3-XX6VQA!]5CU-8V85^&5-+TL=:T>/>UE@YN<[6_O\1S
P_L#ISQ=*EX&@P@2DGK5RX2D%4T_8.SM<UX#<JZ"BMMM9/9Q!89-N1Z\GR01;](SO
PVYW_[T%<'Q!5%;8*<[)GM37R[8@Y0IS6=L!W-8@RV6;O.0P+$ZXFVC=O*4\YN-OR
P%E;,(,2E\3R(IZ:R=DWQOW;3.5W+=>E%P\[9(%N4^YCC#=QJ1&'2EX0L(X;LE]_U
PP0=VR=968LK6Z39*R4L59"@*-+H6 AD$2B,R6^!GCKN+D*3T=1<O,]?!*2'L_5N0
PKJI7DTQ7Q6MV13H??,=S.I*,(]2.H&JE-#S+HS583N*H4B)BY0+O3?VC/[^8P,U?
PCY6VGK5WKL)K235V)D?B;!N^MH,,U.Z[^/31:O.3/L:JC8P Y*-X+OS\MZFN_,BF
PYCIQ/C<E)K9,<=F5Z) D,6@_B#GRR299>9/1V00DW.>2RHRE8%W)*S"A:L.)S]H#
P*!(\LEJ3C:EA:@ML3NF,FN '_9VK81!D7<%7TG(<5(GLI=]!G_?=+<JZD39F8]&D
P(K]#\1Q+W"[@G%ENLXFG[@?2OUD9R ?P->1-CB=TWGZ.HUHQKB+34J$P4P@#ABE,
P$KO^ZJ,@>HZ;JHX9A?%,M\7E@K (:FC@EMQ^RM@2YU5BI9T^KY-581E[<SY6H'A;
PD/U:9V(NMFZGX3;GB>X;\#A>#38['8.0>0\=ESJ>N(.YG9_.+DTO#4&.2>D@G@<J
P7A [$5+T-%P^'MST^]E#0:X[-G:#)AS^FR=*/6& O)4=YEM;-J)PB]B^-[LJ"1.S
PG2,%SHX&A.M^FYPYJY=3;K/#+ TB+^.@4\>3'(^%-=2PCE'5&#1<T(9_Z92]N5 X
P(_X2:,D4%A]HBC&_E>FBJ,-]HT[H_9QO#IU)N%+V$<F*O.[MY\4MYN)^0B;6G;\+
P+=/'V'"DTO"WRO;]-O JK1@KAOY!Q:@6LBG+L#%O=H4F#5^)2ABX[5]"@^9"\HZ"
P!E$5E<P'>I.&Z][7HRD#'-Y$R:U702M-T&C5/BDF\Z?"WV?B9;Y1:Z\#ZQ[;RD=P
P,$30<NHJ4,@<J^PIQ,:]?^2#!'!EIO=A%U.3%P9=U41V^N=9J *+=/V8%O8!QHAR
P$M&95VE .^;6\''DY("Q+%TC\^5(A-0M=B9K5D\VGNLI)_[-G9S#[A;[+5K-G%QV
P)V*<N,6M!6HQT]VV3ZS(2F"C\<6Q<SIE<RXQ9C"#1UDG6-;]]L9%978XXVI/MR5P
PS6,ZTG).@-SX8Y$L?,3FJ:5-5]CQGD7)7=K>5G[U9]H-^A;9M9VKE9G_5)'B)=0]
PF. (Z=YX9J?!EA0TA<A?GG:(Z7+JRZW7,4TN7Q_Q63\RDM4Q,M9=5Q">'"UKC!GS
P":TIFL&^(>M-[[+*TH0643Q0YI;V.3!/D#5 2_18-2VXZ]U(,MF'JLB@*%' [WW0
P!=,P2]^.GNQ@(](PG-)MW?T;E+<DC<?ZCLQ\.JDD^6I'^GJ#?9#T/O<-L967&6O@
PGWM,-9)Y_:CN-VYO[\*>LC]]B-2G_8,8+-EMIY3Z?F-=)':YM>_PD%7*="5@CD9[
PRP-S&->DT-C;D.I)YP%8?%F] *,X64MK3*KP\;=^"%LZ&7NID%4_X5$.*&JD,_LS
PVL^DDE!UC[=QKJ$LB?8SWOR:Z?@4@S&5!>$'M-XU)[5'0AD@SR:&3&^F>UFUK4[P
PO.$PA4LXTL7?[O=%3->)-/P-+=L0X<])X6[;7VV\4+KPAAD9<C"=<BD,$,Z!T']%
P871)6R9^ ?T,):)6(YA,DA*\A#"H-@AX/&0!\+I[6GRV\?E));SY37B6BDQ),,XS
P!_& WTFL_X2Q>>+:,Q&G>PYNMZRBO<PO<1*^UBZ^#N&?BJ+.)&+$'?=E=&':H.-R
P8Z*<OV*TO^&W^L+IRO@I^6L^BA(>?'<,,^!)DS6X-&N-/JGP74V%MA;TUD#&?W!"
P(KJRKDH26/Y'MC@HBL(6U]P:%:X<.WTZ%=2[WE7<@G Q#4.72<?T)"0,BJ*0\M7C
PNY,(6=JS AFQJJ^CT56EP@]_X5C(F.+LP!3K.;0:C@J9@<J3#-X0!;H/WYPLT>,!
P?OB8#0O:J6]%8(0.M$W/]NCO_#ER8QBWDY 7G<R \&J$1/SP]'*<\ F<<W/$&W4X
PYQN]EP"U!G*::PM!,W3AX3.%XX$0ZGO@V?\OYGNMOTSD0^XTXC(NC$>^[D743[KU
P*1KL+$#Q-JX#"53U?U61#T\*5\6;'9#NT.98$ PVVP/P))SI*:USLVFQ1HF*IAO:
P;5".Z%BE?3+RW .H?S=>L=(KJ-!>K=VL(9P^Z#">>$TJJPI%LE6_2Z=+P+(N3[R4
PH0[ &P!:<M";"5R>99Q0!Q,?? 7M*=V"GM&<]I)+?^S :PSMK'HE#X=,$VTYAYW"
P2WT#R 18%\"34KZ3[1+5BH;2%5)8\9P2Z@R9VS \JG,8QVE7'3>FT7BFP9X>,P\^
PTRE5K T _'3ZBS%R2ZR 6DQ->[NVBX_976-Y0Q24=,$T=!TT4)+C^B;8C<P((A;-
P]V0U97=&(H"/:CO^>"W>_!5[:1:FS=:+%M+/\[=4IH,G,&?E^_&[6_2.ER<HFY+S
P'E.%-N=D8RUMY$ZB1LR,"@H7VGV ANJ0O!2^Z0&+ 1OOJ&%XYT3I^%UMO2Z2HQE=
PU'MI.].2;[U!J3?83QT+QKA!07+_YC!$&B0$AN;Y5"&-WAD9=;^C.B_TRR[B-A]_
PE+!S$^HU+Y@N(A8&#9M7.QVIE=@X[)C.W9M49]3DEGZQ[)E.7I$#.7IEQ"]=5H9*
P5[RR<<<NM2'9LU9[?^<K(4=W*30O8%W,Q"!BKM2Q'9;+H\2N.U@4#4?MH=4W#K:@
PJ#\]K;]V[&R:8+#],DGO):*P)S\LO2T#&DIUGX;,]!K+&'A]]=(+'#Q1\I/O!!XO
P+%T%*@<E8]]Z]-UK%K JH73<M:^A*P3EO7X?;D8C^'CC5[UBB8Z7_0WSTK/TH,'=
PA%[G$0>P-EN:NW$I_\D/E%S>'EHTDXJI&ND']+G^C$!6;V0,DR=B_S_=S]X\VF Q
P+--!5^1_"@FB2;M/8\7+'F.,6_&,K!DW0%7'%56N]#1LK]=QPG&_=[*5D2;/0P[4
P\/,-JST%C7U6CX)UGE_)0Y3V%Y0'&_: Y=FQG. >G@(7.4'JW#G,?O2U$4D?(45B
P #ZL .&41.&@N&/[W4-2(BJL56/K_50'?Q\I;9N<C[3@R(3CG*D/TON/^0_/P1['
PX$,_-*NWL4_[>^1%YN5@AG?L[&7>_9#'B$KP&Y$$4-O/7>_;A<.O&WR9<,-_]]!"
P E-4::CX&]FR#I8D]/3,;K>+8$'\J0[K@:)'U-4R=3-_W2+G;A:L/#.,09V>)#"O
PYT_01N%?<^2YQ7U1NO"5=%4X:GU8YL1M>2@O;'TWA]2VJGFV8-7KQ#P\$<($.L+J
PRN(\4(>F!]$9=L,=9/[)G&3.[*F"X>,E&E5F!8-<DBJW7?3O<-Z[&RS;I93R1JN,
P&H\NL7@!>T;)/4D1%\656S7JX ;;9JDS$$X@$#",Q#;UQ]\U[$$Q98R+* PB_+^!
P(Y#1N3W<EO9_$U,\M1!I:[NQDO(]]_UI[$(*+>=5)8G,R@43F#J0TJN*CU^DE8!T
P<_8(DQ+['YA9]B403_.)*N*DZH_N3Q HZ^&CFU]5/\I-JW@V4*A?=[,TIA][KI1#
P6TRU1M":?M4+-&O@8"V-*[P!2<9UK*#!N(QTHAT%*Z;N,I$7'C-0,W\J7 O5D"<V
P5;24]%WQ.-X<:("TJJX0<:RKY&6+C(:J*\P]I-"%?/%!'+R[R/AV*>[XS_<*O<8+
PPS(?#LAA<\T@1ARX::"?!G<5&)DD]LB,2R[!6G6).PT""S#,W[B'&<<AA-/SU2T0
P-@DDLTL'UK-6RXGS1T.\[#-["EH;*H@376^X.A.-0WTP]7.Y6M.K5Z2332Z(LF'.
P (-+G]L1'I9P4NM86'H]M2Y&F$PPL 4-$=9=4Y=9:4?CFY:C;TS+D94B^Y]!$O<E
P\)+XC*7%I%TZ(-2\R(H("U54(+<[:WW55=C[5HWRNDG @2%ZH!X8#==I,_7]KE?L
P)XH41C?""PM?#&FQEVLE[M XX_8Y@V4RRR#YX"<R-M\<#97F<T1</*&M<KQ 8D!8
P0$ #0A(%MG2)%T4Q,(37)SZ-=\7N?BCPVK';CJGY0: ((%CX<0W+F-FA[#D1F9^#
P2H$?6GL5(TBU;6ZJ;6(/WT,H@99K9,A.?TF4YGHB+B];=C28'?&R4A.'2E^DGIWC
P!>1!7<)]<E)KB71:K&T.Q$8:H>X/GLSAUX?;*(\Z;NCJ#ME\F1'\QH$BYUU=Q78$
PY%R]54#42(S,^>;#&84REG;EYX&*Q?-,\0FO0H?MT1R%]W/+[ID$LAN,VY@M1'S9
PM'5+,\#JXO<'3$9H0G#7/'3EW,V6X$%WHJ$8Y/9Q3__PX22B[%RJ[R!63K7(YI4:
P/J2$]3!W@>7#7].Y@+V@_.E?HN>._3>G+;[VU#E2)G P]RY(J(HTI,8!>+1VKR-Y
P _JQ[O$[K3%5AT_)2@K/>G"(8:)(;P"/1_38J,TU5PV#C3'9_Z16^62M&5(0,;!]
PZ+"G8#P.E2.R*%^FW44D<5NGZO%S? 72@!6"!9EZ V8-RI8F"6[P2^9VBN[CQRF?
P"0S7B:^0I&F"[@#C.YC:BV:\NF)Y<[4.1#RK>6CO$:6)DQMT W"4^?79>-0C6CQM
P]V4$)_GZ?),8+$\5U.="(7/8L?Y>%F%1846Y6UJ'H3"SO.:.[PUJ@01;]J&]A@70
P&I+>"'>N0"UR(O^>Y3[:T&62(8*U,GW@]O2Q@7NB^/(_&= EJBWUCZ3"9ME(4S;H
PX&Y6H);,-U"K&'65&C)<- PT O-C"W8A'=,HN:!DY<D0(49\;XE*P*JK=QKL%#9*
PYEWJ[;%4>/D2/T!Z%Q4;*MUD3#H&3PK%N[E*XFQN@(#LRINSVB+LV^A)F\.R7$PS
P,X#^LRI>-=S"V6<\:+OS3+Z)<+ENM>B?V=)[[_ R9PZ#-A",JL51*B_JA*W)L\K6
P8!(SV8XY@%FF8ARL/?L31/(7PB\>J ^?32*;!PA)G(Z^<'L'3H=MZSFOE@]-XOL]
P66^$=&M!Y(^[\F3C$VT,\(X<G75.B:F6:0H2F&C\.!FE5UJ ^\Q/%V?0RS )Q5/L
P44(0Z$MOI4U1*X<R_T??D0<R%5:8FLY\-1)_MWE;$G[8<MA=3UAGLYC+*B](-VN;
P)8AT7,_*_O+9C<IQ\&!1JQE>QR-<F:I;L:W]XX26]GL76G'T,A$:LU\%GJ:\Q!XI
P=INYI9@$@FF]D&6G,D4O.8<=&0,]F]OG8X#NPZ:'M%P7->)+[<5>:EI<[I%Q2VNO
P&+A;.7?IT'*8=0!^/OW_$84=F*$=!"+*M8C!>],\MMD/H1=^>6QT0V/()&R=WPZ'
P7T)E_\79U.L+[+Y1)RUP6$SHM^UJ#^"%#DC1Z7)6*MIAMC3G6 ;D$*3@41STKX%W
PN:RM%X;$$(D$30,B: =/&V'* ZHS^:A>'P^6W-EQ,M8Q0NW#8-,2-%2YQ/9H^=(-
P4;U&<+0!'?KDE24."\CZ0[$'3+LK*0C]GI!I,Z-%*AG9O3V%8_&*?]E. SRW>V);
PW5BP?M;0L\H) 48^$"_03$A2$_RRK=FNPH^97[/*>7I9G$""=4IFO-6<=_<\C(N;
P=_Z/%YU$K.WQS!Z,\D9/T.)*RPBGA"^Y1W+W!Q>C=6V59@;^L:_&BAXX_24J26^L
PKAI?K>Z:R]YMH!^C. [/_=EU57,80899_1Y-E;>T"<:70,<B$05J#SPPJ$#R&&2%
P_"N] ^1RU48Q4"UT97)X\E]HI6EM! F0^,WMHD47M)!30E<#6KKN*8GD:< !]'"U
P)I[/[M:A()D-)AO==8^Q0&^X/^8.'%2>;J/$+_QE)$DJPEV'2?UGQ#BZ$CD=C"L+
P"IM</IVCU?_/H&>^(5+:HS/OSG<HA(;:T_CNUG#E$^T)MO0^-]@Z!,\;>H^ RTS"
PK4D#<ZJO[)N84)V4=\IZ2I<_HK_G.\F/V 0SK*%O,GY[\D'?([;R3\R81.D ]&WQ
PP"=_K:7%Z>B*-F9C2A31'GJG%AR!V0MY%+@QP_-:DJ>C=LT$:X]P0('5;YX=I==#
PMU>32H;]K87+?4/'#T$9Z?8"F2F4%F\!"40F;LG5.^XKK;14W<,ZS&=8+QPI,LJJ
P7!JI4@7DZP,%0]E@VT:0+&:@5?JSI+[,"0V"Y<GZVPXH;?@<#\?JOF^>KS;V?E0C
P$O5T#)A/ND9XY%Z/BK_]SOV?3M(I?<4C;M(4FF_1.NG$?>$.)N_PU_L84'QPIW+'
P:]"A4^=&UBNU-0C+$Y5^N%52;6Z>5B<'.RZK-WZ@1A5C:$^."/A\2 []W2CX]B8P
P#BPMA4\2GT!$.+N%U@$=104$\&CRW25\++;6-4XK^-VVJ0487T2B,(* "V^T1.PG
P6G#_5TDS:0_6^*WUN031,MZQ<V#A*"\_[TJE5)F9<^R]NDL3R^RPKB+/9=8<>N8<
P<L[(M/$6 ?>$-F(ZL&_/%=>9^:K]MQP)V5+96?DH$EFO?,[KGPGPI\7+)HY;>'B+
PVY6B-[5SS9-B56_&X@'Q,8,I1_N)?UEICXT-P=E!!;#LV^;TCMP"_B1-SU]VV8ER
P8-+V1IO__2R3U-8T)>#O!9%6H=O6:P(?[$6I$].#52*>:"R4HL:U<HU?1N*I'U3P
P[N''^!(3"6B4*7+RYOC5](29*C(AQ/*&.%@4R^95 1H7I6"!+&96NM%8F#RV).><
P-0=D7M-B40ARU-%XV8_4G'NJ*T?1GRXRPI;P58?H,_ M$_<B*Q1@-IC[XEXV.SQG
PWFO+=;Z1;P:[.+@>[:-&UF@4[1G?,=7"7<,//E"MJK/&4$%4?NOI/?ZO1K4=HKY1
P7J:VB(+TH\5:/*2WC58^J.9& U"'AF1:*_<C L/9"#7DUGI^=-*#:^-* ]CX23 9
PL8B&*>$-3(@?:<7F5VG?P9\@Q2;XUMJ0#\MXH0^EC9@#4$&GA=70R#O:_=KHP:3B
P$5!<SPS%?=*%=Y.2RK<*6IVSKC,KU&MQ;2%0/[<MI*1G$DC/0YP\NLE]N%IH G-Z
P[MQ(!&S\Y;X4[C :X=.&<H06#-#S'_A Z*TFL6.3)=)%3F)G!:](Z#()#L*6E?&D
PM9BW"[?WX4 &E>/2SE/>OH/,[0B[[]B+K?\SZI.EW:IJDU04KK(G":?1L2C+.;5&
PXSF](-MS)+/:HH&\FW/D1SF<Y^D)4=Q]/C+4G74T..3C0^BS\'',I+Q9X)Z#$'"G
P6=ITA4]357MW'I,#ABEUB5A'NAZ&NQY<G@;3$(;.A+R3K:;MQQ[W%5<='48NN5X%
PXP *T_.9+Z^@%TF^#ZY^,C;%7F_QS$)FWJ,>C]Q>"4\^G::W^B4S8X7@?BHY/YV^
P)WNJ6:;O,WY=9?[\6^!&,'*SC,W@4,E'X8@#D/\26VL%F9PJ*G__Q3(P%@Z_!5CS
PZI:\"0:DR[@JB0V%VMG"8V-4>EE\#RWR.(TJA6M*U=+<U#=B.\-%%H%\2$Y;D?Q6
PW;L[C3$&RAMYITR,TV8@71)(5W"8XP9_N;H4 :BF*LAH1CWD>XL.6VV/B2DO5I!7
PK^'6 (\\&Y"%%T>_656"8$ )6^S1$[F)9-&#*,\[_P><S8"K#,,#RNIX.RVL\623
P#2^IY!'J%\.$2,-LO)E5[IC:EC9COP95C3!_Y:(,[13S^7(N(P(4YZYN5VLB&=1-
PQ=8QDJL@Z  EEF^>Q#>(#I*;$;:4F)[-Q%?417>!SDP3@?>ZF BVLESC_E:$1T\O
PBJQFD,X-_56JJQ;[>I6(5E_M/<K>SQ_O'._W"M+(TS(ENK)K+'-O:RED(V/]=A '
PL.CE3+GPD2]&_*&\)PQG.<@XX3Y%B^&+.I@GQJR;R!2.9>^^?!E-B&M538RADSTO
P5A4;JX4(W-:TX[I\--='*0:=7^L,)/Z&T%(+GJGR\Q!A;A]@.]5?D*9/;.0FD0UI
P'OW:DI"$-=@(3 /9A042A19OC>NEH<#=UZ.19;)**<F"@P M7;;X^%#"YZ5 $QX!
P$ 8ZSB6!@'CWX0UYGQ,A8;4Q%B>DNT&@0'Z?@!-CHJA]0SPEBM^4[(L;KNBFV^,4
P#QU8[4K]3,,7B'>/;/H*7=<T&U-7]MOSF?+,N/ [OZ1^V4\LI4CIUY>,[>9;*.7"
P^ZA&$N.NR*\/N(@ZS[:RU?)-*=0\2<2OQBA"1S+NY0).!V=3=_\&V)JI&:*(A.QN
P 1=R!B(E3:X1>C7G56SZ$.[4(>*WK@BUU3[I2VPM,PCS)0RIEL3,)G32)@'N0;;5
P/R)1 -P)M9N-U?*GMLZJ 4K.,ES!0#[\EZI'+DG>>Z<G8]'Z-;"'[7@E2>G=HW+J
P=,29,)C^=!TUUCA:%#]F=6L((/WVU55S^J;K'X@NM]%G&!D37FI:-*EA&3(0%;E_
PQYS1,-RE[1*]1[,&!CM9^<#P!XC?%HMDHW]*'0D]D)0O_,RB%;&!K3-@9<K0C)W9
PPC>)'(M=;KDW,EL=:MR"N;0ZNU*-=+YE8,H'VFJ3&XZ=_%]OV?",.FU<.](&Z'8_
PSR<II,F\,X9&&?!7SM/H]^@F@7T.)[2=]S[-][RB>#Q6/*!QQOL8E,B$\YA?2@UV
P:]5=N)VX/+]S7A'KN$]J-',>#_+&!4^+QI!,U-BK%H?B[O'N:SX\>G:BE%ZG/+J#
PI/9>:%6W1T7SLA/CL:9.?>C#3F$VZ:2WM!Y[/J*R+AW7TKF6/,@2PO8>?Z.6WNH4
PD99P& 9.Y\VNI5%A]YKP#IJ#MI]"[/"@#/>HF-*5DA ^P@X>8DRU?23,OR>NGQ#H
P=IB)7).LERH(5IHEOGC9H.X2XY\7[OPOJ:Q GXO-'ONZP6K*FF"XUV,?H!WS)\I^
PBG9P%5:67NJJS]UE4^*@SY3[2C9=$TSRRN*N];H'\HD2!7*:\\,I+?5+A9VF;)95
P=I%K@IWF8 R$%?%KNV]:TOEB4CO(YF@$P.&,T[>;(IX#6X11C'J$ 2LM?ZU:O,37
P5)/$RY$14^J/.9!?<8YSDC N^S^%^Q$%?@&H+Q]KB6.VZ 1*>&DI8':GZ]X@SIYN
PJR+G%&?0Y#Q5J[L;#J+L^'G?5\[GL7]\G<O56$=&S--/)EB<HA]D0&8Y<*A0^]EK
P:>KJ@!-WNC+]FOR!I6Y)_ -21B1QYZ.=+J1)_N@S9M?^=$(18'!I.WC'2I@6SS$K
P6,E67NF XRP('HUF^]]9#4C6I?L5\K$LKX[;K;K'Z/]R,!;_&(6\7X>YMSKB'7+Y
P Q@;7^O=7(I0[!X%\T'7N4U,M'D2H4_P"_7MIKCD9R:[GX$L&Q=Z@D\%.)\\FL+F
P[MJ<B\MH 2/%52:RG&YA<R74,LX,.%P&WQHWAB;+Q'=8BC.7OJ_]9BQN8 +6PJ"6
PHJ@&R6$(S Z968+)NU01U.UM1%)^(PLXF+=MZ!U(HQ6D+I 0MQ11S8I?'J48OO!@
P?5V:+:/67QD'*#^>!Q;WZ_!*%+ 5<[D:N%T\P2@+6"F\)V!0(?",5TO+R4(PKVRX
P0H(3C/BHJ=']]8BW_8N]A>;J6>P;3)T?'(XEN5;ZRX 2%.K^]O$N$S&Q,A_%G'7\
P',E2]K=IH^>Y0C=).C,#%PIQ6O(O$ 1[-6<I8WK>_6CQ99]3(WMGC^J#%[C$[/'%
P4))((\1F7Q1AF[6-.J)>#2XDK=Y5=SENM V(&)3LZM,E7M "%@*B?%"XC+R.8)Z/
PT4%V09:;3/Y;NIW7]SL:^LHN*B+06&6'^;<GER%;XM[$Z60/6D\3BBBDV++<>M@C
PV/:7"*1;C]C^\+'T]-FHD#_&9)$&</VI9]FKZO<.L5<E5%[(00@5%;P( V\/D%C:
P_J,.NN]Y"2HRT'A$1):CD[2!%W>+8@.L-Y)XB@L *FH#265-EDA*!]: J'W:BJ"7
P9RA<E]"'_1N/\J9-YVUE%>3OE;?B#5G$?A9#G5<.*OV1/\^QBEZ3L0OD*%UKR?B&
PTE:=Y@\A4VPGK=C!4 V)I.2?%FZ^:@"TZ[:Z9G)/!=?OQ<9**8J"2OMO8$^I"Q>1
PP^@W,%94FB1-0[F+C*6+XPS>]W5LL[9P #MU$WOA<T4<[8+>[U9"(I.IF,5AIP8I
P%GNU,\AW$Z@6,C=Y) .#7EZ9::UA@_ XS4+<=,[K1W?EI5<=;UOZ#G\Q0^(*:\(H
PAU#%ZS] M0U/UD*E(4ATP= S"C5Y])3I569>"36"I&_H'H=1-N95".(4@Y%=?6VN
P,O3J%VEM08)L[P!*K+UR7_V?J;4JT?:%TP4\.4B%AQ'_CU'(Z$":)CZ4&7(.))[G
PLF^1INGC^>O[/""HY+>L@^BVP%2D_#3"\-XH*GS>4&9.M1>G 4^APH<N?SC<BZV>
PDR7J2S'"302;#)9J/R/& +N_YW@33EV_D.]1.7<=+"GS&JN"D4E/JZL,W]>/>J4*
P6JF,=D;U0S,T&Q==A?OC6*]64<3IY$*6)G4&D,*KN>C)V>D]NE*'_'/N%TVT'*1A
P]5H'I^RW!69%<[W(>)!KL.;R#%R>:J2H9E:.UTBLEHPBH]\J%+KA5V/(=/M$^) J
POXX'./5N5VY!UPZEQ,!\UIX'"I/?OFG8-&P(7'H?D=>X>!]/*>]Q(B@]KHQ<U"\7
P  S-&&QH/PFL3).L$81;9N\ I?IH7@7:C_S0X8S^'0Y.QA'D$SX!EH>8^%@3].)9
P]8(,1Z_'C20_M;^^,DAE5$U]SJ;=IS)<='G>6K"NG.&W%]"L)"K92)Y9]3^N,!(:
P,_%46DQAF[0TSW%F:B!1QT.N0H<RY70"ZXF.,#!I'/R($,2?55LGX<C6I&:0O!R^
P_U)>)7+KSU1.K_[ !4KTK%%R'2GU[E/?^*DQ:(V>1^1P](\L%]"3H'8+CR3%,#5.
P-[RCO4"2=G2@*=.SM>! L*?:%SEG+R;#7R,NLF?[ZDX-84/A^!&KH]#R*]F1C[=W
PP*^@*BR!K8K$$?ZAKKJ?N"B!Q'4/;$CY[KA/)9BJL8:K)P+6]43 3_/HY/[D=!6H
P#<RD)[*6W:$+=Z\7W!:6 =;G=-[4LXF2)?BP6DP$'*HUUQRDK?"D'VTA(\3GTCN[
P> :^LB)E3)P!"1?;GVC2EF07@9N=E",N^!3EN7S4 XSSGK.G+^/[&W73_1J/B" 5
PU(7"!%"VPT#'7UN& R%ELE].'HGZ/N9_8:05[I=#5/(O _R<2P$5N*I(,2AH+6X9
P%%^'\SI/]""3)JR/AL7G[RD>Z^'\\AW06 2DY/C> .W1)-Q8YM'_3TWPW3"0"2GK
`endprotected128
endmodule
`endif


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : prbs_tx_top.v
// Author        : Qu Zhang
// Created On    : 2021-07-24 16:11
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PRBS_RX_TOP__
`define __M2_PRBS_RX_TOP__

`resetall
`timescale 1ns/1ps

module M2_prbs_rx_top #(
parameter SYNC_LEVEL = 2
)
(/*autoarg*/
           clk,
           rst_n,

           prbs_en,
           prbs_mode,
           prbs_loop,

           prbs_in,
           prbs_vld,
           prbs_out,

           scan_mode,
           icg_mode,
           mbist_mode
   );

input                                   clk;
input                                   rst_n;

input                                   prbs_en;
input   [3:0]                           prbs_mode;
input                                   prbs_loop;

input   [79:0]                          prbs_in;
output                                  prbs_vld;
output  [79:0]                          prbs_out;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;


`protected128
PZ7 Q2 ]X(N#GSS^7\$C&<I^I#O&^WR."M%AR$Z4ZC__8]M=7&?UIW6@DU.;,ENCI
PG#)@N&?3^@R6-.]+UIZ"G1'J:,_ Z^$:^]PQLANJ8?Z?( ;7RD3P)<D);DA!%0,-
PE1GA9'CE(V:>IH-)HWI&0= TW]'[Y06^I3W2D&=^.27897R;J;5G@LMI(0?]*>/8
P/V2GDUI\QU1 W/ 30 WEOVQM-U30W^R1E:YJ/>$GNLGX$7E^= =B0+"QS79SQ>0-
P)%6+L9"-**E9<FFIT0R=[WV[;+I=)[M'_$B.3,/+J!SZY\L#.DQIM^,\K4[H!@C1
P)Z*7@OZ%S(:T_B"DG:"4R_SFH33+^S]YI2760;<OF0%0<7V0PF_40@-:4Z%:J#<R
P1?8[A*7ON:'1'B:5@S'EI$2VZ-F9AL#I?.['/_IN*!;^&@3I@H-\A]$7!EYI&6HE
PNH4YHZ1> 94UP^7!/%M %:^5?HW.21'*N[2'O%AYI1/8&,"%F;= :.V>=(OI"D=9
PY&KQMY($M+0F(G;H 5+?XC:=_F>:Q.[@C<SBV):R0?R?B\/O2#08-B&,*+?&XKAO
P-2823LL AKR%_)RMOE\AKRML=Y<6>O,R26W6TZG&W5(ZV]ODZV]$4P@E?EA[:2[?
PCTF-NUL9SP>G1NT2(CM)]CYZB67V#(W#%<>G5#4[T:9:A8Q GZ6(V$=1;, NM0,O
P?6\M56&DD.NB&06Q!B",-:VA4V#),Z_!:(\[Z$B<PY"J0??M%V@&:__/S@3F1RX^
PPPM9)%(G82(*\%S3E$V!,7OWR7P*[.P.B(=YVES1!^!+UUW,<Z@@WSHU1.13RE;"
PE+U/#.(S4,F_SY*Z@"[!!3<]2ZU[_+18T7:M-I,\_S[N76+%9<#.GU!HKIL^Z/:<
P*Y43<=@1FFZXY[I(&N34U-2+_3>R<D<61Y8BXT7$Y(!N6Z>UK9_Z>_VY'I0'#2, 
P;YKAI_4/!FU.U1\>XYBN):.Y3G,J=8Y@VS!2/,G+AQ8XM+'DJBX2 T4.G:2Q#;M_
P9O5WICMB9_!B*QV3S0V"*@@OCI%VM6/MF+*LWQ'<L"X)B3SGFQX";)N43?O6) *]
P6@A5RV=;,)R#,;.5 #V]:M\8_O  L;YJU:%X.SDA^124 VUN$2T*7A 0-7R68!_[
PJ:_#!V ZDBJZV\XWPG<9_YD&!H-=L-BSA:D5:!CI!$\VN+L3B:[U;'R^M\O$IIIE
P(@TB%Z\H[69"@+LLI(0:H)8)0=IWI*'JG;T"LVLTMOM!\0WK"2R>PXS>K]\Y'NHC
P]+<4!:8],<C?0DML\9JJS-\.%_#QT)2*G%X+$?_N)!=%VIGGC,_)@%Z$=.SBL-?)
PB-\6![D?^FG4KXE.-IK=IH8=!#>]4P*3Q1A5V,3Z2;8]"['-G3/F^05?(?]PH)21
P5 PS&PG2SIT&M!J,/RN V:NJD"=Y@I[7]/>2?9KU85]%5Y.1U%AFQADM\U2'?[CY
P=:[H!C6@:2RFFBEA7(W^L'^Y_&ILW!U,S,;JH?*-I>M4,>8!=ROQH]A6M:^X>+<9
P?\>;-(>#&G!8XB08'2283+2RSH; 9?;-5N^=B3,CH9D9-#*:"!(M/R!O-F05M%>W
PUYJ\N+C]Q]=VK*4J3O^[_L310,"6AJ(9@"E^RV>LO4&)"!9G'&IMU7<(2(]=K'8<
P&,B%CP:F<V.HVZ]!6BA?^A&[=&2*T_&]+\Z^:Z>6C,#9O*(U5*:*6Q^/:(7@W:9N
PMJ<!MC9CX::VA-6N3%?YAU3]J(!C W><3[>$Q!PQ/!M2^M&FE_YCBJ4LFL,.>(YK
PLQ[!UEPR[\I""<W82>Y/Y^LVMD"J^JC3I(KK;ME=E+[%L+2: ]M9GX]L-0!*;'7Z
P!0&,&%M//_6GX%(S8"\B G5BO5+WO-,K5&<LWX[HH*-9]D@MJ]F)FWVG,*+XAEA9
PLR<:"A!%NM):1ZI&)"QOV3W_6\! 4^UUO0>N4K!KPHW:,FMQ1;]""W/!V++6Q]30
P<7$M-U5:]#? O(]#$,J7(9:9@D@H1\X)K3R%==L?HMJ%P759AEOFO[6O+N>!;';G
PHY#;FS"<A[E^ET<3?Y'.R?(BEI-3,FWS-@8;,1$&]_2G-WYO?JS'C7%2YH$(+2'^
P[HH8Q7)%BV+Y\F.'B>#?R;&&R\[J%)J"C3#9'XH"1^'W*OVPD-[%WY;">X+4O_YU
P[;3A0-PPM$2VAM5D7-Z@:SGIFV!)X FDT[2CKS3-YKN;7XV[\8;'$%]4 QL\MQ:H
P9:H&5Y6['_>(0N(:K!/RC)?$V/QLP<'M)&%^1)/7P4:' 2E/]VWT^"A?Z7^&NP3 
P7"DT=)A%K#;C:6IUAAL"2YJ/3J NH.";)JMER7BH^37-!Y;B"G+?MA;[5NZ-&>JL
P(M=0B>*Y _D25SP@G%3<:S4)0A/RHE]5C2@O_OO7QW-Z,JDS]81>WVQ9L=_::E6,
P7%]GXU2E]WS.Z0%!U?A!X6[[C<BH#,-0^N1Z3B6T-PF%B(P4(^^]=48P:QHXJ<V>
PU!P?I#"+H<SF#C6#+^]B)1GM!WRZVEP+8&P2!98>]5X!(1ERB:2+8?I#B;@7I9?O
P6>P(ISQ+D%+YNL=Y"T1[X)O52I"KRL1.\GX*X>%DYB3NH*@4R\4[BWI,5+]F+1,W
P]?+2&BX/8)_G>(Q:B13.YY%]ZKO(IVM_@G.1(MTYJR7#F)6;S:D-+,TSD15W;B%W
PY8@!K-(?I^:2(<>OE*WF-8%F<6$&SGL[,9S7A(\4&@2Z0'QR@C4B0+#-,AB-9_)_
PEF>7/1:QBSG'?PC8?N?_3:?E\)GT/C>P+Q?8H,IY?^E-KNX[L#-=M3(<*T*N=9=P
P"/%JLWMD88J$/MI/BZ$21QS-<Y'O<T?[H)U&:+Q6@3X]V44K:2:@2^,'T3 :H,89
PLK&<^1CS8<L*/7'O?NX.#R,^6-1[)A>3BK*Y?GEUE\/=+)_[W'^F/7DD1\B,0;U\
PE,9?'*SJ0_<>L80FI-W/3=EQC6_XDYQ#39Y^;9_);.]I,NO<1T1A<^W083N5'78A
PLV)HYPGR=>^YM$R[QCFA3^B?6'$E+"Y#\Z+;,:W"B*R/11B;;JW0P1SYP4MI4<)X
P'D/XQH;HZ[A];/0D]@^8=2[A-'3S@CH/F:.E$#4T@/#M;.CXQHYQ^7 )4]S66U !
PO(F%08'0++O4"_[1:"G/< ? 7H!8Y;^1U8U98DUOI.+C7B21+\A=FI=WSVW'0?X?
P5M<J_(FX<.7!:9**;.%*@RA:38'PT-"%_7&@5<C$^)E3R1J84O)#/+ M_1CC8%HP
P;AH/V&?5%>\J:?O8:5QRFB"M3B'> ]C]VF\!@?&3):\O8P6F\CL0#V;?X,!+&>"X
PD 54&BPQ,+F=T?X#862%]$!Q0VCKB'D>XC@;K5* S!]V9$R%).2&A1</<')G5ND>
P^>0+VB4-F?OMCB];$F,C$K?EQ>M]\S-PN>Y'8F5F@+\TMPS^DN]$Q10L-")<\(7O
P'_>,]/B[J14^;M>9X(1W<'-]L$L1C!H8_5TU4M3G> OC8!O: >0"6G8A5OY /8D,
PU<%ZDN3GZ<EMPFN2E\=3$ADJ_\H%JP@3E.3] :IQ?1ZA]A_QY)WX^D\%*[WX1ZN!
PX@#^&LSET*&0L"M^PO,"&F; W(@^(J&*HQ?DR O!N1'TXRE>%![N)@H7T&TC!++"
PSUU[G6FXQT7M'][B4NN@T:2C+8_2]P ^3Y R4ZH7L["05C >0RV.:531J>+Q!0Q+
P,RD[M5%B\DG?9T(:@!KU(V3I*>)Q-@<W>^I<R58$Y@\5,\57W(?DY?<-<5MR6 ;4
P!LPZ0M9'9"IA[]>JH>BRRM:2_92A3%0ZV\V:=,AUG'MU1'&GHFXN:2=Q/$E ":,B
P]RVP(K8CVL.E-D?8DFIS4#>KVFJ6&B;$P2'M(L=-"G7]2]CD/QY*^)9O@D8%HWC 
PQ_8W\%C;*2M3H:"O)"2##5^E.4;G\3Q[/KAED/(N,J%#D[H5>[1']-"/!-M=:# ^
PQ&"'WO^5:$6KO'(IWA2 N3^#,I&__VUJA$WG?!E(044/YR(% Y!^9J];W$_4R58?
P;GL-VPTQ2J-:VTZ(^HH&9-=F @UMH6XW/0<US+2R*'K^E94W"?W$:/>]P'^ISWH3
P89C0>VU[# ^&$!&)-[ZF$D6"\!/B YUOP&D)E(U(L#N$\N$ 9LC-QOU<0KC.$TJB
P15K*=%6$A_*<*1F0YI:5JLSF.E2"-G]<"H;1J=D-^&(I$H5BXTY+S?PD!^6V'QJ@
PU0/+)+>+Z1ORCXGT-_5.2QC&6_SSB4O-.]XGN'MBX.S7/NQOWLE]W<P19; ,7?2$
PJ'K_WLR3N?;^<E^DZ@2JK#,4F& 899>?9;,N,LUK]I@"_.LN!G-Q2VQ[A_X*,#:V
P8\NA\S$R<TM$C8JQ]LDO^5&S0RMBB,=#TJF=Z9 O?V$]0GQ@?)&J/+Z$/>U;Z;"Z
P-8[T-GFE.?$+Q(/@?R&+OH"G*5X@AJNL_TM/M-LU)=)> &SK&U)IQ[F(^!S[R,)L
PE=GY^MTE8$&#9;RSDK"$BG\J&3PG,2F7)?>//P]]UE17-$E-)HXRX?^BV(W/%EHZ
P?K%/:3E4FEK%89PY-29+5^WY.HR\BLXQ>VWX_*6!#LKWS=]XUC&/;B<JKL7\[M4!
P+S(T6[K+"%S5P@F-0TBJ>A"8^X-\CI6X-V2X<BW&W  >Q?5:%5HCG5W#65Y?X;B^
P)PN1@S)'+@436B*&Y%0C4[#7R,A20X'?73QTDH/]56H%7AZX9H2T:@^1HZF$>)"^
PE.OM4%E=&HRNJK=(/,7Q5EGEX)#NQGPSFQ:&AXKLY;P^>L]G952D@Q%<PJ0#T,F2
PRF&RU]1-[<AM\J=\&'5P552V-X>IGIX]MOF65%2FBBYN5D\4VYL1%V:0+"B?]A W
PYWF[!S@QKT+(?>4<O_LVPH4K<GC2+ZN<(-(T,3>2V!)'SL(-;ONHTQH(H38I>8Q=
P J_EOYL_/ ](P)W&SYZCR*HM!6MN_5\_0+;!G$6@0E^$*@?-_V5I8YS6?PRI%Y+S
PW=U8U4KJ9-0^TK"EW.585C]9CR(";K>!WE[BXV[B$@4T5J]$QF!&2R(=[?5HWN/[
PV+FLK/)I'/IT!=I3@_'"YSH)<G72D6&7JF6+*B\?]_[\IX\Y>4WYZ417W N#BJF[
P[/5Y9_>4-.U\>BX@>%0/+'U8# +P;VY1]V4[15U2<9SR9!E%:=C\WLSP .!H#^K#
PN<_LDKFO1NZHU*X6CC1CU6?B'X>7]#BP[^)R@15$0==YU$4=2<!:L^:&4=5=LH(5
P6>+&=D9G%&%INE&CIBHYFVQLX6;UC?:VM@K\E2AJ.,/ 6ZRYSS4VUY1C&S3.W\(B
P4ORBXES9+IAE$TJ!U=RG"(^D)9,GT6']2!*BT]7FA( Y<'HTV']U+DVZ@%BMCNY;
PEI3OG[#S=YZHJA82R(/3P@@>Q%%I/N"C6Y0[=XHI)IS5UWM*S@8C';6 %KO=,EAH
P6+ MV4"JNA2177OC)BZ*ZASVY7.'%(8/0V33U.E2\&C E6!S4Y-R8U*UCTLZ2=_.
P+:RUK#=5*S%I=A-A4V0AF6RDQ]MU@]5TR0T-L2T=:'"M'B\)26#UJMXMPKI@/HC+
PP?#I:FC']LR6.5KO7>7W/]4>\B>!96SPN+VSB\N*E68Z&H <++.9GY3=+S07K%W6
PX)7HR/9;PRCI%1E(R*N*VH.HLP<HXF:FWUI>H:O&1KYRR(:=(VLY77 H9DTSM66[
P8+J?QC?X3T4OI'Y_;M\;3AY%4JBD$X<Z-SMR2$C#3-NGA_^V^<()D4-9W^!BEQJ)
PWJU\:R^T@.-0@/"@B0#,BY.]=VHC!4)=#7O+4H7T$H_A%P',%KPIBJPI+3C'9R[;
P5,RRPV+*P#<CY73ZK&2NR3H4CXJ.%C8E'@ON,B,$O);L 45PUP^O4KD/&Y';Z44:
P!FGIO/_I59/\6,M 4>(*+^?>?1S\)HWY!N4:9-(@]95L3ELGW:ZMP&0\&*@/XF(_
PN"H^6?+#(CM:ZI%QT>\93QE<WF)0"B+;O[[")YA+4J#&W<^ULYB$VI:VR>%]63 5
P.F6U+X24I8"#<!PH_:<D'RU)@=%K)#?";-?:?@$ME29*PF!,88>B*]T[I0B4RT/.
PV[%1VQ>/YD@O*#4-_OZ\[GLI(E3.[*8E&FLBO+;0[8?&BL">&LU_1#.N#\%./ 0T
P4//3'SJ4Z*K#6:U X'I4R?UN-@E&,,UQUQ#^_,-S.J]W,)A5U\^5CG"]-J?'$LI>
P1YJ *6?O1)-XWWYV6TAP2X"3)PY*=Z-SF@_O)J1/)P'@ZQXYP-:KW,]UV5Z]T+(6
PY#>_'.[1<QV$"(1$.ZM,AVWMP#=XUYD<LMPM6S'WDID46GRDTK:&I%F;XT?O@#,Z
PR+,\_=8Q$)3.8TN!]BYR MT0/@,80,LJZUTJHP@_4BD%0X>-AB,5P3M!)]);I:*A
P*%P5\.B1B?$8VL*:Q+V@7%I'<-/R72&<)0T!BKB.4_L^TD33P8-L5\-_J1M$'R X
PSHGPYAJ3P[TQD-P6&#T(6.S+S$()4LQH''HM :=PN:@!=L_E+^!RDX^'ZEOO)%X'
PT2U?'09VK3$^AP^PTZ*OV%H5DRPEQVI,N%9=O @;X/"-6&UK\6!*M6XYQ*5 >>BH
PVJ 93X9U=HFHNQ9R5Y X8[9LU/C"T*ST+FT2MYD"HJ1#+;_F.Y9*@,^BZDA3<3W+
P$%YYEDIC3#%SIY"K%S0=!_+A,H33P)G\O:F)=(2&ILK'5,9'%G84*T-BI/;R4B"N
P*M 1^30I\W,VT.C*0SQ/95G</KMD&3X]A%DQ<48D=4<*?AK)ZQVF1'\!5D4>D.EK
P"+I]UH*\XS!N+"K@;9*7T/;H_1+HN8;EL_BZ701ORUA5NI6?9&Y_'I1#6KK_D(-&
PRAP"=*O YIZ-B@""E(?@N.Z8#6F]7; DNV X5*U9]R5]*?CQX'@,0&$G>-%'W(3)
PF?L)Y^X(ANEK-1@P*='"XVU[84#HR^&K!.\C5>:L=IVF1Z41L.OP,#9+IJ*/8H=$
P@-[3^YG+0@7\TPNI'#$XZC9S9.B$31KPGI3GCUN2]*;!SWPPTJ:(K?$D4.N=E%?Y
P0]_5SX@]KV:PU69]/N(A4H)$).$DX!]RF0:',R?_\,>UUR8*A'6RAM?#+LKOCA_\
P=@[_(7D@>!0T$1F(V(=LPTL"-77D=,DR5 0T*(,E9Q?M 3"<\MU#_DAW_LL0ME&T
P3Z3V[3>]Z!)9.<5GAN+'I"^;!_7>I6NKRJK:JZB?B+SV-I#U-\VFH^^-P"I\\E8;
P?UNPG$(>$3"Q^0&O(]/]3\+GYM'8V?4KVIJA$$C8JA]==#FC:"7ZI(_CZ."P@\C=
P9-*Q4N;^0"VLLPYJ>M+3W$E[&EFO!!N9\V?^-=I>-#R)4LRLZ6EQ4-;O[#?RNCZ5
P'P8*U"B=0/V').=#S]6$PD<:M_75 ZMQ5A_#J)H00CIZUO,(4&N5+;UA&M)C^ZB2
P;Y1%%&!)\.2'-74[]NO5O"I _>X')BK("PQ0X\9:!#_[HU$*PG;,K;$HL[V<^D":
PE@4<KLWD(%L24(/AZ&PP3/%<A48M.H8"PG$)YQ^KA+4G>!/;!&OW%)=Z<(U95<\:
PZJ8@Z_5()98<PE\-6Y5PNQ":*+YI;B?;(!"?19]A8<!>.P%_3Q6E]QA\YD_;:-H=
PS]V)%&.*YL0,B_/5Q7(B&U@A)4_E%H,^LWK$NTX]*LN7X$HD[UF]M%2"Z^\8#TLG
P %S/1<(DMIIH&XO'TBB#H>\E?X:C"*VAXU1.B7<K3]7<RKPTM=6^@>(<)G$8(WBS
PINT]WH$NTSG<*P2E?+TF:IF [Z5WI;XO%8X2_R@A&BGZ?0#BC2V!:[@KV?PY95=F
P/BL7;>,@PECGX7X[<Z[=W:&?I;48_:&![C&[L>$.;O3EA&.##/X]=+U9C&BY_R;:
P/UY23@CJ2?W^,YVSTA&S)/V!VR;"@**=A]^3E"NK,9>Z>U]TD3/+VY.\#I<HX5(_
P7>PI&:9/@&=WN._B()!]OZT?1B5P#-=$L&CB'G 3^4+E-O0^L)O:7W?:]=R1+!9^
P;"0@R 0(0WO-K820@OB>QU>MF$6XV TX&6"= 8=%U*V_[M^3FESMI'6_4/R2Y6V3
P2_NC!L!AHV:2OPI K:HT8@76+G%>3\WY_$$=1!6E*_JW[X#(/%9@#X#DYBR2:]D#
P+Q^DQH;@B#'6R[S/W1!:AX)\<+T8=5=9F31P6A6KP+FYYTLB[Y=>S/N;%_<KCH._
P*+O,^$XWS\MKM^\(0G6T)X/-%C4.,S]#0"1(:GS1B0VW:,])!FK35KA'2K8E0AVC
PM/PV1/T;A@[_B8DK,5Q"EP5:/,6=7L$OC:1%\N_YQ 5FNB#5\"^"F<8L#R%K/_*Q
P\DP)9=[N3*L?YK;G8 [P-7-VB?$;,U;I(<D)5^Q '< 5R:6PN;"-/S@>MX"N+")W
P[4U?-;XYN3!R;]C<SBUXLO_E5.T;]-62'V6F9_/9DJ!@SXP2SV7RP!T.YRQV-$ 3
PFMM9^U;D9+^B<S<K;?4*V1,__73\6VA0CTF:)0TYS/+@@Y/NQ(0/OO:"1^R\857;
P(,T\:(D9,'RAU6YU+DR06S/X=N%?-592&]5NH7<5_'ROXIN'Q=\DU/AO]&MQGPG5
P\8KT^6AV2V+O[5D<$F%V:)'PVH(O#)JCVIPQ GD8$WF3G- UX^M7=% )<>^^-SJ%
P_@NU>S?_UJTGU8$6&22-L:V&'!>NP1#!V"3\'Z6I"BRK[6=ASP/F.N380D8R2=[!
P_BK!8GI9.O&UP,IU9H1'%6>;K<[6LFXISSZF^Z0 3NPC.G]B+@@YM/S=*C0[OF<:
PC"2ABN RI(GW;R!Q"52;]DQ>,G #BBV2PO2X*\W^(URNU>0Q[072C$ (,"1T6BFK
P[8VY47Q[/'#TY%?7/N]K0:H:+LTKV6XT=':DEL[2PYF8-$]'5U0$(4UN8B8).RRL
P8OKYT4Z]SJG*" _N3< 8R;R=MYTD7PS!M$8)N87%8RQ#9O>8WA>QFZA!<N]!@ZLU
P< TNH!?8QMS4^N,/A_?RU%18EQ*U/QJ.'MD,Y$&"\8G$#C/,0U 6ODB]0>0?MZ,3
P\=!@ %N ^3'$1XWLW2$<K5PQ4YJQWGX7.5=^'K8_^8CBG<=9V,'_BSF)D]<Y%=DX
P>! >?F.R6%M;A_'$*)GS/EX6F$1,+%Z.?,[-DF4@:]>/>'MBG=DYC*I$G_#68_F 
P/PH!$_8?,8X]>)%<OP^ZKBITI+'JU)1JX.&*7PROZ/R[:68F8D=3:&WT(H=I\@*J
PL'=%>6]\[3@QVH[]-82VV4L)D8(;9R1V2_(K-A22(8HZ^ ?E=PQT%F #91^(7GX@
P2+6^KH,O$82!RG ?P"&]I8H$_804!,70;1,JGI9H:I3=\(,3!O#J7EU5WBIN B?Q
P><O%6!$F(8PKF\T5YU1'_W?'];>+B\M2[W;K1A;VS<W5QKS9NL%=TVM=*P?S>$>,
P02PA ='ADJ'E+,&*C961?37?_GST'8=AMN#-MV#M=)#)@-Q)Z%=/-<O8'^Y4H%'-
P2^>[E99H4[_"=*[5%=PKXPC\ =*!B4&3R1@+FHN!2RM'"$"A:O):;:#H08:  F; 
P1OZ3^O_N=M8+>!PEGZ"=3LQ7J9+^&LA_/2_,U>PM+9\5B/RE942$DIEF90T;"XQQ
PPUB161PW8LGQP2%OYP'RY8$^_RW=O/>G0&1Q!^_WX74XO@\WD1XCD"@X,=3*(T5;
P$B7[:#4U7EE3;OP/2^@SK(.-NS(4VV!&$B#\V%>HF^6% %Y.!#0=RX9RZDIG:EK1
PH2WW8*IL"C=>AY HT(-FQ7U$J#][O<\Y0V+.93X9)JL:0;YK%DZ,F'.SN_0EKJ8M
PUBU-\3OPU:R#3%,*.+N%UC?1P=/]G731-R>^$\:UZQXHR12$/IS!6;YD(XB>9DIT
P]@TI0S_WZ89?@AHM+E'<_R6EF0J0YVC(R?$@T[J1O 2R#PVZ[,EQ-U#RD8RRVL?(
P/;%>#<U_J"7TD]&)U,^2OWN.JE\)3T%?YCL7*R>93\@0L!B,-US+V2EZM-4A)AIY
P"J1U/5N^1&;_YVMX<P[EE4O3TI@]L>$?G2?E".((1-[('3R8S%-!A;:^B^50TO^8
P__!]3L_'4_K-?3X!R9.7])LB3/#7X'0'G:8"5=_T;6GSR)]2*3N^Z.$I'A[KZ=&Q
P'W&=773@H7&< 4,V6&)ED;C%"7=U/L_(%EUS,[KF%N;M[>=(/I R,=V6DV:U #<(
P3#Y=NK80V$=!/DV%YO(W;-"!0?,&+E1[I9'-!7P:"M>?-#\NH'8_Q8@ZY8$+=U^J
P/+5[HA%V8MD5*(^79WEU6L!T 6CUQ+@^.B3\P4[F699^]J,=^@WJHR?*JH"XROZP
P9;F%VKD[ZVRI*[$!2 V5=E?&Q5Q7M5@D)Q78K!D'C(XM6P/>*VG*)_T8C8\A1^%#
PQ3X2MM=:!QAU/EA1$&>252*.W\/F3O++TJP/+HP!O)?,'QE@8$L0G(2U-;3L1)XD
P+<:$@>>PG)+0P!X?7&LQ$3IITA$!G+['M_O:N0BIOQ7M8%MJ(PM&<7RJ"6#C(BC3
PBG>C84D%!%HW1/$&[,CD/VE? 3S7WZ0ODEQ4LJJD\!*J)=OLU54[!Y'>Y\B]_@YZ
PCC4QV=M$,Z?(WLU04H?2H4?+;QN)_BI;ANMF!K\.9ZH!FHUVXW>>(F0"VS^<!'+5
PSF:TU6 $#!2AQ,M(;>+)CGKQ.BF,N'?*NY0+T10;BIJW$Q6Z:,C:U/4MLG;4U1?1
P4<2O+:&R<U@";..8U@7AC(@#!B1\238F6GR]87;-XQ1;VOI2T41PE#R9NCH'2=Y 
P!\?=W+OQUAK+?U*K<">=#)_.W/I]X-LJ>\@GZ-)F7YVNJ9'\=N_CT'9+&X-4LXO*
P*W/<OWQV<J,EUNF9_K[FK<40I^2&HVRX:_W[2Z@B?T(F\" #,^"5L5Y<>J@K/R,9
PBS;D6)3!W\@O_@)(?1V7;F,G:!"EHW+K&5AH;+BL;\O%A9>XF?NCBGV7>T85Z%;\
P3-_\59F),>';X=C@[Z=E<,12?N+P5#P0G_XP-B":UU.$;:GF44A3%)T2L%8A>84A
P/T]-:TC9V2KQ5_U3&.7!Q  P5OR1D0)RX8BI.=[]%_#E@ "ZQM3CG=T'C>6-01,$
P+< 9F1V+@SD/Q2#^PCR11UR"ES*<;Z=M31]"M=/KM*Q\A)DF%T:A8ES! ($DEATL
P 3J1L?FD//))0HR(0@R#9+!!3"!/$ ;K/-4I\-"J@S<6E^4&,;<NOD86RC^ZT"D"
PM]_8CKVSBA@3+Y_I:'?A;CB2;G,4,DFQ!;W8O;4<.:*Z:"'.=F,&S;W^.78>-\I&
P^# J1+])FB0Z0#[E[D?Q9 OXF<%<2A"G0YC'R(F9'%Y/=T:";YI'JRZCHE<96%S>
P=0BN)0 (4H8./E5NS 28A96_ASNOSQULP"3!$5ML%MQ;NN(39X31F@V^2B^;+0*"
P(6ZGV.&NPHW@D@*SMJN+#KVO'#:56;^>/K_\N+1+I);V7G&O#RY?UQ>0 +H:?G:8
P=POA0MC6W#%$C)+ADTI,/=W?U#[NB?W'GKA16$P*]P\UNA1\\PY9_?8C%K$0J"1R
PLX>S9C6M?M@O@' 8"5H2\5W72N+"55=N% >NBD$#D0-O@NC_4$T5IR&:YE!^5[C)
P_FFM$X&<*+C::OAH_A#A+I*@4+;%Z\[44HF]57F7 #(+D:1TZ"';AX*"+5O[R>%]
PY8S1=+M B(L$D"7(9<O\Y:5O?SB[,*6'EV@)22WPYRT>PU?X@_2+?2>)>_.IH:!)
P^5VM:W7N[&.JRI/>=#.@6+JU.9XU7/09N?AA&W^45"\_T52NG"S,JC==11H2#=HU
P]',9E2-LKYXK2;I/$97(F V<"1^-5/Q)RJC8)>FJ"S9A@D%"9<#]VP4\CNP9*+UF
P]8HDIC?9\9DP8)EPB9U9<%;B$PDJ5WBH9KA; !8H?!/ZL[%#+WZV"/+(FA1=YA!&
PFTE$X#?^^J?3,^<_<7]] /33B'N!GV%;=GW0$@V!*Z,BOWH*O8RS^8-*)]EYZSG@
PBT4BD4W8+7FR<7ZA[AP2N4U$%!\CP$DQSCMX$/H6X4_!2]P>;9^98+HH\1T5KLHZ
P8KJ?^.SI$?.^Q4JLU\V]Q_MO&I0&&T_(;_<5FI?.3)<NV,U]#?U]5G;I0X1VK\.H
PMT]+@A>='D[OGR[=17(I)X>SV.824DJC*VT*"& ]LDQW"Y$H_S)!B?5@P)()<[J*
P&2QR=M^3^H0;T;@FK>VMXBN:.!B6\C83-/P:_1>$F2F%@H>','@&,0WD$]Z3EKS:
PN72L3DI?R>+% K[;:9T].7,2Q'@#(,>%%RF,.QDHAN_!,$Y\._)>4\,1!69O5XZB
P5]/*<? SBN)@KW:@X?S*^QZA=T8UAP'&BO\V4PYZDL3.K=QKCS)^;#??^\9'2-OH
P)%,2VB>'ZQL9\1,H_,L[;-;PZ1;_%<'[ISMBE%IQ\99=S.8>;4T(Z?Q6ZTOT@9H4
PD@<@[@<U,<GAQKGO&4DZ![MXQKOYDU=JG0\I9-VG[XV//YEF+5.-G]I@C02ND^E)
PX%$X+.>,*X!6PNGW8(Z6=.QJ$*C!$<O5M#<!L$/Q8?OU7AA/()D8A^@-<%1*B=>_
P!#,TYXFY/5<RB?8A9';+Z_U$7K3;L<D92B\Q1)Z7YTLHDI5F.U55GP6E>$)F2ZR!
PUI+PK*USCO\3%K*_TF>TN=>Y40ITP-.WE!>$&0O6TT?@\323@:Q<2I> A^=YR>9G
P$"EL'OOR=D3(#Y>+!*J7BV-RI]WKC1B=GN^2@=M9L/$;OSA01)LN78.TX4XD]'"I
P3%VSK!OXKADQFZ@Z!&M4?].ZZCK5N ;\UC8-?'HT*<\<T#04T> D&JW'-&#+79;G
PA3/?/!DK5\W_CP*"E<4ZW3F!)/,,=V9K8KU^$-WMQB%#;74HV^1;^@8R7JZ!)0*T
PC^KL&FIAHR$H +)>"3D$FJ,"%NEG@%<U3Q02GXZKN$E*'.V+LC3&5HOVPD3@BXPK
PE(]K;$R9!,!Z$(@"4<O88RH27BZZTM#;[^0@Q%RJ(]:=9*'CD&;9LR<\CL4-W'>O
PQ;T8(9AMP:?92^[[)#/HE2Q#*&B!GDYFP.,)>LZPIVJB7#'&Y]D5^'NK[;I+/(^Z
P&RU.88 >N[(IN.3.4Z71+H-M&O@A/74#DK*1]F-7HYT4CQPIW/\^M5(2TMI[E ='
PIY>EAMNFZ=4\IJWP?QK[D8$V-2^6Y5N81AR=:A]&O.3EB;9'SG>BQ-H,I:7LTW7W
P0*1-S@H"*5:SO"O"I!OD0X!YQTU4$.OBU6^6GRPL:@8V4*/**$72-D02;Z9NG'B.
PH(#L_Q;!A;%F:'YMA7"+@ O0@)'GP>2Z]INY3!6"%=4(4OS-'#Z1B4R14?):!I5R
P,V0<IWSY$0'2)MQ/65@A(TK&1#S& $N-UV]#RTI,"JB,VS*&^$4Y983ZSO[.M_A 
PSKYJ[SOXC$HOG/T8#Z!;F=(*+'\?.-M",62Q8'M**C)O>)W(B3K7N:;)OA2TU*<E
P*>)CDQ5\7+_7WZL=]C+E/;$#2F>$(0-@<E];=1FS;T+W,?@_H-0 8 :$_EW:::%H
PT+.!U <JL2E^H^G+1'RZH4R4O!4_/)[;?NRT&OG^.T!B$MU2EE)=N2\'9D7"/Z,6
P_2,5>'P7[-:YE=_Q]M>N6*+\%#%KOVM4">9# W$NZ8H<*E>5\SG.3.LGS!@1/X@/
PL[P$Z$#UVB!QG_::W1CG;Z^>)4'\_+G:8EU#M?+\H)CG4%C;O#06R#E1\7&9T,-V
PQ@67"](QCC-O*M;?28C"CAZ!-KKRIGMJT"<9F#Q7Y/N@U+:WCP035;,D>Q-G#OZY
P4DX73T**AA\_6<WC): M9FGN4QP+H\17XQY5E9/?;C$SR1SU9'QYAP(#CW[W/HU_
PS=UWVC-9I9?U!3Q*(WHWRQ"TPS,#/]^8DCPI1#@WR(==W.M'I+.(1,.R[L"IXS#^
PC%;,XJ>5DUVJ<8:N$9*RK6][-X[[YFS9EVDX5 \+):[I>;I\O! S^[A2J%4R@>^Y
P>#CS!D#]W"$1(W"2R0-R';% P((0,(0BXKJO2"".O*&]BWM^YN5_>$".UVD;]QKB
P^,RJ#*EB$V?/4-4CO#)R<(<0R DEBED>$9$$"<?+@()LP]%F/G%K\RU@+XSI'EEW
PM(L)<SY=7K**["4Z76Q3CC.^N43M,1X%@\2VA/W&LRES*Q&D O1R0D0.DRHY$JE)
PVU5.?@SH('P1#Q4L\W,X_Y<\MF506?_I^Q)L!M+B7E9ZH)6HN6A%J@D0.\2*':^^
P$>DR-GGHNX;YF LD+ZK[Z4?96$(<UE:K4>7@E??J_$U@RD%+MB#9NF9QRSBXW]N#
P9\_,?X9 /WN=LPJDZP(JAA&^]R6 JQ'>_\.+D>@&/44AC7[L9[.[SVQJ-/H5=F6)
P3M>#;.!88,[;DH532'0 ][?CD$O+\ZBPHM\9-+GW1DXCR6OL4J1K&0Z=$Z']DEQN
P&'VDEWHU@+_]*FJE"$S.RV>?K\)+&?N.P#@[PL 7#&%SG[7IX@R%KWRPMQ<#X9ZA
PDK*.<&0EGE#0E ZI4_*=JV>E1#F_Y:+)LI+5(_I.CR^'7%O5NOGPM]'V@CUR(;P\
P5RKQ0W;9:Z(;90F.9/%_OR>*&GRF)$ Q+QSB=2@5@DL9HN\X5?$Q-M2CSV)QA+"S
P"_:,Y;&B:AQXQ\VGP06C2*"T#C* QQ!]9TX!=[#8)">4;FZGL;NU!PL !A7CDT#:
PBOO#JHC/+MQ'>O('1B-P525135H>]9V*.MDZ!5/Y]^1[Z;.K;D['Y]TQ83PU;]/<
PC,7!ZX#P.1_#3W5A:W *PN=BS%1^OP\((=TN(R;+QH!87OT6D4=GVP$E+BV3]@<D
P6.]"_74/$Z)P-UML_!<S?ZC&H85G$]$%)XGIJ0")!P<:BX";\N;R^&N&S,0]IPV(
P28@PW'6[P_JWIB&K0^%9L]O[=B8\KGEK_]#P7X1"KP=5'=YUA*-,9.&Z;N/+?&#$
P.M@H+V64OY\D/C. K-EA1E5P>N< >F"61B^.]QMJBFG:O+B)P/Z#G*]-+J+BL[O-
PA9=W[FZ0C0DW,>L@2/!K_>*;R%/*"ER>],@3V,P TG;M]"8+5!Z!C*,%\$&+F5ZS
PRBX' ;(3[-D-+7!7@^B7JJD@$^XMD'G<T2T%(:_&763>[<Y*@%QK1UZ,&#7QB32V
PF[?;R1HM;+2PD/XTV!M +]-TT66TA=ER* OZU"QA&/%G(@ C'\.CTE)E179OUPW_
PY9F+S/,GP_.]25G0G,M[;QK%0]>1JL.::#/W%NI4V-7X\SDD66& NLH!5PL#FD6[
P6\SU9&YZ5 ,0W6!8IEA)'?Z$>CZP7,%.U6=J@:CXDV9[@3C2_LN/KFM]]EPS6$%+
P*AS@9D<+CR5/8"K-A(D5J9WS!; /H[)TED!SB/P7%2]BAB70X)*.%$SMZ@IYP0IU
PA";5RHXA FZP:AD>]["#H]9:H6>U]PL-O/PPZY,YE8_ZPKF<V<421N]84<^Y;M%'
P*:G^A1*U9_^%"LB+ 6SR*B:?O%7Q#+OG#ZI6"1/3[: 8R+X?B!CM,8"2%>I/#SI 
P,.%_L%7.E3IEMI_S*NWH$\K"72NG(^_> (H>>RTC(RN8)Y5M,0N6S=?3T6S7GIMU
PTY<D(XMU?)TF'.O6^O15/.B<T9E<"!=MA),Y=_4C.GES6B LO8JX]4Q.2QVW6:_?
P?]8)F%?"9>/NU6")RI,J-)*J=GZ\G%P@%\TO=UY0ORUHX';JK>.'T]'IPMMLG('V
P.CG%HY?YU0S<LA%]8=2I7Y,2% 402XW 7/A8_OEH<%:WN^>5J>=U&61H,<8/,S\>
P8[JGWI?"L[>@\?0C?-+NW/X]?DM+0U$C66'<\<RN_6.K.>>471X.EV54757]!%/-
PCJX$% 68P+HS,<RIW<TC%WT;];Z,5LYC4O)J]E/Y-0^_#=)'.5YE8/3+=O#L1&T)
PN*HK7K9+AQ7P^0E[Q(^<1T[NN*(=%5)&I.@K,5.S\>[E;VSW^?;5F_)L4C\I7KI 
P3G/_F.BO;=K!!*:!\/="==5=^5WM8I#A;ID=[90_UK*K(@''.(7K,SAY2CR?TNER
PZA56&9DN[KZ0R(IHW=MD,UPR#^AF4H9!?9BQ8\M+"XN7/WQJ)O/=9IEJMBEFXLD#
P]%:N'%%7]OIZGFFK4_)UY2_QMPAGD:)S%K]Y+1RV$3"PQKK0559B5*KBQB)7?837
P)9>CRHG_%N$83-@Q%1)R7+4NFS-D4"KF(DJYH K%"&Z>516G-"K]X:AJOR)0Z<_9
P$\O9]ITI'L-(E]CO9V<JWX#=MWC-7TFPT1?(EO<MCJM/$$EO>FU]3]]J[VZ:3]W>
PCNQ4W7X+?K!&TQBD[Y32IC,>GFRCAN)/GAX:-]Y6RDYTAQ*]^#M-S^E;M#8[3:QU
P4^QSP N )IXJM;S$E6M-71YS@T4_H'[:Q6"&GY>(B;W.35R"]/ND4!U0)@%W+N;V
PZQ@S049LJZD\#).Q$AF(.A3&$_7==[;^(-H@[. 8[R$-\3H)E-1."DG&CD2[57 C
P2_B)ETTK&%:]T#799.1-R'>^.8K(#_9M<3:P-:9HO"<%ZD%;J1HAF'.SNL7AD3W>
P)#Q:^_\K8/>8.380C>3A'K6@QO'+50MI'BN%I[W;8IR@<0YE@L47XOV=^C=R(B@E
P?!C\&=L#YN8XC\#,)"VW5:J&AMF*J]*N\)^V?J-5J*O8R9@S*,T:HI8"V2W!\.6:
P&-X*T^*VL2'R?GLI#OFL/UXWV00@&G9<Q[^X/GR=BVNO:UZ%61!7#[YL,QU8K(;X
PUB$U=:"N_&><Z6:?3L4[U=Y2@5,..=L@C8U1"3#/4?(T(D=;%BGX@MY2Q=E>;3Q 
PE@"HEN@ZDY[Y>],7\><>PHMX&LGSMY-75F.M]SL>BAEA8.;V[+1@/G0'A-8\,9PU
P"/0X(G;3#(I;<)5SBDYU(>D8*!88-JUI%EPHCQN1,TW'DF<JW_?BL8%6KHV(!"VO
PF=_+"FO9N ,3F$[<#!J!%8&<L#35#@[)D^ZVP-01@;,^Z='2QACZU<('!>-6()*H
PQ-])%TA^USTVE=T%85LS6XG?:G,:&E^<]@2*WPO6ZJ'<G/%B"HT<;19,3F5B_:L=
P9[D<0]P><'9B@@$EXAE)5-W6;7#^[.>PEDK+<ZX]7\ 3Y(#)"X:MM:A&>PXQ8AT-
P&+R?$JV9)1]1H,O$T"HR0H?+ /^$%Q'_14M'U4B:UM^%U=*(?^' P$=I*I/9\,'J
PJGC/?BJ"1.+PR!VVR:K<L##+AR PHB=T^_O>BXY$=SMR=@#C]S31!L,(\6?(/;@G
`endprotected128
endmodule
`endif


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : prbs_tx_top.v
// Author        : Qu Zhang
// Created On    : 2021-07-24 16:11
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PRBS_CHK_TOP_V2__
`define __M2_PRBS_CHK_TOP_V2__

`resetall
`timescale 1ns/1ps

module M2_prbs_chk_top_v2 #(
parameter SYNC_LEVEL = 2
)
(/*autoarg*/
           clk,
           rst_n,

           prbs_en,
           prbs_mode,
           // prbs_loop,

           prbs_in,
           prbs_vld,
           prbs_out,

           pcs_prbs_ber_cnt,
           pcs_prbs_ber_cnt_overflow,
           pcs_prbs_ber_soft_reset,

           scan_mode,
           icg_mode,
           mbist_mode
   );

input                                   clk;
input                                   rst_n;

input                                   prbs_en;
input   [3:0]                           prbs_mode;
// input                                   prbs_loop;

input   [19:0]                          prbs_in;
output                                  prbs_vld;
output  [19:0]                          prbs_out;

output [15:0]                           pcs_prbs_ber_cnt;
output                                  pcs_prbs_ber_cnt_overflow;
input                                   pcs_prbs_ber_soft_reset;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;


`protected128
PUX/AEKRD>E?Y\R:S!64F64V?POV;EYY!>XA%/[;3^E,#4HL=ZL^^*@9*57%GZ 8?
PW!)>MQ5L!SVEVMQ$C4,$0\@;*Y,+I(AKB)D[L*'"(5J083T!G\S,+D\4J=1(+$P=
P885Y,\CZW*SP"(".>*C%,;%C62:<0+(%!)'&WQCVI;W<'X1I02THQ1+$+@1]<J3M
PFV<<2[@?B"'O9(N2X8,U!9!:@T91(PI-ZJ&W^6]S(_CPC+%1?<[-KZ7!G#E,OA;L
P3R)=8,\1MXM$!J _S$,OIF^ST="W80WZSX1<QE@<.;6)H$<H,[G)9/K]!R?M5::I
P]B5:N]#-3P]3'E]ZE7_[$0S*BS30+HSME>#J*0J_!$*%<WS'$=/("@,)+-4N@M_H
P;2@VR"03DJE=;KMX#:-9H3](>=P;.GZGV 7=&IVX'15&'4BOL*L*PO,NZZ^OGR;1
P3;1Y.O"JN,W(//)-!U8K8KFU/'AD%+RSOEI++CM !A'<4%VE)7MR:+"$(B1J2?\Z
P<Q%K\OZ?;YEY7(I,,Q@35'(#L@)/$$#:G(+:0!&[J_4 %6P'YJ'2<X>2OIG8UK>]
P'@G7W_%Q(3[300?S>7\%L."!E]GSAPHH(W%T-68F6,3A$9O:N",*02&DO>Q#HO;P
PWQ80Q3-90.]_X(7+3?V;<QRKEC\_#^[.-#D3*$:AF7$6,*XV :2@&UNM_V,TP0ZD
P&BKQ</A<_C/!A#9M>&L T,@ EP8DG.VCVX%W,L.'E+R\JZVC,BP<G$"65N4=28U@
P:24#YKF)_[*5FB61!S5+O']/<(=A+=O:@Y$B$_8^G]CIV:#J:#>.,U$&!GK>V+UD
PR ;=LHTQ^Z52%*MXVXN\F42P^)?XM9GRIQ76ULO/D,,#4DV+! ^8U*RZY1T$YC9<
PYW@WTM/?1MQ%0KQ7XO/LUYG<?5-4ME>9P@R?J[MU&*. 35358S-2N#JA/:RKH 8@
P^=)S_1N66SE$DOYZ60P=TX$%*\R=.^D4AJ=<"] MG$!YV@11EFMEUO[*F#W"$,&)
P9-4[9)R';V,4/A$,MN"'M@2<E8NDDM]8&E^NA ] Y8@"@]?*W%X0NIM_PZ$OKJW>
P)A4.ML*JG,AZE$P%=KP39EIZAKFY)/S++,!*Z +#/.3MT[5HYWQ&>5N?-/[=Y(K.
PQX%^4(QSJE91 )Y&MD?A\E@,YEG 8.+T+PIC"@-;VG7'9.R3T?E7R,X2P:Y<D9%N
P5B#EK31=Z*<K(+J36I6<;?Z"0V$,-LS3&S0$QGIFBN9:Y4SACDN0X2H7X--)^12,
P_QT&L0">"]QV;GBV%Z+M:_%E&VPY+D-BD.P,Q4Q@S)[)EN(G3*Q#KQW<TWAYZ*;P
P_/.E5R5CD )R-"A_%UM[(P[W3>QXP::Z3(4Q_ :+GD,&GU/15R0]*D.%W_M_K6(>
PV=0P+]ERQG5SSEA>>Y0)KK90KX61%VR!/K=T'UQ1U3;AT5".3X9_",^T;,Y,KY;B
P[C)V.K2,61P/0RYCK(F[4$//QW#=&/-H9B3 @L+4U!M<Y<H= $WJL=9YMN:$./PN
P28.("<,:P,F3/ZD'.EN[B1!D]%T?R!!.)>MA4J(!F,V!- 4( )\BQF#=&: <WIW8
PK6O4H!8RT9JOR> @@]W?&RHCG&<E]'_MAP"!9J3T=2LN<A[@5RW?8X<0C3:(2F:8
PCAN2@>V1ATS6Q(C4*!R085%B9S/5+6X[.4E/K>566G.'9&U9NMJM&9%BLO]<5"Q"
P%3<\>>(LSEUE$O"%I'^#_%BB> ZCAY@/2,,5@+@2$)^/HXP]A^1(N$UL.B,AX!9(
PB<9QLFRUL;O]3ONB6'_W19;R**T>(/0&6Q/E:E1!.XB^$M@MF8JRO;AMB,O*FX)-
P>JEN0-2G4#-+LB\3<G*BZ/"K0J&\Q0R23O?G 'QJ10EAQX3)_E4&/P>O.^0W O:2
PF6O\WBV<4*;,GI!)*X0@Y_6*&LL(N:+]7VH2=GOT1TW@^U@HN$W=:NNH"X27'NTJ
P7G@/>"B\HM/9D5_"YF(=57]$M[?[FW\<3@PT$2OV;8_1W2@<S44>WU:*O+=-GV^/
PDGC1)7HMWA3\>%\HEC+  &1I?RN^5A\/.*=L<.\]Z^=R?O>+<08=53XJK:HNG4]%
P5%^LW$=_JXQ?#[3DI,4]1;!NSAINJQ@[4A\C-?V*V(.V"T19YKD?9;>CZ^L"L>L2
PG12HSH[7+9\=Z7F_N'OGNY9V<JQOK2%A/+P[2WD5]K=Q"<&N-H@V1;O @:XBQ4I#
PKT"K7(;Y%3:%LITQO0>],^YM,N>L3W;B;C/'G.RDT"Q!$E%2AAE<M"@V8D'="6F?
PTLLT[<*$!3W1-A"V!>(_N.1,4K8AQR^'N96>8=(.'IQL&LQ?/\A1'T>K'O%#G0=C
P7?C<XJ]OS;,S?!VI>)H3M=L5JW5-AF-KVH>J(6EY, :)]]@"]WAY5W(UI^BFD1FF
PUY$+*L;^57)%7IBR&"@+[%XBNMTIUD)H B0NU-TC\$@!+@2J%&C7E+O-^*G(W?N%
PN$$>63.P]#T6;HRWKM" !&MHE'B?5[^-)/?$6\"QP=8 A$]B)(CG]#2K;"45O'\0
P+&]QNJP1<ARE249\*-'<=F"F'J,<&'WNJC7WCM-:3,$"9WV'U*'[M;;KX^JM) (*
PX%"^F3Q:@)DXT\D5KP630BKVZ;7P9XYA).4,G7^\07$ V]S_;6ZHJ21%Z!Y<OJVV
PRGYB#ZX,O!Q.F,5?XC#%VULLH :=3G01];""22'=2<F<G%0N=M+%=Z>V3:; P< G
P:*CJGA5RB_I%,O_Y9.C_IB#QMW[W:<\YHF[E(H<$[F[IW:99T;1J+= PJJM+18)>
PKEMV)!$:O*;N5*=THO#9AR>:RQ<7XEUU!!3LHT,:$\"O@:KO<BG:0*6:1A:# -7?
P^4A:8Q.:_/MC0)>@I A/]?N+FFAC!X#2H/WS]G#/%??&%6][*PJ5Q1<X=J#8%)]O
P>FV@,7&PR_=6"N6/0!YD&> 2I/D/6?G !9>%-AHF0D.P<]1V2^@ZZ]..[DPZ)^['
PT#_!YVR !>H?$:A;R&;3WT1N"4W?,0#NIH04[FXD-WE465.28Z/Q4.5.A 7AHL;N
P)WVXUP;L_WSHQ/$.Z&*,9$3.\@PX7 +%5HTX!F)=1G4%-5$_KQA.-WZT_DI$._#H
P(C3/ZM0:I^BW9_H6;:C0%QQ$V31%\F*>?VU8*O(<$BMZ&ET]AYL+./_;"Z%6';<:
PSGT9Z"^JD8X:IF I)ZG1OSKY9!#%%'TE\5EQGQ\;#>0@")&NSG:UR9"7 R.PJS<9
PSV] XR0[9T8*!5SVIPD7&US#1?K"$8QGV3=\@P<1CO;OJB_NA#^_SQW$1V/%$1.!
PY;62\U(_UOPD$&[LX-,,GH*&V.LHSC2P#ISJD'XIUQ;I$8N6*=5;^SZ=3KM\2BO\
PY@5W^J@(F*AJTC? HFV;.M1DL[_0':P1#< %!YQ\/[X<S$@)2Y<$.X5KE8/(.EE*
P$V43 ND!H@Z=>M]-ZQM6#8]:(R32([//S,=:*5#6+E%**8)1XVJ5&/8Q:2(Y@B\H
P![F2F!U7'\^4T>0-@IXDLO\E<,JF0RG630701-YLW^Z',2!96HR8P\<CV73F,,1@
P*E]#$'QMD<HY9(9UL7UW$9A$WG4XA7LKVFYB/6@D*MR+4YD9P/V !9MK*?,RQ3U5
P1W%F_\'U5JL/,7F#=\; DD9:97"K:*"+N:\Q!<-&=R_:NYU<F5RK$6[]:'"XH2O+
P[ANS#&;. ^.!%=5>$-)OO?A]7W5#>%B5K1?.Q+*7[$TI_DQJ<+P.LZ%,I=2AK;>Z
PZ?^/9\_YK9MM/0[TVM2_ME5&TEBZ@2-E4$/XXI&+\TF.W&+@!F+'Y5RQD ,_ L&-
P.QRAB\'P<1\:!NMRC1I0D>+#QT4@?,?99C!TLUK"2)-HV+GNN]Q:SGXI"@PGPL:D
P.JF$)*WO2L:&.M1[GFJ_X29&4YT]##4U>X"@FG;,5>%\,K,4A6/.2H.]O\GQ?Z-$
PT8E2(@-.=[FYX!A!\A8F3LMV[G#&%WG0C4FZ :V'*-I0:'+JN6UV(GC=[5FN@_9F
PU*%Z=7+L8:6LE0Y\Z ZI#\ZVB3&FEVVRQ>%JB$7V]O_H3\,+(B_K%;L6QQ29N2;4
PL>2Z_:>1%;/[JY#;C8J6'^@7V[EE\H7(:0,H9VPA4\ :=%*<KN$)\+I$HFQ]-J-=
P*PA S9\(\9.L7:Z0V3W:8HSKHZGHN,IERWQP"ZON95>V]M]RZQ\S%@-FI#BV/62T
PIZT] ER=/'I&T6<'XEG)%P@MW[L##<%DC9I<HNF%$P(!/V8]-)@<-6H,MV9J/3GN
P; <._/#^^Z784LD,7?G)+2WJ\6P*FUTD^=ZD#;F2Z][SPY 8TP.-;?W+YKF)E7LQ
PO/\5&&UY7 *F!4;HS_JYY\/7A9(K;:!F;<'>QB'SM@'DON0>18(L;@_$ZB7T2A#@
PARW,I]H:&C7\M;$K'.]\B"H;G(J%ST."Y4M-)AVGE;[56[OXCM7M1DJZ0UX]1;K@
P;Z5 8MEJM="#(=UZ\"+MDU+FJWD(IXPYD5BY,6 _'!#)N=%_31DQX1]J;?.0\*<3
PW_D%">C6H['Y?>$<NL[L2VB5'-YP&\.:QB"FMW^=M4U]$RF,&%Q<A]WY<&O'_*1#
P4G8@JI3'0.-2\D5'_Y!JH;T>?]MA?Y3Y=+C6ZY\(['6@FS&=D44I#INS$IN7 )QM
PA''(Q9:,[6UK^N\>F<K+#!M3! *'7#V8<,:*&4<M:=N=8O6"61+A"*?,]1SHP?*B
P>X^(]Y?U6P-:!HUW):C<'1C3VRCN >35I$N3%5=6<$3_%[W;*(MYD8;RT5V.DR;A
PB;VA/+/YXH'>]#MVW\Q*::L1%7[>W] &H>7&[.(8W\>6D!Z?Z8QFS4P,+XS4BWGX
PXV)!J^+WOTSPUJ\<;G/O"1]N52 ,<^_/5FJNF!'M*">+QO Z$.K.&=D?PAE3W!!_
P#2$DI :T/KZ$U=*DJ\2/XV"]R;=K#WC]VRW8-[\M MHT(N>_Y!;R+R'E#MUE[0=P
P,53ZI87PW L#-1 3K2R++%2L-6Z1. 3?3"J[@;.MG; @S[GE$;/R'TQ[J,0\I+L8
P.AQ'9D$LS#*?P9./+N*: _1,8"?VP%LIX'J*?CH\-CA(Q?&@<?_V4()<6 :EDR W
P,AQ5?T $Y&!KCY.9>]B=C$4DC5 H1%-YZ^4@S(.K\UNZ=L[.YAE)(4;25>*GR^9/
P?M@&D*6!/Y;2CJ!.N7A.UTA\4$#N[/6J1  ^*0\3$S%LRL?QG18-@RJ&X2#%_,R2
PJZ.XSPML$:;MCODN+N' !Z*4$M'!M=\<3W<-RWUVC.1# S1M#[SD MJ\I^*^]=3'
P6"VCE>"8*7$U*8U:5^$(.0V1I,"J*E.Q<TZK!NOR5^:JV!&10&]2!5KW>$7R4]0C
P=?%CQ1V9JS4:J7=I6Q&@FH,I86]MD9:V963Z^H9:N[>BO*H<TP8Y.O^!L$'H@+CU
P__TJ:^!=(."]N:$') @L$7%H.MN84!TQN^#H$S^4X84CO.:2:'SF/C"ZH_K5(J3>
P^8$\=3+4R><A:IG9'L^@P3H"C 18UK"J;F"9[SS?US<K.P@"A@<)6+:1G6PA-9K+
P58\4)04JCS%C,@C7)7A%Q[1MOY-1%KF/#[6-^>V(%">;BG!LT^J#<.)$YNI9P/QI
P)3V-8RVZSJTVO@R1Q Q[T7YH"L,7*I*E"J2PNZ'B882YW;134X_&O-E_RFT[:X0$
P64'C8CB+*HP]\!A2EXLW+*YJP,94WK;)U@J-VJH$/6NUX;&:SN7-K2N<M,CQAJ:B
P<95"O3SN3G*2XDW1AY&70[83 :X=@%OF44.(F.<[L\.OV8)8@<S8&7!35@"E546/
P4HCT3^4*!+3DS-S#)RF_1+GLZGG1YU4D),AHFQX@(HJ 69T1+G&\+"$K_/[,'?)X
POTO_X+),O-!3 ZB>$.E.ZO$?_)*9'G0S^HQ:0X=_,[3_AN K RC@CJ/4A#RU5MA!
P(G_D<W7%>/1,&8>X)@SO_MG46VW^O%)YC2&>2%3,JZ@[-(GQ8_R@/!1_)IUS5^T:
PQ;@,\C>P)$&/R[L@I*DU= H]UH$RRT_@EJ%E19G,4'4H@=?)JZ]_($P!=J?B3F@H
PCIP-#:J\8/D];W%9Q=EW8'8LCC6Z-M"^X!0>OXHU#$R&R@>_G!>)$=[T+=E615K7
P/EGLEJ>[N%9;VE!4UCXCPL)0IV:>T#.U1(+=&4\A:?^F.U4HD6M]O?:MSZPXPF'N
P#%7!!3=FK'1U['W3NY<19K6--+]2E#FE3[\:FK#5;D6H"35A?*<#P0]M'GDA= ><
P>;PU0FGBG!EBE1@>&,K'KK4VK'E4PR5<39O'\Z8VT8MEUVNEU#FOX1!7J=KZ+F^#
P,QM5OR#C.64O! +J95!7[&UOR&U4Y\WEZVM,=^,I2AB1+5\F6U[N+("LI:<]S#;W
P10A(L-*=25?#J52@N1"/^NVXIY<_@QU9X3$O$YL\F3_9O\HAT%+$S)IZ@B%6"\XS
PYGX^;*;RK"I>%W@]Z+5":ZO@LT6NJ[?::^@^71EV<<"C$#.QLZ_/T,)RN7486L18
P8X0$I[C< 4_\OSPM@%"K9@$(J8--=*'18GCY3Z*NV&NZ8H_:O:9EPM(_K@\M'FHR
PU7+(Y&$J@LU3UH/(K#'K:ERG62<\83[P\8]S=2GYJX?A5_G?''9H94C3V;-/:!<'
P.-9"<(<^8/EQMV\_KH\5\R&*MD'#<ZURVW#U?XT/'9GBXUZ -F[XM[43@?\21&G"
PPD2?-+[EZ04OF>K'^FMUL(BU0<<L3;)#4%S;VTEM156R ) R3([32S<=KF%N!$=:
P)D^:8EP4]O;@21]4244X%%D9A%Y$3]%$+8=+9M#])[<,"3ZC"HD_F,2J=TV/130W
P2M)G!"_.N0[)*"_TMQ4H*MLD .I,C%4>_5:\+V!0;&@3$_<Q($F^W<;4'74RZ:QX
P+FML&[Y"_9/2^Y+45T17\(A1>%<YU.[&VHNQ9T4,R\4]T(E+9HK)L)8* W=EKX9_
P(X2H#-W"VHF<" G9&#D\-M_!-4U[40U$YX&'?*H$W&;Z+=E;LC5=0B4\8T+J)=$8
P<'A_W?0?[^O%.)#>HS9?'@+G6+N7>P6T>(>M2H$-]!]>G6:*0B#0YD6LB"\J;JII
PI7PO/#3JU\+0 @N>I;O*D<W'E@ML3&^R(A3>6+K@04H889N04@/9J*YRE7G]Z$7Q
PP-RRX<$IJ%!MI LI/XHA@'N(7) N:&Y7(.IK]ZZN<*U.U^-@PSL(5' 7K04X%Z<@
P2PV5REG-0GWF&T]-3$#&.6OR+CS5]:62]*KM?2@[175]09 #U^ 3[\V@(M:*85'W
P=#YY-;_WGP:-GNY\4.NJ25FCR_V1T.DI"? GY WH?==57J?"FZ1T_#VNH?.51MA*
P'V:1PS(!;> U'O/7&3/1K;)5KV^UAB*M"AVK]EJ$\/Y*!W\3=[2/;1>-"<\@J##V
P8B*B/:YD?4S@8'\6;:FY+\-W%RD_*B:4;\!45*" =S>[M*10=]JW&^='4U:8 Q$^
PZX'_[) U;4FF2M@XZCSW.S_6_Y35;'3[RW@6AED.;_ %/I_&UJ_6__?_5=_&3=@&
POR*O#[S.X7;J\87%.0W=A)RRT *'3@!GC)RFG5;XMAJ1Y1M<P?U,,'K#V[=F6PHY
P4,H>B$ Y$I8*=(G+M0U^X1]3_$AD75$U/<OQVI'/85$S06.#,\H322A!K(EHMF93
P?/[ZR4[V'[0&=I=)G<(K1I2OP831VE2_Y$%-FMFT0 -+&Z17;;8.C&S@SB'/ #9;
P#778UE]9TXEJ#GG+!&^-\+04Z[I@3VLD42A22G5V\;8;1F,I7NOV;UU<H7*LE%8K
P.@P=8W]5LMX[2T*9["'?4QA?ESR\;(HHHOCVU8;*KIBVTLRI7<6;V7"M )=K:V@*
P=\%7N& 8@#+!O$GK^6P[C?K23?&@=RT#*"^>B% T<#*-HEL.0[^X2!%=.ISX,:Z(
PMQ+K9'#?&236B?Z_8!"'*WTH['C@%G(43]@]?S(I>@K/'BJ9(.C9L3*N53FQE$Z0
P=P4ZAJ[0!F4[R#3H)2R#10S 2 V5AX9Q^+IEEB? R5VE @):N.4G<B#+= ?;G#_3
PUR#H\K[OAK90>5_3YBX1O&]WD$"2V!7#\6NJO"_C5O-L^I8]QDUU4\Y9VKX?G.-R
P1&8?!1\OQI['AI5>KY  NNY7HD:\^9MU,=;$<E=90U5&.AM?O70PD6]9BY%L;V=^
PA^I%0OH-O69/P#\'<C5,76&M'RQ&B9GNS+J;2&[.#)ID*#<T*-")<8!,"Y0)MW!(
P ZCOV9F)%X[$)F7_.@9)%OGCU_<?ZD?0U8<-+J 1:"OWG)K<(JSXP(.>"1!QMN"A
PL&CP70KVVZY&P%HT<_5T <8;Z87_==T?IA7VI>NRIE/!BC?\-ZN[VX6WL&_GBRW&
PMVI F6G)Q#[2Q6JBC_A<XJD.0\\<0@Q8.2N_)^Z72'B&\2@7 ;/4QT6E86K9L[:(
P?K@M\!('8J9!G<>-J> Q@%;&MM@4#@*?J@061'64&87=">9/YGW %:B?ML-:B$(L
PV(UV?'3#G#8A%5^+YV8W22*;=TN4R:M(1SI&&<G[-'&8%Q8>> H,U96(5I'2W3JX
P5(K&1$HW-Z*D'Y/ODF,.E<VB!22-4L+3E7?><MB2M?[;NR'I97L9Y:-R7_XLU+>[
P?R?9V&4>Y-ZM( M%5C<]I!]K,I.\N6SMGP\$UNB?&,R:DB!^% 16MEMQ]Y,GL"GT
PA1J0 S\I?6%JT)U++W2!8]$"I\^38Z A''5Z,/";Q>[_]I], '@V>OY?O%X SOV4
P<76A'*V.'M8OND"9A=Y^4_0)AR'M;BE/'L-//G](1[QR<&0KX?&LA+OR7HF?4*P(
P3$@TL<F(O,'P#"[4.R+L<=U^U ,E5WV*^CO=H\5_8ES#A: U.<[ J9WC2X?._\<N
P,R2"4$/Z1M(0JY=7>^T&.2_/T^E"!HJWV:#NMV2S7>*_!??2FB<=,9EW7\0]DE\*
P!,TKT'OL\9^J5W)J:Q&%GX F.O[IYXJ%AL3)-&UASDB04(<SH1?^44=_"2TUM1 2
P\FT1V(N@@H_O2A%>/:5%:D+2\ .> 8N:U^7<>YPF91^#?2-:QY9U>BM5\UE,X]L]
P=8X%Q69%_[7@5;U2(C2F<P6<!7*^0OF8\Q2%*73[U(A&L<I?*SK]WR77,ZS&:EF(
PSO+3T^27\HE;?HN[,Q]9RQBW$6#3K#"&WD$A4?OC9EO%H0*>70FZ]82O G,T0+4'
P_6/ROJ82X_HON>[*@^VDJ)+<\3E,!XLP8OBO^>)R\B#S.*% V51'1@S*)I"*%?:.
PNZ('\H$KSC%KJRHO.5T#\A$6);K)D=/S/$+Z)XQ2@$!PT_:ZG/_@??3G*,\,AH_\
P9 6#\:%N:*]J\8'V='E?<U[5SH>TV4R-0<?*6E TH$C#!]>*!D.KFTD<G*2@<7IR
PD_ 5YA271AFS_B<Z:+/,VRI]YBYRS/MU775QU@Q72^-^3$3(R'1+;)Y"QZ<3>+05
P_[7M_ABR!5H/Y-BGWY( 8V=^A/O0$9VG#^X%.N2TWPJSTE@<2I[@-'1Y20O/**S;
P49UDF^[<@H"6'=N;OYN2L3)A^J^D2XHTE?53 Y.Z8ZW3!HXQD$$U?P^OGY[WHC&U
P''=XB?,68V4.%@2J67L#/PE=\E87HH1=OH4U.>]3@>^Y&C" -L7J@W$\"!0SV]DW
P=C3G^1U41/8*>->^61^>;ZATZ<L4C_\ \0RIL^^ZRI53(%L6VJ:-%],A>]EO](]1
P;]AF)NXQ*#UF)W,P!'E#F61K9$?1M9PMJNY?ULV(D?P)23O?A#"3%4K!>YE]9"F_
P21$L#_MMZK]D^VA)3JU)ZW_K[=U$28+ATQ?]:B#+@<^O%O@ N"5 K;GU?[59WA]\
PYBBV<#8!,:!%(\,VJAPV7M&UP/V.*[Y&3G,"@?(F-PS%SV"%6!X1ZQY77!LS[9YQ
P"GI,1T9-K F^G=T[)&2MYO6#568?,+MK"AS9'V93BFZ=#VNU=N'$J7V6!!0O8N;>
P4VV]9!A8#6^KZILYZ"4Q*\&S"G SM^8<MY-1F>DU4S9 >1>7L+0G;XU?Q3A52:;.
P0FJ KM+$+-;OS8H9&$;;_RBL8NZ!5KL2I.K!.&X6$Q_'?8JN'J2Z+X*XE4Y9EB_A
PAVPB9K+4/?DZ!LY#(K5;.S^R?J.603R7K/%%\K^.1A6,'[!Z)B?X03"23F%I.O(1
P6^AP+J_$(:7(>&<P]YB401$)U(<2N1@?O8DY;5>AV@_7VN"6*NJ7>-!%FG\C?^!A
P>L^#'$V#^;0:CWL-KTDPR)_G*2,.=[2E^PS124P^:UVK$:YG@R;=G5L.64=[ZML$
P$Z0[+1_%/:(S/72SWI:YTKI;XK6L_KWS,P[U^=7_+I<57LD4+$"!466'8!GJ)/60
P0*E?M0E=I_?]$0*:C@4RMR75)\TR8S!:O72&J-E1M =3#F;\",1H:/$"3@M@*^IZ
PNE.X4Z1X[7^W>;&WA\:--*GIPYO9?K'[)VJ>*$'(LXV7Z2!G1\Z;CZL("Q;//^YU
PKZQUKP)#/,;SMCN1^#0YCN/AM)S%_5P3N<'V#Q&1"*;HCK-&)/.AM2'<&L__POAW
PJR)+@#O?"@W>^QDYJM.I7JQ%@PQ2<$+W3X-\1+0B\X4B/* 2S2B )$$T6?:D3B$=
PY[7H(IH%EZS,]8$KPFATOBA1(UPKS@?#"9[PM;!/X$<Q-\(JZ+7%<QHU,L:O@A?\
P+9RW]#V27G.%NC0%2U*M-#S!*KS.;Z:YN]_IH=P'?CX3[LIVE;'?CT0JKL%UY@ #
P$_'WL_!I[<  ;KD"A'WT0](:B(C8PB4:7HSO\M@CR#3!!J[=P#C"#T$F/S'+O#YM
PC**I+9F +T[+OZ[?<O+&#CGG9^@HMK%W3Z,[)Y\K";T0UHNZ!L2_L#X.>,T< WV8
PV&2#]/HP31BBK8-4$<DWRFPD36+H?Z(D'/43$1MPNJ:114OM"SID\7 B\QPNG'-^
P>1"34_]8X\;^X>NH&]KO@##@78KEKG;%7)'!90C_^6^. E<!=XNI+;+#V_7&2 6*
P1&_67C5<S,^H\YT+#:E+T1L!'/%$]].BH]#2EI  4DV2 +T0JCY1]BPR+86^K-RE
PB8-^N$Z-&JS<I36\H;LP=QPX9J"!EH%O]G0:7:T4Q/-D#2@20,>02%&;C9:6G/KV
P=-$C/![:#]$2M)>:\]E?M&SK_$Y09V/""7%-S^02OOB@'"*#W:$DCHB\8,Q8V>95
P5<F*3RM4:/''NJA/0GSZ,S9T50X^'H4);O.U.HQ^^27\U]28_;^E:GON<;]WUN*W
P"#DBFXVE92,E' 3:X9- ZE17:5&X$G1-+W2?I>PZ_%#=1UAM2*=^X%EBYB+-_R(<
PO=U&%>T0\RDJ<EAIN.&EY*# 91KT]D'L1^@/";@A(XM#"=01Q+RHDNX)Z"/4L3[+
P,L^2M0<I;;95*2KR[@'):,BSJNM(.P?AR3[9LC%0$_M_L+<>>D&YE+/Q_<V?S%R(
PZU/4,N*X+[4'*Y!@S"^C[,:7@OO0(]+N'4Y1G=:M?1=X1)KKR>)V3C)TFMVY.\3L
PW<FB V8RIW1?Y<D$Q%A=_F)!:YYU2HJMR Y'IJ5Q@I2S!]L ?^'K@]M8Q/N:O1!G
PW>2A@"Z9$H0C]'MIY87.>/2\1@4L402(<W7EV6LHU[K('.:P&\_35W-5!U=*R0YM
P]WSWUQE'2-J6S@ H91Z!XU,&D]>2!B_9+">^TW[1N4JP15J/-W_,]8I'\E? ?8J;
P\HN-7HJM4ZE24'A*'GDT;SFP?D##!!AB-S#XI69KMWT6;@<O!@U!!(L0:J6+YU--
P*?@N1T*&3;OQ# <9O%SFGP+6.A6L)JULW5CXK GI?DL9E]=>4&B:7&("=>6">)2C
P4O:8[O'\#3,=9#Q\S8]K^_*@@V;@J,,J[\%P"R7[N_;*%+INEME.)V<R&Q?+PA3Q
P]HG>+7Y,(\GIA9P^4T& 2.%)-OAHS!@GGRHS$5\8#^Q@!"N_./&P10Z"$7K91-X0
P6'K\[S#.DLWTZO[]D#T)E'&IS.OBT>35,ZID<@B.$9PUB7Q%@04SZ;DB [FD//'?
P:VMPJQ0?-B]=00%/;C/D+ZR7O0N-:GDD7A"@7#RMGN#C;-?E29>#:E6N+O8*5);'
PA6E!L;#F55S<; !+$ROGL B'02P_U+,1B-SBFW2+Q5>[F^[*Q& DFCBYML 3;BV0
PCM<I9<_Q<O=C3^C!YB#*DX.:A]IDJN1V0:5)":TK_LX>--*0MZ1^F^9\=4O1L#B[
PM;0G&('\8M[VD5=U7_<*OKXE^E)S6@UI!9J*])=.-6?>[N1F;EFO5T^N_#B.E';T
PV$3B#U'>)$+TLGWEHBT50S!MT?UD6#"1@^#3G395L$/.8D!D&]I#X!]&N]%3S%#L
PX'I/2:Y!GGE ,-?KA[+RNEKY1[_K%:Z$*&AL6K.HZ%(QBPE$S=FR/I18%VER=CYU
P(::0((R9T 6$+;RTY@H(?%7J#)OSVK.[K?U$>T1.!T2F0;#L\--4_@3G9K>34_7T
PV12_VZ>?KAZT;7$QU!(Y/3 )9'KCC&$QL"O-F"#4=)9YH,NO:N"8Q\#'\LR\?1KB
P+$=Z;7B'%Z3( T&K441 1$%\O)PO<7!'RT"I%;2TM[_L)3CFX/5+H .I? 8F]_)_
P6*X5E0OT(&STWU>+TM6M^>G7>_-\2M[Z^E$5;="J2=DT^2DEKF$G((=="A:>%M"F
P<JV,HO-8J .WYGE?J?3= E*%W4=<+GD,MKU 4U1 N_!8VN:#E2BS(_XM7>68_0Z'
P4#:A&FAO3FGL&.0LE9[/$EV?U><,MLM64QU#630WPBMH=9N<X[!D1"9.Q!Z+[%X*
P5QR;"FKE;,1];IY27*WH%;?"5A:II&Q))N?D0]0=&2+\&&]_2$ Y9%@1*:3/T=$3
P8P/)Y .&M8.]Q<#54WU+=U8Y:[^TIU5[D'22<T\X]E<':ST>Z;K']QEJE8M.1K6*
P@]38+ZA8#%%/4^7D',"^QZG4W#:"II(M>2B+I1B,810T)+HEZ>QF4/6SQ N2!<!0
P3YD@Z<N7OM55'RE]UTVAJ14+9B]P0?R*<&V%M3Q-Y$)MXO^!II<Y@E"A&C*VCYJA
P3WN')"R)A?!"2GU)B'H&O,L*3DJI8&..8_V ,W] KZ67Q2R,P4(7;.EA'J[\=_VK
PQ@W^%Q[\-R"S5U+Z]V4H,I\W'%UV74Y26N\903BTHU[^<'YX;RL6",X%#;,+;[$_
P_!8(]MJRP;V^]'8T&KRVCEC["9-KTWNZ^4M!H';#O$V6U"VX)RL=_U9$*P4EX#5]
P.D72R=2^%8@4J7NOR]S( DMMB/N2E8A&U;:O6K,4\*_XRD1(&VX_5.3:+@5BWL5;
P6Z)R%*48D<!TS\?$3G>RNM?6JJ6<3C?\:8""J??;+>37DI-!MJVA63]&!AN"86'>
P_!RQ^30#AJ=4$#DOEJK0)P5H+%H@8V%?U1FZX\W7N>2J)0#5=I74A4= LG8<)I#P
P2<*GK,.XNPX81VDE,74.&""[Z+/YN9@7%WQV?#!34W@>7C).),*AGH=:E>@W49M5
P=+QU\U)^/PU[60CD.FO\ECHD9*,9^AJ!V\:3_!9-IM"-TC\YH'AR>/])9P4;E*6#
P[-_#ES(MWE&\A4&G\M7\(WR@K5@ %FD4/85P"1*?&QRM'9TV;D55DXRR.LMDOYX@
PKY:IU1MBRXE\U1/H1!,]Q6<V/)W7?(B2!9B707<1A->P 7271I:"U'C';X[8P?V 
PV<74)9SI^PQZI@[?[TD<W^Q[+L9_=7E;#UH_J=475IHFZ?="*OA:O_?T^S1#\A'%
P/G=+AVC:T67P;.Y.X5+/_P^?1@,2L^=_1\W(]C2!0H 3)L[Y.8N[('S?X=8L4[T!
P0Z'@_2VWI*NQ?V(JRMTG<_.#KC,\CS?L[)=9^OXT:?)#$T,/_)L:O<:<=5 7"'$S
PS->7:CE,0$GCT#,SZ"[0_^(W67A"$F\W3,?SE>OS.O<>]K,=>7#S6A0:6,YD!.8-
P[XP61WJV(Q@O:W;.?K?<CT8IG[)FB"'.451KN7!)!'73Z^#O;K&1],Z340J,-QXC
P'8)YZ59,UTEW\TL=(:=1< F*-;(X:(A4PHBLA^_6+G0CU4H'NCY[J>.+ SV32.I$
P\MAW3)MEM 4LX*VR2G]<< &\QQ7E"ZS8!UG#>NE4-CV%:-=,O6K51Z08>/ /F0(G
PL@>4QN[9\!-LIH]OY15KBI8&BUN-:NDCQ'Z;;(L+<ALG2G&B@T?,"+"=1^BQ>8R7
PCE0,@2JD1>D"2R) ,I-JK8K4CZ>-"FPN]W83H;GDUX,Y#,M8.X.Q"=Y7FJ;:@=\!
PO"HD!+BT_<#$]4/IE4;6ZG@"_: "!6V7@M5^H (5TC%%#4W\RD>RIEW)&^=>O3N%
PN&H)3;KV93AW(-:F(7<L*.?V4WKU0-B:S9E->EQ/&QCHV:]H,%!.HR"Q+^8O7<YE
PXCXQRF? 4C,^HFH$W0?TAJ'E[^W&JPH$?56O).@L>5I'N4QHW)UE04WU5"NV!QU8
PV=I-?CA6/Q3[XY*1:\Z? 4QVS:H(=69+D!?J<AD?/X24AFM59W@@&G7R^:HIIW72
PMH)11W^Q5\=R CL!7<&/JM,N6&,[$AHT5@42/E%T?+O_V84:USZ.T9.BFTFYGQ!1
P,D-K$FM'2K"Q"K\#;9$HV!&A+ AL1(L!MR0-6Z>U16&3"G47^CUI[6O2A;9 I"] 
P=J$[LM9X4$(Q*LSW0@4CPR2I:L\%1':4QVSZXX4?ERKL? (&\39@X 08VCR1JU";
PY0^?CL+&\<VUK<"8*KK; UB"7UKEKR&TQY7#)<\CA#GSL[ O0K\VZ-)"NA'%SL3X
P>H>()LKSAB8^B@A.,R\%JK'& U*G)N05OCPHCI07SD!)LKFZCX6<@5[!YMC0LG )
P6SUQA)$7DAJES#9'L"!=D]<%!>,XXV8,3[..*;7ET"/O62SROI4Y=9]>;6XHM?Z6
P@>\<DUX0TIC@EDZ&S%4:9>.9_MN4QUXC]IL^I@D0-[BK]F;!)3?U#2^CTME;IL$.
PTON3;C]NP.EJJ3E#BPB T/51X4-EYVCKUY2.FZR"F=([[!L?;:R]S+64%X:"&$ F
PY+$5-OB'U[ 7-CMW:O-/]G8%M8SG""ZB+>7()Z]G]08>?5"G&^E1N*UA5X/67C61
P_,+R\DS%0JH9"=<6[]<-%P0XRLQ^NMN.CN#8IRN%)6NX6DB5LZS$^=GY+G<BF[UG
P^[^S3U+.YW2JU1&^WOSZF!LY)5C>1? 8G8;S;NBEA6TH;.OYFS/.QV)]#YX%(-4U
PJ2SG>*/-&=^6B(-0'IZ#_F[WG;A]-,2'BPD0B)0F2:?%J].T"^# %4,;-!^ITIS2
PB49S5N8%H<=+@/\BZ&D_6]#A,P:_BHZA/M<3X\ )5_/"XKL+X.]T=J4\U#'#)C]Y
P3W =U1^\&QS'%]S=5)'#"I#.;</#WUFV77JP:#[P\O 7&O_5<HO[.;/V+'6_L[9?
PR*/:+9D@ 0PM^*:DY9!<I.5[*_$9:.,5M&_L]UE4-Z*HR^K<9U#@V,^1OEYH"!FH
P9=6MB,)506BR22CDH(V5N=]]+5!CC]C:#X+I.:.CK?S(A\D(TJY\_0P.L#ZAVL(S
POB+K"TE7<2VL?B!V^2>GC#I78!2*30/L163#7=0O:$#<-JBH/JN!#Y]1Y;1372YY
P;-A:N'CN=.L4H*^EQ+/./@R31<=/]>$%*AK_:G<HDUT=N0VUHA]'-<$E0OHM/1Z^
PWSCQS#=%M/3,RNB?^G304)K;A^$PCZ1IJH&-* HQ4V*&*%!XS663%]O3CSOFDXSB
PGZS@WM> R#AJ&@Z-F@(++JQN:$)Y4829%V!3(%?'S'WS'#7Z-FJ-Y]7P[OVK#HHU
P[JFDCT*N_8Q)L"R,(X]X:5 X?IO<N=TLQ48!"#=T>&KZ1;'^@LD',4$<8?GR2Y^/
PYITJ56EIR@+?6M;^3-#5YL:=H0>IAX0NPG427VWR[CWZ.[4>^!SE\/<;35/I]0'?
P\A'-;?PFFB-#>71T3#%%HY? 384!#R%-6B_T0/[24L=G[V2$=H!L"M6E#BXO-#"T
PW4J]P6$&=-E9FGU GM(O(_S!6U:5K"Z#Q'^LJC%W4D0^!TG>XC/5=#H(J=/LJ'!(
PKRU3/A0!LIEORCLY(%/ NRJA8/@T/?>/0TOG.*<L&?/J#LG8SO^N5(?;DF&GZ,Z2
P#M9:ZP';M\4#3$XW-&8,48/]S.J!U7&S8<6GDDN+DO& /8:Y3IK9$F31AZ<$$@9[
PY^6B)-@)Z>2OA9\)S4_?3,=(01/8PI0!17!\:5?F2E&LL/L=\/R+=[G9RWYZJM#7
PDC68OD-G"'AT5<*.AWC1_MQ72"E2A>0;K\Z<!_?35PENE*"]%# !^_U,,DAZ1<.5
P[(;2EB1+Y])XC/A21LF^GN5E#N&M(L>/(;_/6$OD0?&5HSPLT*.QVC!K3H0;S9D9
PF4#+NS0;:;QGD-RC+/#!AFD&0LZP1K9/8?^>GT?1I]0:+UI#XC(J:72!9*[I_#-V
P,9H0.0FI65^X"[X#4<JQ'?2[JUW6<#8JJ%U0+(!T('"ZU(O?=G*23LM^8WTN<JX1
PXN"$?8IM1XD/O2WUK<<R*W<.C#!;Q! %FESC&HO=B;.F2?X9()!^@E0S_QL0( D2
PPE9TYQ1<QZ]&[,)1QKQ71<8?!7B=?T*+.,:(437/4S$IJX7=F=YP5Z+:--C9-DD&
P5\HBY'#OQZS 3%H\6>,-B$3'ZB$@OE/1]+K!<;XS2UMY9A 70A,=Z6$V]/TO*T5$
P_.(03A_CHINH2_1=2/&$X$I5AQV6R)YLZ./75-20^>@EBG@?I6Z4VBUJD^#?;0N@
PW\0U:,SXFP"EWO=F--5Z!:A$HR@8RJ-.FNWM]',JD(&JF7T#ZB584>]5R/ Y2-JD
PKRQH/GH,4\E//,;["P/!UO<EC\'NH CMY9[K)<((N<YM^^NFB4&IK#:BU/H3DA0H
P<KXD3N--E'\%.#U]9CF"MOP&BZ_#5_9Z&/@Q"5HXWY>^1N&6UF4$8RPK(/^9FOA>
POO6Y%CR;R[!,WK>?J/5_!>LM"I'-1YOCWL%,M+FY9#+*RV1:1E0WZ<N\D<I_):;H
PUMT'),9RUP31TQ!I/U?V0.@%7O"C=?NS5B'(H**>#72C=^/W97JFR6!F9]7Y(_Y]
P;N],++&8C;! W;"%-A<GSV,(<%ZRI8[^;X\2S4C[C,7F[[%@K)"/"J0R)K!0#@GM
P'W Y%5_&W6T*E(O#1@);G<.8ZTD]@'SKF;\$U9#2!<RV/S\A'XVT9U67:1D>BD_H
PTV;GE77OWV%)5K=JXHRUR N-.*=2=09HR4=?_7)9J[IZ*N=5>Z9VCNR-G=;FHFRW
PN<G?-[MWFGC 6_?\7Z#5$ID#G1O)J6C79R;B:OIFXS@\1F>R.98::#7WY%/@%.W"
P8-0Y WD;?7P0W"2VD0X0(;R+#5#%!%<W9XXATY0QUE& _L1MYF ITO,J"DY;[[BH
P&YASGW/6>D<CM@]:8Q_1,V$Q:OKX70;A[*KA'%.TO=0!#K##%7.\\+&HB\E#@="V
P=S+_=LLB0EMLSUMR%I#J#)ZL(LA^9^>XU?E,=S]07HTW5XIUQCQ%6#*(6^?_M"'V
P\?/D,SPH;=/GGZI>V;%D5R(A?(K@=_@K>-GK)<6R5KULB*!)M!O)YW-S5>=4=(^[
P=PXB5R G0P8TQ0K+V!CJJ:*I?@+X9+9M>0(NF.]F3@BO.WZQ.:%@PH"-;K\XJO>A
P/FCJYI-OEBHRZ)1X$ -2-XI3=NIW$AJ@9QCZ.%AC?ST*2*T#-"I&P5,+QE2DVV(3
P:*]LZ2+ITG0^C2"#[9(!6/!^PF7^W,EX[!B>+:X9^[3Z]7-H@,-('58-\>&X*_[W
PLQX W@G6-?L/M*J]9.()%@=R5P;K\3F'\[.AZ ^:T@ 9"3_GT2U_84"LR:H7"#\M
P<,FFHZ&<+DP9YK7Q0ITP4LCS4.Y'-4:*E. X-_H:QE>]1:JLM.?K103]6TZQX8I%
P P'B,:BD?/&>&7ML!HD,\:2!X)@2Q$R=_V8^<'1NXQ<"+[21@[A$HNT]KM/*ELIN
PANW9L-R06%L>XF_S"8A(T%3;G2(RA=I*$/M@NQ%=G5*?U)KK8UI0/Q5=@=2>131_
P:/'@#% $+G^Q0Y=91X.O/[6[@MX;7UK6EB( !\Q<909Y4050,R>=,7>3FPY/0,= 
P^T,W]F"6+A8O.'TQ@3[.TK^5:K9XH4))MOOPI@I_W*:OU#,X141N:P6K&A3BRL(X
PY;H$4<3K1,@P8K7JH7V',S&DT0(W8PLX$:ED=2[KC*V7,WGA@G#\=F1%ZO9TI9 U
PZ9G$PS<U6!)5&ZCOSI=V[>0<0I=WQY!$*5U;4J1+5VJJ@/S=DQ90_0M$5Q6:BWET
PP^C.$ CB1R"1Q#><B1:L>>"*NJGIW*CLJ0G99A/-?.:S-^0(46^ENFJ4Z3 -)0AN
P%N)CG#AR]7:J[32*0FR&4=L'N0JCJNOF$U\UM3Z_]6NP)I&/Q7SGVB[I$1/4V)'%
PM/TDOF^1S'\%-$PR^K*^S<G$FW,UIB6 _#+/J0V59"&%]?L'(%_YFDA#,\Y<?Y!Q
P!^ :UF&7C%L=FK"Y6GN<I78G<C;\\&''Y4 /[ELK$%Z!G_:+A"+M5;]!%_5876XM
PRP8Q-=[[559O%NC [<JE@MLO]M%72=E3=HN\WQ#W"?,!FR!3)+(+%U;5>Q[#"@Q@
P08(@ &-]G=.P4ZHDX3..D^QT<[Q#A; %<3HU,+@SGP=#(J-\'@2W1ASPM#/10/4C
P]>4QVYC76RY:(L6\=?YXL.G1(@XN7"ZI7(PX,&5+5NQ[02;0D2?G,I,G/G&VDQ:*
PY;01A+=K_>_S!__0=I]8 /2BP0B ZDXAA*8T#1'O,OM4J1B:-'.,I-Q\"_H\=K)R
PA_X:3EG6R<L.-!N"ZV6LKB+EQCU0R_\[-L +G*].J+)*0\8,Y B20C<RFQW1%0I.
P35*'MNNU"N3J%.CL7SD>0=0G36 N*8HMW@LO@,HHWVAM.9.?T_#@ V%K'^R'JG3,
PX1>9;$J6IMN.W14[MMSG$W-$T9E$)@/4I/)"MX $,TZ6 IMW523&A>RN#+^;5,(<
PF\D+*ESG\J@-.-(ODF#1#Y?-<HH8],^KO@;[Q*Z4;W)]>N(O6.($I<\PQWW2]ALI
PAKE7KA7=I,-/\6Y4E,8,$3O+',!0F.J(_IYPEK7A>LR4YXU,\=CJ=\P/S\]"/E$F
P>-9$1'?F9<7@GI+.C Y54/O!: 9UY>%C-!B)-<RC>T.\0/]62$5ZWB1N9Q\^BHXH
P*;L^!U:]Z/PW9KYTA#/,OIL-\-419'.:E+0*17/PV='E_:2S_N*0\ZG7C^,-L9/#
P#,X^_GRN;.3@Q$9Q61^:9$'@'I?4=P%K[O/1:8.[$@I8Q1;LP)%$XA\.D_C2\E<#
P%Z=XAR]@21+FP)M-)8>/1N'#J8"H2ALWQLYA.&FVD^B+7"P_OXW,46]Y27-]/@ 9
P6R(?@?SDI.#I=H+6*5<'S:=4%.AE>S\C,._"P;R_8/'/469&J>5.TF1D4MN&VRO^
P3C2]1SQP*)BGH(?=]QZ,I1/N!KH^;A5>:7%4P! /K5Q*B/36_#Y<$SNW2'= OJW\
PR.W##. $P3!BYCH%4BD!^ LO@EV'&\]J:WP;SX97,5WO-L.E^3AOL:UM<83-U[2/
P:BG)<]_LX'H:J4BZLMZ.4I2B\/G/%NX,"/A(M 7&F0_.5N4I+C!PQ.I$S)/9( 6$
P)GGHRE&D-;9FR'<CI:38]29SCEJ$R=7^W;B&#>JA\G274Q^=GIV2:D1R<I>RM !9
P(T800]W-MFO,D+LWL[?3$EXJMGN*"E11-)S+RA>(^L'58DZUW@AA@H7^&W&<@ULF
P,0TE<%E]^EI<Y]"C]PPE8H[H=L>,5F'W;:* 93O=@<3<=3 .+NA"+O]\!JM9-JN9
`endprotected128
endmodule
`endif


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : prbs_tx_top.v
// Author        : Qu Zhang
// Created On    : 2021-07-24 16:11
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PRBS_GEN_TOP_V2__
`define __M2_PRBS_GEN_TOP_V2__

`resetall
`timescale 1ns/1ps

module M2_prbs_gen_top_v2 #(
parameter SYNC_LEVEL = 2
)
(/*autoarg*/
   // Outputs
   prbs_out, prbs_vld,
   // Inputs
   clk, rst_n, prbs_en, prbs_mode, prbs_error_inject,

   scan_mode, icg_mode, mbist_mode
   );

input                                   clk;
input                                   rst_n;

input                                   prbs_en;
input   [3:0]                           prbs_mode;
output  [19:0]                          prbs_out;
output                                  prbs_vld;
input                                   prbs_error_inject;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;


`protected128
PG&J%W\ZGB.;G!HM:4*$6<F)-)]1 R?WX![]V7N$TQ+#JG,^^_+6ZER2./)06RTE 
P"F.TM3%/B2,C91Y>#2QOBX7$)<8I2>+,0"&'T@[Q-1:/;>_(Q]9F1OH4MIC6VPD9
P!A$15GZKG1MC+53:Y9*05T\'J/V%$WUI<Z4FMDO-3EK%"IM:GE7ZM*R:#2?K?"W'
P.97'R>BF0P V1[<! 96),[>RM_DZ^@8&=I>/F['_(9(J /L0K#.D!I;MX:0*L9"/
P-'[B*!-6]XX9JXA/N;=I<RGW''-_5V%CS".1CKEMESV6NF_=1!V(@J&BUER/*3/6
PG. R#'OVE$#:=XC\[&/I&^+*'VB" [_2!B(K7P?<(6"/B$UN5'1^Q(EIS'*8_PIQ
PR@ME#ME;=FM"]FX.G$)@5AL.DRY7\][1R>4R1H4XTTT7;14N$JG$(Q%:>]BLCTTZ
PJ-4AG/._)Y$]6KHOU074.$-(D&ZA*/G3-$D:',%-BZ;_=[45263VHC6U=TABF]*N
P-0W4F+>E;S+\Y_SM+ M9[;#;.D9A716JI.6M8:5!7:13+K#O*IU,_NQLL(6NH\"9
PK@LOAR/VGB9@"'=&A2#@+$T9<4Z6[:=&W1A=,M]>)]3>#$Q!NUK/3CLI+Y.AT)M+
PW<4L+'#SE])'P(UA1]')&5,Y42U/*S'&"V_#1=.V %QWD07J SRW:=A0)P2GNI]3
PK0L4XEP$36FPXNZ-=8MDL2>E8QXBX<HQ(@<XE\HM:E\?4C;]7(MI:.)NSU8]@(MX
P)&<KA"39J5+Z8/HUT8X_$#>(@S$J&9HA!I#E!MJ0DP]5H_ UY01U^(&!C#QM;8Q[
P[;=^/OG8=>:^>([M,E_!DLC#QW_4F:RV$"OC2*N8YKJOJXT&R/G^*9)H@QRLR^']
PKAES%3M&!#(MYR6 +>:N!6KHVEO&^2R_N9 ##^#.O2HPE%2B[ABQ6S1?N!BH,?QN
PW>CQI]#XCJZ>4D=PAS"0W(IE =NAX,#5?I6V(9A0*/'5_-&KL$!OXG2J)$E1^88J
PF[,5?\JRHB*$X"U$:=D:\8"_=C_C<8=:<KFCGFKH@/6QT4_[QJ 3"*B+/\ -3V0:
PA2@_?F?=&K]OJ HTY.L*BRM-T+J:,MI-CRI_^%!V,;UHTO >74LP,EDGNZ*YCJ:6
P3HE@^2\KF="G%Y5NPG-7U-JB*;\;ZRE#MU'_N^%QR4^WD1RL0? D7TA4P%]LE; 5
P8DSP/DO2U0Y*Y:2TW&1%*-B7,KLRJ@]L!EZ*U&:D)\N\JWTOAI[!66>I5'QBXI2Y
P#+23XD#TJT,*^HX%QQ8$H-\ST)2^_M-NZ"8&M1RH.I( _F":M&+E]0%C6ED!I8>V
PX6M[]=B 4N/^^_YP+$F>[3KB,!7=F+5DE)9H:ILAS:\6PJ0OLYL\ $&+D03H3E?#
P$BWT;&BR$S#4/"/3X<&H]^F>:U?7=19 Y;M!F>'U B\(+G'+KR/0!7"$F_85$RW$
P,'V<X^PW&$A-$5-?[1HLOR<UO03$HC*"R <B%NJU3I]IC=UHI8]=T?[4K!>=%?!;
PS6BA5.</,;F%2@6L=C.IO8'&%> XII"",TFNQH3 3@A68CB]J47:U0;"][SS;PER
P$I3[[CY,=DWUIU^R;M()6IY(Q*3S!G)J['ALVQ^UV[3)J3E[TJ0%ZQ32!>(:^/UF
P^3$NKILM.2Y&%-&V IZ*C.40 8A'R61)4#YP,)CUKJ+<HB+?YPJZC^,BM6.^\^F(
P(971,Y)W CYL+Y8E[UVU;LOZV&^C?AUHNQ/U3]N\*I(/9:__*DVK9,A'HQ?<F(0S
PYBG%>6(92'76=9!R7AH6S%P=Q>Z,N\A0B[:A-@GD"&N1_I^T:P>5,QU#CD!VHI'7
PKX#"?SX]GK+GE 3P(@NLJA,(9DAT'G2E=ZM=:3=N=<)[Y!YT@0 /P 4FVL4(,Z,Q
PD=(06+]MK9L"875Z%J(>%TU[-!4-F*,F0HD-BZNF.LLU#6.[AP Z4\ @_'$*99PN
P*X6LJGC(411]A_,RH".("\FO=@P1@_T :=8:J/@=CWCKVULHKI:1%N#+^P(NK9_A
P]&&GP='T? ^A<BEU D>F=*23+N/@N"MF1QT%OJBR7(#9M04E&"F*;TLHQ?&KK1@M
P"?]FVQ&CJ.1$A'&K+6$"[<8VSI4$1A_^I5;;W*C+>[J%L$@-PTO"< NYGQ5B=-8]
PJG> (+\7O\U^9\V5=_BX\(#]CY<WU!]\E[/NS:6)6![9&1BHS^NTFF4)@*ZK7G.P
PY8.HT?D0Q0J'I\>06:)W[$*UZB#?HP[>\0H8L\-V:61VRVYAXC@WKBTV86[I=B:E
PGPDORO5?($@[L;.K%<B$%[0Z@%N:I:78G?"@GK:O[<STV.84R><'0SP,]C8-V<*8
P3Z6'XXL8716 JI!@#F+=8.O]WRU^:5< WCE(0X4LXC1M!5H==?]*<6>0&Q(#-8XS
PCU\Q[2S@?_]7.4S@M#92EZ]U[.6P)E.9L+."+'O@5.NLKV;\N6/.,F3MNE(TL6T#
PV@DC1@F_!)"B3'1SP!WEJ$!&#<&65]R\DAW&LN;T ?Q_U9J'Z?QY'N)5&V?V^EP(
P5$-Q DWLJ7;>391DU(VD" L3X^+SDKO7VLTP<,E6*4_E3I4GEJ 06.PJFUPVOF1P
PQZ>@IF\T^IH<F<-Z8MT6O+[\(G61][#7VB)#ASO[6M/8_G<"RA<:2[QM<&@K11/Z
PU'46=S(SP!R=H1WLQ4"]QH*,A;:T.(A^T'Q?'79V+>@*MYW.^D$F]NB!/]@%N3](
P SE[R(47MT\7TL=I;^EAP,-N]T1/J5<[O\L]4D71)/T':Z#HV;*O61.+H*0PR!S6
PI$#%XNAH5.7YV)S<>A&"Y'U-YR;E<IX41K/+- LC%+E@:8Y[:4>E3(2O6"13\!U&
PQK/LZK0;BPQY;;M"@T!6"^<A>K$)[KBPVY!MH7=UPHDW@:C/<8&]I:-,AX]V#JIN
P&]#_&EA1S"X:Y/79@ +LX\K.X"N&O_E?"+3NC#+K_SAK9T?3J5B*X]*8_X]><5*C
PQ:3 -KM&SE!V(9PLG1M GRO=[@G/7B_W@;['K\]]\X#["=MOXE9[YC@RHM)@F2C2
P^0@0!,L;E=4*4;M=XR1FAZK()#:RW%SV7^UZ^9M06&*G\Q>J=$^>ZB#^QBHP*+E.
P!B#4EY& $6Y2  \=*>B/O"?MTX^A;,&F#<\W 3<:SV@#E*<WS%7,,_3;P8 @K!S@
P?4E=Q- <#7KS9B<3(#SL'FK&Y[EFBXM%O@<2?$<$31B]SF@R9 ]-0I4QG.$M"G>D
PIJY!/V?Q?;]<(/Q*)*B-(TSH5+#2LQACQ>_$?$)0>8_:2;%Q;U>\@M>^T"+!% 4'
PG)_!R*#8<HPTK1K\:^$L!Y;"5<68T;U8+C<9QOJPM4&HCU!P0A1@,L(!^F3\&$H9
PEI2[>N#$M&)F[6ZNU?A1BJ8P5!V-HU]0TH P]X#87U>SQ^=,'WE]SD(2^$.]_B<^
PC#XZ+-+?:*R6:Z1UHV]A=#Y?;?Y.![^'Q_CJ@M7%3'?4R=I-TAA'4V'6CO+IL!M)
P_7@;7J[NOY,B \@]&!>?ZZ'8KAF/=M:?;1,P=$+\LU=A&G)PD#/9X&4_NDF"6[_I
PK>YT@WUR>%JL?R8  F9_\$MZD]O2T:Z(K'M&MEY3W65L<XUJP.B861YB9P9OC7-0
PM$^ M95Z*NE9MEA,ZQKPW#EQ>O>BA2;$PEC^X<A\7$2ZT#R7[M@E]#/9:C.[:BPF
PL/WBMHD9RMQ"4R-4H7\,B5'%R2]LO T6A\[_.*YQ #DZ]TX(S4N,/0+"[AS+C9':
PM<*5';-)1!2$2/^SZU:"EDN15,%Q_/L]&/^,?6ZS<=\D] D1W/2SV \/F.#\\QN/
P[0S'(UL;L_%__28-@06[:SCP 2H[>V^'U"=:P<K&B"8.4'E5X>U>51?+PY3^?1_W
P8HL6YQY'_<YV<47BZKT!$=> 9.7 ")/" =:[R YIBP>>8F8T'4(RRX 8P>/VGZ9H
PWX+)/87^H4>N!2392*#V$E" V8TM]!3N(TY[5:'H^G1:[W9?M55ZDALF(7N7W3BN
P]XP [YV++B,'X4R4C'MZ%3.=3'S)DXBS7+8,G&8? *+]?%[CV%5%"-SWESOF,8VU
P]3VM#D!A!O/CUG2-" ?]WBM^@MB,:*[J.YJ-/V8AH3J\4755/.32D=31[0-E?JQ5
P[ <1M/_XV 0)W=\MNTSU07-X\O=9W+/I6I:<N]#O=DJQ=<?K$DB*:W>"F%OYP#I=
PKRI@UI<G00$!JXK6952Y;I'OH.LYK%0<96HW7Q\;JOUQ;SL'R ;"@UR\*-N]/3MT
PP^&F& *8BX??,3-7<]$EH;$!_7DW:U<=%']#2#YIVP^K"P&GN\8\[M&P_Z#B^#X7
P &P/,5TWF7"#QW(2][8.I;_CN'@ZNWUM:VW,Q\[IM)G<=AMM;PC5H-BW+W*M6'GG
P.N_K7I:WIM$?SB['QL<Z>]1G?_+D"VR/E;JS>>QVIX:9LNIS;V;JCMG'.O(?W';N
P%/:U@+&(#MI]T0:7)W.S\RE)AHP&U^-]3P696V01G6#\/F6@O<\@3>9#\QYW &NX
P81Z3KP"TV*@?IHM0.^Y.]VV(%DM\3[#3EWD-*Y^A1&HB!@R*!6VSL?1J9?12.#CB
PV!K&TLBN('W6'3A[=5V8(5V=K=85C:'K-*DC0'FT9EC)0I?VTX*I/39[O'0V@^2>
PKV8E'ZF@I4QQ.JG*6<IA/=!.1RK77#MG@P%OL=7ZF4QV73O$F,$BN-514L$JAXR'
PROZ+J0GJ9>>:YO6"A+M\FO4<HE62=W-V8>E=4Y*#BG<W^V JF?FX@M4$8]FMS P&
PQ',D0QG9VPI.N3+JU<&M9:-!4MM;Z)'Z?6E4B9P+16ID9 C3ZFFCDZ4WV!S-<Z3*
PJV($AB(_%46M'H:OUV:;*EC"XN(E%33-%7I47L^NJ!)I)0  Q*>U$B.=\2L<['L4
PM_^%7BZU[3UO*6'>)NZQP<; R%9#@NBDK/M@NK=-1&+FA ?_I6L]*\4KS@NC %E:
P49*#%AMYZP[T*I% KSJ4"_\$ BHNQOOF/#W[/-@1!N%UGJLD=3;?'/&<,-H>DQ_S
PC\MS2<"4C:#3.J7Z /,!T*P4GV&C6< #93;_DJNAMQF60?C8X[@TK_HSR/ES?18L
PD25)0@URZ4[)*EPS4,7U/B9Q3Z13>'.N7<CQ_P_@_+H_1\>[T;WRTP2*\<-ZD2]K
PE'@9@NH;XM@&UC?R\D%%QT_;/?=#=(LGN?HK%=\<R'TO?WD?>^K-1,#EY>K^Y=ZJ
PIGUE3D-L["?<2T)MQC"4=2E_B?%DO..L]U2FI"?LK&5)-:QLM'P7%>\X-6!H,7 Q
P)J]C_3*[[.*!QR1C [<Y\EP\'6]K?>_?AW;C?36U"7IG>RD0B;CX0Q=VH=6F#Q6>
P7C6O:O1B+:J9"A\@E88I0(@35(71N&%K-,CDN%82S&]=98(=UG#8BZ#L2W/9?RD,
PZ0O1[BN-9<TH'=6%"UKCOP1_6,"0%+;?0#5'"OX*[["1;0X'#L2Z=)[LBZ/M_?M!
P)PW26#?^4Y>)];N/'*X4IBW9T?>"D^=%P\#PI3T9HX_-3Z@:HM_V&,BSG@JN##=@
PGR,UK@78UP!U4>:D^EA?MK*2SGE,9@L?3^)GW.UP1KXIB_<V&,$_MZ+O<Q/>@XH)
PT;E@VH97">S&N]X<BVRO4-&+OWL@M:TV'*:QB%3JK3>YXHVGVVD^'^JI^5JP!3UP
P805L^5R5#3)"K]@BH?M-)-0$Z"5- S)K4/9+B-FN-?=4+*XV*H\@FV?3_OV$6HJ<
P#&7A$W(R.4AH7);M%SL257\D8!<BN50T'RE.0?A_5VEKQPNTE&(C]$TF0?BAK=Z0
P+MS>2VC$BY"=X'#?/YYRZ33G74J9'$XZ8WB@M[*'RQD1V8JDA3WNRKKG(RN>/ ?@
P%OZTRBVAFF:;C )SD/>UY .5V:I>#7[YC=+>X.TU+<JZ(N8SS5""Z,J\@=V%=?@U
PN"CNX/#T %=*N^G,@VW)8=%M[Z(8-2]FF[B.HZ-/J\H/-!,IENH>M'_; @7J;&W;
P75>J;XAU>*8@<>EY=$7V7:%\ '19=4615H^'(1T)1'5I:Y'[OYF"QZ*;,I5\X,@]
PHF]698RI7O?6 UVRB4F\RY8V7X(5IST1@.NJK6ANF<",9T@ZJ<M9\GSOP3N2M>TU
P\!8!I6)W8'I>(\E( @ZR!$0C$H14;,( J&^-9#MNAE7*]33!752L? 6BW(^7M1&5
P=GY< 7U0QS'5L_7;$0.)\XE:(GW>;T((J+[$2^<@^[-WRZCN/"5(G?]/UL'UI.,1
PPNMRI%!"-M:KU<8^[GN)KN^$RIQL.755.S%3OB'X/K-+Y]2!.4K]_W91 8E5P^8L
PG/' :/']JA9Q&*D!<!NK&I,<#&DK@(,?+?T@R8]**P:EALJY%RWZ[&I.;5/"UR,>
P(M\X5=I3H*!G@)EZ#Y.<0B076)EJ0)QV/$8$R$^-DUCU1Z4D_FU3,6$&-E*8S,@-
PWUA3N.XT$Z<F;,]*VV9;[4;?5[I[ VMHT8Y3M0M^=<F*D<8 %&H)SGACP>]=K0])
PZFS,59#AJ$\=2JN<LLT&";6^Y*9*W5RD4F*TGTNI?&#Y'']^5Y5-ETIWX)M,CD0I
P+,N:0#+)!4(5>=E9@S8<%/+><IS_6$+R:W4 02U=#O$:]2D)/@9&TUJR%@#GEE_)
P!X!X'J1^*'*)^@\&5NHT(+S:#^S).2B@IBFAM=XUY\$[*&PX"PQX</$UIO?TO/&R
PJ+<_+]J02GJ@F>RX]TZY" K28E =9^']^2K2X=I17DMA@NQ02R._[XNSQ]V68J(*
PK%*+AC![;6"*7R$3]=YC(P@X"+M"'@#*A#0K^3>9M19$#(EU7@5!6];4:>*_B2Z6
P7Q-8D\J7#^ ';Z:@L:_[R@*\'NIV_DF_#Q>$,9JM>]J10*Z>=^G.@EE]86@Y@<4&
P^_/!L$-_(P[Y@JO".%+%S!'Z47M+-=/#Y)>]::J+;/Z0.M-;," @=$#5YYT6\TRP
PG- 54-:H;KF7!^P2^;OG]80I61;'X O9-QXRJ>??[KZ6,4'O83NEP0#4=WH\CSE6
P^ULV0TBW8439QJYT<[U53R+;^&!#D#K$R5=?*JX6J#[F>20,\XL\3/. 9E2I5/1D
PQBWJA\ MXZI(R[-EJBHU7GPA9927[^HGT,?8NG? E4T:-+S5PN,^?9]H1W:]:^<L
P04R[T)%I8P'+<]PEXQ;+PS9XBW+*6[794_C2-QH-09ZUIX".QN?8>=4?.W3\U3]>
PL12LE"BI@KH]APGN\=-O;%X=O!;,;D/1AV4X.\_&D#78FLP5$Z^F\<12%& UOF6Z
P(VT1PTLB!_7P$CF]T"7#NHF9,?#>S*!PC[__C+N]DO.GH!(]@DIS)P\<LEORJC&M
PQ+QZR9F2E 2+^DG!+CM5HLSS>VT_VL!@VU5IU[D%I<[Y,F'+FAD%AF.#;U:#5%PE
PJLHZ&-BS&IN_3%72WY3*8SWR%_;M4L"P>OYZG=&N?%_I15@P;<&6O5"5@J%F]]^)
PCN8%57@91<WFQ\M"]-2.&O 6H$"4AN%#]^Q/W'=3(:D@C^<8M%D9CMCD-LB0"+Z!
PAGK_BYUUZ&!?A\,<YY.HA1P&_'6F+1K4#@&Z0%]^'%YM>RZ[O-VX;/W[=]C3,NNT
P*H1&8TA'7^!6M.^$3W7CSSK:P%<_PVX) ]<_V;*4.G\3<5O[R1VD4GQC.R$288;H
PW&&A"NOD&%+BWK""!E6Z\*Z0>G]9M[YT-AJ\)R9(^QJ(3C5YCCV"\6#X(1E-K%4-
PYM"BA>,_/.9%L$GOR!/2' PJ:[^HHVZ1J!#.)B/5P06^];B+!DUW=M'K80JGPZ6X
P(>!TM+&.-?@G.6H(R<4E/&(C3=>$]4^-_+(24-$R.0.R 24<PT-VQA5_5(1LB1\C
P_ S7X<(]BU3L6FY4"YZ]*WU"_>1LR@K=WL^<9($RJ)#+OFC3*3=#\9V!A&]%..)+
PNV7=F+DSP;<E8G#P7@J_H5%+V"QOI)GTK=6GX [8+NHJ34_\9G;Q-0$.]\@MH"8C
P"=G9.B(_AV4F^1DT%BK05T3!GRI3=M^FV5F..;&,P[@U=VD>#Q\TY2]DB*K:GVRS
P9JS/6 TQ^M14%^VNYJ%/,;\7\5W%Z#K.JA%LG$>58PS%"]]++LC30Q4&6M1\*F8'
PUK'33ND%?./J,GQC-5&J&W_.GIF=>[=0GAQW'37\Y!=V+LN!+T2T*$'WC#7%+A.T
PC-T*R\$9DI%QI5DX^&--@9J"M)\'5+)^TD-T*@)NRCN6Y!K:L K'K!PYS!&/%J=L
P4AI5^^B/5'EIPWMF?PUX)P=+\]1V)6,,(Y*&UOX^'QL UAE-@,.D#Z;W7J$JIMH)
P8TS#5)4.]5U#@NSXGZ,<)C5_B 5(QMXP>\OVRWV6ZFF4X3?\U;0*H,PN,Y>R"6;0
P ^&??M6/X ]'LBEG9R9(2D>P_UW!VCLZXV^SGX5C*^9H7E:G6C*!/G,@PL>WS[Z4
PF8>W/%O%)"OM!HFPO,8LVC/9;:O'I%/G,5_R6(:O?7N&!T5.[ PT:U6X^C[J""U(
P$W >B3C+ FW\QVQJ56M.@M,=CU3ZS]A#_.<);YZ_WLF7'/,08Q:DE]#6IXMC[/R^
PJ 1*D0;WBE3JN9]UE;;)"2<^_LTE0]BE;VK"K#E?;2MI,]>OS/)36?H\Y*3AXLD<
PSVR3HS)(?*MYX-3?Q6\_)*$[' ]Y,IP:R4[-AOI=^,X?%L\0^VMF)$#N2&E>VT65
P&(0)Q5'EW=^@*DN7?'9BLI7W7+LH;:;CR92RCN2;(I3\N/8Y3ZF@)4JO,TX>9*_?
P=:>4)$<X(4AWS*^9BHZC:"+IL]^QNN@3"JH/P=[R_QN\77HGS7V,19DE*?58V[D+
P4%[;HYX"_V7V;*#>*@,F-!<C$%$;7MVH5W[@*^%Q"[EX'; X\C_;T$PAY+EVZR!)
P+$G-N%#0@S<SR\AO&!M/$]6O_881;NJD,,**9W@KC)QWX2>Z56$!SQ,I,IZ3#9O"
PZ5%;R/U(?^]>E!$Y&Y\X.XFOC1:XCWZ2 A&65O>;>E2/0[;MK?D1=3YFD)!/@3IY
P\^.C8T5S46*'$+U:)+'M ^G61-[]7ON_?E/[YZ<]%?SZ6TD$<3FN .*RJ;L@C4"+
P:%F!U0Y>7!&<L=/Z%6"9>5<(C D9D]29V!/3:RX@5/3B79/X_@64"ZG3\/C2Y!.\
PLY5LLU,9M_XFEQE7%8HN&^4'8F>4Y"ENH%ZML0+5?!59Z9M3)EGM-=53U:X91Q&O
P)WPZ8/28(<M&3&HSU*@YU(T>U$WR&7XA;*-XRRN\P.,-^BQY4DT-V9%IGCN!\&=T
P8O8$V.Z.80#_N!^JT?WO(^LSV<5C\6:8JP$YKALMT^/QP0+I)%*>!_,Q\,:S1W*G
P&>6(#1^? (;X6^BDUR6*]2$RG*9;89)4,V\$H&JH(OG90?KB2J7?S>%%&*$D DU4
PO*-VQ6N&5G2"=)V@X=X[6(.=TWOAG;%5J"'C8HFR)5Y/A.M^HI:L/ZQ%7W/>TW.Q
P!=^OJ1K?$'"\4AL$WHN!.T*@@=#I"+'$44GF3J^\_=,3QW#9X\%5?W8N:R8?0"$R
P20<6*(6E%K$'=+Q_E O>J@KP;H7 WL/[C;C+U7FGP\"8W I.=)ZL?4-+N=KQ&5_U
PC)8H(:D;M,$Z.R__#-1Q7?))CC'79'OMY,>7+U='L40Y!4U$) +8_]U&Z@PBFW=Q
PC\)]Q,V\Z8X?)R<[&O"OYBI1;BH'>!,]Q1UPT,]%MJ<Z+@=/-9Q!)&#N%WM0[S;!
P@%@$,6_M416GUH;294Q$UY2IQ(U+MAA6@_@V@O"Q,L'O+HX!:&[T9 ."W7#A;[-&
PE,53K.VW\W*#N%;V/Z:N!+(R17>ED;_[D);0";$9CSN9TMA<(?"-,0ZX)25W6J22
P_E=K8$P;NQ#1Z2EIF-^X+L6C4:=E]IU4'UA2J6Y@-4I =SDWUL/I]T1.8E<4F5-M
PKM@XI=.229B7PURBK7GCA1#IPU$)1*2O<N5#6+D6JN_8F+5^/^4>_R).QJ@'8?.Z
PO;3E"J =UP%V>92JP+77EE@@7V0'W#+A>'GUE;HL=*9R"#X71L3@5X-K(?XH:):G
PS-ATO%!>RSB"I=>6C<<8"UF<Y21WMY#A.GP(M,\VE2[G6!%;Z.Z"%Q937UV]WK 4
P3!"'NTUJLO-A?4 ?/A69E^@\,"\Q"H&?P.<IJ]-QLU=6M4,GS72^4\ZN['  R0[N
PEE^AM$&[VJ_<U' /'@VK 4,GXSS&!XP\Z>+OY 5S./<J(UXT5##A)0N:/WC#?UB@
P%?40 IR# J=>P_=;^BRDTHV MJ/5].G[2;"+*ZL'12'CK\.)_W6:1ACNM]1;3\EO
P@!SWJ$^ VI+HZ\7T.8.XI;"+6>5A9U!\9[:H?/2--&M_#AZF#Q>J]P5U<9YGF[R<
PU5YC](^>F3Q1[UL!Y .UD^U-RA<",CJ"V% 8;B%A[IL FM]#PJZFB_'W<0&&8MM_
PL\#GW/[7W "UCCW9$/DX@2,[%>CDX R2J"@KQ/@4UR4@O+CW%838IK+$05S"CF7N
PRWDMB= L%9(R'=B;Y3UC<ZXQ?Z75M, T#'Z'4(L6P=D@"2!T,_9W3(13Z*-2_+M)
P3F3OC9?\?S W@4DOC%-_+ JBQ@HE\[>"SIT9$\D!=<R^E2!#NL1SX<1:@Y!*>)&>
P4M_HZ4?QA&=F M;[G40+^9,0"F[LTJV\7I<\<^\5HMEKS<0J 3PL]O<&_9:RX/\0
PRZPS1:1'\#B;B;M0]Z8]12.4[]*)Z(26I]! ZN$F\H=\<E?KPKFVD.P:]YBLC(T3
P9O7<2.NW1D^\/H8WZLP]X?ON%-D*)L ,13&L\?D:GE&Y6N:Y4\'KQ/]%A4$*+7XZ
P6L6_N/L#Y<^DTY'BCQ-IQ(7G;<E\W"W'']D4VCZ6S^YS!DC6/L,%^]@9-<*M&$2A
P<BY%\+1(77-@W9RQL\TE),*AWM,9RI@D99FK VCS'5-<SIE14EZ:::I:+=XH5''2
P]O%0#1)F:6_;F_F3.F  $95_%"8@V]@"C7J0%E E&&8V,)#:\1/KXM=P[X&_&7%P
P457;]>&MQHX>[CI+[1*7[ZGK'RZ?^=(0.I.NK[N?Z%CC& "Z U(-<?*D(62[SBEZ
PM^?$=3Q"8K6(Z0[3&O7TUJ3W^#=,)BR;X8N/[/^B,34?!(&:QHIU4_H)-GNX*[7M
PCTE)H(BP[A2R<83J]2X]%<:Y%U87-!=5B5^DY\I_DDA+ZF?SPF]+EF53A81@Z_./
PS=15U.K#Z4V'C7X7LZ"*>-]W[OP$76B"\I49@/;- 'T8;;_ )1GRQ9MOW(B6NLF4
P-;</_-F!0T]2PE>XI!$U!D6=^@Q:F AR M8&1<RF"#]7>9R6"Y >=WQ;I5+%*$O,
PG5&=7* C@1"DJ(D6F8L#X!^".*I85.#P D*>5AJ0&[HN$4$M'$JU:B_K)@8C[V[5
PVC&8_ZTG[*=D"1DX[N$&2*#=&HK4R=CT_!_\RV-VR %!&YM<N1DOGS$__IGGXR!;
P96B9S&ON_JM16O],KS:5#,:?%G;PY)SN;(B;].<D4;G,\A1VDX@JKSB3M6I.Y5AK
PN 86=PW)@0F+EV8E"2]=122C;H\O>!RQNV:)E59)-:TKA-,H:X2NW%1R5];M,*A+
P;0TXN(:LCB59EJOE?'OZ$:UX+ R5 R,<DO9RGT %J@4@D\$1_+22E#:8 R5?;Y@%
PE.,O&/3J9F9/?9;;4HN&FB_MK>UC.82])X!7K#3]+4BQ? 4OE(T)M%M$/^U_^"R_
PI5LSNA2GA[14RJ$)(0K[8IUW92?$X@_AI/&IX,"/1*S 2=_L96= YJ</8*2RK*;S
P$.X6+J$XVI*.8EA6CL6EY,FJ9J1,QS7;N*Y?\I_\L$=6R9)W%8U55OMR:,0=Z.5@
PM=YX"I9[B:?M6S9XYJU-[N]N,P!5$\')<X.U[]*SU,V,$O&6WK!2G+YWT@<-7&I.
PV9I0*J?0LF]'THXRN_D4D\Q])<"N$&@0B(8VW[MGQ<@F)U;0PRH(9NY#I%3HMJW=
PPMVG&Z]WBW^;,80H0/!ZN'BWI@QE>CKQ+P43YUH^"3W!W)_S82C!K&78S]4X/E+[
PRHQB$=0*?C@LT2\"&IW*BK2#I>+44<!8H%PHD)>FP* :?L-@Y&L EQ\S.VC;$$R4
P2\L"U$NN#X:^#2]$V47(Q,M1A]C^*Y5^?2@B'JJ;4N2*V"._!=<Q?JR+_R2]L%8Y
PD&'#Q4+DN^M+2<N%X>BF)';$T UB&>9$#ONW/NLRNC#Z:Q<7.?B&WD82$7(0_LEL
P[U4578KFTL,*)']1=/[&!S=&Q+M^K]7SP.XF*WCQ-3R [5L-6MTFX;TC>WA .RZK
P;IZAWTFF^^L7_8I\4F/"W:RH,IR45" _0<AQQL?,=[NT'CH\OOV0B .+(MM>Y[#Y
P LV4O>FP/![;L"VJ:0*NI5/NZ<->->L(M7?DFQ[)NBX"E_A+MZ]64%(AB-58-H="
P/2QA[<.1(-_9="^TKAC5(';BSQ<[INH<,')I%PW%5R<L!JHX9M1[6"Q:D+I"O[P]
P3!E'+_*5,R"_JMYP=8W68VK:R+PH>I,^X_S3*3:"1SLT@_&-WU__MYQ&A\@^Y@;L
PR3 *[T[A)^1O%=</*3VW2#,.IZ*1-X.9'$0P]##4L )ZYA62+A__BU%!BZ>P^/#2
PW4^,D[GM4_;C9MLB^5ZG)TR)JW$H/B\)W9K(XC.FO8O:,*O7%H><IO(ZPR@O[+77
PZQ)I[?T!B--=*Z)CF4/"Q5,0WU0\PF24V'Q\:,;5+>F'SOAP1VPTOM!VCJ#H1/4/
P[NKK\ HKAJ9&=I=)L8SE^K%AJ#6>QB(R^RXB.9DDO)2-Z(U$/3H.@J0PWO3NR6@;
`endprotected128
endmodule
`endif


`resetall
`timescale 1ns/1ps

module M2_pcs_66b80b  #(
parameter SYNC_LEVEL = 2
)
(
    input         pmd_tclk_80,
    // input        ptest_scan_mode,
    input         pmd_trstn_clk_66,
    input         pmd_trstn_clk_80,
    output [79:0] pmd_tx_data80,
    input         pmd_tx_data80_vld,    
    input         pmd_tclk_66,
    input  [65:0] pmd_tx_data66,
    input         pmd_tx_data66_vld,
    input         pcs_en,
    output reg    uf_err,
    output reg    of_err,

    // bitlock related
    input  [2:0]  rx_bit_lock,
    // bitlock pattern.
    input  [31:0] bit_lock0_pat0,         // from register
    input  [31:0] bit_lock0_pat1,         // from register
    input  [31:0] bit_lock0_pat2,         // from register
    input  [31:0] bit_lock1_pat0,         // from register
    input  [31:0] bit_lock1_pat1,         // from register
    input  [31:0] bit_lock1_pat2,         // from register
    input         bit_lock_en,
    input         bit_lock_bypass,
    input         bit_lock_soft_reset,
    input         bit_lock_ber_check_en,
    input  [3:0]  prbs_mode,
    input         prbs_en,
    input  [6:0]  prbs_err_bit,
    input         prbs_err_en,
    input  [15:0] bit_lock_done_hold_cycle,    // from register
    input         update_bit_lock_dly_cfg_tx,
    input         tracking_mode_enable_n,
    input         scan_mode,
    input         icg_mode,
    input         mbist_mode
  
);


`protected128
PO+ ;</\N9>L(%Z6A-E2%SB+3A%%E3:0:4]!Y%"G4Y';L19'O+=EM!X/VML*9;L_T
P:KK\<=) 8!WH&38#*AWRQ9=9B1+Z#)K+*3;SK_0];[(< 61\DD/[!$:K^'<+,875
PH3]NN3SD"=]U)]=X-MT[B08&[:.#KANIT4+&Q0O:]3FUN=ZUL! )_-!]2/$@6HO"
P 8GD=7W'6OKOCF.0J0.*87<>J4#8<7P.\CU0K-J*<QM]AV!/BUBYCZ]I5!*EGL;6
PF?EK$ZWR&&>4H2OWHMM@:0 PQ?MO6D551W5F\RV;;R O(2'Y:]JH/NS8:!),4OM7
PW<AV8'TDB2K-OVA5* R97M60!&5NRD,,#23Y3TWZ&Q5#]IXL4\D/@)\BP9^S>#-/
P,PP)+'7YJO]-9HK5O,);3YD[UB5S:GI/-KXP,]D]1$<@+TR=@E-TH[ 4*<[AU<FT
P21PT#H'1-E.K2.[L+9[E$*3C+56RIL>W8";X4(["+G# TPQ_GZC&__%5?BKGW7@9
PBYO&]0ED7$C/'0"*DQ<1R%,LB>H_:1'Q4]=.0L0W+A21&S_ 9I"TWS7<J'/%I*YF
PCZ:&T,Y=8MQI\6PIR7H(QLUPR-]U_/YX:8OMDM.E["7*6EB.S_DQ"4D]7VV[TQ)W
P#\*3<BVF74 @ZVOD;#F3VPFLOK3 TGYRO18]R:]ID;NV]_%]E'GE;;(;WLX*]YF9
P@<Z*?->:4!G'*7,5;+>?NU(=?COK.JU0^#]"BMS]4)=9:M/U+2<K"<3LN0?W;^\D
PHGE,6MPXW@O$J1JF7V2Z4/A@)XE!6S:(#)SOU=T_^9- 7S19BBA@/=<!OKU>ZLZ+
P+?9H0>FQ*$ARE[7B0/I+B$=C%A>0F[ %^8@0;R2#PD8B<Z:3%T&'VE0%W2C1LXZR
POUDURA:=5"-1QE;54+YD;",5$B,.I&O8,U5U3EWV6Z5)"HR)+P!4>3I+?=+)G4A>
P;5!%Q#"Y<5S;L8!.&8P-V1U<QO#=>Q: ;I7GNMC!QF)6?LPA^$-,Y7U5G9IREI%#
PSE5.!2+QP)TJDMF3XT)ZBS>5M<75#7$<01(,S[T2@OKO\[70.2T.:YU S8L8T/8"
P8##B!\+F9<Z0!%#XC#'XL'T4N 0YQ:&($90Y<,J* F"OJ<FJVHSGJMW<;5[L8N]_
P391!RKLK!@^GP1$]-[.0P2\^G>L:VX)'5;!J#ZCX0II'&MIRXU)%H(5_>0V6HBZ7
P,G+3\#D JCVE7(KF;'F!?X$9*V8RW+*)V:;.J,(C453MT6Y+2B>*]3:,HI<S='/E
PW7?W5W>F9'WY[#Z!@>1!TB<@ZJ-A;J/OPB3 $"9Q-A?G%X*T8B?RX"<L/E6](E=N
POA24^7&B-@["C$@*)']9\4\>@B=F=[.:U;6_-LDN[WG,4.E+.+7UB@TIT4<I;X2E
P'![Q6 2L1!3E4E=CISBSS+9]O<XFLFD,? Q-*/ACDCV"!]+PAX**([#$_IQ)@7"H
PC #C+B MU>+EMU\['Q!]K'M6P*JA_?=J]%PK*5@5V&'Y^(;GS,XJK%RW=_^7CF??
P;'<EQ)X_%TL<WB?@E8]%[)1T&1$_0=_2?WOUZ)[$R]P8R5<TD._W'Y=UK+Y2409)
PH$"JA&R/4\1BQ[5B415$Z]DTSR+TBU?;?.]KL0H3YS]H/D *D?G)-O@3!&42XE"!
PD>%5^.+C'6GQAA/@V[W-:\4#UO@R(D$MU";W:?"\&KNPD8$>0 ?;YCIX4 LL3O ,
PDP2@*FHH>4B+IZ;Y_#SGR[^,Q -YYHXB2%:6H%/O\@R@UZ:Q$4FVTZEHXYQ!<P?>
P4KB@< ANPA-29T\=(Z!;33J1P5OGU]BQ:T*9O.+Q_:!-GM\8Z(GB,4YH7B$7FIQU
P)1SH84G0X(!/)NV((X1>Z*X+?\QJ\%%ZHIBJ\@B+G5PFO9?G-X>@U'GOT[0!VKE-
PC&P63]-5(67IH462:U@-HPJH]+\,\&M%9RQZ^?S%D$UQYPI\;/T77>KY'QGA+P4O
P,\G_F^,A(#JF?6?P'DZ4G*&LW5@^T"XD!J"HR SM*!:KHA1MWX((!>1WAR),-539
P(+)LS5TH/HW;A161*ETI\^J0F(28%["EFSC*04QA2K9!Z97!GF&F+9N)2!2L"#7R
P56PMDU6?-5X^T4U\VGWJ[Y:;0\:KLQ1AEP^Q7--7+SNO7T6O2I$]9G>4A\S>3$),
P8VVW>&>&=V=K[P:Q6PSJ\[:=7XI-?Q!;)U_JTD]!Z&G(=.;=T2F0[^_SURL N"KL
P<I>-UGTU7WVT8#RX LLFRI86_@ F=@YYWWI)42XYVMSNG&(#8@AB0?N,)'E%>QXM
P=4[1B888NYM+PLL_ ;%5 I-D@8FG8RC@/&UNC\,MG[SMJ&4#96B&CEFLDDW^H:#)
PSY("G_MAU^?AEYJ<M R@LO:9X:G'TJ=&#K!*F_QXB)>S&W:PEA3Y)G Z3,$K0YW@
P-%QOZXLX=-YDV%J(#3X'U<J=XG0Q,J"=>8]<E0A'<,;BH[ELXV  Z-J%JG?$$9/?
PM(/S\>8%@O(6<BBX(ESY9MJ?J?9<^B?3-55#UWT\PHA"1[J$&3-^!EVKZ?0NG>:?
PV>P'JI:=SG%H95&/_[UX10]1L'5O.$;Q4M?APMM5G$OS&6_0DIH14-I3-;52-$7G
P\%H?)3^O>8*TN^971#6<,\FTQ=[P^A/BSSU1$"!QQ.!?&C>M5/F_E!/4/@CF8L4'
PGVT-Q.>[B-'9?(K#-TLPYXFEB_7/0;WR=SS_Z;/?Q9-].8L@!DA<A^3?$LXT 9O\
P,VG/5_[;KXK'@P?(^/H7VSIB+3$S"_0:H"I9KV/Z\D%:,7A) 7Q!QH8XY0_,*6(*
P*^/0U#]$";]<U7]6SG"Q#_R/=\VO?&FV9()$N)37?]6,"Q*=%)PJ4PWM60:\WQ-G
P^*9!5-IVYL*8 @?CP<-6N*^MO*_O%Q**:1N?@"+89FN7YIV6>POFJ$>Z5[IMHYC6
P!28@FK-W!&9]!MWK9:Y<YH'9!T^#;=\A56'*6]MV^\#^JW/X8.+<%QO #XBUOX/V
P645'#^QV=\ @SR^>>(^"3F@9CE3'60UFHZE= ^T82X#F>PB(%ECG(-ZI3- ,0AZ.
PVNT;=UT3)-4/DCK"C=D,14N%3^"+*DZ^1&7?CPGF6-[?-)<9;35YE-_/\PP,E0[%
PZ%''Z_E4MW+.GP0\AH;ED\M4&U'LYB3>^_?\ M+6YWWTJR"^Y!5+*=;M-*.@)&/0
PWKRLBON$#NJU'%$95T$L'T+X2R0GFQ!X(VO+?_"[S11;1V3]JK3]CP&*P@:$,>&]
P<"8L1\A927GIF7YN+)(J,KZXR3YF8\FV#CH*QG^!V+:!Q/#@FQ1CL5BRR^GP'<Q0
PTGJ=->+3H%BJB/$EXPWFX#F6>;?6O";+ G_C!9':8./A@?CE*XIW*<85@H,<'15,
PD3<B5^D3//Z5<[E5[MZXA\B@V K&.UN -E%+3SF8T:-\H&BGW-=W03GY]I]43P%P
PGW,+(TLO,=J_LSZW5KG/7N4O;X$E_(1^_\9'3Y$BVU<\KCR%%&T)TX"(SVW 841?
PL@;NG :BJ5D<XE:U;U-9)?OR?<O,Y9"6 AC27\]HNR<L'66F_JTG'"MX<5E%@@'^
P,&^H >,PF,V X9*';D]L0N4_*Q&6(A*+19\WK^T=!&UN))6=@PSSB$5Y- 0]3)"*
P9536Q$40SS^)!^0HU>6!G(ZO8BKO1C0TS$3&F>*L+J.VGU$Q*TY63)_]M-EHYHZ[
P*7U+8E.IM9"UO$.LMUCU\9&V'1<-IH#4B>3YTUWSMIE17XM=,L2&KX#N%9_U3P8 
P[;YKB9U %K5^8P<V^C^C+R2CE";<LPQ.Z(I'V)""NX:2IEAK2NQA(H6Q_;]5/G)F
P?DT-)$:EXR;>^]9L1Z''J0!X,B%>;_6DA?I5.PIJW!BJP(23BX6?^]-.Z_'?,+&P
PE?GEPY[19E#_^X/P6LAY;OPV]&;(ATMI\NH:745L6>8 >),\^]'(S*$\2+P+/L>@
P'\^A\;V2D=;9AG*]W$65)+DZTY[W7T,/$FR59=B.,:6 )/#';\P3C-A9A9]S+LQX
PD1J63A$_9[%;,D,A7!MFSW?EE\<[!>HL()8SM0=S*80KC(*^"\=J%E]4.&0+![WT
P/8_%RS2B5EXYI:VB>[0@E^ZW_AT\F4"P<LTN"!>$6,.)L[!]M4"$N+R_WQU)[82L
P@4;?.>IU,+??LY&$_%GWXDH_^6PB)L8OT%[6MG9!9[X""WZ31R@E81@5O;VS)4-.
P/FU8Z-E"6U='^12@#*L,7=S),W+)2;\,LB]"#9SB]>SD]]TGX1[GZ++L(S ;-$%>
P0K[A&QX:VM>P=; OQ4OS+I(IV9Q/%+,_J#T0=/7^=9:P;=Y%FBT^@XMZXZ]]O&/G
PYQ6_H<"V:AC\,9:LNOGW,:!M10-\0\(P-YYCG\/(J-[6MVAC!13.VJT.>&P1TSQ 
P%"70<>_;B<( C]IB-+@=+K V.L9TN()=-'@4FL)J@N;+IP_!;Y;WN;N0BO*B!7:[
P3HPN;SP]\;7YK79@U)?5)05N2=6ZDRA87;8^-\B>"]E&/X$Z4O ZPK1UMM2EW&CZ
P_LO:Y'\+/6A*29(.]@+DW-^^<9L6/%&+!9;U^]TVK*O=#5#EQ_=Z@)2XS@AM)..F
P@V775#  KOA+\? A>'X(=SB4$0/+9\O47R7ZW.GS$2QU&G)E2PM,JUG\32-&"<T?
P-Y_08P2$.I[UPZ(-!/\VI!J-'&9S4;*\']QXWPWS@?K1;)J@WJ7,.JB:VFW/EPOZ
P/XD;'= ?$>GS=T^>,RA BMK\AY$LB\1VH\J,(+\O/K>FTEA!WK H>3IWI4(Z..G!
P,2_Z9#_<7;G"V&Y%2Q6222@K.R?#"2<X19L9WGY8,-)1G,VV$7&F0:B]<F/,YN0B
PXGK3%H8<NU%G!$>YGEXS]N"SO& 97C7:%[S"99XS%)_5"T (UV#1HDH3::)RI$O<
PJ<(Q5^8WQA?4#T=8K/5ECH7R<L>]CEPTXE!OS0VH:Z2BD+;!5[G5!G+@]5]G+((X
P]QQ2(K:2_#QB^W8STB=TR5IMNYL/M4O)&H]*#/M?E=*[G&%=<IQ5\];SWL)],9/<
P]*[:G'&OJ\X%F!AL4I9D*LS5->'BH7O,/U3JJSW$ NWWL87!)Z9_^E HZ)?Z1O#\
PGG<$I5\G BI]_C+6Y5D2+HEF-C/><:%.MNY)\5*WK*#@[0262_Y@H+_+9>&,6CU!
PNC[Q8"M? /6.72-7F&2RU@Z%E,#E7\N0&<W-P-US9P6?5)B4T:*>1IR'^4EL1R6A
PL98L@P=G<+\>'F86TG;^]"5.!"F($Z>>)3C!H<-\:PL>HCC2 'W#(,L-< 8KY,)$
P8NCX N?(P38VQXLM#L(HG,..D#3@K!%R+Q7_A8'=5ZH+TR?T#ZSDJUUWU%N?,PRK
P OP_?AY0":M)F2O"$T!1(:EW.V)8C(UJLA4C"B(V9<_TTCGF^P<DC'Q<=OR+$94:
PKPJPMI&+]9\*NGA,L/Q$'.#B_>A"%J?AX=Q5OXO T0)J0V-,\FPOCAAY5U"CNK./
P4 '9_M3DGA(B-+<:1"O8MBR>5M>RU;-R.G"B+*;QE^UA-4$ZL$N%&E9]@%YXPS6X
PYK4_2!ODMSPRZVYJ@:C=K[S(^_IOH&QGBJ\O/]^L6UH1QS!.8[GH9L>9"RI/TZ!K
P,+GGPK8MAX(:I)H9;,12'_2B=LO/C>_)95Z1M_-=5%OT?1\-;3X3CNB HFUXJ^$O
P+UECE/SL*(*6J?<<*1P]#<$;JP>Y+]Z.DK"TM3B7T]#W" S5,?$6!#_K<QL?9C)5
P8=#XJH.DMSOFO3U3V%'[NN?088$G+!%ETP(-W60D+3\P(8O,A<QE4AQ3YJ+*);W"
P< LTHC6=!IK#WX B02'T^+X1]Z/'' ?ZQ1"(Y4F33",W.-2%M0$I_#<GO2Z91&71
P9$=EGAPN[SG57GD>RZ^4&;QOJH;((K4N,6UU!'MQ3N^O7XS,P][HL>29S3L:U1>5
P4-I$44A=4=JGA@X$G1N6 W2XQQJ;)?_W%P4%2:I_(R,X?JL$GY?8IO2N(#;H#5$!
PLOG &_U]*,>))TQ$0M*&] 8'12L)#*?&^Q(@@\FV8HZGWKVR"JD XY[<,60K!L:D
PZ?U/-LSF+]2@U6LU?Z92J%$ __)<ZQ+Z(N8&X6#45[;=1)?75<N*VU]BA(?0%.FL
P'*'$-!;63*1N4;T\92)R1(D]TJV5>-)?89\YA256,:Q!;-&%G5W>0KLW04<HM4K)
P+A;H\:Y;3CO@=B$F=.6,3PZ-QU,LKF;CZ-;$XJ9VXWH0L%C1))3M<?.B*%##Z_!Z
PMTU-J/_EHMF/ONNJYP(/FN<ZN##F0<B'P@WT%T,X[$[WPU*F[U\[$L>H6G.;^;I"
P1D\3JD;@,CI\&6 5CO4PZB5R;8&.6H'S1///M]ID3=5^[G/.SHF7V,\O1J";/"1K
P$PA=*AJP/'@&J:75U4ZOO1HSR"A6TX["%_*]K^F,S-%&90+#01#;MQVZTI9D/KY#
P'"ZV)?[*. 0,F"T,ZJ+%(D(&E(SG9:?MMN!Z,O]<VY\BQEN&&QB_'NZJDB-QMYL,
P@VWP0 >P]N?^O;1]5#281F$(R#J9B36GJ>MB#\N1AZ4=NR['A!R-(3#$[C2^) 1N
PK0H568!O".MS)**XL92QN4QOMM5*=E:[$R[,E!1P'8 ]*.G);5N!XAJ]G4'J&9#M
P^1%+#4_J!<N *4:SXL/^(:-L;EXN<*18P$G!U3]1+X6P<B\AF"3)/=JNY'4@)P(F
PXGAUX\+J.(\Q,;:. $,1YBE/CG8DZC_D%AY%A*G.6]CCUII''FF(=8,_:+G:3S]1
PT3XT#9J,E^TQ^ ?&*!E&XQ/ND6O0K;J?],CVWP4(8"!@,*^]* IS<-?YD[(,R..T
P",O)$N/HL)]JF@,;F!6*-S.:X*Y3[H+I!0B-*LV\Z^0Q_GZI5QE)6\1.U$9_7U<H
P!# 1)H&/AH'=>8<^IP\QU'6HFJ&1^&]\[HWD^F%NA#2'E-YKF',ZHY]O7WGA\QDB
PLW($$2NANYT=.=W!Y \PZWGO%DB!14UKZYK. E"UW911!Y@O7+I$8)%[-R^+>4NS
PGU((@R'>9_]*\E-2V+MHAL<P*P=5,W14S)PO30N>^W8RZ(,7FK%4I>Q5ZZ$3ZIXF
P=8\DWS9'C1GP%0  G)^H!=&Y'6?WQ7$UH)$X: .L@#MT$LBN,\2P\-L!)^R0"9,$
PDXF!\,#TN(/0\1-.H7S@DXZ;XB#Q*$;96"#U#G*!X=52&1U=QF5G4-[[EZ!$-%+9
P17H]U81RJONDL#$\9<):/[$OQ1[]-Y75,[I$;646S@.N:!4[5)=A8MZ,<X]'I<>S
PX23R-I]9Q?]%:\XO"](VQ TB9]D"LM\D_0^73M7VB[[J#S$I4XD4TQB$A?'FT$>^
PYRD_=7 P^*RGAK9!G^3<ZV#<E7VO':8%G<R(^E[]2"#H$;[?-GSS%>1?F:1(^IW_
PD^'!98QABTP4]V9O;%6?RY,I?PJMNE38 #:4I[R_REIZSMI3AWV4?EXGHJ@#+Q?I
PEXHQ\'C42/A2K<](3='@(%."A*,_WVM37(D74@T[5"B -/4VY) +LMO\:'CZB/P4
P]L&TJ]T4=>$A'?-CM#R[A.@%9"[#8X5)U#/'^=H$X9VK1 !J%0W1WM$V/I86,&:*
PN]-T@RA+&B5)L:%V6PB'J\$%,*4DZM$,9A7*K->%H-2,L\ LH?6[+=QO-5F,A(E#
PI?DOM(%W55+'?B(7'AS+2B;\L(5K.:.@%'ID8\XX#Z<GSB75B.AS>@=XC:GB3;,_
P)B&>DIB[0#6 :,8G'K[81XT,27'^""]EV$+ U.)^L9V^YR[ROKVXZ;IP]7,XH%B!
P+'57'HV0*W)5A;7M)MDXKAN#T]H'A2.VM,$R7-ZODU*';="MLN9S/.7^=EFEI14:
PZEI06FO01L-ZO5UN<969&*/58KC)\=3J_&T/ME7@SC%KZGA0EJBLU(Q9)BP*BMO/
P'85S'>K]N"IX[, W-644)BBR'=+6A* ,*X>AY+3_/-"8\QGF6Z<R-_F8#5-C?/5I
PYQ/$2BP#*OS7G<M^E %H579_M\CO*[C%LN^W)+946:G[W0<CKE^ &B<>JX>?BK:!
P&$=*2&U36W$[<NT 3;_GZ[]#;+[2TXO$- VE[1H1PP__(-96?%[O\<<*60[X^^AJ
PYY\O@F_]5IYAY_E24VI;.&G&S]&5'LP:9U&\$>)Q*#_C)SZ-Q;[L)#T>+RJ,IWE[
P1/G.YNF6;6J8=+>#)[,YM!P,X*I.@_LR1I\_I@?$=&8:\-LQDA5?@<^=%S!ANN<"
PYTXWYJ0T=]E/>8W?%MD>IO[T+%T]'SX4J[X$H*7"W8&P\\LSP[Y+'T;(,"XPY+?R
PTOO[ 1))SMJ\:C"5]^Y[P6-S\Q3^C*Y*%,2WT4?38C@WN-9ZKU]9-((J-F5=*8*(
PZB6:QUO6['ZIV),!=\8GK4MA;=3RI-E= >X2RN-S8/S6?&#PV(I7Y1UW_TZX'B%6
PQ:3:1UB)M9S!4U@RF,U ;5^^E##2#*^5 OTC<)MY1U1_L<-M$7A;6*3(]AJL;AZ@
PK^LV1'WUS$F2)JNW[(0&E5X@R;TN"/>BTQT7G1V*3'7PO5WW=DH]"D_0&2"E$PPF
P$Q4(LHB$'S$0^Z=%RH*,^C3EH+,<)BJI+DY3WXP<RV:_B\P-*:'$7SK8JZF=J)AA
P>K;!SY ALZ$",?(2,(GD4F,.1S-SRHA8(ODN>HB=?^2.#UT@(UJ%31*0ME'!/(-)
PP -?3=?$^?E^.O:B3?3S(&.0^5[\7K4;2[N+TCHLEU2Q%S_8NV]2IT>"P(P-9J+=
PTE[MPDH*KY<F2SVD<2H18B?FRMU*)*BNJ(.N%O[5H=RDA-0(H:VY4EWM7$NQQ^6<
P+'(Y'IW%_2/YU[;D64P^LH'?R3'#8B"Q6G)[^]]@_G3%\2?7E-C)_>?SI]>%@GP4
PA3)IR6H8DO(Y)RF#)")E0K5X0'FSLXM*?(_3]EX';YKZ<#>U1[21Z$"2$%]! ):V
P>3BE3HA<2P>*0F40;^)[(X>:7[S35&5$/OC5;"9Z9+(\&#UC#@]&1--72X^#"D'T
PY_"'"Q=J6*EVVS.FMY:Q);;2YH;=/<Q7EBD^F$@2TC?'FXXYN@Q2HAU1>5W"R 46
PC3E:B&[O^^-9U&@'.6%#683J!#Q:ZF>IN6E/SIFL+ 7^[>$0.KG3-3$-M:F$:$23
P*7@*EICN&1,!Z%!O%/E*Q!%#WG-;4(@3&>F"L3G_HP*??F";_*9RWZ2Q27POYLEI
PMS&F9:.(P-D>,YHZB-M;\!3JS^]@H:W!,X$IKV=L5,]W6M+-.&K^=0.Z@>G*<-S0
PJZIE(.RWH1<JA7!$IIP3P/B,]/Q>DY5P];Y%$>(F]MW"OL$@2LK?9 ^*#UH.)\["
PFSY:^X59)1#R2:]0RO]VXJ9A%=(2&\D5Q15YF/@94,[X6G8;XTF=H?]$[&X(;_>9
P!;#RLURS17Z5H]W;=ID FBCH\T=#$.K(VJ.K6J&-Q_]#L:Y+F[GS #^=D^S$<R#>
PB>;=, ME+E>9D6B;'N12G<?D>11@OGA&<RG'\8V2"61:B;H5QKBNV[J'5Y[P;R-$
P8M67>H-5WBGQYG3\G(BE?- :GI;@B_X"A:8Y99P]3=_ZE27Z>.1]2@_Y2X']X7;<
P,  =]YK$'4RS<NNY6%F4DSGYC;:*,'_Y80@]GPL0#H+4<.87JGRMA19AW7:+4^Y!
PIP:$(^$/QNZH#S48(,>7T6?!/R.3$:^UEQ5I/$C2@YK(J\4R;JOFT8Q4([>NKOTW
P*(Z$-<F*Z!&#+DQ<WS QMI[-\+4^P0WUW=]ZO" .RHEB(H?ZVM41^9<Z36-XKC8O
P:DO%M9\>SY2EQHRNU!,5FC (>TAL#]V/U2L_)BT!F+/7'G<V:R?9<2NQ1K.E$D4 
P9MK-0T_@&XRB,,XXK(NE-78X%@>4SQ;J5DG.S$.//$%VLZ?W2TIBN6++IE90+O-P
PR4Q)1N<5)&&LWCJ>=+?S_EG:*&M)^2?SB.%BV3[QRX+:?2/9+4,!4@(J4KN)_Z]>
P;71H(Y<OO#]I%]SM+.(? )G:*2I>E0(+R\9%"["3E[!]&GZ'R#CQ0.=#O<P9-VE.
P&]1@'=SZ9"# T'5BDH][9-U=7!D5V/G:RX4QA9%V=A]BUO1+KV.18-[A0ME&:M2Y
P?;;68X&:3 >$_>!9T798,W!(OCR+L<JB5L];5I"G6>H#1R"5.($/DQ4KE.W]:!1@
P( OG7'^\N6]D7<7-WK71/8@-S36&BDO<HQ,1* '%W0*PE-*@Y_W 1G#BTPI6=O64
P<M*MVU4"OL;@5@L%L<MOX0YEGS!A?A#.8;QV+ ]+UVAWXI%]K>4NBJ;_ZQ< VP$2
P^G=?B]C;"/BBLQ2>Z5PBB23..4L#_]#S39*6V>]LR=<A-/ D@NVYF=RLWNTE/ "F
P'H)?LT]KS.AYTU7?_0DUO#ZGB,W5"; >P9/52V["$,_(O03O#JE#/V*?XN?>A#;C
PF"Q80=#MXT=LFQ"$1!FF P5N'\*-O8/ '>H=GS57Z#BH<EYC(L86":_Y)R%I:  A
PR=S"E''!1C'S@3 \O?TS=0''%>Z]],SH//+]Y(Q)Q9-JZ%%H*]FBE]XRM&D=L!(+
P$1I&-G\?URWI^5@ZV/Q1?HCVZT *#MA=,78HTI2D<1\!*S('E#BHL^/YA/_G0AB=
P1BJSH.YW'58+U".0D\&D*[FSV\?I=&!D^5%KM_TC/,4UPUG+_()L\^2--Z$ZG]0#
P7T&*JF<G7[4[FT=&3XL>[1MT_.W%4]JYD'80R45K_N3T>KL>X.!$8JN5*XR09A"9
P%:P)FTP@'O#(A<UGH6C8YES*0EBTQCQGXWQ$^#X\L)UB^H9ET(L0<;RRD-XNZVN 
PEW?9+@GU?X/T_K/GC9M1,MH!30W @)[1HZVXOY2YV)E"8^$%Q?8P4FS%J6SIMIG]
PJCB8)<3*N5]!'(;>8(4>;&_GU6Q*T$4U$!*D;FZX0=><GI"87JVOL0K(*UO5@_U)
PB79 -#01F&;ZGC4O3PZ1DPB>)U'69]D>;&-C*,F!W%@=R2AH1?_)2=@ZF^6T*)11
P8I7_X!_B3[)5_=M44CJT=3K_)4]T6' T>V)4*MYN,E"4 T_&?Y"LJYVM##]^4*?D
P1@4IM$C6;E6 Z-NV+A+6-MN6,1,HIHLSH!Z'DW-V),M;JBT0?B0* 69!= /+Q0XT
PD.](/C<P)Y,-;D L-;+.TU>@!^XN:]\6FN[M8'*1+>V2O#F7S81QMKT=$845HQ^A
P%81>$:M"5=<G4X]DBE!>ZB@$J&U-4%1P+KLWD3\0D/?8BQB5$[3 *+2GX(.&$;)(
P9^F.-Q>^S%N'&<%!YN@<-:.G>XB<KO!"0Y3F-/LZXAJM?O52?/]RU*"3VY6:.WZX
P2W79_20JKB3_'81_;*"L3.<RG>Y,U ZTR]+$PSFV< SD5NY>YL>X*9H_\ANDD5<6
PW21G#12''H"%7663H3]"SN"Y_!)*L=%<7WED*DBJ4E3^6JB//Z]3F+FW%\-W2FLS
P?1+OTO0CU=N>L_FR-F:?;+G'(SRL(:THGOO*I09)HC/D@UIL#%[PTJK!XY^N8Y4 
P9?1(:Z/>"%$V'*)P8V.C+<'(&O:%7K2E])4$[H9XCULM+7D^GFF"$A/G,D+9:(^D
PZ]PJT%J75,--^% 6LGH[F%AH\T"42+K:*5\B615YI<DVBBBIAZK/[WMJG,-$:'P 
PX61\FZ/Y@A7ZRJJTW&ZO/%WE?>?@6G,*@3( 5RB]C\3H=W9!Z8D*^YL[\1!N6?2)
PHW1W%7#QNKG?[):P-=NC0'6@""P+R0/ XATZ(WO('D36ET=GK$^J[)F-//@IVD#@
P:B6E&30/2V[<:>PB^;%P+GQEXAH"]W]Q=5S?T3O\[0X.7"W8I$_7I-2Q=50LH.QW
P'?<;A!Y'"NLV,TM1O$F<]%Y0IM@/=V8(Y5UTBIR-E82.P8>"X (TA'": DG[N_ 4
PD3S>]$\'O;*QK)80K \02%UOG:?(XM#ND30#C0 )7AM0M1BBP<RW0VF'?C.-&+6G
P1!_M4%9#6".!!'B[%Z1UFA0-B^XDFQ<5@$_L8<+=OENN$6,6D[A0[$*J"ABC[*UA
P$?DKF]654.R]_H](D/8=;:S8"DI#JAV80;0>*+]"ET1G_HW#8TCJ,H:*\?EE47>6
PMQFS'N0L#^I-3ILB3Q%\WA.UZR?=WV^WC$1FHE<;389B[+ANNL>GU@@8@S)M,\2;
PEI2=;?ZA L4^^FH62;/R<4TH(X)!?=@[*UU'7+,>?NU1 &%TZB9]=<.2JT2&<AF5
PTLV^40_>-/Y^.9<M"_-(KJ$16'19:3[B-S"A6_JWK!,V%F;D@*D2"&BQT;0K]5_2
P0Y+:#PE[06(QC_$K,-Z?':I,4YW1FQK:1,5B"-C-PH!=2E]1CC^A!U^5I;,4VM([
P]=&4M6?-LW$AJ?W;1K@R^/#.9%-&E=\Z'44: QS]H)IBL$3ICFGR-)$&+B$;.%5?
PR2;^6I-(/FSM*$9#JB7MP;#2J@F[$P2.1OBL6HH5Y;]>6V:U%.FFCMQ?>$:T?Z=^
PTX(B:0DOQRU;F2F]+'3#9(?JM/\*ZKH?<!0.8L*UK"(LI?6%-V]7&0\.<5RJJ*^O
P;=!R=P5.2B"5- O8O*Y7^/E?FLE"[SHSW/)3LVXU-S7I2?N1:2[;^1?/#IN?<X7;
PB):\.U+#8>II_B.?_O(5])U1&QJ-G&*!'+ISR&I9F-7:7?D'\"@Y1LF2Z;'#'=&)
P\1KY/ADN0^"]X>Y$E"!#6#7==,E&UBFT)\0-P-8].M]S8!0W'O<K<]XY%9RQNL'I
P=964CZFV:$>?79 T7?5ZY'N^)L]>^<GKR"+I)X;KB>> 4)^?B7/]"]/>$A5[_FA:
PO<$VAA/M9/BIX83'S14F%]L1TSP0JP[^R(6/4"(.<.G0]1?+Q- S5:>X(;2GKM]Y
P8LK1]X*1GJ3MV(-9<.*",GRHQR*.&'@&BN'[N[\+C<=@0AGMF:,B$&Y*=U*V$UG%
P8U O67+/3:MZUP0!,MSNB(9_SE>;. J!$KO:C*4$CDN/"MS+V+U&NQ4_=;Z15I#7
POE9C]PXP-C1%^_LARY2L7)>$+KZ\-D>)JI?$%PVYM4'@97)4YN=!1"IN@F@C[$4 
PC!CX7$!F2P_5/PI?U4Z.BO6NGXS]W]O(RV#F<D2;+U6-](;3,GXMB8T-R$(J\9R8
P=O?\) Q 8=RG1MW2X_[%;_9.:#TU<_ZW0B)VC-S>U] \3TDGV+S)>0NIUATSSI+T
P30.9"?"T@F@)#J?3QXM"%B.!2ZG^_(D?:#W(AWHAZT*#Z/[+M15OE,7V)PG?F]#.
P;%UED"P3-O<^Q#>7*)0<E5E"3',TV@TD?72?=.P*UYPL9S0I\[M\^G:%N> XE+2X
PT-#@JM=/U":8$KY:9-LT4FTU3?2%9J\^Q](PZ:G *)AJH4SSLX$#SJ>H2A7(\]?7
PUT"%;U\[,>C5R#QE4G@D>:YWH7J' [(,BOBU$$@FWG$**ZN-=)N7$//K4V>G!C:7
P.-VE>$1')5.4TIT2*LF/*R+"V*?"U?RL0F<'A@U;.Z+Q^S&'1+J:ET%"9&GB#Y&V
P2$60?YSQ. +A&\8E!2%!U="XJB3@US]);P)4808BI!8^@YI=:^IQ3!+=#"L5K6&A
P<[\D.:TE_S'"S5.N,)FWN?W!3 T]ZVR0ZGCN&?C2]Z6#6Y^KLVI9#< O*M&,+D>V
P38/B.S_35WC?'Z3Y"2/I?<0>,(SB.]V.XYWVE*$Y:?>,\,(B.#_#PUL$4[49*J<_
P&M]DVILIP?B)2IO[0O2D85-L=YP@(F+$=6-JQC^](V>0Z\:,2TUW@-3+13-HK$Z;
P-4E;43 :#KMU:K8!I0E/#YW4VZG>T4;)_\8R$O/:P4J@16$3\BP7\(?PO7&')#4A
P\6\HF#A@W\=3#;[73-@;%>E*T0^'>(UPV->,1[E@>0FEA<D\6<'QVS6HW^3^Y%_;
PBWC>28D?6V_LU*KLR7AUSTO.JC&>\XLQ^RR9:&C7C"D\/L-;R!"^FG[IJ;6:-J^4
PT.EX:0C2S5=3+_"G6+P XH4,2AQ;-BTRHQT2PK\[\M_V+2H+PA[:1[';$2*5(L5P
PR>V++; ;L$25>(JPO67_98,LN]_$1S*G]V(TOZPJ-D,83+\TY'8Q)<]MC]^111HU
P!'_+!B)37]M6_>#]("8>S)3%H2@.G:H (Y-+":)PKK@E<]T225G$1,-EJ&(<27M3
P"Q&^5P6#16/6\]2>X%G5@,>H7(*]9W2G(^IP=9>86JH*W4LQU4MK;.6))YP=F%YD
P]N[>G[LUKWN&]7I-?I+TV'U5T22A0JO#FLCRT]*[5AZ;\VU192CF8PV5Q;"@R%CT
P@\\K'Y_^,]['MRGY"I91 K74%>#4/^GQ1FA[\=T)9=3_!=VSPG[K?"LEW\?7NG4>
P:!BT0C'[=3%H<>)'H\V'+MT[S1Q"L(_:E'8W[$)%,%D#/54-4<'E;SZRU'&:YVGO
P""U,T'2[)O"W*\.1_* NY?W2TG\7>+ U;<:AK2# [,24Z7=7CA*@Z@\T/N>@F(I^
P+ DK0=+*]2F$DW9M.PNYG].DTVA#+XK@;]KWG6>"-CG32#-?FX#LP[51D..X?P-L
P[B@)>ZB<P6\)&>O>Q\]=VY#=,P>_2N07X/$Y3!L2+Y6Y&32V"^JEP9T3PH)![FK9
PM+98>2#7Q7 2TX:G3D*=.1=I6_<MK]?=V)6!_:>H:7IM A>U*:Q]F"SG3F8I=33B
P#7YG+F51'NKG&WX\&C[P)@G_"MHVB!P[_&-C53+LL&M/U59:#U'8;> Z*5ZGUNFP
P6X*_1U4/H&54_^VKOI*70/>D& #ANG1M2)55<:C,>C%#$%D??#OMF1DG:5$0U :O
PH12:&^J$;"4G9: \B!$[\R%.O&LF1S>B+]6*A2<%LD80.PW%)1K+7*BEQ+-@G@'G
P2UC%79G'@3)*U[IO3NCIZ =+WPA @17K0O]NE0QC\>',='(S<ZHIOYQRXM)L+RA4
P$[,*TM7XHL^]@&A(GCH[M"W] [6#.Y7,6 31]7A261\/8*> :*(&K?A#PMG9S5G(
P'$IITH@,CL-@TYBP)=P$*%]-ZHE'4$3T^X\><7#-;:PQX S4R[I<]P@JW!:/RS[X
P'QJW>V'TD&W/G-W*SVK<Q-ZG1%JC#)Y!-!0]@^XY>U2T?G[O]<"AMHGJ"0_=YBJ4
PABZ&;^EW/\!J5]5:UNUW<"<2G%X*") 2M#W&B4?OIHRD(PN/94%NRXO'X8]G)*5:
PL3(?;@MA;S,I*3D9$!!A1]]ZIA)97DMEML%E("#IF8&I,24@X-=K?K_J?T0I'/=3
P=/B:Z\- (&V28V)RAAA].U$N_+.4#L12^,2]:Y&N_!ER5WB?S?&ZFB/(/1NYV&'.
P?U3;^)HW+GJFT;_1Z=0R5<?8!2!UJH9R1KGLK'3%UQI4'?JBTI7(JQ3L3KD-:O)8
P,7G.'?K3+AM.&O#="+\VGG=+ZQF(58M7YWAIQA4HRH":3WR7^O2YTCJ4P"K1:F,:
P_RTB>T?Q;U^,G\XWE9#,+?4DA6W'F:E9]\ C6HZF2FWMD588IQ7TNCG!Y%L-/:_7
P,>& )X"&L\5SR.F.DPY^S84)LJBVX()17GA0IC.0Z0-7R5EY=%@=.E2A>#E =5QU
P;_GV./Y587Y#!&G#K]ZJ[?'5PP6.=T:@Z(I<-ZD<X6Y?R\;JB:KGIS X*Z:#6&U+
PR.UWB!2?^A5V^5;&>[^P+C#VH'ZF'_X$#"V0.LQ%+V@=0!L2V5[!K2&4*Z.PA=25
PUP_2@*.:QSP),N?+-9;_\"08\<C:[%1B3V.<EN_P$Y2#Q\W%VJ=>!RP+QT^A?A_T
P+#_9EM"-?-K5X=GS!I-GK7!:"%?2A@!F8%EFN;H!S71>!P_[<C0$ 4D/>)@6&B8T
P*RN6.4!.3NMVD>[9T27#)E[L6VC4[Y_ U>IX&J "#<.]I6:TD838"PL3S*%RNL3 
PK$M&:S#DW9329A0#Q)W.,[29PES7>2YT[X[&BQ%M.]:Q,@$9/Y-KW#O^$@5>XI!G
PA?H>R(0Q*X1+GG<T4,N)%!#B__S1GUPC3W4C@!2=LLGH+G;BE>]>41V/1G9EZI>*
P. 2G2/.Q@&P$\LMK(1<BG<O+_VEC31EVS!/RD/CXYI<]]@$7(^:#F2/0#55;9],E
PE$Y@ $*G.?]5&FRF<)9#+^1&_M6=Q&$44[J4=+'A E+EWK17Y(%E[PH@)MCMGFBA
PS(18RQI&(.SN\S @5-[X\ MK;%M>8,^!UKC+:2U[%IB&)%F.#"*S4_8V#X2@3G'Y
PO7^@H3.CMN1Z0<V>8/$<2/2 ]8&.])MY%-6$C<'%LL(HH.WU%3\+(O>.1A0.4^I/
PXJSO9.]U&(JO\G+:^_+MD!0;W :N0>UBB_XA">5)C&AJW@%?]!T52BFPUQ"T [H8
P7X_@*7"#XN5;B(QS]N\\D,Y4>HJCR-6SO"&_?5^R3U$%Z/2?T-089B]Q^[B!1$3;
P]FM FNRG"7F,9)4T(10\;!T_<==]-VEJ>E,(M"A?">_EETVI:?:VJ[?GGF366X6&
P#0V@ M>'B0FI)$7#V/%3,75&F)L&J)3M6,UH#G(Z^]M5$?^&93\)3B\"]0"7CQ?A
PO[,C1K3,HDUF)\I:X=:!:/PLW0,D!.B0?PR8HVUV"MD5R95_V"@59/8#[2/Y$$AF
P8C@L_W*TLK@H9,QB\A=/%%TR'Z/O=U]9[TS5A+%[.7UI"8%=2&8!I!T=&7Z*;MSQ
PVD:CZNQ4UO1XOUO-^>MP3L[6TRG*G-*D*NZ'(9)&*.H<^#:836SV$?[TBP=T3 8O
P^MT[A2W+#Q!4\Q=ZHZE)^Y<'2MDHL4)OHVETO-'SF7UUP]5(;A7]BB0:K>7&H.[V
PAW4\:] 2-!T6WB5]:BJ W*2,#WG6%QAF&+'02)WFY*L6E63V%')-6S)$-)W5WN+_
P#(C#'\L2^%_9#VM@J L*M@2&NPEO9/ _6F1./;7O)I084X=(1%G[G';^"_?EEW@A
P/Y6LOW-:E:-,&I_3S3]-(\^UM8N\\X,Z,3]3GCDB*FI:'%\[/PEP*[^KVZ^(C3G9
P:R)92O!SMDWU/!HF""TYZE'V+=:'/:HOHFP4KBRBM4N"R*FP*67*>ISVN^()WR%[
P2 )][TPR& 5*1_DV#+PG5W(O"*\!#DM4*BF@S5EEM%?@@ZP^4C4'I-5&!L0/6$\T
PD[ V;H.J\N4HK!\:%DTW/BN8/%>&FFFXS&@G2=)KS*[JJ'Q2DCEO/1PR;X5,IJD5
PF"@.A>G$KW"V!0-"-!$GEMI>?,)/\2 Y6Z6<A@2*$2-&;=T6.,NF>,*_MB[5=+,(
P*3-=:68G.]E7M?\P_QL)<?9\N+B_RC,BZLYV!VU0HFL%W^WS)A V@1#=Q(EZAI>9
P);S\%E%TLPWF@X:*R9*EC%H^\!-Z8]YY:%+&&"9S#%BAR/K%I%'5 YADR][8-^F.
P:RB:Z@J,8UQ$>#4^:$!5EZ"EIVS6L(D=/'&4GM?G$W -[17^,$& J4+;%>$$$=D6
PH6Q#(H"[6*4,5WTN'#>GCVH\"IP=?35V6W'_!1#5P:YB#]\1K1%'OV%9M"S.(#Q)
PI+&@7,EXMC\0S\.]&XUL0:?."XR^H0!GV]D[X%>+!ELS2*](FA%L*U"=6?Y@C9G$
P^[ -*[^4PZC.&-!^9ZOQNTM4^I+ [N9/2-'1FNK.A#C/#6O=M B!YP5*D6;1]EM?
P3('9#Q@W9HN0^R_D:[J/*.9@T66WH$IR1],\[A%BP'>8<HRT4+M O*?4(%7<#[1"
P(4Q0_.X(7[,JG<C_/KK/8ZU,3*%-?2 *-0Q20]-!ANH-N]?1[!9D5"J@\"" $P/%
P\.Y;8CG&>V34B='L];2+5BTK!(GM4^MNNL9\6/?[;WJYLC;$B:+8.\I*:O;I*2-U
PQB\+]>4[[1; KLZV>0:O@N<4D>0>17PD%=!\E2?#\*ES*D2Z?G+K.(Z?&%">'ENO
P1VRJOF42;]200?S\3/_:*PZQ67#B7%6K984FI]0G"M'F-O6:2*.9L!D4/YP>HYB-
P\(() N)DL .RQH#;RA=MJ#+5 ?&IFP.\5X[VJ#4GU,<HMJE"6&F^MTL0L*!/N0I5
PB$7^<@>D*ZLO$@/JV5\[Z'>GH]9K"C2^?D-. ^T&@O?*]#8$D%"?8L'9#)K1X 2O
P$;$('8RC)8OR3ZS5'/ .C\DZQO4W:4\E2\/IV1]8T..E1QSADH($TJQ)5OP.#I,T
PBQZBWWBTQZ&K/]AG&=$86<)\M\E6$F8WE"6L6[]OE#G])N#?7,4/ !G!"X5.3/H4
PC!V3%GKB;R8\T'6Y-"UN]N!6MQ5\I'M9^Y,3"#4Q5V]3>+YS@L&TLJG'^[,L,&\A
P,");46RU-^N%Y#=>?\1DG"RE#(Z9"8^N;*?DF5+5LVHVX5,@#N/7B=]<8SC/L%44
P?Q&65CAZT0 U*(<6'F6Y=5_\*X,W'%NWGRZO#L6-,;!$GV@ MQF0 =L\6@Q)=HD1
P,?4]Y!;4(]((K=G^XI1_PVE3.F1A<QG.>!N:\]=-F='4X9]H)H0XNUS#@$N&CV#X
P><\\9VTECOQ/LSM9ER[K BZ#F_^?2C:AND3/82AOY(,JDW.1 (S3/EN*^G)8%%8.
PXQAW/]VB<,$[D3@SSP:U.FG?V*AA4C _S\$<=Y'0)SKTGBD6$BU D1R%H:Q,YZAH
P;K7S(RIB2 /"N#S+\$+_V1:J/(X&MS56T^#5ACP3A)N)BD_Y+]-FHSR+*(]33[SW
P,3O6WA3KF9F>ST-@J6Y,]RD?**=H3(5L-HM?0 ]LE\C$=>E-!?\/R^L;L.)^YU4L
PWX;?7*(<$/V@SAH06?R=6<%*AYJH9<M+F+)0THX],/0"[JI1=KX9.2=T1T^V#), 
P$WB<K[W3T;^LC+1CXPXT*$&*0DZ^,Q_:B/4I-"3R04P948[Y*ZWA3A-E9\CW4A]6
PW;*@U&BS\;K8&:3V/<D[DW5@8K9;QJ 0U;<96%,B]UU,/NN]B0[X*R3TKI^&R858
PU"Z * K//O5%N8+A@D2M9V3I1S78'Y#^%)2(GK?Q&S;'K3EC4M1<@G5QY9?0JL#T
PW:8IINM+1.<:N+#23E)3#.W;@)E^F#&4#Y60"-Z;LEV1+-2IF.-1S*%'AOV2?/I=
PQQ!P>_!P4LYOHK$0D>DXA\96/";.:]R.5ZKI M1;'4/**I5#Q#U?F>^ #3_ZX)@9
P\67LP28 HN2<1HSVL)-F!G5+;HNO'8*.584AJ5<OCRH?0L?#9JD[.J2,YE!$9['_
P7W6M[O7+'4!Z3XR) -W$EE^VL8^T#->,7S1O;ZNY&^>U R$$OUHLTAJ#.^2J$]="
PY,^+_0%]D$>QVM6$NF:1Q'0FA6\&RW# WP7?OOA-6;OMD&O+TY7^5DSK]R=9!6-<
P^R0W89Q6R,Y^WKVE&".(AOU*$'SH_JHW8&,II+L[!)H.0$M"*F'W/,:H$)T3V.8%
PM]YA/R'$Q_V]687\5:O^*KI!H,?=!0]Q0ZK,NY%ALSXB"36/",.)6_#<7EI*)(XY
POF*I%A,:\_@;<5^8;L,AT<X]P'DB@D5O-;?]J/<1$\K(!!:@?[6F+B2=0K:+OSPI
P13_)2."B_]2:;Q)H'C8\:7L3E/.<_+8HWL_*R1CFNIL;*+(#-6)5UZ%#(^?6O4ZW
P<HD+*.VPB/S>MTO@51(X B24VQ,])@/X1,)E28DNL2[)B$RF,Y3RKE8&NW'Q@2G=
P^AK9@WW4_QJ>EN85.7Q#)8;:\.%Y#@2&&,XKV7:/Y9+70SI-+9!TKD7JV3.@2YP-
PK\CI+"%9)?,91I)12_H1&,5 NT63]1IDC75:';ZF(""$Q@,?$98OGCDH FN>;!<3
P4H@*#SJ(7<.&!P1;,X#A[NWQTS@5>0@!8:>2QMA<T65<XDB9I)X4>]V W+&>OI2+
P!$O!"@VP_C@,%AY+;\I)_R"P3 $40C3 P$-2?Y$"D!4Y9*QZIB]T^J5! P75"$*E
PB<TQR0F-FP[RBA$G"]0!T+?;+F=@ DF4753:'JH_*N4.V')]:/%P;PM,\L5(<B>&
P@01687;-_AY+W-?+%$\;],UF%PWO3T)S8LZW50NOI6VO_R2I6J;FP7HT)/ZC0Q/\
P5,*M/Y%KASSX*-*(O2D#FP]R9#>=0:J,/5Q>3'6<BPY4JU)17G0\IU.T$.DOS>8T
P:6!JY$R.3,I$@%2.7MP8[W4Q0VVT3^X\BI\?$?!EG5.=)CL-WRAPS^]OY/UX?'2Y
P$%E-^!=!W%#MHWZ0T$$*UF_:NZBKG1"/,?)M$KD,.^[V^-(6!5&A<NRQ ">OQR^"
P 2;MO;R.K;1;.Z^#S7V9/1X6(A4WH6![6.<$:S+$6L@6#!$GN9?9?G)ITTE..^B%
P6V1 57XZ?&K^L>IWL[C8U&I9D_6+KX7@S2E58CB%1&JNECGO:=$.WS)'!_QD0K0U
PA$-\Q"@'KJ4AGL$ -V\[Y=^9F08/%OFH=;ZQAP&+3![1W9/[A6.'$8C@%G;'!IH'
PW1-47/FT+(EC=: /$MQ-$<_5QMK%<K0N##!-;;DT#+SH!2 V[HC=S^=E"6(_.<E!
P$5_@4F56%$E;V:TVYXV0.%<M/)+@_VK45X^GO,X"^(SS71"9S-3PDX A*O$_J6^U
P&HW. K1R(<Z="8S!C0Z!H@_!J/IMT)2VO=,E10N.N@!&*,&TQ @QFG;5I_$S4",[
PY/TT7]NS]_'+@RU#176@P8]=\G,$R??^MV?[S!!L-J_5L.97I-=QH1%%" >]J\,)
P<5UB=1W#J*KY&S;"DKK'@+0C'-<7NB#-#=C*R;8;Z8-ZP^(H&@^"IDNFL]' A76U
PW%P+K4.2_K5C64Y&"*.''RN X(',%K/]*/T'CNXD&EL8US$],IS;/*M^*5UX'GK&
P$REU&80JSRWCQ(XT'E+0Q0SX,QZVWN*F;PS72[(3S"P=YC0U(P\9UBE4B>*3U695
PIGUN2343&67ZG-4&>XFX9GDRMP_*C:(O$YO@.P8M9"++0X+4##2TJ-INUAORF=U,
PB&RTFYA++FA+SYL,.Z#<Z-?K)L'C)L.9"($<D%[<)=46&'%<08ZOZ"Z4.)&=J)QT
P.N/DM@PN?C)0J?OSM30O'K&-=RJ@_N"ET?-,WQ0Y4.QI"E0\0DM+ ?<M#EY7L?Y(
P[OB %F**S: P> /3_R*BKI51G1C;?0^:\A*%D+RJ9(<!=<R2A#C3'"JJ!5X[]H68
P$MBQF09M7VE8L@]D(\SRWYED98Y[R$>M]8PJ^K2_&(322E _8ZK*S2.F;=+-%ZL$
P]$60XL3:M==:4'9"AC3CMFA@QGEA4!!5)*3UKT/+HC?^3W6&Q2NZ)\5/6+ HN[*>
P")P-\H:8:Z0+R?K*EQ:K3,!5K;N["F;BGL5QM3_51VFO;IX>U-RCR&/&L2/<\D>E
P*XK8CR3(P*KM+Z\9#O^U8HM-+%OM7;_U!%*CAW3B)7,$L R#PZ?8!Q9,S2*\@RJ*
PY2^'=7X/\8?.8MP^ X0[AXT4^J-66NB_:BI5E8SFB8PWQO 9R@C[+7T[P#:H_XNR
P!C+C.RF^K.7O8,(ARQN9B;M[3A;W*3%4V($&'\\I;].[1_*@3PC7BWM&?=:R2H#E
P2 \H-:#[4B.'/"E]61V8G, ^TP&'B&A"&1C!UN0X-_849DIQ3L]UE%,$MR87+T(<
P2 \V,4/@Q7.8^$W^N'G8TK$VL]&$I?'P.2 Y_*[W"UIM?!@>Z\Y51:*D#LQ9OVV3
P=?WVF!EY8%%>:Y(J\' QJ(Q&*T/B#I0]EJ,Q&81X"_ $JGLVN )-PCH>ZFO-!2P'
PIE21"UA4F!/.-F.U$UX/;G)_V)-# <<"DQ3;6FZ[0,PO3M:XKE<3D@Q8LY4_'-%/
P:,5+<IR"@)YKFD)>5"O[T$OR5\XSX$EH?KVA'F^$+G"SU(+8NO+HUHP2)Z&7#[ +
P,/!0.>XP!5%6J"&PJQ>NP'-T(!VO;T!'4-H*(/"TR]Y;[6)!!#/-M5RJ0N1!'P6A
PQ@B_>4-G.D4F*#MYJQ(@Q/"/F@:M^GOV4EH5&_:6NHU=*%A)].K$0CX)?K2/F[V<
P9)\U]<=?3J>SIPR4()&(&9*;_X*B/8@\ 6KR=%A1U\P^:3)+83:,G/"A,#,'W=DB
P7"4F=I$2Y1 $+*JOV/A4Q%]QT)KQB?7U"?:(R!9\I6WIATMJ%L)YFW 9!%%1JI#Z
P6@4CF628' JI3%+,]-/)^H;*84$MS.HA9O/+S V(*Y!20A83=M-Q@?I:C9.6#3Y:
P$6LL?,<7?,M*DC9S2K2)W0?HSF(4OOKD>G Z%*>V"31*/:_(FFD#^M=U8\A?3*3W
P#&Y5F,5"&RX5L+F]&_6WVRTD??$]8-=)Q3@3M[)D$1$OA%OI2 C5@JZ* ? _R33[
PT>R)Q.R/-(WX'P?SW)H="%?F7H,4FDB[OCS5.NE]*,O!=,E+DTSUSOO[A!*$@*;[
P;A07*V1IM9$D%QX=5/9!#MY^V*)C-JT\99;)V<=G<%>Y@V>_99#_YE93BF-6P#\#
P1\Z;8)Q ^"N(\$&L"*N-0 :.B@S_$C&V+E9]FPNLSL^1,,6YGXX3G8*[7A7[35:.
P&N5(J]O9[X;B>9.8@ $Q&0BC[JP=L0@D$9X(H9QZQ]?,^0SH6J()EF>Z05Q,P!^M
P' (I9H^O)P.GY:Z5N*L6Y7_<_@1FZ( !BV:H5(XSL["*-+VG%0"V\4^8"F3E*3I&
PJ["!YZR5F2PFW%^*I&#Z:I4F@\.NC;D)SUFX4P5)( J3I'%B_C.EJA1YQTH_*L'%
PN$QI)3S;']40] JL].6QS&5G>8.>0TQG1G&,N=/23MBST2;JKD[YM2B$"5 TQ;2/
PYSRD2*:(5SFTNVL%5<#E)->QJTT8.]#$N?<S6@M4W#49@![NP__.]PXTW"S8%,@_
P*)B#84SJ[=B!#)DM@EPB;O"3RV4=G8RZ>+Q3@8XGS^KO>QO$SL1C''3>TJ2N 'FV
P-=*YR+#[1#9Z*!Z/HIF039TPR2@6A$QF//&-/TYTV1;VC6*#6X]';22VSX'R;+OH
P:%MWB5WO8J-R=%([<G$Y9%^5=9?VW\HEW^,!VJQSJ0]U2M#IVPOT03:'.E;8&#1S
PN#+JN'%5&I$/V7R$XI5K*!R%K_CA=/-J^5E_[,#DDS19BR9K8,I6V+Q<$OO?SW37
P0&#?M'99D_M.PPC_4,ZU&!?L%FBYO"<A>9HB1YY+C_5*1]/VL7]PK/W7Y"4T&%^/
PUH">;0\KQV2U2)5BOF()HH2W*"/-$E@Z46O452F7D"(NAV"9=GZ77/DX%F4U\([E
P2-'>Y4>N%CE\?U+!7H1=PA\N-X4:MV*P [)(A8/CTKAI,K8?W!9B?RKLU302^!A!
P&N4!!ACF/HW9]!M5$A"HK=Z:82^B;P<N:K$&]O^")ATD_2R+P"A3T';9!!2Z-PXD
P3G'2;):/_2!H(7D#OP74=Q&8=4K^50F$3X34N@11R<*":\G7R 37?(N9C!K7%:_*
PZ@'W)=5V>?KDISG4%/ 0I52$(LBSK:7[)*U\801659NG>C[QT1K-IIJ^MN":=:4D
P.G>LB]4$JUK/@<XGO^I'I=K+%N3KC]X=/]!,=#,:5=*)#PD/=89"P]P)!P'N*987
P%S*'PZ;AZ&"N X9$^Q5DIO/';%XE0?8%[7YDVM3K+E_^:G)[,^3FA7=))!43Y!A%
P-^6G=:/K:DUK^%S.%Y:PEP*DVKN*4#J)X]/1:T)HHAJ&N6F*4[!MHE2(ZF&1+M0[
P88&H0*C#C?9W6Y#^5[[:_ZB"ZBZY!6]BB19!@=G_QN$"\)I0@U?ZB+=D*E<B0X $
P-!EG5-\J)728"&9M-O8IR6:NE6H($C:Q1PB:QZTDJRT0U+.E,N+MNZ_SLOJ*H^OQ
P$ LTT>FO% H*!%?TG,U^1?K \>_9/SM3%V^$#$&\/-UW055$8%L)+-_G1.>[[XAO
P\IA"DPF!\ZPN"H2TW;@%-%;2SC%@M>[;3_Q_)7TEUF04VYSI:#_+LX<>LPM0\&(:
P /D6E<ZB-4Q)9WW[9ZM.SGBN'R#-E;_IT/<0UBCH:9-1UZ5RLT+\)4A03A1=S0"*
P8007Z3N">CU[^"<JEX,FT8C?41."1$T0C)-:PA*)J!N7W$W*!+@Z15.@!)XV$<T*
P;<[.@)N)&+HIA[=X7I PGHS'HQ")KSN<?M'@9^9M!'2E,%1*VJ[J(J#@Q9*\ ][M
PO=ECOSU*\ @#W7##>5!*^'*E[./9 3T8FP4:.5?*./VF4R.ASHQ4MY/7BVGD:@+U
P^K2A)>R?N3_VKFFYSC*VFHOWVS'@W))",N!H*PK^IJ0!&=#4C8L_K/A#H\4_RP#^
P(M^P]XA$&I5U^:! IB-]%E$*HGS0-M.*R@AZW>^O0E*1E+%_9<QI]S>#QV:>0%_-
P0)D_7ANXTDJ;/D$STB??Z-/K@9RXVII0TY;<TYX@^BN^6'4EJE&)+/M%N-U#CLR6
P(WFGD'L<_S:8X]"M#DD6GK"YGX>P+G![PJV@A)S5D5)1-2_1W @5=.#R-?W^8=.U
PLO2 36P'5F S4J+U7'/J;NU@'4XWXT?(K1^X$J\DH,W=<4D2>G)!N!_6.1T^'V:P
P=#C(_0;[=*T$4WKK#090OGXS]$[)B'PI^[9!,T,,PX8C##;*"9Q=\P."M6"0Q]U'
PCY00Q'8"M9I9]=$+0[&;D>)VDV_']@7+R/],CM6?7C,YYYE',9EQ8.H59)VD(9O7
P! )03-23O<N62J1?+#+!>+(V1+*2+4#HCAM(\DHY P"EZ^.*+97C+D(;BV6<C&59
P!U@ZYR2=UY8"$W"/RWD+W#7+3%-@K 44SLZV7E8T=?T:?WB<LY0=1JO7>ND@3!]J
PB.HX&>')E?]G>8Z2@G QY-34M/MO57H0 &+K^K#^9$C"A+S';LK0O<R_?NC;6H/&
PU3A%[%Z%"&;RIQ TM.W'!GPJO%'D)L\JUUU'^"&C2^#0'_'Q20J.MZE%A(B+7_GC
P0$A] !(>"H6D\-!*G! <,DK,#MQMK472R>:%J'9.6.= @N2LSM\X!B^6!#'1P@Y+
P=JK5(LX_U)9J49SCY]E5B:H8?CZYR>ZYH5.?N@-2*<QONO6 !KEN0.323F%' Q*I
PQ3,Y<^5S*<'-+4X7(\7KTL7;[O,3M[5OVPRAV @$0]Z),F/46'LEAKM)7;\1V045
PSP"<7BZ:G,&>&@7S:XF1:H,,6G2G'5FV%/C(9 DQS*]&D$-__YS&WG5I&U;!BX\=
PUB<@I$%BR8H;&DC4]_6Y6:2A2,*J(7\LN^JZ6 4&3*,KAB4Q_B*.S&/"U'G?V=()
P $D#'-!7!@0(Z%+)#=RT"N%74<<:.;@/\^;\0DQ0>+RGEO'X>^0[4DFQAW3H\\],
PD?QW?;6SNL%)VIE."!(QT:$4PH'+L98T$4B/,.*^3X99 GDKWK#TNIYOLT=4*7M:
P2?\^]9_T_(24^YLC(IF9M\(:H'M8$TS.NM%KGKF!?AJF\?YAJJE.5Y]K'X^]'P4Q
PA=CO@"O)2/G/8VDXDK59;.,*F>Z[(UIG:M*CE'2C#PJNSF8]FIC,WIYFNTE/":B#
PRYX+QSS,)@UJN;Y5D&U(%N)D^_KFA!2IY92JUT'N&VH1C]T$?==3@9@H1$KBOXAV
PQ1S2@'*EWLX(&9/E=66V]LGOD*9\8-R3K7V/0D'6X,#T.S%2F"M/(#X9W(![45P[
P>5(N4+*[KTS.YP:<(,!90A*'8-Z%5^JK^^O#X(P5F_*X9)8LB:XLMPJ*GL(VSJPO
P-2[A'[.!LS<QW>V'X*IURQ][PN1R\#O>!T@?[VY\::I%VXW,V9)FG-0']*3_$,+?
PO." \:[43"#Z1)6S\3ZKCS1<@Q1W<-D*B=O_$P4P>$O/*2#5R*X5F1^+[C"#/,?+
P.,ZL(C\L!0[]Q794A\,3^9O'MW$7P[EXR%+W<*Y.C,H4[KR95#2RLMR,UB&AP'_0
P*$,UV$MX@2RBQ=2S<JW24'7WX9Q[0EVX?S9<F'#[B!_!5-XT>L5?%:!<=+/*S% _
P9@BQU H110BT9),?H>.YA!_D].\N]X\M59F0-DL,)Z5X$331%M&Z4.;8;\>#S\HY
PL-)9ET,)JA%=O@9J7N.F@I#A)=UO]>3X'T<A_36PT;^\2'#KQ1QN?.*7&P$)6&0O
P*Y2%!=V7/*8BTB#*$[QZ@-PP65+%"XX#!I"2W+1$<\B@K-N(@+H(+<(CQ+7,=Y7P
P 5OF)P6/8^F6)M:S*TO'!--RZNK2/S=JO?A/CMZ>3,FDVTIG&\JJ_5169W6=NX#[
P)7BT"<]H@HBEO-)$NZ2X9Z?.6.A_*#RHB1"_F*N =L4$]^%Y<;=(2&,%;N?;P([A
P5@\MLS(BX/$LNB3@1;6EA9G:BI!I^W$.\ZUX=+T$C/Y.W9&G\-.M+)+><PP9@7:9
PX[ *_1( LB>-97+;^N5=:69V$ ,3IP> ._+M>MS,S<X.5H0CJ&.*<\%4="#;%9EJ
PYJ73R'[KL"OJTD-ICUV0)8YH(-@\#2$NOA\:6W_KTL@YN+;P:;2&X>=R\TJQE)82
PJ-F&J_8,*_6./G<.8([T+)B!M*2V8:(QPFOUK3"L.160J"Q<5%3@93</<P940 @1
P/_.RW*:J]6G5G]84\6N8H6L_!IEZB]*I3)=XLNL,@KOBR1!4H.;X&0XCCYQ<,*J.
PAJX,OC+V0S0OTRMRSGS." 6]F9/%JM QXYCGN]9*29**L0A&9V3BWKPU#5$H[_1O
P;/74+&\X)L2GW\#! #I6?>TR@:7,:W@Z02*"1QFRAZ&O"A9Z,1H.&.J\JVR;$96'
PW%@=L?"&&Y- YG^0TJW!B[O3%HLN P"!8$FRX$=/9BZ0BZBKL8[^Y,0>27+^T"7.
P#>LN2+C EW?O8*'5L^Q3,\6:*V)JU!D5Q"<X%(1?$0[DFBPJ\J-M3MO6(IR4+,Z%
PF=&B 5*5X$;T!S!" H.>%E!@6G:/\DH8W#$^[3OH,\WLN/2U1IJ-[XEXG@E/")B-
PR_TKJVNU\5A7LRZ'@?:!N&J1TP=B]KE&O>8Z947DD;4L&$*3^D=DU)H*Y3_=?#10
P,?B70_"^%KLA 3WN?>,6H]6AE6:WBI-T%HO2(!F8[V?SP.+5O(N@@/T\+$"!6-AD
P[! (C^>_74PWW3>^1G[AM4+W>SUK3X8$L(O/4,TDFL[00RBQS &@CJ4*#MPC?)/X
PGSK_\Q[?QX>Y ON8T*"H2D&3'&7NH7>1K6KF3ELM*;T)HJ^[):TJ"CQL P-9MUV<
PL4_II!@,9,\HG8@6L(1Q[0K!.O#]2-QQ.,GQ. +@G 2\>8XRF])*,GSBV.][3STZ
P7XL^CL7$0Q!EMV7>('K66K%TG)))^'-,UG$<MW\9UT'C::I_-L.;OTHOWO6LR'?)
PUNZ9"DOKO)Z<\B<-B+W<PTUO;WW'FS]IN4B.+EGE-V5IRQ/VD=!8CRS!L!%5_R@$
PA<#8KJY$.U]XVQG:,J94U=A!I$/S,?B___Q1DH7FQZY)5(!C!IAQX"0=[EKFCK5F
PQ8J:Q503LE00U$0PY3Q<EL7I/CMPH-.20!G9_O=3D\U>"SJE=>*\MH+&Z]99$]7 
POU-_V-)$,-="?GL1_D5_@4F?>XCC%CMD7;^S#O\-=HF2T6PA:;FN\2;>,='I+31Q
PZ+Q[5Z\2J6+I58';)("&'JZ<POJ7XUCR#&!UJA1V3D!=4S8$2EB-&KM,+#7WF(9J
PB4NO)M&SE0G\X-8HQ1& F!OA$]X\VU9O5*&\Q?Y>,*:]EYA]IQ_8!,0=PRRV+;OU
PRU7!">DJC).B5)E["9R]WIB6O[-FI5HXAY0N2 LGGX]*;3H$/QW*!Z?)-3>APK_!
PFRO]R+1PZ,>9P8J[7D93D]MDG\&%>]P7YHUJ>!IN(7V$0_>J (B"'9+QC 3U7H:0
P],DUDGPA'G:ZAW52.5[\6_?67"K8^W$5N$ZH2N]T^RM'/-GN!+O1#ZL'_Y6I/@$,
PO=60"FS!V'E\/^QSWQ33Z$S'!A,:B!]4W# A=GX:D:MT+F\%<0R7<=U0DAM2G)5)
PC#0ZQ#Z2/+EA%!RZ/O".#;X]OBF<:;\7+[=.=CH>!F$X=7PU?EOZF\X+#,BM-6KN
P.7^EZ:61Z.( BVU?FC9^4;0(^8]BZW9LD8"8B0L"Q*WI_'K%&J2JG.43:<T]#F!<
P=3!&<* 56 1H::JB_B4;?63VAU^>07!C$N90)97X:DNP"C]QN[!>#U[C=11F$6ZF
PHTCZ>2??#C/L_)[LTH=; EHE&&M&PB#S%;Q;NER1IJG:F+V^^&&,6$DD'+SEEU(;
P*6R._0D(6,WXS^FV^C_BC';D6B;^E8)<4<1M05[6NG>0)EN,/5: 61$Z+;!-&NKK
PH%FM'DJ"H@7XR\S#GU1*#24B[H\<EZ%?[]I.9#(O9!^365Q&!;V:TR'298-@63^[
PZJ^ZGR7V(-GZ1_1*6LW\)D:@E3W$/&_]?@Q4=#H2!'8Q@TNV'-4DUBQMVB6;YLEE
P&2BGX'7+T79]^YB# F_-.9>9W#_PWV5 BEVZ%X\([Z_]%03<WS,M#')['26+=]Q-
P@8#? T]"X#VJ_71O\+26GXOJ$R^R?*IW"&W"15EEAE*E$@RTC##6;ZPN#ZX\-(!%
P>-ATKQ#8@\?2:4\(6D<:_ L+&,2S.H]AQ-@0LN3E!+]$#C'HV3S5KL13LKS,[S<^
PE9 O'^G-4;(^PW7*QQ"J^I6^]&9Y>?J -$IEHX#65,L-OS$$CY!N/RW@P\:']5"T
PV0*SDGH'G,;=#]CXXU2LUCE8Z8^4K$QO,;?+-E!"%$![B*W[J4!+&6$#SDHN9]O"
PV!'X<%)-MP<87!GK)\;AFLT7NJR&MZ%;R5"W94;>QXVM5]4,W-L_?Z$&_-UR6AL=
P=ZRIXFQ57@QE2+B#'&OV6L%_.5;$E^E0Y%%(BM&(HMQG[/#$(==1Q'QYX2<@"!O;
PLDOOT#\J856YV^6TCZD?0+UO'> O%,_- 1[9U91.(>A;JJO(AAFU=[Z)@)S5"(KD
P4@%5N;:HIEU_*8O97(2//70+1);B0DTP[9VN^W[W+#+C/(KQZ?5("5F4Y] N2))K
PU\OF;GO:%4:X_#ITA>4T^?X#VO7RW5.[9R=#8;J73V$-%311EUM/(L$]M R<[^UX
P@[ZM,Y:'5?UD30A(U<2Z<,^+5!&W3EO]GP$@X/H%\NQ44?;V  IA!RGL6.9?R;JS
P@=\3<.Z5D'9";.T*9K.^529\A<M9I24*6BC+&(CDH7B%ADN0KB-O:TJ+"A+CC=+E
P809C.H9?:' +:0"=B"X,H"A3C!D[4AEQ\Q4J@X3V'&_71U![7O&/0W 3L6C4FMY2
P&1KO'QU2_%''9A:?'>W^1&UX/).-X_1AIF0%JZ;ZK^/V#BHO93&'_'09]U5?XGQ9
PTP10X_SV&:;<NXY2G$&M@XR1''7F>MB)^T>EI].TGD$L^CY9[/V6;V6*!,?AMCE^
P:T3O;?V(U_Z@OQP5C6]&T\/H1-6#F4[M0]L6B7GE#AMGED0,S;$P&@Q^\(?'6M*S
PW ) (<7PK+?;@D!AX^RB!\&F<Y5E(<8GU3V\>NSO18N!<DTN&DHP'Z5'!3.SJU\B
PS>9633[(,S15C4&C@+4;2#DZ4$0E___U.UK3RE?FB+&MV;%J&#<VY3GHS]HK'@SA
P'"L0K@:K[UPF[6X]DY&6U[[G"57*/(A$RF[=XEVU)^E*LWDJ"#P5<.X8"/:GNMF 
PP@BJL_)(# 4+$F+NAO6!.C>O3= F_BQ(2"T>/?M&B/GZKJ%'&*&MWV.8VF7M(ERU
P?_GSQ%^-D :&AB$]I_%Z%.3U+[N7G=L4P5T[,']_N-(,>0 PD+#C^76>GQ5#U<?Z
P3(ON:MZ^JSR&E!YT%$4$0TTVYA(E &Y-$C3A/J%-6)M0+7%//ADJ.K_A,N4SW]O9
P8^NJD$%'X&P+\A1R,D49(O /X]30,(OI*6<QQ1SFFQ8#$G:S_BGBLHX'4HBG#;LT
P@7:.JD ?GTKG-!2$]YQ)*&A]Y.O\@J52<7APDA ;%..RPTP\[^7*!M](,)OP].M;
P!*5RY;!=8<(%RH8%$*AZ,4AM.YPY!2[8PERI.53X:STO#C&K&X+GZ6LE*P$(LTJX
PQY*]STOWP-*?BB&3,YCZFD.>>:C6'^XRRJR8XK")-%>3F*G[E?D?'"AL\RB<J0/C
P>)5Z_ ]\EPJ^0\'/+EPM@:4<,@G1] 9<?U=0%1*CVYYHR(O(1H>[.9>JM!-WL]4C
PTG%$?GRS5]HFJP_:59>3H@+TP2OUO.\LJ1PBZHA1T"YH>E_7&*\*8II*+"Q8L1L=
P<O=UP5;%5/O58303E+965CW<G=[^G[]H'^3+>W5V;\:)Q[_]_N)E?-&[D[HQ?M<8
PA&'S :KJ<AS7U0 HC*(ZT"K[L*D&)&/(*./F\3)?OA,P,^X0JWZ\0M'CO8>$4M-,
PE8#"G$V!?["F)8/.>J;E_%+A0NF&=K4RWERNVW,Q2M%&$_>T:'GZD>AW/AO!\8.A
P:L[!Y1UI%[DN:KNTI@U:DF4O]/=[8G1MQ5KHF#M/*!W(,^?Z6YCUM0+:QASK\'B;
PN(6X0#YW.9.)0FJE]\4+0SH<""BWO@YFGA::.D"ODUZ!W#[ <4]NCI&][QD_;?87
P!W;.I,0C+F(CGJQ/WESCI#ND-]F@3-!@H-(>7/_"<M O'[(@N$9;#$Z6-]'W3R'2
P\#2485D(DX*@W#,K Y<%FYU5@V9_QXEQW2K+>Q]<_5.=4,.Q$O4R0'Z7JQO0.KX"
P@)JA]@?-??PD<\HMH8GM6]^'_-@+7_(]^]#:$Z!FQ"IRKEX4VDV7P#Z7;&W;E!NE
P8$H0*N)[KLPZT9NU''PULZ=Z09JV:R,0#YV8%6&_FJBG%!%]GW[5Q^#<QSU>J3',
PI2WR81PTA%<6U*M-.O1%W9@B%^I=AF2Y: ?.VJB_+Z?$1:?X>'%POQ782JVG.F]D
P5!U>@F$\3'XTUZ0RQ/3 4K2M ..#A)]F3*$<!6C3R(5 =5>=:&K3YB^?GXZ"E (#
P[_D%3D FC6V0\GF)/KQ=T(0T(./D*[Q^A/@1XD#;'?S\F03K[2 %+H;VNZ#?")#O
P5>9*DQE,TE\<Z?#1&,%E)$^HB&[6->S6Q2)'#):PN.\JBJM6(O'2KAQ:85:P%/.U
P;1S[NNJG[T7I':7$GV/<WU*=L60-TRA+_[TK#PKD?%*SDCXU0I+B1O7;@!V/O^._
P]#?_&#PJLF=C3NJ@=+[AR@X4CD9]Q^ &#C Y^.8 E-W:%$7Y_(YV*1@6I+!IRVK0
P+2K95*&5^9]$RL)@RVH Q,1$6E5I_T!A?<^%"9[RSD*"0K$C1XKNE=WU^+W@H-F[
`endprotected128
endmodule


`resetall
`timescale 1ns/1ps

module M2_pcs_ctrl#(
  parameter DLY_LINE_WIDTH = 6,
  parameter SYNC_LEVEL = 2
)
(
  input               pcs_txclk           ,
  input               pcs_txrstn_clk_66   ,
  input               pcs_txrstn_clk_80   ,
  input               clcis_dma_rstn    ,    
  input               pcs_en              ,
  input               bit_lock_en         ,
  input               bit_lock_bypass     ,
  output  reg         pcs_lock            ,
  output  reg         bit_lock            ,
  output  reg         pcs_reset_det       ,
  input  [63:0]       pcs_txfifo_rdata    ,
  input               pcs_txfifo_empty    ,
  output              pcs_txfifo_rden     ,
  input  [63:0]       pcs_cmdfifo_rdata   ,
  input               pcs_cmdfifo_empty   ,
  output              pcs_cmdfifo_rden    , 
  output reg  [65:0]  pcs_txdata          ,
  output              pcs_txvld           ,
  input               pcs_rxclk           ,
  input               pcs_rxrstn_clk_66   , 
  input               pcs_rxrstn_clk_80   , 
  input [65:0]        pcs_rxdata          ,
  input               pcs_rxvld           ,
  output              pcs_slip            ,
  output              pcs_slip_cnt80      ,
  // output reg [63:0]   pcs_rxfifo_wrdata   ,
  // output reg          pcs_rxfifo_wren     ,
  // output reg [63:0]   pcs_cmdfifo_wrdata  ,
  // output reg          pcs_cmdfifo_wren    ,
  output     [63:0]   pcs_rxfifo_wrdata   ,
  output              pcs_rxfifo_wren     ,
  output     [63:0]   pcs_cmdfifo_wrdata  ,
  output              pcs_cmdfifo_wren    ,

  input               tx_scramble_bypass,
  input               rx_scramble_bypass,

  // output [DLY_LINE_WIDTH-1:0]          rx_delay_line_pma,                    // to PMA phy    : set the delay value.
  // input                                bit_lock_soft_reset,                  // from register : reset bit lock state machine.
  // input                                update_bit_lock_dly_cfg,              // from register : triger an delay config update to PHY after BIT_LOCK0 phase.
  // output                               bit_lock_chk0_done,                   // to register: tell software lock0_chk is finish, software check the status and config a reasonable dly setting value.
  // output [3:0]                         bit_lock_state,                       // to register: polling bit lock status.
  // input  [7:0]                         bit_lock_retry_cnt_cfg,                // from register: to tell sofware bit lock retry number.
  // output                               bit_lock_retry_cnt_overflow,           // to register: to tell sofware bit lock retry counter overflow.
  // output [2**DLY_LINE_WIDTH-1:0]       rx_bit_lock_stat_per_delay_line_cfg0,  // to register: to tell software bit lock pass fail state per delay line config.
  // output                               bit_lock_fail0,
  // output                               bit_lock_fail1,

  // input [31:0]      bit_lock0_pat0,
  // input [31:0]      bit_lock0_pat1,
  // input [31:0]      bit_lock1_pat0,
  // input [31:0]      bit_lock1_pat1,
  input [31:0]      blk_lock0_pat0,
  input [31:0]      blk_lock0_pat1,
  input [31:0]      blk_lock1_pat0,
  input [31:0]      blk_lock1_pat1,
  input [31:0]      pcs_idle_pat0,
  input [31:0]      pcs_idle_pat1,

  output reg        pcs_rx_bit_lock_req,
  input [2:0]       pcs_rx_bit_lock,
  output reg        in_bit_lock_state

);
`protected128
P0XE/>@X)\@67Y@P10_]39SPYX^AW@44A'T9J9$=$L \>*CG@O^:2Z\N57<.DJ/E>
PM;((NEQ43*UZ"LD0<%#3FJ$'[K4")EBX')&H,>/CS7[:MVEL$%H3U;=]D5-Y02.4
P$0B<(XDIY1AY@5J%^"O9@A)E2>ENC,@Z[#\HEY+E.>58C!D(N$[.?SK)82(\VHV6
P\RRM:'(-Y[H?I!)+J&-[1X"0I(J^(,;&0(R:>;SW._5?(L5DC9CR1Q9$\U/BZ(GT
P:%AY5,D;/5,P]4@W*,\DX/PK-[NB194@(?C3BEA 46M\:T0;>PE$.&=HLTDYH2I 
PL,6.3B+7=<$E2.*TD#$6);T B6Q8CU#*E!.S,Z*NS\65QZ=C+4D!D-R4T11M"H/>
P0:5D1,+_N#"JGN?Q@"H!32>C6G5&D3&;/"C%-3"8"IOQJ6D6B4P-DNL[.9U, 9D7
P:(R,K_O%L QJ\@(_J9&DCSA)^R*5+P+,6(.I0__H:(&P%<<1Y$04I/:R&FN*B/RC
PZ,& <(Z/A,O-X9(/I@WH75T&J>C7BI%(67L/FFA'8,K76#/I>+2&)P0JE.6RX=!)
PATK7AG6:2J>&G.D4B_A_<H%+=KKP(R I!5 C1("X:S#";N %=TQQV)*N5X\8OW$[
P$;T92X46/DV,DKA-GC[B@P*?O;S8&*X6<"O.=5$,<2DJ_RH;9[)K50X1YH;DOW<)
P0&%0#E@:_D [0XXAZFAG6',DFH%IXL-5S"$"DW\M&;Q"VZ0"O#DP/.#4'!7'\]]F
P2D(:&.Z@@+;6*D^+$\^7R<Y$A(0X#EF([W/:2C(QJ-WV3KWS@1VF7'@-!%*[],@P
P^VMO\8>7-1^)T@$^X12 2]K4[ T),-D^$@<<3 >9W^E<)7WH(I/3F4O', MB_Y5R
PMQG@'I\BYOJZH=6NE-I<!KO*BYG%"O.)X+$1R']7^JDC69?R@^Z&RYF+)%S@NK^:
P5T'3]*)YJ'GQK'$-6 95L6<$J4DB<GMP#<ME1G-_CWZPA5YH4'4?QDR-F3$2S8UH
P%.<6SS/:*#8Y!-G-J;*\X+-HK.'U@A;)[H?:CK/X_G@5:N1.ZZB^6J[M0OKI@;(_
P FNJ*X6S^*M"12]'>5<&R*&L'35ZTZ,,6PL90@2RS\?+/"=3>F]3[?LC!^B6^+")
PS$0;"SA[-IPGW(1B>L\H6[ZBT%/(@P&K0]^[S;FT<2::N]DMJU%<_\2M"U=[_B=%
P--FN-.=ZI%*0'T\$FR/NP7=.XHT1HZLTD,6CH2=.IBC0;0-SS1!J).#[E_G[%2_(
PPB?]9/I5%6!>'7<9YSE.[!6P@?SU$>)8C[C^D/5G1Y-8Z07<%P3C- 9[40.D2\_P
PG#.(:3:6)D>F&LRPJ&DM_+"#@#LLQ5E&K$9<=O'LG0[$!\@J><<AJCY]P4<PEX$)
P$) 31,3^ZN-JIU79$KZVP?)D $.+J]@IS9[OO7R?'H0+E?8<^53V>MUC1JU=@H"<
P[BZ[T&<1"&CH:037K@C':\'QB@'%BLJ*X,_@&_[$M U0XMZ$M<@?1D'XQC:!7<LK
P:<'"'\OF!N/G95UNRQSSCK&]+C *B3,>/776[D]_0X\XQRTA%0"B(T6Q=TCJMQ@P
P[%7TO"4#XD8.B'<Y9V?%FZG"5: :K)1E^>'!AC;0*^[_!MHCT1)4I8$22UICSHD#
P3E[F0A\UZ5ET9Q-DDC9*I#A@S=,6++4&=B8Z2U]2TA4LB"'@B7D&I76C88= ,@WM
P,%SD=@ELNBMI\T_E"<C_H&/$0[RY[!/E&PJ98\/_U8@BJF ?"H+,1^=W$/=J%A5.
P!E+)IQ=@P7^@3#>LWJA&M#T].=_2! !/&FEI_&<NS3+]&L%N)*MW[DK!?GO%S*#T
P=B)T;DCN>=9EK[X]C=33.N:4_)W\%F5;-]RC,48I;D8G+"3)EXH>3@;N:QW7*/R;
P7,5$267;0\]*%H&L -[/[TI): <1=ET*5A!8Q14W [#24'+8W\$^X;'!1($KV=.[
P(J-+DF<,_84YLYD3("GRY4M3.P"FU"= UELV W]AI*,!8+N=A)+*!=7VR&%+_T.5
P%#MCW<HX",27NE2R,3SIG-K3+$4M4R@R?')!A#\8%44)SK)70]H2J2848/F#8OY1
P[;>1@24JUP1XC&0_*! SI?30PZB:7]@SA;6'3/F&0L<+9GBCPY^QW>__EJ(=&-['
P4*NAE-5-,#4S<-XE!+8S9_=1>A-FLK920BX,W3XB3(Q7W@NWHA'[9]X:U9-D&3%R
P;Z(>2\!3?]CHY9\!;&TR"O3OBS+$OE53VX^K=;3^Y8Z.-YH^$#.#VJC@FJ3Y\,TC
PZG]5_195"5_7]U%0)2_2E>SX(+W4$/A>&8DY4)RF:?]!A$Q@8>9&SCA(2/92*&@G
P\H%*@5;Q' 0[35DFVBJ3T=0Y+$ZEHJ?Z&(3SR=.Y0=3T 62V.H:N@L;A&<@8B<X-
P!5,1&1=>^[!KPE VXB-+>UH[8'^6(B*N;H%KFH^2UP+.F%QF<ZGJOE\(V'L_(/>V
PXZAY_)%R)*[$4B2P,HJ%6_"13[<;+8<(AZ@*CQ2=$?7JI2^W73Z,F[/7&";7JH;4
PDLAU^/""X"JS6FHZ6)(^\]:I:1(RK2:#M9.\L="L8(J0O=7ANFIL$CTXGXW@6T, 
P0TG3+)%D:Z^,SAP)ULM2:\7,(S;FM]O3P;=5BU'O4@Q+AJ"\AWQ63L)DCB9CM!"_
P:GE;CB8"?H3V, $-8-<!!<WLG&G-&5GAF7E/D'3'$"4.6I0_(\_35P.WTNF"##Y@
PI-I3^B[=> \#G=0Z%T6=.[00?</;Z=*07WQ#C?LUK. 44M@"!J<(:)!,07 [00;%
PFK6>;/2U\S-*<5@G #RZ,]U\$HHCUJD%86=[ME(_T(Q$T%YA?L-)8AKN1#Y0JDIQ
P+A6W[6.<1>N+%]7:W7E7'6>%D:R2SK]TKT'EPGFP!9[\,L,D_UZ$,:><#*KP:!V"
P'-QV:$2P>PA0T:]*SD</UZ-P+NE?_[?SP<N1^_L(BE/0$CQY$6[[$61')LVD:@!5
P^T>3??V!:B :$:( : F)$$1\RK.$7 (*\S[._9MMWLYJ%]P,JT<RON!4<$'+&#[L
PN)Q'X^\/"4/AW92I3"S93I3;%.9N:/1 15Z<;@MY6C11<?MFSX75/,GJ7/?GM@L%
P$W48)"L.12GF&H&&YU0+0#[$@4ZRJ")M.!FBDM)(35MV(O=7$TH! ,$4]B<%Q9^L
P%EH^M6;R4\FD>-*YKT"X7<(J0,VV.9GU<9%X!H6V><[:N![K H+^VA9DD,<LA#>6
P*,'/:]&AQT+:;ZOSUXPA7688G2R>>=U)-E$OYM\2+4](\/D,.):[A8WU93-3T"=A
PYM I+5\M$+M8SNW[]ELN'#/OI.5]%R=__;=@(+<QA$:J_!8=L]03*P),D[;!<P$<
PB"JNQN\5/BE;!*;/HI>#31EG?W)N08Q:^M54+ 5EK$R)U?+FE3D&R2FH]I"=PSKH
PQQRR&51S2N4O$358F?G,"?T4<\(?(J*S"DIR;1NN/+:E#=L#QAU4N)=/U7/Q49^.
P/P6F*#-)(%HCLKNY>1P"'A!YWONOU[4U[PS2O&BH,^54G.W4P],[7394XL:("I,:
PIUY+%*U+P4DZUD/"TM4[?=]X)Z6+.S/-($:A#W8U0S,!ZI%*!&"E+VCTRSSC,82V
P951TSKYMK@L0#Q]AZ@I,,?MLM)FNY!&N3"ML*/4T=1VA-Y:I6(3'T"%XB#NU:CE[
P-M]A\G7V 8O+_O?WM&2Z4.@C_KCP<AJV+*5@]+Y,8%QF]8,NU_E'TTF"LGY!^TO.
P&@[Z$$;TE_.^5)</R6:\@Y/@)P2.+: &.)#+W7OCD=91PLV).(N5+:%9N9^*Z6C?
P%LPWDML3'JSRP:R%\/U]6W\)-W%N-TUT@X!>:S(*T_F%4<OIP>R3WGC1"5=Q<U4G
PIDJ23:^R?WE@)L'D?X *3%3VG?NE@2=_E+9TO^N8S''2340#*:\PYO<O(JU=G_H 
PPC@SU2+Q8 7B),HSTD^%\[MJ;T4)B #NOH'E%*UL!',H*B41/K=+) ;?=8]4J^4F
PI* )&AVK.^3UH\!5H]",Q!VQ:6%4J7;Z28Z$!(UG[?7B6]P ?++O:GNQS53@.]$*
P QYHAS+:5LQ=*2'\Y"TN'(M\BRV!#A-@;F%OGA*I'^L+:,TP5&2><L1HK4XF7$KR
P)KWD 6-]$ATO\>6V5WWH'D ^PO/>E1:JO+E/CBOP_UK I"&*N+H#:)P=(1RB?>R^
PW/=!@Z2G,+?6GFTZ'O6U#TBWRN!HE>B!0%'BJ=+^N-Q=^;WXX2CQ7WHHI+!59%MZ
PDD^02?7+/A[XPX=%O&J'KTIV$9VC:5FOWXY<8./:F@0J?N8']# *<Q3E$5^Q&EY#
P\96$#%6*#73PXQ<+-KN6N%O[YF<_W:PC\4/W>LU^2FD3,W>OG7^VB@O//]ACZH]G
PF#6O$L&=GA)(EJ@+Y;/W#X)Z7;9E(+[BF%&<1IE+=@(Q9FRB' 0+[PCT*@$3?(Q0
P;4<<YC:TNW(C=1O0ZV]8,Y!K5S4@:$+,'>;QE&VV.,V&M0.8#)X81*.%;R@&-OJ?
P7@F/(T/0F3)9=^CVEDBL&@?$M9J4P\,C_\G;?+<.7G714&T[;RB@XCTW%C9!D=8O
P;.9I"CXAEK9\!T377H%(6=?AJ%'06X*FWNT]"93;>QXWK8)YN/.+B&#QJXL2#QK!
P(]W)K=Z^3KS-ET-&Q+_S[G-P&**=+QSEWSZNK"YPAHE2Z27/AE5X5@X5AK,KF!),
P[\]\9'>@ND,E3S:$2SC9C,$#8([.U&#5+%) X;CNEPH)\IP^T8YQ$&Z_73&:ZBZ9
P)K@]/8Q8.I<5E;,6$4QCIB\$OU#HL!3>E#PQ+T\:,.L6\_7+7I^#(;E-H^]]G?A5
PC$?)Z=4G\:;QMNMVTI[2V'&5<FF!1H9\(NP!+3=#1> 2;\6JA76GJ4=CI,RESKIK
PP8(D_K+S2)/<>@DL,0$H3);]D=;>+VK\,#-23&=T6@,67YX!"3WLU$>&B3C^2N2^
P\Y-#[GH?CR[@5E$DHEG4ZNOWCUQ9P,!T0BU")>YT<@UWN_SUXIVVV;JH\?[?F\^1
PM131SOGY(;YH*66CX?Z$R(!IL+/$A+%2IW_#@]S@P"-1P*9^BT5/%Y>811&DY$QX
P5G!'X,%:S2=\P25J=(3K$O(SS;6E#*8E1!?82-_LMB6H1\R2B!6/=E5\5@9U$]ZQ
P'Z[,[N&ZN/0\,2.SXK2\^I!WGVK4JT8ZOIT7/1'!P>#R:C;:M?SPK&3T)>GJQ7$>
PR 5!84UCROK;3J\F,T((B0(QEJZ_]/"[JK^4J':$G<29$/D3%499=HHZE]LR"<M"
P!32\!YKOHP"X!:!AU,N.!VA#V]*8ES#+%V 81'H!F:?P\V [,P_OPT'-5>/-2QE\
PRNUKV):[8&K8$3+9%]D9 :8)ASP3[88#,4"^M@NG:QS!]U0[UQ>7:>^B_.@J9_ L
PY>MUOY&F\MG'"9D4TU1YSI@);&*C99/0FHL,Q.+Y7RZ\O;3-P$+DFL[T0.@Y?A:/
P4XAT7.U)L+7-Y+KZ3&,9E4:DF:PP8S/=JGOK*J77]6>9300I!2MW9JOQ%U@V"V\/
PDEK%VJ0!:)]1 IG:K^UT$UNUN]TS1QM0LQ*9;'NAU@P P7 6ZMJ&P-S(Z=AB,0?4
P8B0# 2,37XJ2+PD"P2Y(4(#HLEFN&ORJJS&DNWKYJD@3?1,&RF"_=<H_-R<AQ5LK
PX6C1]4Z>D-KBWG]M6?EYE\%9CR/XJ33JR]D<.:)DASRF4MB 7=88C%UP?(.U9^>W
PE"WZ#Z@:P])*@^,C[HH_5^HV$L3M>)5?$PC@X,J[%N@R2H_:>B8@L41'O?''_2A^
PBP'_GEC5= 9_KPT8Z#EWF8LJ2W*1_PRV:"$S:4I9GGB"@XB!(WN,V_L.!(FG.<2&
P+?2Y>UM!]0^,:CF%>W6Y//,,(^Z=*HJNS8FZLVYUVLY7@%.\I7>=@4XU'RIWAVIA
PAXK/9SDXSN#7RW8%.[BO[)0ZO\,\Z/<"!!GR%9N;[_Q"K^&NVGJ6F#??>#8&2!R#
PG;X= ]Q"R'KG'N'5;IN=2F9Z #? :A0'Z9 F"]=D_Z^]]TT!T_*?+6*T5'YW4K=X
P+VN42>O1;04!O.A5T%D15!0/W.WRFD]L)%D$Y?V_MN[E-K59Q' #)4"'FOIK<*7#
PH]0\Z_<XYV_SO5P&67LRIUYS@*AU(O;2I?OVM ]N:U>YX+]\Q[T2'-X'F<L-)A%W
P#A:(E_K@"]^Z4\E;P3UM;R*A.MK**^5B(@8#/6WJ;LMQ!2CEX)WVA? (0[<^N-V3
P!\NN7NG>M-?Z85.1BELH'"_Q*@>/?!K+E%ZG*&CG4DU!"93YHF'/)Y3>2D2-XG[!
PFC +[BC7DOL ;>^F8+CX-88,9,_6Y0T*Y)>*3O$_*C.F,90C@F$:@FWTO(N1L?. 
P]"90$A29X)2_HE>PF-%B"9NNVSU=?W3]XYRV(_.>J>#'/%?-'K]W);5ATQV\$,A-
PZ,#F()48VH'(Q.;BW@)3!9.6LZ<[!#1 1SQ8X4-WN6NA(^K9>H;*<UL)["10M%W=
P2.=5&:WR.LV8G%OC%\P0CJWR4=KW-$9^6K:-E]\JO0#5 (:JF8_OW=%@XWYM;7A&
PVZ0\GL'$KVKG+,*)5O>B4%"M_I86$[#:"#"N*?&^8Z!X\.#D4]W+!0_Y5_>Q1L4/
PJ/3QXVE#LK_,<+!J@86&,+B"4>S<";\F7\98Z3?Z#EH]/E!#?V-!,=@>S_V^D#U0
PWODK3CKTU2G'<_#O$F=76;M"WAC"(9\C>9^)#O>C-:*+_T2"9S;3>JOE+F<#2X%O
PU *K0:4,4%PR$B)F["G#:Q7B<:R6%Q#%.ZDR5U;@=1PE/ OWWTG5U8<[JNNP!=XN
PD9B3'&W_9)^VB.D*;A(C&<3[(E.!=#I]_#1K9"I/0J6L7C5V>9OCW2DJ6:&5[KK!
P4J,;X!E\66^P1A2WV_/R8QRW6WX1-&7NI$=\#!S1@8?LA?G\WAUF%*]9>,?C@B[H
P)[OIENP2W=YGZ3B:6^DV1GV32J8-I6Y:+"\QX:L.W0R+!R>1CXL0W)C%!OOHG$GF
PA^-1)ABDB[3C6YTF!IS>(Y"&&U0QB.?3\3Y'H 93#XM>?\Z._W4X%6; +L]?8?_A
P[1Y_!\</," &&%&,$!M,25FDP_KFL<!"#/3=701K#MOM9D%;N?[G="M7<[&6"HMP
P>[1(%ZSTFWU@0S_M [1S/QAS,KSCG[_0Y1]9UDH%6L;QTM->N .49S]N63(2U_3W
PNE!S*;\,O<!2="ZDM>R:(5B9Q8CVD,DJ)C"YAT_ZX((E^F:F\LYTE.FK<(QJ/#:<
P(/8XOP&_^=T=4.)A29]5G>[[+Y-L^*SY)WU\1<0&7*2@\U'"C<I7!)'&W%+]&7PF
PJE*T(Y[>PMW*]J]2=GJEJUH*\BLSC$;R2MW;.CQ&SE-\@(VC-(^:WB;%6K1&E& ,
P 4R7.H&=C85^%5WIQ2I;WP,W*O8X7'2V]O>*P8J9Z?\PGAQ"S"N,==1S?RE\/2.A
PQ,F)0<3U!$^W4C@K#*/:.)YM8>5U$8UC,BM"[OG_J7@'#]'6AW6F1- 5D*?;HICX
PGG(,OS&3F8E ?1<Y$W;AR:U;6KATZ/VWL_L$>R3T+0B,Y* 0Q+(L*#3;_CA[T9:E
P,9CW(S;-,G== 51=H\:9-50%.G#2ZDUBUS;G9=Q!RQ9+;]VZ0 \&)%:IK42LF4 )
PGXBD,RLOD*OS%W]_ UXIG9+&99W3ZR-\->C_HS*ZGSLP;-(9)_S0UJZ0!S4ZC*.K
P7ZSNS=!A,!XQ2BHHA[T;XPF8XPSSQL=?C+/P.LW!SW^E;(O&"U[P9^.]:C2?WWI_
P(.90!/SC!DQ"[,WF?4I^Y>(G'UM;:BO-I^CLC/;?X@K,9^7+F15,5"D(ZJG_B ]^
P-%PI[W!QQ\^HHB(07J8%+8'O>1DNQRV.7ED58$YBVJ/EM+$\W%/P-OEO%82QS-LC
PZ8Q]7V_%Z**%'H:P19HKGF[8,A&*"J;ZG-2RDNY( J$O+>P4J^L&Y/L* DT;F'T?
P)'^-#JGJA>NEL].:^5'IKNGNVDR$;0<:R+L620;/O"4!-4<YV7+9EDX<SO1GIC;X
P?Z4VZAE5\6& YGB,P3:@]X'HPUI,$#_W#'4+[+IACSN,;*:6$ZBR)+;R2&@WHDB#
P?;]Y1RWS7X/::%#*;;]7? ]^6KQEPU0IP=U-5M,/_@0RS+H[/!_'/[&ZP:09G5#W
PX2]H>GXLO5YWL)J43X><%$?= NJN\#"= GX.-./5671[S]53(?%\_*DFG@1STI-$
P1 9N>%9>XHK9$4'OO,A(ZGAIY"5W1L;O6WBQ:*T:=74T*Y.MC8+8C I<J5F*66*R
P/!O3:ZS0@%+5K(B:F5]=5SBO6J1'OQQDR*63I(H&0#PH5$2.1Q)=%BG!-(0I4F09
P>1EV[XTWH7S2\UOHLJ6Z23M@G51N('EV6OQ0.L6?*5[GM-)IADDE3,L?.* N#I^3
P=5:NQ_#6T73H\1!F,ZM['*(-YIR^-=_0FS_2H355)PCU0U7MV*K,3(WD@QE2<Z,#
PX.M7R49Y <V=.N7<SH$@VC1MRTDG/R+:IYQL1FKI(77:8<%\,ALX7<?,Z0NPR322
P6R#\PBQ,'J&9?0<V36H-NW>M2XVH_#6>TBAP0\HLH_@#_,Q23-M@^ML!&@D4#N$"
P?:-#$]2OPYB./U<)?10^V=!GS_S($I:R9)>1K6DZ9UG+9M '\-(\[WJ&H7H4:+Y]
PH(, /K?^3PZL,8J$V2GP,BMVMO6ZQ='RU@,N=-2Y&',751?L4'IS9?/3L\1$S_7P
P-*>[PAGPXG[.IR8+ID#/>=; &;D<13@O$ .IQ!6@'E_5N?[([')".4#ZQ <GRY#=
P;>A*=6*+T#7(/H''=ES=-J2P*ZF/1.JK_@C0OGYJ:ZH9N3'R4$0!W!I*N B36/""
PWN6C?O:$9 2/\(PAF*-^=NQ_&Z43:GC^'\''FV4[/'4[VWX/ "VDS"%;92,NTA]N
PJGB800EPCU0 [S,U>;Z")2*\&'%Y=6P:%W*9H)^"_3<075(I#ND7<)TS&CS;;-?N
PD%EHPL,\ IKDGG2$7=CAZEHUKSH,G3 >FWPW.8?HQKD(BO%[-0]<)J$T5S2!=OH&
PJ7P.0C_GO$;3%L=0)18H'O@Z<74I$SW!U-=*4OPB0;$$@7V?59NJ7_-2J_7.92#0
P8D;88C%PRHAO;SAZ/QA0'43>MT NAD=!3EVZ##4&CE:>#MY31V%9;>3X.2D3O57%
P$X*03=&1*T$"X&+(5=6UKF$>IA/XZ G%!,3C13I6#XA[&:3\:7N)'5:L[S"QA]N=
P&F?.)3N.*"<'P\B+2%_HQ?:-(&9Q0B(C.QW_U^@N[K-NG$)56X4+D) [G:N/L&&*
P42D,'U(85T*1^RCX?MQSB^JR%WS=C,*I)V15#5-J8]%+;&'*>!6A<V566A42#B0/
P51$LBC1Y5R[N1]-/C'-6]]D&TZ*./V$FTIK3XD\[+W]3(=IHY9/O"D2GU*)U"TD$
P/^>Z&NB 'YB@6Y,!:Q@VI9]=9_MK12=/!U\S_?V6$JQ:?OB!P&PLX/1 FGL73&2]
P+=NP]_N(W'%8!1KXFDBQH*: 8-0TC]HV1DJMQZ= \[!P+Y,F'V.*+>TFG_)6'.EP
P&)E/FV/J)V@W-_9D/1=2#3^ L<4H+IIO]0+@T=04>+K3(3V9];A_W9ZB*ODAREB5
P:#SNRWZ:04Z;6-3!;W (-O]XB?\27U-51W />0P&N8TA!>A!S'>?V92"L$([MZ=M
PZ@;D79?$AN^J%_B*=S\6P'Z-KJ4/%%O;>@R\M:BN2,+8.I=X!*T"\[8E.TBQ&#Y<
PG_=^Q 9@'H9>,_'Y$K17I(O(*4N,1;@)@P0F>^]96+)#+K:&)PVY@F=>.--HE(["
P!:)1(P0*NS"9GE%J/SOH&QK>"60A%9.+-KR:C'7''6YED:1?YA&[:63H;@=6_;*"
P&L/J QN:,/DL$;II==Z Q-2$J^@]ZC 39UC.P0ZW^D?8IN<Z<9VX=^%K&]FNWRK8
P_]PQ/[?^*5\5P-"9 MW"FY<YEB"0OA;4G6_WOY8;$N^CBT(H)TF?EW_"4[T'+*NR
P#Y,9%-<APXW43.%UJH;(G.:0/M,X*!WSX(QP45!?> DJ%17 W\DTK3\0CQ<RIY59
PV1F ^<;2=2K<>\05,=UKXN";I7??D#P"ZFH%E7+4P+RP*=1I%A.!5S(X:<A,?[[9
PZ'X]9TPHS6MGX;RB3 OP0(58M57K,)38IH1HJ+<!Z5&G-MJ34/%)DL6 //H[CB P
PFX/Z6OG]4P$G68>N\3UZR[9>D-)6!P.F:98[7 6T6 #(9>#4AME8@8,<]L=Q$,J)
PW,I(G<+5M:MF2:.XO7%. II-(#O+O!&@">4+>/N$MMQ6ED(GB/:AT8%#6S"M1RJ%
P5F%S UE /,^<R(D(W&8/6ZG0>@CU/%ES\<RF53+J[HXHV+(:8#)1X651/O^K2?V=
PER!\S+46$Z^_<;<\M?3L# *\]MP(HL$8SY"PC5^"7[>]V;N@;E.B2=/[UD$8IX[S
P7?6QS5&AI8122/PH!C?.[@G<Y&K"(R*+;Y@L^#=5)06/VBQ';KQ)3KA8L$08N&DD
P:Q@W3YU;MH:;\.*JPLBSDB"/-P.X:.K"#;I[L3,G58983^NYPXTWN^AUV%U&E+58
P*EEQRT5QOCEG-0^U-P);WO)CM"J]EJ%KGFCI,,&K>LADJ*KM>&CL@O[UG?5-Z#')
P7[RO2V[_#L)?H=M=QV]) \!UA+1WD+]4+K(J;@))[E (!G\/7A(0=BSZ&XROXFGV
P7LW^2V,S $K)O]XD1),-"[ <:."M[%J]2Y!W?WZ-C:+<;<V_P%=Q_C<#M#XJ; *G
PZ4S[,8^8"6U5<<5LM$RY*UH9FN\ZJ]O97>?G.[F/9$;X6]PHT?E2[BHOSQ3QQ=T"
P 77090K0IS6\'':1Y),VEV@K]HE:3+8 QP2(YMM3'[['EE2%#KBER"%=3LM-W AO
P"BR>ZF@T27)F4M0 _!'V_STNC'QDCL.XG?YK9O P^[^,:!;8O*)*X7.&)TN^2N4Y
P(B%X2Z?&F@_D*D+^Q1VSGF<M)B!ZW8UOR)6*NJ)2"F*Y:=&-2 '&^I#DOY_W)WPD
PW]*YGNU]_P%S578Y10$EU <:3Q\XX8_Y63X3WBC)!)-5BFQ("@*3W[5*#!7V95TH
P>_2Q":&ML^ WA(18TU)=LW*692=*&[J);>H88!BJR/J-&"&O%Q>W+_C=X9A"DW%V
PZ4N^F\>G:/7*FY,=L:V.V?U%-ZG8H7FQ78COWF[%&"LC3?U7_OLMIYJU""0RB8A4
PU/-4K<(,95U^J8%QF.^0FJM?I.LH]@6^<YVQO+^;*%2%:QY!H10 ,JU,X:([ =V#
PA2LQH[%7#H)6-GJ7\T[UEW,6(O!(WDMRFT#VZU>A07KRUIE,%Y2B-&V>G[2F!EDT
P2-6IEB>\,D\+)-XC](CCNS^_;0+?Y(//ID&5P&Z.V2@\VVH!4/TC1HRBH.4<,0?9
PQR0R=)N?A:5CT? 3E40$]_P)@Q4J,K@?"CH65>U8;?-^Z[<J NZ$&;9'K51U,D'D
PGOXS3E?D;0AC>9O6<K*==>!^?ZAMWHJ3(!B.G#1T@BIFF:L%\.L7FN1WQ+SH/T,2
P90?ESZ_@LAW("B<*$_((<W[-VPF*OY'OA'PA*VRF(=$+7:*MD+O9XYU\6*>!9_HM
P_7=PS;3&(S*WZ/6=L3=ZM_J\M,9E!E6K7R]Q1?&D-ZH7]N]W:%)$$EPIMCZ]@_>"
P5X$RM22L%^3M$Y]-R<P:%-HE!W=<W\ZV3RL+<<AF"@H:_@2MZSM J'$T@S5&U^*_
P2=_L2@6)1,A)CA&,4R^N*]@0X.S_6\=\MC/TL\>IID(< E"RK)HMSE6:/56-,]$V
P3#PBS;6:P>,$XN*Q72:&@$PB5@XV%+?H59/8F)J:?(8<W\>/U_8K5)@DO$1&>B+\
P0@@B6#6@9SK(7]0$I4E%(MTXQL? HD--+0;%\2088C(#O]X-E\R<J9%3 3;RX(4H
P]03BS9N\AOD"E[*G\\1(S*4E;4P^)P]WY_[KU@JZC'7&55O 4(@HW,I&*92+W)OH
P<QPF#_>+H,L(J"067[Y&7])A<H5TBGM032@W/XP\ZHLHS/Y\C/]B/U#,]H9[O;"#
P=PUPT52_X?/RT'ADQ?9R,^AR2R>-7V%>>&Y#YYDDX[8P4YTX:V]I=$I!%#6@@FR!
P""=.$6[J&2]Z>0EE:'< ,ER1_SDS0V &-W!IN"!U>QZ-Y7U?C3T&-4EBE-WO8-4F
P/D@!B^-Z06V;;D!!E,@&))=-HEMYJ&BHY)JP(B6&"!,M)X]QR>U%(,4-O,+<?21S
PS-J(1P7F;45G6D7/EJ8WCWC5JYP/RH28FEB+JH#;2I/-<_12.EC:[[+-@W9SK$HW
PKCS9>FA<]'>U-%/F^=.2V@)8!__$ ]W=/YY@_VCUTP3$;&O/@Z%>"]Y97CL=E^F#
P.#R#GN"SI7HU8Y-XI[JT3,+O=UX=@FL?1:?1\8/81E"D8S$Y)"$K89UFVH4'[ P.
P,0[IWP^G'G&;J]&S<+1RKH\C=>YC$%3'.L(NBT)KD&0<Z*IL(UXY:P=6%58=[V*/
P17+G$H6!1$GEL:(:WL_QD[.$(3-8RH[+;)YJ12!XH)TH][<L#@J">%H2%/N&)OK=
P9;L&Q!F?ZO?62=AMJVP&)LH+:H0&$8@T'SF9[<+Z.'6O6]T3-CDZCLE49 @%:N["
P[9]E U$H1J!)PU&837??NKV<)9:5_QMD"$H39_HH*8[,A8PV0@B,BX%R(VYU&@B,
PLN/3J3OEY+"5=CLJ+;'F:5OK^']UAS@A362T>V$;N-\9"#^-  9I%IR9D"?3<X#[
PN$LWPQY#Y$/:TO<NH$P;%%I/?5GT+;SCM1.LQ93Q^V5!^#5_#"=T=*YULESWC8,#
PWHGBE,!!9;QZ]NZ^/G;M7SJYHRM8_"\B9, 1'?+PS W$H[?PLZ1$4LY)@.WF$C,C
P#&!A"T-)'1$]0W8T89U*+J+H%Y@0Q42E;VR3#YG8YVB"ILTV'M<O6B-V$P:NC:8_
P!]H4U$#HLFC8'.7>,YY5DY7.(S$EC1CP0;"+W-2:8Q--5_TY+3G6APPL$N#(]]I3
P 5R_50SL 1G\5-*J#N6,JXW0*Q>]*[]V5P;$C.($F3ZZ4T#D(M0;N8_(FL7;P@'S
P;@S5%L?K]:*/+;*Y-Z  L(")VX^;NU%[[7J%DN("YM!2,OKYZ^9O#+/]Z%"?>X0<
PU?;!YO>L)C$]A"NW)2UP[@3VC1HF#<)U@=9-)LKGZ.EOKE>$\R8'6 ?A1 9O?<":
P=_USHPO9,-NNRR;LD1NU;-%/XP%;:)4:3 -/"\*?HE,:C5>B.!+'@!O2(DBT4MKO
P4C9DFWY"D**F1=AA^_OSHG%E3_ZS80^_;I1;?JD^^H'F;C>&KBF)04OV,1'HK3+>
PG,^[NXVO3^2RP[ES7%PQ1$>025)"8'A3(LA]PL.>/1*95 R%%^K"O_ECZG48$=U<
P#Q^")%7U1+S>8"?(8G#GY%%! >@HC9-N_WFR[-VXGOZF%_]5V#V )V]&_9EZ$L:$
P["^B]:[R*40':Y!)*W4#MKHH=.WSH*6Q[;0?H_G?8"_HNSXW(2#M5/-_+IX%;#+7
P!RB0Q_S@#%@C\3;%S4/!E3" C:3[KXW>,"]+4Q.TN\PK[9]?J@*;"D1LMB9X4;*:
PR$K-8N40J;ZS[RV"%!6JQS_'Q ^LYFH:N[W3IE]*]698V\$T;WCT4NRW11&$QNE2
P[C$BF(?M:\91CWDF=-@X#D>PD=YO88K'RN;!W@F\6V%3-]U>+DXIDZFDE&PP$<Q3
PQZ+735K[@XHLH,/[+=(7(6FA! 0B_E./MGZ<NXA(FJ($-#I,;6 CTXG99/A\OT'Y
P_.U50>'"J*!GOA\45X\2)-M+(5UOUQ(%Z22EH#YBMBH@[II1QB2+0]3WFQ$(E QB
PA$"M<6#>^5A[Y0+3<,9Z?'..:S@M?9CG>/F^Q0<]2"PL8J>_[A_\?VX/TBVM+O@-
PO7G<=><Z:U$M=BV-2K9P1R]VY<]\X#QQ4'APF$TP =A3;8A3;TIY<21:*A=W4 /S
P]N/2W$U2YT</9RFV(]=>YQT=RSG\=_,3*HA<2C02SP+<)-;>&!E+9QD-D&;+>$A[
P6J6K#7*H"RV?AM&<R(T5O_<)#QD)RH;;F7I=,YESK3\]1Z;I:E84[9[N\G??UONB
P>RD%^RQ4JL%LRGI;$X5!?PH"XS4SP&=<_D3;"IWN97\!ST:S#.LBQ8"7NXU\Q^T\
P99S"S>XGXP-WJ7 H"O.7(N_<%%S@N3\/('"5D0%\B4Z%#V".0I8QH0>%CGC"./AY
P[&FM^,L81_THSMKA /#T*F<*8W:&#J1>94R+AKRJ='>H-%KPX]CQ=8YS?.,''AHE
P^&S]S'P;G!CB+BB"@(454O=HQ1:,S5Z'@39\A?,QI[[N/<FXM8S_S7UF3">D.;'%
P4J.G2-YJ]+D%I^0Y%-'A^HXB<;KI=;D+<KTC[FX(E'7>'*M(<2J?0_"7XFH6WB]O
P X6UZ1(F],S?7K9:R<#\./NW[O3'F@8SL>A68^>23;U0A.Z1_W/!L#S-I8B2KF);
PU)_U6.EJV;.I#%%R=XN=($0A&9 \6P&()(XV@+R( P;C!UL\J_.M7(H>9YYJ-]G&
P6 F=_+8QRKF!#KJ?7AYF<V-5Z2C]WZ4X;.YV#L;:(Q7/]_J>E&K]R)_.(DD"U1EY
P@K%A0D=*<GW^8]HJ2-3NAWZ \_+EH7A0*YKLW!+W!R2?1+]2<F4YW%G=?3K]IPG:
PVC>;3XIS&WG)#4)THL_1OHYUKF%S'E@%U\N[)D_"N*$6$;_3SU)K^$F9+IHK^I"B
PXGKQHO^!=QGR+W*>I496?<*-DN-W_6W97><_5C(X1@ZX"&&FQW1D@,Q(2@/<9%>K
PITX>!4^8>VQ-1,;.! +N>>)."(KJ!QN(Y)4'L9A)D]'9_V"MT->3 @[ M$5:/CFV
P/@P]ER'1;@"\/7+,:-/&MR:DO#OM(W_(0E?'&MWXS>6(%*D*>//@06X3#^R;<KD_
P3JJ8:Z!9?' L/Z >6@S7A7(=\4P99F>SLM&+14HK)OZ$SM]A3RP@%M%7__[6!K)A
PAPE(/"&4KGRNV1.-98J[Z:AX^S@6XJZ*&#K:H:$H_Y?L2KK5KV1R)YK_@3U(/]C]
P9C+]^ R-[G'#YS?PQLS-1:/(<?(**7EM.A0H<)V=%=Z^P\9%#=FGG/;\&"(2.>B<
PP)7P7VZ6K6_RH@F$.K.@?^.OZ6_PLMA]+)*$8)6 :D#U:#S>FRL+(*E/LQ 1MG9,
P4 %IJFX@NCPDR%TSYHC^I7YA8%.;SZ=E#;KC9_9Q^+] ]P5E]W+QHLF_E-Q*9(BY
P/QH JELQ"G0B!VOS_#.RF"7K@E)S=\"[D)$N>FGE=[+@*X/<2,&.-N- NKZ])+D&
P:?]A6TI4/-MUPD U*Q80KRSU\^]N0 VE@^XU14E6T,^@M/R!3J!2T_CBL4K[7I5T
P7<@RS!6JM.184W,V\IMR%JBB7TXSHP'-_ZHIX#ZOZ[J:0U(,D<&)F_B/"/%#G5*(
PY"\@UAFN]E4]>.W$EN3HB>T, >><W=_0.$:#,AXD\G[5$RTQ-D+*B_RZ4,G%%!U.
P+=58I$_QN>%(PUMC/#D,CS\R0-2$SH#F>#<-#O#Y*_@VMN/E;(5M-=>CMT]P^@$@
PUZFE?*SLS6A>?]-X \RD7I2LCV-:5C* 9L)I-JV*S@997_K3ZD 1*&Q!\!0P!PWH
PV6##A,G4W=FM]48N@>@[O97]OQ!;Z;;DVKZ[Z7UBZ3;=QP/IXN<I@&D$SA:;4PLQ
P;]Y/<;F(+F[?&G10OQ)J<5LIPR8X\?M):4/%]BE%3RI*GV_7F#I'ZF<W()D/=AJ@
P%<BDS// $Q%#YJ_N3F+2O7_&'AF7W]5<G/M@9:MYQQ8QS9["G%H7E]55,6O&A'P_
P97&DNB;Z<7C" D$1,\=IMG%W(&'YW?]MRH?8Y>@/;XZGPT9[- >/&EATS614PJYA
PG O7L*"!U,YZ+>"S56G&:CL(FO:M._IJL-9*'7B1H#:FV?,R17_XTB<DZPK(9JHP
P(W8U30EE)^".J+[;M[!>8!$;:P&8J>><7&V]K>I;(49W[ 7^OR>R,^L"HC<4D=O+
PL09(OU9BI*"Y\\2L#^PX)V":ES/S,A(QG,MW&AJ8E!CE*N98%IZBY/&^%5[F] IQ
PR<)TF:]>7H%/)X1MKBVH3*!?V7?-S:5O1F3'25+]FCR(!I124X7)HH[)7Y]HQB_D
PS':,RFTTLQ:?<N;U9@<OD*;^T=JBHOL*/)\@/$D'SJIT[P33%]IY4RJU\B@$Z0#N
P7K 2>(^5@V9A]$F2#=\Z@(#D!$I@9)+XY^@A,A??G_QT7%T@DS8'PZ)GE2Q@=3F@
PNU<IXE%JM[*:,1O()8I-1BV^=G"_-6 'QP0V5MC/)(3J<DY3O%J=)H]3*.%9I(1R
P1^U",?A/3)UVV.&[5^[0)43<R&*Q/;>FR?[3@,]"%;8C/J3>7-#S6EAR$27"YG,1
PPX^.]P)J9G0L>VE:9:>#O&HU$>U'7I]CDKOV219](&#XS7FRR Z>C_P)N341118S
PIJ1IG6FF$50EC\V9*-/,) _XPMV9QBIHL;-=C"<DNRO3_-R\I\"9JKMQL/D7 Q5>
P_<5>JR##"];\9VVQ1#:Q7MV,!MBWDO\DDN)@$U/$DAN<"TI2ZV38(-4T?X\B:"T8
P8 N6*;4+H9.%E;!_G87FI5<1N#O[:F/6+$K7J_%N$_+$:<]8ZS%HZ+[ZV%&=@3Q5
PZSPE[#_:>B1RM5??O8;B;+$"E_U#[M"U4O<<U7*F$)[O5X(.BKJ@K?6-Q9CL;M9)
PT2O79]F6K&>4: 3-C>Q<(/%N  :F%84(GM/S@SS84<"@1;$M F=CW!^IJYQS1M0X
P,%J)O;#\1DM\X>S>_A*.GL'9'H@/5(H55NY"] A9FD8K[IO*5],C*C>8\R7Y;C *
P1,2O$<-3WQQ2_1M%+NO)/(\XC%TNM_C"4^ E0A^.2A%VK],(A73=HNF':7.?B2'F
P? "1<LCIL9/IM9+R(UW;:ON\!Q;V0EP)M.6]F1&-=G*4MBM6M_+<O BHW-IHRD;5
P?+Q;,-9+%T2+$A>6%)B";7N%M)EP%6?\JWZ1MD/!_B^N7.$H.IQ;WYR04YJV\2<Z
PP8[Q:!]?7<%OY:[Z/P02*FDPCX$@ZYU5<-+*/+XTL0L;']*;VI7W8%L8;5) =W4I
PD@60R.L2PW/YZ6Q%,*2E4">P$!CC;'48.#MY)Y"B*O"++/G,XUN!+=RF3J)JK#+.
P/1E>NQ&TZN(BO.ODM[4.L%CU(&\:TN9ABYV?6<N0""*OGF;CJ+@Y:]1JUA]46H^M
P3:!PZ,<@)(Y8S6EN,A2ZJ$UL,(_7Q.BCZ^E:"KR+.& 6%C&O.J][D=6[<8J94E&1
P84V$V,1H:H94@R,,[).6+JCN#&&KW<0S5=;)9=>9#H,<D$'F56K4N:=:$.XLW4+V
P]:[!N5:-53)02/)P^_E]9C6Q1@Y=^5PRH,= E%D%*RQ$B R>OSXA2O"CU,I[@FL$
PF&2-L]XQ_Z][F?*W[W+/CZB;X0>ET;I:T94&_.V-4Z8K<_%3;"CHOT^93MR;4=&3
PZQP"8_3-07/QE^*H:7>T.F3&'D!Z$/&*1%S1$2V92D*I_.9;7'!]]',S>RWD@[CX
P,R4AMUE?2<6HY#8:Q4]E$P>ZRP'P(J\EC^<4.F1KO[[7#KR[1L$ 12EALJ72H?[Z
PPJ5F.-2[R8]>[5S]?%YH^(AUR7K,$=_Y;T<4X8X"TP69X'5>0+A_&S)+7OE%K^L_
P*H//^WM_B%I5_(^[T^JF4>T'GA!<6\2$1Y351,VNN7SU0NS8[,*4-@:R!P*X=;-&
POQ$:02%@R*5G_D>IQG+#0,9.CRZ!L:E)U3/5-=[[_6ZJW\]+T36*9 *3.P^7)JV3
P17#DMK$(]T[Y#BL4("AXU4#+=?ANIG^]?77"4;Y"*HXT(8SUC;/"H97^_OZ8I=_^
P,OD!=%6)KUUS6WJ>(I&!'>T$\;1'A<LJ%70W^7D/^#P7</6W>?&1MX?-:SE\5ZL(
PG?$*G B]=6]9F8$8ZGC2KSKQ[(74$"TP;O9/CP493"/HO\7M;7.)J9)6?=8+;M?H
P(?G!P.G..9P;(BEX>QALQ>=@RN\"'BO?Z\K6PJVY(A(RK$C[4U VH, ;/.9E#,@5
PT3ZF4C1(VOY#>TKB07GPGVC=]2:95L"*9R$8LHKVNE-%NR!X>J^MS,[S2%![U )4
PV.2J6&A0>3]KXA(<,"$MW$;#03G)QTWP:T%3='(;"K\L1#Z)]H>J47BQX!M/( U+
PU*8Z.J'P;8EW^-OKB'K#<_!)!GG\Z!="C1?5T&3;63X4*RNN$<&+2!+D"LRA*GO@
P_-82T26&K*.:@-0Y/^5S._#I#?CS.*2\R8EY7>$4;_PW&4W;>[B:-T*'G6,EXQTV
PCB*REG04="XL> EQ%<\I36!7QY/L6^&CE*G'$IO)Q:_8QZ?)]WLMU6*\:8&JL6?N
PIA#,M-M\JJCCZIY?3L8J-F>FKUG281?[#Q?1IL_0?==D@5:5]^"UUT%6$!2X45B"
P;GR<-'[YZ(JH> C"OJ.+>P1"V@B@;7._$)X<UF!W.O%JJ=Q"*QPF1 <NLKV3K;'1
PZ-;CNJI5Y64^]?JH9//UK#Z#NLJ(AJP<D1^DJ-4BY+?)=C71!QI2L:. A"SW?P2+
PF3\AXQU:.M*W^D78&)L6HT&FUXD$#?4!2<.4#S751<.MJD_C0&Y>0N#I5#-O@9R4
P@*P;T; 0-O:*"'0E58Y^&^@\ -PY KYH9P!<A-2EM'K)Z0C,)+'N@!?F,RNK82DM
PQJ45T:Q_L_(I4*H^3OYUM81VN+8%W<Q)W5653+[^!X*K$M-9*SPDV^=09_JEDM,*
PD!0P?TY5+=$T[J*Q]ZZ,\$S1O%.@#H][KPX%<3CF#B2;XU*,>B_DT?\P?A<J6BLO
P3X<VS;_YA01P2>RM;X&"LU.KOW#R135G/H29PO+,1V WI/1"C$N#2)#W"L'2.=03
P8"=NB/3V[Z0:5:2YKG/]BP7>(E*IW\PA""9;HFUH!;L&*:$U'=QR81/G$/U([@_@
PM.$'("B#.=8U^ #Z@<E.SKMM"DTM+GOF@MMW*WR0'GNP7Y9E909FK5J08DUO+]TO
P;6.2326W7_J#]E2K.S'@'>+56,6'DV-0;&2+8I@%;H AYBF?MD9$$7XA(:B<PGUL
P\?\WJ4\8-\+$J?<,8-O Z/QN:.6BD!#\7]CD#8GWPJ,NDE1>9NFB#3 \8%P@SB9O
P,I[?K-8YB*,MIL0/"%@?B[;_+YX21^GR"VW<X>^5$I<Y[!-QH&J2NL)3D?QLFIE[
P7*FV2W.G_]:L0^HT2Q%7I2F4^9Q(<T'/R?TN'/>69Z4@DU=Z&)(4(,'=X/7X28B0
P0S0A<6M*MZV"L!-Y0XWBT))&F\=-"6PD"1*N+SRG#@50^"BI3$QXZ=XQNLBX)RI5
PD]0,9O:@6,^3YCY ?(G.7L(-W#TR A(9U?$=AQG5$])S1[0)9$PEE(NC6='65##&
P5=,M>.H=F;-X@7BP^6+L>GF*#N_-)%P%C))_>_(L15"KNIW,&\'3-!R>[!:<)HR-
P)*X"]?5.#);WBT<UOAH@U-^M(/99G!RPJ#FM2=1"G^)V<9V ^QY3A\E.'IU%INL*
PSF%SD8!BJ=TJK-I"/T*1M?&5PM)1@!;*,$K<LU<X<'10P250<)P,]#8%'IK=J[UN
P'[@H%W;8T&VH.]-_$ZHHKA[Q0^,@A3!5PS^>E3CAPLW'S)GZ?Y#D$$+@R@K2+#ND
PUR.%.=I@ML@>:8^",1OZ@UH??E*P#WP_A@@^1Z>'2-;3U!![#.*[Q@B9/='.[VOL
P9312 _>QYVM6HIU1B5?R;#9?%:#>4+;UXK6@WS%5#1)&Y+FM)#%$IAN))5I?/(*,
P"$%>I@31M-0Q2)?F _/#'H)UF-:[@,VO#R"HHID=)TA9V$1IWA9Y]1_G(7I8XF[6
PD8#K\MC;ILYBVL,O6P/FS=-_1P)_NCW137S9W(WR8HBUX$,IM5-&1A.G6'G#B C2
P^6IY/L&8%\5#0!1- =^)_7OF[#P+([B,,B,!!]B=MHJM6S;(YEBI=3HH[4G_M2#G
P3QOJ(EZ#/GE63UA1G:B]4,!KC"#9=[>/P77\,#\&L&MO 'O;0(IL+ VD4SDFE<91
P[+L0O,N!#)R(-:[, (&%'1;SNKW>0LEE&Z+1LE.M 52),TVHOM6924/AK.MHX^".
PZ?YEX#?,N' _-.,KK,7#.-*1$4]78;'"P1?TUWN:/-@^PZ3<V5F+.RVNOM5-,O*-
P_A-RF1V@7%<A5N?T98&#-?1S,B B^%F*"^1P V/$N?N% (^:SB!,LE.>_AM\B(X?
P.MO>OX.[^%9C[0&DEGO@<&-H@'9^@>_1AM9GQ%,"QH R4?2[GST*AFO ?!V*%#L?
P2H!@<V_@+BFF1T8 4Z*Y;02"36\DARJ2EEN;-XY8U$2V9B5F+FBWF6_9,D=3>'$[
P0G6R'8NF;&"ESKEEU85I9J;X,&L1DY81XUL0F0:1>T\J=3]N>P&\YJ5OUO_M>Q8-
PD]Q45&XQGFJ(PPXP1[$HF+^+X=&9=X>!4GT2DJ>"CGW3@WHLXL7-.1]B=H"@Y%_U
POZ1IISM]M>[ OXK!W-V1L6/<\^[JF\FA? DATR]VP]MYM)A^'V]M/)@9R1AE[T3Z
P\2_44RD[):*0S<.&CZ\[V05D!9/Z1IGR, ,;X31&2A+!LXKSS[?U'/.^-1N^+_G7
P;,)NT2XF(AH510>@#:J3_]DR4Q]E@K<R[:+'X)0BBISG;4"AY!";>+.-=@V/(+&C
PX2:<[*?T<$:'H"A<%/(I@5!T9[5%29VZ!BY-LD@8J^J99..H7X(EQ8JR#U[VFQ0S
P=+R3U_TV5&/.-J05KVGY\]/L']ZX82D(-N1(L[H\[F*,[ BV6FGFFX)#[GM?P;<C
P=ZW3M'.)8R6J:W.]D"%%WNMR*(]@.*9N_32&C8.KJ;&M:S_=9(8?W1[6]&A .(HF
PMKZ==BB^MV 78^H$*[!!CK)$X7HL#5V'I[FD.3SF-,X,T;:[MZ7-4T54L1MM;)I)
P+0/3?T[7%1QCBWK3RJ@(!Z$HO?<RA/"!)&3.[EJR\JR&&'$GK$G$+<' EFI@OC&"
PPB3?ZI;-&K4?$]3)[T7- I[6LHUZ$(=!%KWE>OT5>T!)39UU#Z=2=R>FUG5[X9_[
PT!Y+B%2FB:E+ I5/R"^&TJA?V^(X_8Z2;J).!$J7G\KIG\W57LCISGL<*FQ< Q:9
PW0IXGJ=R?-JP'U.L9"),JJ?V46&:!446MHG7E$+)X.[Z+<&8@.)7'P)?X*6@&0.C
`endprotected128
endmodule


`resetall
`timescale 1ns/1ps

module M2_raw_pcs_top  #(
  parameter DLY_LINE_WIDTH = 8,
  parameter SYNC_LEVEL = 2
)
(               
  input              pmd_rclk_80       ,
  input              pmd_rclk_66       ,
  input              pmd_rclk_20       ,
  input              scan_mode         ,
  input              icg_mode          ,    
  input              mbist_mode        ,    
  input              clcis_dma_rstn    , 
  input              pmd_rrstn_clk_66  ,
  input              pmd_rrstn_clk_80  ,
  // input [79:0]       pmd_rx_data80     ,
  output [79:0]       pmd_rx_data80     ,
  // input              pmd_rx_data80_vld ,
  input [19:0]       pmd_rx_data20     ,
  input              pmd_rx_data20_vld ,
  output [19:0]      pmd_rx_data20_slip,
  input              mac_pcs_slip      ,
  
  input              pmd_tclk_80       ,
  input              pmd_trstn_clk_66  ,
  input              pmd_trstn_clk_80  ,
  output [79:0]      pmd_tx_data80     ,
  input              pmd_tx_data80_vld , 
  output [19:0]      pmd_tx_data20     ,    // TODO
  input              pmd_tx_data20_vld ,    // TODO
  input              pmd_tclk_66       ,                
  input              pmd_tclk_20       ,                
  input              pcs_en            ,
  input              bit_lock_en        ,
  input              bit_lock_bypass     ,
  output             pcs_lock          ,
  output             bit_lock          ,
  output             pcs_reset_det     ,
  output             pcs66b80b_uf      ,
  output             pcs66b80b_of      ,
  output             pcs80b66b_uf      ,
  output             pcs80b66b_of      , 
  input  [63:0]      pcs_txfifo_rdata  ,
  input              pcs_txfifo_empty  ,
  output             pcs_txfifo_rden   ,
  input  [63:0]      pcs_cmdfifo_rdata ,
  input              pcs_cmdfifo_empty ,
  output             pcs_cmdfifo_rden  ,  
  output             pcs_slip          ,
  output     [63:0]  pcs_rxfifo_wrdata ,
  output             pcs_rxfifo_wren   , 
  output     [63:0]  pcs_cmdfifo_wrdata,
  output             pcs_cmdfifo_wren  ,

  // register
  input             tx_scramble_bypass,
  input             rx_scramble_bypass,

  input  [DLY_LINE_WIDTH-1:0]          rx_delay_line_data_config,            // from register : delay setting.
  output [DLY_LINE_WIDTH-1:0]          rx_delay_line_data_pma,               // to PMA phy    : set the delay value.
  // input  [DLY_LINE_WIDTH-1:0]          rx_delay_line_clk_config,             // from register : delay setting.
  // output [DLY_LINE_WIDTH-1:0]          rx_delay_line_clk_pma,                // to PMA phy    : set the delay value.
  input                                bit_lock_soft_reset_tx,               // from register : reset bit lock state machine.
  input                                bit_lock_soft_reset_rx,               // from register : reset bit lock state machine.
  input                                update_bit_lock_dly_cfg,              // from register : triger an delay config update to PHY after BIT_LOCK0 phase.
  input                                update_bit_lock_dly_cfg_tx,           // from register : triger an delay config update to PHY after BIT_LOCK0 phase.
  output                               bit_lock_chk0_done,                   // to register: tell software lock0_chk is finish, software check the status and config a reasonable dly setting value.
  output [3:0]                         bit_lock_state,                       // to register: polling bit lock status.
  input  [7:0]                         bit_lock_retry_cnt_cfg,               // from register: to tell sofware bit lock retry number.
  output                               bit_lock_retry_cnt_overflow,          // to register: to tell sofware bit lock retry counter overflow.
  output [2**DLY_LINE_WIDTH-1:0]       rx_bit_lock_stat_per_delay_line_cfg0, // to register: to tell software bit lock pass fail state per delay line config.
  output                               bit_lock_fail0_data,
  output                               bit_lock_fail0_clk,
  output                               bit_lock_fail1,
  output                               bit_lock_slip,


  input [31:0]      bit_lock0_pat0,
  input [31:0]      bit_lock0_pat1,
  input [31:0]      bit_lock0_pat2,
  input [31:0]      bit_lock1_pat0,
  input [31:0]      bit_lock1_pat1,
  input [31:0]      bit_lock1_pat2,
  input [31:0]      blk_lock0_pat0,
  input [31:0]      blk_lock0_pat1,
  input [31:0]      blk_lock1_pat0,
  input [31:0]      blk_lock1_pat1,
  input [31:0]      pcs_idle_pat0,
  input [31:0]      pcs_idle_pat1,
  input [7:0]       bit_lock_repeat_pat_width,
  input [3:0]       prbs_mode,
  input             prbs_en,
  input             prbs_err_en,
  input [6:0]       prbs_err_bit,
  input             pmd_rx2tx_loop,

  input             prbs_close_loop_en,
  input             pmd_logic_loop,

  input [15:0]      bit_lock_wait_cycle,
  input [15:0]      bit_lock_done_hold_cycle,
  input [31:0]      bit_lock_pass_pat_num,

  output            bit_lock_ber_cnt_overflow,
  output            bit_lock_ber_cnt1_overflow,
  output            bit_lock_ber_cnt2_overflow,
  input             bit_lock_ber_soft_reset,
  input             bit_lock_ber_check_en,
  input             bit_lock_ber_slip_manual,
  input             bit_lock_manual_mode,
  output [31:0]     bit_lock_ber_cnt,
  output [31:0]     bit_lock_ber_cnt1,
  output [31:0]     bit_lock_ber_cnt2,
  input  [7:0]      pass_clk_div,
  input  [3:0]      delay_line_uplimit,
  output            clci_st_s_bist_correct_clk,
  output  [15:0]    pat_default_cnt,
  output  [15:0]    pat_0_cnt,
  output  [15:0]    pat_1_cnt,
  output            pat_default_cnt_overflow,
  output            pat_0_cnt_overflow,
  output            pat_1_cnt_overflow,

  input  [19:0]     pmd_tx_data40_loop,
  input             pmd_mac_loop,
  input             tracking_early_overflow,
  input             tracking_late_overflow,
  input             tracking_auto_en,
  input             tracking_auto_rotate_inv,
  input             tracking_mode_enable_n,
  output [DLY_LINE_WIDTH-1:0] rx_delay_line_tracking_readback

);


`protected128
PY*E?ZHEHLS25>Z8XP(RA)PG:)SSM9#SNN%*M%0:8P_>R87<%CK+OCXUP]^0V*X^.
PZ#:< UH@M8$>[[SPQBA_%G)$OK#%['X:?MOB-)S@<!8+K9&BMRYRV_$16AD9I>G3
P0)*YF9KBBGZR!$.)EWQ;LHOV?\Y]NZMH< N$5Z;4,=2V*/BP VUD9#Y_:H#2Q$\+
PM3:66YY3?S'KY-12<H<)C,J-#GG;7_%7IW&X(#F_IF*$ )+@\:,2^7.4]K)DGH\U
P5ZV8I0EZP07F WB'N6($:&13O%7 7:I9J+WOW$;A97J.7Y7]!3EPMN]^!+)[^RS<
P)>ERMO%.J/-U#LY9J?+H(5#T-D4-,$@R":_I^9V<QNPT/1>(9*J\\@6O :!]GB]A
P)ZWDCT%F:$-7!A+<2L<#C61<J-@*W3.>U[Z4&%YPO\?_#-".;.V'1^WLO*-".YT_
P!,Z6%FD6 ':-X!X+P9T9XQ(@Y] 72>)C=B\HT:[Y&G*_[\'F4?QU,^0)4MIB,V5D
P9TWR?#<9Q::-]-4>Q&LA,N)1YW5?> 8DL*SU5X'5J/OJQPU;@,<KGV9L;6!&$&4K
PNALJMX?K:XD-.2W"G.P!C_R!HO6/#ET/[?Z&5)W8Z04+N;1""\+#6G4?KM'6V(&Q
P[P'FU8N?TA?-&T R.+(O\3(!ZYUQ$E.%(O:(>"7.9&QG5[,*G@V,!=D0I3<UHHO\
P*GQ>JE4ELX"EU2BL ;%PZE6R/!2\);U@.@BF,L,1YAUPS%LK1WV0 TU*Q+S/^>9M
P?5()BXKA-^N>F#6*2_]\)="K4=^1/]I7?"E-GNC-;U--/NO\5:/V,)\$+J/KNEY@
PGY:AK",/>-@Y27S?%%S]PN49AOY\Z78JK87YYI%S,R>!U$G%K@+-\RY^I-S@V<,R
P_K'\NE$8--#C#[@]W]R<\ZV4^-WM^Y[A)4'G\!G44RW>2<'HTR[)[R!A8HI<A/<C
P?QHZUFTM:ZF^U9/GMB*Q.B=[R@/+(^4*6O>A:D'^5@$P()<;"WGDM(]T%4@U0O<C
P#$\EV@BED4XHA7N"-R0N6&HP'$/W,^]!LMLZ8)L,F@^F2>'01KHHB3K?U<9PH0\^
P:P-%V[@>#Y@D3><RI#=_,MSV4PA(!N+(D0!=Z7:'L>P)S_NIDU:H;'9D%/X ZKZB
P0&?"6_B,]<BN#!Y?:,Q<I][7W)\)'*M:C Z%P?@#;2N  >GUU3RA-5@W'5I;J!D 
P?.^^H\2*!NNW@9.]6L:T6[/X-\S3(.MXE(V#ZZP-Y.VM_[_8LS.=2T?/$+1<YT+Q
P\@[ IGGI8L%@W?0!#=,"7?37X2)7C6I+"*@,+?,SZT?"G8S T/A?D0:/I#!VG7J3
P9C<T9 Z0NR<BSB+2TR4<P(3AKK;P4SU9)HE;?IF 1=G SHLY\QRZ;*NW+5LF "=/
PAI"9ED[,[_9O9JSQ'KU,VCO[!^"Q"/UWR(@<X&W([ AW:;GLAXA$*KB(!#-_5:;E
PP\G,<2MLJ9_V54XPIXI<L[.OVB;7HJN:IB04=U$BM\,87'$TA'B]BXD?!73J^06\
PP,;]]0$,:809=V<9(]0U,\7\I"07VIV*I\)]_Y*K[,UUQ^:/C@YW-&%W)0>MP9S@
P*+7[3-A67DG'W[>'?"M@L?6A>>J$.<Y3Q[P;?^-]<DBZNJ7%V\ID1HG^W$Y86GT%
P=*M89AGES@FWJ(1 !J(#/HP!VC!4KZ^WQ/F\@ 1*/OQ--7G7'# $7/$&TJ=H742,
P8&1>,V*\E["AD/J4JAP8['5+=S^T^ +G^]OSRS/A/C.,,.+09I9_E\O\"<6A+4_'
P160RF#P*15B$E)I7242ZJJM%NE?;'YFEEC!2<S[1F\0TUZ,7M/"G8I]G3^7VRI5 
P+AH>9)7&!FCW<(>X[+^1JZHK._W4]F$>_C&?.;U><GWDJ0V38^&*\A1-2%<&Q/ES
P(]+29^BPP?\UI;954]FUZ@[$IENV.A@GC;%L[0E6A>Q*P#!6JBV6F4I 4%W3ZR<1
P0<U=I)UM]>2P<:^#1;R WJBWZY!;=C'B9"^2*69;^ =W5Q!93;='RZ)&4#NR9JHB
P6_H!%O+W,'K5T6'1GJJA)"2& ?/D$?F83;H .F$%_O^4HH8W;,+^UY/OG_FV6'YK
PV ]_*-9K<,=WY7J"LG:G:EOQ<F;BFZ\EZO@& 'JTY+,X3 ^-.+!#]L0ZP%H$-4B:
PU0VTX"#9TV7[(R6*^3D227OS4CQI\Q*FQK0']F]J'-^#V@E( E\CRL?-_OF.=3!X
PF@*$_16^=KB@[()WU.I:Q>_J!U^UL? @D!S.R5OM(9Q<:L/N7_21#!,;[E>Z1@.0
PG 2<1(5CK,9T:E?7:)::9"&S=I2-_RENIK]=DS#TM2;O* TOZV;]G!%-QI&PCWK1
P8CDV'%[%RX<("TBJ-QFW!XN%=()0*EJ^T"=G9\2V'LNC2_3NK"W-AIN+\%<-U"?O
PEO6$YC1ZB[5>FP"D@: Z34!<X%S!E#;O.-4#?1>'-Z";Y_X,Q+85>$AWMB&9BKXK
P[G)J_94V3/\F3F.V^_SFAYG*)-GM@T-T%4I/=S.?#M_5?^<)!>P.Q?@$W!\5!;!G
P_;0%*\)C]OZ/0I&6A>L. VIC-DOO:30YLWZAYG7;'5;JJXD1D$$4*//<7W2GM([%
P(R#&84VN*'LWL/SW?X@S7\?KDBV1*/('2]T" FL/%TU0L$!DY(_0:2 ZC-G&AZJ^
P$PSC2^%-RMQL'AY9 +5JZTELH@NPX+;D07Q]\2ACS)>^UV#_>!(I##I\PI?X3B)-
P5'_\&K,8];[B9C,!,=D_"WD\U6?15QR:[.8M,$R,G[ASO$B3!_'BP&8244+SQ\\1
P-FF)-7!T:OTV&2\LTDYUUS@#/HGL/'0Z(6AVY++=T7VW5Z! K!/.IG9_7!8N4[3X
PTQ7];]N^*4M#5$/!L)*:_0W"CZ$0(5<S6BK7M;I"X?;[K:6#EH7)_N]Y%F%<?2L<
P53D'U=BEQM:T5R)VSC*J;<0%5VI*#X*M(,AP]*KW-'R:DUF3"7)&7=&4J+=.!"$/
P"F.WW%7O-N_'"J/&(9!U[EQ"?5TW"*3['O500W&<R^+O]W'4. GLT=6Z@RF&-6MF
P2XO#K<HO#4T=Y7E!K4Z49L?=J4UU82:,JTVD(C_B+F-[CY[\$RE?]M"89=_E_7[@
P!R*;'1*<1\,)/,<:5SR5&3!.C?MS\1\;UHGFA*CJ]&4-V#9M$(X9HFX,*O!R+(:O
PI'<R/U6-@+_MR'A?CNA1*/^AVL&37X,$P@SM] $9\#%.<@EJ3:HQ1!4BNK^$MWH]
P4_)W''CN1K]#)[HN:8W 7L&;S8MWKQ84KVT5.PB)G"4< $;!L#>]YN4DKK;+$3.<
PN4G(+-;EI&5=M-+<YAGRXE#^3&["/=#22?@BR)5O!3 2G9-LBIS%F3#$&._*5]1]
PX2'&.MSUM=P^HNP8ZNIG9W+3]"$'9YW<I_X_:$\(WS4Y; T@2 1%-4IUS!"\:810
PR7BHW,,\/WQ7PO=68 SF2!-V28'Y/"INNIKK/AIN!MC+^5LB"N2=*$72*\]YE[W!
P$+*_.4'#:9>Z-VCI%YQSQD&$Q9]<%'P)-:PU.:G_H??:GM.\U:;CH]%Y* U(0RN*
PFFBU;P1"S6D^D>N7E A&]Z,U^5&S,@U-TOJ B0D0@!1\PJ7HNE(%MN-+!F:#'M]E
P31\Y)1+LTQG9D>"TMWJ5@OF->P[HM*;+3O.4-8A:^QI'&0M![T(XTX>*KHX?L-P>
P9M[5-%$M2FMTA7]QI[^< _)5-+#,?>]1('@4!HLRGRV:N.-9"C5TZYN\+^+=S)XC
P0=4Z8MX8,"T.];"O+1)"F 4#HF*#+#=-Z-#6;ZS<$5"L?9*9[G?[+YEJLC5T0.@)
PO\NB2E;=^X_9%E'MN4#SR/Y%,(O[N]\]+[*>Q'4GJQ4!A5"@>\0 BO[:<^__\ADJ
P'QDCQNI(<[FFWN"55ATA$/K;Q\T'&HCS:,&+& 8N1-6Y=J#,,R&1*7SL<FC:]8!<
P3.,R1&2WNG.W&%R:.>%(31VL55J;&IJUA<Z=*>#JOB3+M>>RPLOI1O \?HEV6^+4
P'1UJT.]G4?H0P2O*3Z[.-W=4J5=H+=_":I<TJ"JWHWXZK!HWQ&&B9A4%T&B=FN6+
P#7>OS^U9+4Q1[$L^WZ6TW;F3Z7D6HEG8OQHDZZS-$L+U<UADAFF7,S.@L[O#AO9!
P4#:&PQ+9N3I7ZY=X9[WOM^(*."*>;EB%3<7WR>&P<JO$R)?8QYV%YC3(A2*>-1?M
P!5,34%2JV>4@=U[0*UMJ!_K;73(+35>#8:JX\;)Y36J\>P"3P]A*0<1#$\$;X-3?
P;8 LJOO"FW/CU()IFRG;RA5%IK)@-XIZVVFI!FW8OIN2VWK50.:I @\Q&G0,*[%4
P='O=@OC5IX,/>9T9PM?6'C+.D:X3528_(K+EH/#=\.UXBJOPO"$$3T]OJP%.G[7R
P)*EW!.$@M*,.^.'27=YS>]&#[D!3K@EW*H"POXU#V J3NZHPO;.#6_,<R[$<*%,S
PK<Z:P]A">,/G %&>&I:.*OM49X5SCGD..X(G"G'A*J4LFCGC6/1[G>BXDOB1&5/R
P7KAC2E'K.!OR3N&#NLQI6RXFC21\JG8Y3G!MG?/^%0 QSDKH9T^AV?(>C0FG1*C-
P1T5:9; AVT^_=;(KMZ]SUL,:5W^7T0QR*S(#06U:)#UD5DON&.PI:./Z:\.OT"T"
P6.)UJ_\J*Y,SA\0FR^@U3M9Q3WT/"3%3I9=LQJ#=N->J!EE&9! @/14-#U*3*$Q(
P(U/(P0L%>I*HQ B> )A2ORE&M6N\/=T<U&7'P9(VBOIXKG0AT!U:']/F([=:54\R
P/:SCY&:>L)M2N=]?SS+AQ_T]R5Z&%95%#CZE[3>+^@^7WL%CFF6,:_5_&P[3U!S.
PHCVXXQTD7%H0N<A-BNMU,5JCLMV1UT_Q*VU<K .(8*U=Q1!''@+<IJA_;![$W-7J
P+4H:S6-PGWMYD[C?Z%\!"=:UL/9PN@A2RE$) TLW*89PN,YQ2Z,1_W-U\<):$YXM
PN/B!*Y#';3D'"!SKP(J<="*)H+CR601-<L7#W!.^+#/9:^-1/:^DAHJ!J>:2JLON
PL'WPU+O':#!RPO3&I_RQ4,*^R/S"/98JY6G:E*WA&";')-B!6G4^%(5I/5B<O!X@
PRVFU9/"XI!(<K4[>7FD$+^XC/X9K2U$EE0@7A7IN<O.[\.:^KAC^!@&$MK:!W)@W
P=\<,U/Y&>PJWX&FC+_;@LO1[JEIQ6<;KP]Z,0_0AYB[#.'.3B;("CV4VAIVHBJ?(
PWL_UYR8B!,UG>_>>Q[3KE)->'*(">B\)(<D5X'\I>11L49 >J"KSHWLQF#S%$ C"
PB3&!,TA^J]90FV$S^_&P.@>O57[VKMWM&D3C^/U/^E_YW+\N[T\=T4&"?-A>:=?1
PB;?HB@D()^3^P,/?G:TE6X/\;-X'2LM#7#"'UKP*_[/WKA<FQX</TRW(9TQC/E?2
PW>O_IX?84#'7[$\6&+ 4;YV4O?OK:2-CUBIA5E-:U[8F[L!$\*\*NR\9N6#:&UN4
PG-7PV6-W9$9W9" D9Q]W:XP@OX4-MIGN.A()]TU@_KR'Z_AW!&?LA2=<7UDEVI#]
PO:>9[>7\;M%L%H-9UR\GFE#,$(/[)8H;WI7!Q)_5AAE*]JL.AY-92FW'=!UZ&O*4
P%SY-A"L]T\3"6"C-5:><MUSIZ"F0:3(V0I[I=+-QAU_2Z*+L=-I!H^GQ,H=2.&@F
PJRVVS9"KL;K[@_?5."K7QHA<K@%!*OPVD\HVG"()0[#/=VV6:]P9HR'4XY[&/AO?
P"?@K[6"?A\B9_P(3BUV.M67_4 I9@[T T$RM.&:DE'-/2.Q*.3.ZL=SS9_GA6;?R
P."'2$AU%UJ#H 2_G?A%205]_N^J]MLN/?DL;RD? :EA3*LH@FJD+C>#K:9 F:OE-
PA5$SY8R1)3V$6YK[=I-LY!(8@FYQW$O 9I.6UE@@%MW-?1:NUE)+2X1?6.'(?WF3
P:SV81B+'JAZ*3[CZZ1,Y1F@9>Y$>!2N(BM;%?[6%CQ/!39?FMFC VTQAZ9P5>:B%
P8ZH$;:;B%K7X3CW\1]?.'-!FN0$ 'L!7;;<^U:D2[EG13AI8M<"D/UT5/_U=@>_R
P6/WL'A)FE\UW67>;ZVQ>>%8&/A_<3X4/S3K143#(H_!V:B1V3A7KP4</1]C\V6&T
P[9- _-E_0 ]&U+\_<!^W',,A->J\P)\P' 88J&7U<USP W2)' VOV&L4U'[9K6BL
P."/4JE9Z G5"*?@P0MP]P-I+@'<475R[S%MX)P&[-O*]"PM_="&)_ETJAQ,WU\N@
P##>/ZI-!^%(.@!F0,_\V5_V9(4)4))XDH[#*DBO4O9&;QTC:.E1'6U6+U:!4^'1 
P2[56B<87)@2<J*TV)8=$"M>&QG)1C3W,99V5>9@Q>'=78$(VT&4U_!!.*MG&Y!F&
PVK!QD4HDQXJ!F7\?A])0(0N0%2^-9'&T ]H:2Q27:06T@9EYX0=32028UO8.M'':
P*D_292_.*?0UQ31?LBHYX0L;J84B=UHV-B@&5N#3,[UE IY.3#3@H)W\K<TPQ 1Z
P Q!<1NOC1$*SFS)(;C*T8;YDZJCOD *798CTKULZ9M#LE2",G+Z2SNXZ[X.'+LHR
PR8+]:B5JU&LQ$L&P#):&L,@S34VX]?!)R4E=3L&V,X-W[]</,;D&OMP4 ?)@9I0X
P_MQP*6D%N9?DN[1AS,"*^9RXSRY]I*?R&$59L)&J:YEJ/V92_->6[]2)@F3XKYGL
P<^O-&1$:B%5_=TQ*8T#4B["F+G3;(Q3@8DF0^M\W%:_P4E $QT$9W>_*#[)A/,29
P^CB70?<9PN=@V,!"?-7<\*+U!6"[*\/6!9GY\4<,^]B:_TGZ':F4'2.-F-SAOQSU
P(41&=EV LSBA!G>HQI6^$]2,!>1$+(=/T^8/ (ET%$-OGF"/OLK_4NTVH\][YLV 
PTG%7*HI$T4#18I\9TL@T4NOY!1U]C3[60WB\*UAUC0B%&O'!XF[]J?X1)!= S^I>
P<]$F*TA\P31[5$V$#6!PT!S&$*G!O(%)>C!A6MS3.&2I?((S3')(YH"J6)K1(270
PGU)NU/A)%9\2VWL\<J);.0:;6+@O<D[14)QF4T]#PU)9O8L#'O7]I'ST)9_7OA7J
P=&J\8Z6QV,\:Y6@/_X].?A 0LTNPX+%^3&-@DF5.UJ/QB8U)#/F%1:Z9XV<.<8H;
P/?8UD9SYON=4]O*,MI@1O!HF 9*_ND)SJNV%<$Q,Q3";T2H-3]>=('X2N?2$5$KS
PFW.F)4@6I=)OQU'?J1@ 391!(H,!*T$O]0]PLXQS;P,]'3:':XU__#9&VS<D-"G*
PM9=F=D?',>(57XYD,R[/314ROYSA6T9XXETN^?;OBDV>Y*ZD-I[W1)_0X#KPY9*$
PVN5X_BY:Q+IW-L,8:/8QQ2+'^8@TYOQ_G!>&G4-?%$Z+YFM ',"BRL(^T!-@^L-_
P56 Z7>BO1\>;U)?\TMDLQA-HM]SY)AN; 7\N";?L"HPK\V-)"9*;.DS.DNM=]BNA
PRP?:E8:U_%*5V??,VVB#KE3F]YS08P,RP9/]>Z,XZO!#B,N[9$R]2CPU0ERF_<"!
P810)]5VR><M&>^RI=AU^RTJ_:/>0AQZ<,PDG??K@6R*Q6G@]@_<=#X\;*3^:K-+R
P<_^BC.7J8;N'<.C.+"AS'+^<NLV@4)I=3J-I72B2?1/;W>N'=-S]9EK=AP.ZZ.<^
P+U( N$#LDS*,?*X'T[P<(LJZE RLY.)=O>$%6/$<4_M7Z%""JU&SOTRNY+4>\WPA
P=";%$!"\D,GKTLF2*0=MBI\[ER+L:+UH_[BZIMK:R<BT$NA<++?PIP :@X$4;R]H
PI4PI;Q'J/D*;($1W[E!@'AJ' #!CN4HL'DFP0GU(ZI4E=*'1:[$KDR8AKRKVJ)=B
P;P,DXINZ6M$;"7JSW&P$"]5G,SRO49-N?GYQ25J.K05FG3RK=*^Z@M,1T+G+$"B4
PI_YQ8N396#QH\AELD*RT]6<!"],1G6*^!%7OE..PU>>,W)#:=JGQ7 \2L5&_JA_X
P6KE"CO^9!8GH9'L_(V$='A, SXHW>BK&JS;U]QN\> CJZ^QR02J5PF!DC=*D@ Z9
P3=S/$@?=OVXMC'+OZ.:NW2-"OH"%ND#2HCJUR?H_Y:@Z)FB!T,4B,")N52)[I"#<
PU6>@5N6^5'T0ZGRR\@JYF7.X;LV]Y8"GI<IJT!G$E-%+<[4M-'_W;0>A!G9Y[0I?
P[ME7A=,3=$>BE9(B0/"E&U0>K9=%1WZQZ9G+J*/ 7T(J=D+,8G 6I%;DIF&J<_$6
P)%RQ!5:%Y>H(:[2J4"G4([T"Q/UZ)DVG= C?ZPR%CSR'*O F88AVRY%R$*N\OB8J
P=-O14_MLG_30>U<<A'DR%^J75]Z0W(#J_,J72UAA<KCA7RQ,CF'Y[W??:9)  ]^,
P^9LUYH*1^Q4>")\B> HQ@P;O=8:4"OZUZ*&R;YC"7J^70C9AX  C7A2IYT6BEC'T
P2%1?IC 4Q&6>VP0(G0$\7K[NN(5<%3QLA=\R&*HYTL$B/)*@#N^Q\2$AMX2/6=9B
P!)>)[,3\X\]NML2 @J>H50N/^1VR((CL!0G?160(?9@'"M5/I$9_4#B<3S/ZA L3
PFZE!*_ZCC$KK*@M<OM\[T'6!VO;7%'M(VZ-8% %+99DLR$XVT*9W5!78TUFC, QU
P<O<$<L9:GYSO#6I@M?QXG[&T'%"58!<6N18P2CM?ZFQR-^*P]F>&M#B/?[QU@!26
P.9V,26A5%U:XH3T$A_<XDD*MGOUTY3>&7(]_8+R,+LV$JH5-N.0,<.&Q9T#.?_6)
P$".XD5X2UET+42F72A4V]OUS_GBS<'? ,([?7_TW#ZAHS;,&'GWN&F5^:09+"61L
P&9+3H=)A\)00$["<57AT=??$8H/B!W3=3BU8 T()+VL%VAX,TIUS"RF"\2!D5F'>
P[I+=1]Q@ *N0#M:\A0TQ5VC'./LE*Q'$E1% V(5P9]SY]=%?&&O4ER#-[6N)G@DU
P=#ZH-$SQE]+@HN7<!H4L5HPQPYA>,TUS2PFBSNQ#4..H!2[ "/M[='6+GS ]$O]*
PJKGZ"7A-VY#24>?J@[Z+X6_D+93O+\\YX1I Z6ML(1_P(06LS-W>R\"R+N=9T[A_
PF4T@9\RI<[&*8>45KP'H$"1?+&=0A[K-JEP4UZ?IDFZ$0(*@(97_UO+P$+1E]ZT'
P05+2'E4'..;/9D!MBK2T#Z\ \=6ICN(0^D"38]H;3WO\#+;0ZSVF/"-30U\!W%._
P9ZS A([[2#SRD2:%():(<NY/GCP.):C;61*=_?,9O>6W,'15"_;B?L"<1HU F$(?
PZ&P20^7JBMFXK/4H\=2YP;S[W+#"\"U,8'VHHS6U&ZKR.8V3- I)K2D38L\#L]()
P\U;&WZ6=2 =;QG?PV>NIB<@(!H# >WW;?[R/(KT;*NU<B-9= B?DR1T;;T*0'&J"
PM'0GEO/]RQ)&,B&Y-U4RY^\<'#\:Z.3%H'Y.*S0 RH?MGX(:!1%-VQQ$42V[6FX-
P'<;D /1P=MRI%59AHG_YU!,);>V!+DC8/ 'LI8'-I:L3P_'=Q=4NO+UMT;6/],;F
P'\NUY%#GZ;8UV5+.UHVPBGPY88/)CF2E%93JR"&<BIJR$E]U@TU\ZX\(3+[,%XOL
P__+A)K0TU?^7%Q,1[IN,T!:W=_[/UQ7%TK_H">%UGU*LR6"83EGV7@=#"K00^X(9
P!J!"3Z!HFNH6P%4G>L1F.RO)7DK67#9_<\^\WOJ>3;"2A17<[20[A[^$*'5:Z/E#
PAJ56(C&W5F(.;E\NZRI@9EGA*6VIUVP69M+U(3O&6/J9(AMR:J;.HM'V)+3JA<WQ
PE;\JOD"#@4E!:</A!7_X'GTJ%%VE!CTR*C\4+/-\U0GH')A&G 78U!A45\Q0FA*=
P-7D/:X[$C3/X\VK),)Z4V\_MJ)X2X]*H$,%22YX[08O8H^G");CIM#!C_N9?6';2
PL\5],>/3OA+..K)'A:R(N[I2(? 22&-+!9>J>8O^AL&D0 !U@7YN\-M/BIAHR_P2
P0*^&<FX>6AU:Z-J0Z#CA<WI JI9EA.QA1#*_AY0RL>O:#OS<BKLY+[U??C9P;K6E
P=],_U"66K(9*&H.S(9FF]>&DWWO_Q]Q.N>1&+0=B<<1.A)O"OMSYE)-3\Z 8##%I
PE6K@PCR_ %.4!8;IDES6>57C?/5&"MF#PIJ27%:+F'0UKRR9*/UV5,U_A>SO?;17
P%>MLE)YR_-@KKD,54;9W'QHW)HAXD$]ZV<\<&[PN11]+D2@(_((/R7>""XP;J?EE
P/K''L.($VC;X":' @#AW5YX^?WH/#ED2*/H3J64+L%%/FIUO G*=+89SGZ!9VUES
PE*:WW@?]71.\L,.D$FZ64W[]+S(.SC$R>0K HK?_*%O%T)(ZNKL?Z*,,I,/1(BF5
PX?KIR9^ CGI=I4W$['C;9H04,IS^>^4WS=8S,Z')*HAARMV>DBQ$@KVNSH(BL$_V
PQS8SD_5LKH,SK2=P07ZRCF/LEUFAX=0-$@=:A$EM:NP.=*-)*49>>1LV/SN8R[E"
P,HQ/!+Y* [HB$)XC>T(Q;UU-&GV+M3AIPS8L8B\]8PJ5A. K!@'?F[*FN@;?9@(E
P,\NZUCIRR<'GI[WW^=?"WQ-*954UM@.7IL$-'UBDKIQ^__:Z$,5O%UM3<+<_3+2L
PHS&!L<%Y1]7MO6X97E_8PF&F'U_E3])M'EMC(CZ BV92]&$V@1AH+$B"TLHDX-$3
PTQ.];/A[SN*E'XLS^U5/<=5A*7['7#_DT:X-V/IAW-.K9V(O%PP*+K00?PZ1&<U#
PM%7"!2M4WQ8]-ABX4LOH?2;7: ^QQN5#L1$,LHH"BW5N> W)O/S<]'A7=>BDM>5"
PW7/>DD\F>EC5*"7*=%UG\6XSHPAO+_#X;104>YNZM8TRPN1BL8L"7\6@"/TA-*/&
PK*-@<H<*Z\(:6VM;3?02G-)V3LE$G+L9R*P'/B].U<.L*,,1HV]2.W3P^OBL/KSW
P=:(YP/7)HJ3)-FJX#!#,4Q1K6A;ZCI=;1(WA6JU:*NN7L^"D*O<K%]0;$ODETZ4'
PYS-%0GA0E*@R^[]6.>&:H;4WSIZ2F<'V?EUYB=U)*XCZ /2%N(-S 1C#4FL3BN-\
P6EI#Q7",T20+9TB<G1>3GQW*:>FJDXX*M"ZO\#LT_^@>3$X5Z/7C#N4[1B%0-[U:
P<NY0]9#>_!BB?9=#FWDCD<V FBB>WB[_8;']6//J":G(@:.5^56WM+6JTQRBYW.@
PK\L1S@'Z^Z#^9Y1[Q^ &5TATWNY6'GA0$8,*MDP$FPAYN,VZ7VE4\ R@_6;)<U+*
P)>;C0&!#$!/U(),Q:3NQIX _X/'_BLRL]OF$NIE1Z;XU82P>;B(/GG< J9$]0Z/G
P,!PY,@^(N.IO723AZ+HQ>2ZGBKV'_^D-GL%6=;>#==OM'?7?K]%5^A R?YO!+(=9
PZ8QK[!_1&2M)Y_Q_*E#2P*D@0V%J(\_"3?A(\UK"^#?PO?CW&93[I@5V3C'>(&UE
P;H=3OI8(B.H/8,@+&+)EPPUBN&!P#=_,\/G'G^KN"@-@&3R,*0X6".GM"VIB/GP_
P/]7,==>7P==*S_(.+3>90PR[H1X1+W'3?T//XF$M.&?MDM)3+6+ZQUTE$^?H=N]P
P+!_V2B#^K75$EWLA@KJ6B&L&#Z&$4)U%SO9S++.Q*+*33AAC;_=HU)U;=K"E6H3>
P=\2D>NZ9(QWYH60W_ 9.T">D[P<OO9*(S[VQ:AON .TTDADAOCDKG8#5PT/0#V,_
PT-3!>,2QC($35.KL)W7" Y*,Z..&'K8KI:=L!&(K$!=55IE_5DAWA:^O=@;:]"HN
PKJNS.;5,JCQJ07U[#IY'I-Q3*Z^AJ(-2U8=^^M"-F);#HO>&_"L,PRGV--;5'+B;
P>_($_>P_+XO0'CPA-QY,$T.WK;Q-:U7",<)N <=#MKA/4;J<9\=[DD+2Y&=-#>L2
P]K=IH/;_]DU(QW(EE_#$Q/,_QJ>[\3M,[I[#5,]C8$H;^2'J+YOH4-U&[7LB'48X
P]P!>JOY11S-SI]<U4\X_:\\ZC:(3UZZ[L3$W]^^+W.]>A2] 9K9'R>,+8:AKX29(
P%M$/RL&J0_ '04?&RSX\Z^Z$)&MM[QSXP,=.L"?+I.\:<5@Q-G!F4NN:P:AE*"@U
PWT&%CZ"L#@:X.M/-1 ;^0)(7D(SC0E6"-NE4%^O.1V\BU]>_I.O> M#^*KJ!SZK_
P@&-P=;YB<J@7]9XG./55,:2M6_X>X\WU84@=\GNA2:X/JI2U"^5U?1:37D4X<BOE
P2A-M1&-MR +N6()]H13*7A-^J4W0EDYXW&1C+220G-**(Y5PUL]#A]S4Q!C741TY
P>]Q,(31 %<I :## VY2-Y#7%:4)YOMU]=+3;RE('"JS^YC8PMUDLSG,.A[$XL2PI
P$K+GP?)&(=N5_\^+"19+TT(]$E8^%/7K'!MM_^"=Q76YA,' 3J@8S%[A00'<2IIO
PPK6$HKU,(+E<Z'71U_&Y(!O]Y1?@VZI[O+I>>A@:]?CYBY,<V5_QPS6-AX6,TOU<
P,^["+^"$%R_X,+_;%Y2A%>7Q$!TLB,<!"=[0#)UC2U[ 4;VHO.2IPQ28%PL/@SKX
P_ZR@?V97:AMS$!C@(1",YQA-*+6+7,.12PF=3=-@:<CGF\EJNFLR-"#W<H]+00B/
PNC(QRLY'^^8OI%T&53Q;H3JG(5/$X GZ"3"YC-Z^"*+7M/45:*(-1=-ZF;3:WTJZ
P1G=T;T6\$#[>1G,@Z2><*R(L->/*R'(:LPD*_MU'ITA\ G=,9$R>?L9$LRN3[EPJ
P6?&99<=@?D JE5+7%6O,B.6&J*\ED8 ;"8VN0TBOBJ?"-)-7O54E(""CSOKBF'XP
PP&>@SK9<#WH1L82F-@B]K.\LC!9JI8EW?ZIH[?B5LQIRLE^#LX%K:S%Z\7@(Y 5W
P,5K_QR3J+"!^B,F-\*QRVC47FTL5BQN$QMBQ4>%3E@IS?N0)H[G?8VD:5:$T.TQ/
P!&\F\)<*.@^U @DS ?((K,N&.N^8MAW\&ZLZ-Y@I?QMV-&'\39%-K.C@)RK?GF"^
PHN<%.I%])J[ T0Y^)/,WDFOT\M>O<<+=]0(VT?GA+YW",<;XF42;6ID9 N.*N7J^
P_?<EP_QVV$J^0]'YBX6-3!40C[*1P10JL=>8^CZ -XN9WPU<W5(.EQN>-RZ!*_B9
P^X_OE@1[!=&E^>T^C%P0J$;YA]WRL8*&T<%P7)E$:TN7_ [&-_F"40TJ4[-/J#%Z
PM]ZJ3Z%KTIU-D[$HYN4O$$LH+3X2[KGS$79:\1C0_R(8A0.[IHI9S@A]+A#!G8^/
PJ?.R]8[9X@D0I,>8B1RJ1^2U>WDX\C6K;JFU^.^"4O/"M_0!K /T_7_@ESYN8_Y[
PS]@5OWX*XF?0YV-@/GTZW#6NA0;Y!E"S66+)5#.+$);T _-(.#7..HL."#$C?#2U
PPM,\!K,:>'A(X7U5@1_X4O+J0NY1%@%W80-W;BU@TOH91E-(2>;\ TPS3[0_?05O
PU$;.B9*W8D(<_BO,%.5G#O"$SZ9V>KEVV+@N9PWU(.3K40AY),1<+]R\>6J!"H+R
PPT8H<US2^NRM[$E:'B;[]U%0PV1@F&!<.V9]RLZ4_I=(.M?^B86WE.G\1%KZP<!G
PNK1JLE,R0S S'3]QISK:]$J>U\R MU"IJIWDS5/'.BBAW?2[=U-_:".K=%(.F !&
PMN8L<WFA7+DE[54.,D':U0Y7YS-H=KIWY9LD%% K6^BUJVV%[#NQE9"ANZ6H4BK'
P26/N0=0,"FL_T1HIMOC=@0Y!PPJ5&F"#G'*$9+,V^F%FG9M&D\('+FV+&5BY[R,J
P)[Y7AAC3H/:@^*<;+B1D37W =S]ATO.K6FZ# _?N8W/B;BLZ$F[DPE%A4XLWBS<1
P-WHNE;.H>C6)-ZV:D''"2=:OT="]W%HI.!N*?;#=7,W.W?S&GX\"8)7 .LW,0D-7
P-_"O48*4=GX@F;=_V\)_<WNOV3HEIE-\AG9YAYE+'/+=EX&)&6##/D^:FR>B/:S:
PC>&U)MM5+AR;("MF4 "QYWGV 1*A%VA ?<WU#DG<92KY:'L-W5(<%#!]".T:$H_Y
PBP_W,F+]9?]P0(Z01"I1RY,5U#DP4R2>\NH1O'H_78%82DZDJ8;3&A<R[WXW]L;$
P?M&2R*QOL<3/IGW%'[/!O?*;#]-"3+(N-[^+= P\X^WF 42>N+'.$K FE.I+#ZM2
P.[#S3H5ENH0_/8-:2,3=J>3/JQPV3<OX=1QQH!K->XM!\*#^GYA#0X3^AWO(J%H:
PUZKV=#2=(GJY<R6LS*T*$_1#'.B([]0FA$FVR+E('OM5:WRW+ND"B&5H=^>W9^F<
P<.Z*S#$$\D\;I[N8]!CFA0_D7HAR=+$-X[[ODH.NC]*%8GZVVZE&6;&@4!*8XE3]
P&GIQ ^1]"&C>129YS&VD%.B[F?19TQG1YB\S04^FU *=?FZPJ_J%GC'%/8Q-!WB)
P!X _G@1]UM,J: DSZIR>CBJA$I6(:A"%0I[#^QF!C8(N+R]VE;1!+J][Q,YMZ/Y;
PPMY6]<>8]_RFH[1&?D3+PK9)GNZ770&:,NS5)95"#J<_^HI0=6%J]O;LD+[6SB)X
P25VX( \_@MXS;(9O1[Z.,OP'U6^C!D6AC[@O.;_>);N=\&9? /.C5+ OH><X"45E
PZ!EPLIDZ!X1@^H,F8NF3X+IG;YLLW]!B_<S4(?2DR%'3X1MCI5GT%T>IC@^FD>E.
P6D1!!_#-$\?;5 +P=72UYQPE"#*\E<R4M@B!=@M!N)+M5%!<Y1JH+Q(!H[\Y4';8
P:6P<8NMP[!.:$ [7QN-[,'T"=B:A1C-#%+/V35:J]A<!;7W\/7<;[<+I+_+C;,W%
PJ./:4&'N?VV53FZ3>JM95GV^6N<'?.+$3=A<^_NCM@$ ]M>&%2<@)MX=,\$DG>OW
P"O8#_:\-BG(9UW?%BS.VN7D!T[)\D_<SP;<T'%.)7\452O\UKKJ C\F5=2:(56]K
P<SL-A(,DR%+Z!1+#>7#F7X&?R5DX-2K?S7*I5G:'V"S7'8X>'0C+AJ!O<71ZD75W
P3Y=YOT="3:>U6K]N=((E#?[%GJ&-GO]C@Y@.7$#]/JY^CL,>0@$._!S?S&Q,$ZFB
P^$/([.TK.@]2S?]=#"8L3NZD_K+IB;/0/U]%L=[2-Q!&%\+TE##M*HKU"GQ''^$K
PD\ @-'6\6;:]3JN;['_] 9]B+"0M][A1$_*\M)XK&0, $=TN^"4_6'SM*$/U(%E;
PQ([/6;Y.^Y=K%/H%#JB\KW%%-%'9V]T#'>;.AS"FPFVR@5-CNQVK;3OS.(.51:<U
PI?#ZX4W,W:C\TM$H3,LD6)!D888@A<H1TO68WVEFE'-9*U6W]= [;X%C]?6@\D&3
P8:^;A[+5K< W#Y'\*AADI%)U0$N^IEGR\S.59!OB- $98SN%@OIA\DEWUNSH^%)O
P>)'VKIL+5IB_'8&*^EHR(T?5?%]BAHEW]JNYAD7R=M/P<XEA3.+ &_C/H-ABIW.H
P]Y,43VHCS_8>#6,#!<9)/<>2.T,TT>-G;^C(C.N8:N>RZD17I"!7>R6>J3O'P*AW
P1Z0YF)2"^M?%(D(A6!5XN[P*RNOR&.7N](J#>YFL&@M1W9*>M8J%<F6/I3RFR.N/
P":V;>3=6Y>+W<\P)UII'7V#EN282,O2JE .,I1>X*6NY4VBH!P5KI=5S05ZV5F89
PQ#UOZ \[S5&5K@B%@'* ZFI\=L?%PIZL )'&4,HXP=+K_]/-D8,[>_.2FT]P2R+G
P=>"<3+)KR#&H&2PRYP$X+2+'QH'5CSV%EUZQ35I@2K\3NMRUJ#01G4QNLE2>K48%
P'T,]ZA=$6T=X0M?!,=KS$#PIG?>4:9,_U"I?EAYUH2L A$/RS&[(4!O%E%3U&GA*
P/'$Z7O--+JA!/$=#)('$ASN0Y8@22F),@]Z2_<SPL#Z\MW7NTN3/R&;OK=@1#9C!
P[(6L%9S[_J\P/PSAR$=2M7SH @<ZN7)LOF16O^/AWVX39!4;@*MTBC^<=$:;?D#Z
P7PZ2Y'GF*" GO+*IB'@*\,122S_H-CT;*XJ+LK?N%XM-*,%*62^^WX'0>9<%M;L6
P1LBL@4U8U2?.$7/3.(?<":Q/3=VLR!%+([]8U:+J)$&F*&H*_X(-]Y$D,4??)8FB
PV&?\>(=+K:*5:$TS2\[I?K]*EK?"MB!./(])/4$"<BTY @J*]9 ZAJ4/C&)K,2'[
PX,J"M*(?O@ZH*2/!OMU7S^Z^3.K\Z-'KQ'4Q)L9>8L(]7%9J(P4B JI)YTPQ!.^.
P%?M 0B8^!NDA9N(G5<>_6O!,<Q21ZV^7A $0=R7-5Y-*R]TWEEH3+ XSHQ/_ 7T9
PH)"YQC).4):F8-FA'.NB?@D)4&L=MX2-AX-H@&MDBN_:;/"BK,FP")OI.L-4/E">
P2-B+]WXC WK/U65;K?>Y&R;M)SL.[_O,E$?HXLPAF"H^..O;E([[&=!\R2ZU:$FP
P47(\0EVSSNT$KA?6:B2HSH(P"I25;/Y.2HBT3CG0L=T^Y[(QK6R#C2 _J@V=WBNU
PAS#V,N)0_.A9&B$3%,#W4X$#W,8T^UQ_]: EJAF5< & N"&9.#3&B$&?2 /, .63
P07-,TE#HE#2-=&VG.I'SPI\HH!<[L04@SHCNTA0BAU#%/>%+_@OIYF5V7&<TOF_3
PK=T20&L@Q1/[<[M52!FJMH>UN4'R:%,*>+SW._QKPWF<&[_/-7:1CXH3WOF_2=U+
P%4U:GS$/(H5 "=LIQ*\M(IRMO0\7 ^P1  [%0>0H@LDM.6+$/9C@ L9U\COU,KK_
P*(FLU_[D7;V>#%^U=M-MTJ//_RO:34O?U=)WC!2IM05JWG>9;2N%G*J8'A1[R25K
PLL+E_XP&E0X/3>&5G<00\(:N:COZ6@;L^Y6-DK#"2L5,J,M;<+"T<3B!U._U_"19
P.T8Y4K.ET833&,TS:('AM/(;I0,,YA+&OLIG+[8"NQ0J\F@&8'0G4$Z"81BRNWB>
P%_\<W%!,QPBH@E<I[:3).3<-!$S'U&HBP'_WTS@%5I$AJ"K0\4O4SE @@2S?:1>O
P$* M9USZ$@%#QJS?B\;M[<P86'D$_\<H=W#L\PL8E)WR9@H/K<TA->M^3JA],@;M
P A<[.M)JG F[L=R(;A-YB;T"KCHEI:KW&H4J[D2/R;B/M#F YR#XDWWV.1F^R.RD
PJG7"C;=B&O<>:;*R".+(Y(:V:O%4JR*X?DM/S?X;X50#G':Y@H)(%%>-J"?Y?F8&
P3#0L)&+[_@+S9-?O$[W$S2A80L]8=)=7T0R3E86D,;F%5?T3F^?OK)^1K&<L5/Q-
P+E0%K!ZFIV\V^+Z;DW?CH@DCH5DOUQY.1S(N3_GO7:U"E*;Q.S_*Q&I*W?<8< U%
PK/PZJ24/:.V=*JU0I4!@@&DG7<^.EO_Q]+6FT4+22YZSM7S3*#T:UNYPM?!X$D:<
P0)4!>&!,6:.ZPOB$XR)5TSPJSE,0^Q/O;J-\$^^3T1P5>8'.FXT7#.#1AM<*M-NZ
PD"%1J'PC8,<\9(56$Q)B5:M>7X+UB-Z<=D-Q^[JB1>YJG"F?=F =/U;P4 3.F-EH
P$S*)Q/43(E*R_!'OF7"KT<JY;49GBV1, +<347NQR$H6SH!AB<$^5C9(FT^BZFD=
P-;P395+8S?"1>&#0'5Q&L'AFS5 +O QVXMG@MM7< \2D8CS#4.E.ZB.M7CZ78L@\
PB$,:H9U)X)4MQ_VVPG4!A7Z0M'6<Z,?.IIMAL3+=H2-8M=[/++M9?F5KO(]QOPF/
PMIW%#EWG0B.Z7^')'YD^U;[ZOVO@P4QD2NH(R2\;JO5\L!IY8)O_#V,D".!B(C<@
PG9C"C-38>1T(=S6//YCJ,SS0_;$GX+#_"!!*8A(T#+A-QDENH96-Z1X$;A?MS86S
PL1RFB=\MJ;7T^?T]H9K0QOFTB[8\>B&V8VQ8O 'A<3GV\ZGDB:B;UJA& ]^F"!X\
P9=]4T9'-2T-FT'WV8BN=GPCG!K!S1&HYN506-%!/^HG>?=/=VQ'1Z\1&US7AUG$P
P %#=^!2Y-6MBK)53TN-N(*4*C&QI+-'B'Y0A2XL .OKKUW!G)KQ3@@_PM&J8 B,+
P;AS-#YCZ9X5@0WV>EF_["1G<SUOP%$$K1 F?\:D2T?LO-*-P_Z0/K1ZSG3]BG=]F
PEZG==4)R<''NS>$O)NM!8"F>74C@A!V<?1>O'&X%&56# CRF6RJ"YAIQ/=XV8[VG
PL5DJ:.1&T[8J&F!_; 94<@/F&K;$3(FYQ,Y8@T21XV.G_NV>E7<0P=P]]+6ST]^-
P2<ZW5@1N(2[)"8)D6/N:+G?Q4// WO#$-2FZPU_4$(%H+.DDOTBLLF>@<L;0)X3=
PBJJ<'4FK0YU5-DC,J^TKAGP>_5-[8%>%EKAHQO:S.#X$D4+T>;F,_RMS]9(FN>>B
PSN^@UFJ13R-0]LV\Q=57+?KGQ?E)4O91^R]?>B3/3%?4#9"[!RP)75CEUH2%RF#1
P_0+%J4+$HL1!K4V;,@6)/RB68B[J8EXM._F)%6XL9BH&^L[_I$8AFH,#Y7&I>.>E
PF05YQXE.AO]$U9Y(FKCR)\F#3Z:Q;P]#]L'+)+>U,D8\>7-R;19/G>2,GBFON@B2
P<Z9-5[UNB,%\D-(JE'>(6,ZDM7<:*1$X3)>UG35" 72V(YI:./#O18P:2)Y&'+%P
P6,7+\3:'F?*+;,IQX'/'GGW4+Y#[B,%O,_O04SJ9E!<8UOIC=:O-]_D5';"NP_.+
PQ7;RP-!9@.EL0PO56Y^AB$!5G?B"*R, BN5,F!1E! <DXVWY&>\3:MX=OK7/IPW+
PT]<94G,4H3A9F**$Z"X55*CM0#[XGT 4CF!5JA7%FRQ_\)4Q>D7F+VU> TV4DP/O
P"8+52[9564%:2<AMIA]G?0.LJ4B4IJ(-!VBZ17D!2BX-M C+I\TJNC0WI"V,(F9<
PZ<I);']K$9TDOH?:!GD I;)3R)EZ^>'^LZ"@A?SO<V>?-9^*J PT0F7 K=,#V5Y8
PI19HYR-#;H.5E4U-S+@KD0U>. PWG.RD^<XL*?Z=JEI/1W4&[^7;,LWU.9LM&X>A
PP+9H9\RSS5/4E&(=N0U'\(E)HHGZNW1$VL;1R;G"X !U93*Z6>?//\R6:"1F.A@W
PK,T K9E/A2=G+EK>/T\13$=>!99VB$+"3.W#@1,E*+-[GIXOZE,,R=LBU89SV>D5
P<Y<17(1='.-&N8R>S;&NO]%_0JV6UL--V/U5O;C38(=BF6+>^?;^_&R#Q$***>PT
P+:KS=+F7?:ZV/N27\C4-H2C'ON.3/Y!*$1-"%,(0O BLP@H:J[_DDTV^\2EH 'M9
PR1J]7J*BS:U^:B$'^_PN0;(AYWC<=>2&DH^J,0N:/ 1IX@$.G]ON!Q,]\;>#1F6(
PV*-C4D@J'H4!G@<-P"Q0D=&MEFFFMKCJ!)ON TCVD.K0B.EVX(@X5(B:3OI>5\$B
P\,\0''[(Z;Z75M/-FP6SX?.$U>,<Z"YQ@F4N9"!(-O!_NK_9,GC>M322CC2*^AE1
PS95N_-0&?6)E]4]9O27YTY>X/%9CF)BB44WI;TJFMS?M(#I+AENBRFKY3VZ" "XW
P)+JL-GM+IH5-D^:CA(2/-($ZI$,26T]D/T!F#C\RDX(B-0:#$[>XR#-+\</2=[^7
P[59J"/[+N3%U1"[C(R12L;T/E['-:S5V$(LA/J$ZNM.4S1UR5TA\:^2PJ'_33$_A
PK6_FMGAF%4"Q;'SZ;1Q5\TQQLRT5L^)T=2+IMHF5HGEY8SC6VJFY]N@2J0!YX=GF
PA+^P*%NERK\BH3=C? %,DU:N&5RB1]\"]GT&/WP@$/BR1=]XNIJ@TZ/]-6E;L5B4
P6C:COO YT#"*, 7\ GDX;)('>E&%T:WD5S!1A&04-WQG8CG28<[OG/O,6J7VSW=X
PF;;>^(!!D&R@%K7:O&4B"A(JL&J?HFX8- MEGO'(6.?<JOF&FM^6L"DIJ&TF@@/_
P<TU\=SRC_>].][=7I+"U6 YV6U,VTL!,?/K6N/&TLV@6*<67)J[I@W!?.2*N8D@5
P <D<S 3GJ<9+Q0+*X0?FY'2=T5_68LA+O/ZJ,SUVFC-*--99L"LP7K &U?^D[05R
PWV;=-.MHWL]Q,2.\("0IMBKVY;[+3_ ],'3 ]CTBW[,>! \R7+$?%'I%KL4NO&40
P[+0R02DDIZMD<&WR;LR.K63(YZ5BA[=ZPI>":W[\C8@B+I?<C<12>8^BG8!+-*-W
P%1Z5&I$USUM%1 M+)V7=N^WPW>X)Y_CKQXI/&-P;;07IETDM_.U=1^B3D"$< D_$
PVKP^2VG&8(BN2N^^0CE!&O00$87V$QDD.:K1!B,*QOTS28B)A9 T8(7^0D0X3#[R
PX%C@AP9+"JBW8VS3"TYT/9YX!F'MG.OZUT<'@]-NNM#X5Y=DO/;0. E.:4:*'9NB
PB'7)7QEC]\<+CY"Y3"G8C751.]$=)DFIV:0<Z%"JCE-A$E<0>W$]AZZ9HV!6Q F8
P1*\U[']7;=4NJ<Z(,?3MY=?9IO9H.V&JW.NR1S&R1E550\7B:RX(./YJ:;7)5!JM
POQA7VQHY@@"GJ#A[4@RCT FV66#*1M"6^$/%]L!\OZ5Q)LJ!L:?@!O_BBBS&"M35
P5VJQZWE4-+Y17R/J2W-M7'$:]= C:[NX.;P3'XFW0=B!T0/KD;YX+OA#,1)M9INC
P%. <J&IW$$!O5M^,BX/!ZEEY]LM4DP=<3;J0,63AU_I7%]"W3N/&[J2<:FR6)VH/
PO(T,2W[5D),BN\X#]7W,ZW"5K12,'>J>5IO1%K=)0?P_MY@H]U4T[?O-GS5)<AOH
P(:FCQ6$!%;$,JQB&@1+!B$Q^ZPM'-?3'!5J>@0'XB!DDQ.\[7IA0,MA^GMM1N*LF
P_@@B2'H:/OT"L@] 0(V3B7@=2&(4ZQ0]UV_>.LFM;?V*:5"A0GX!),+!?<0USND"
PLGP6%">4PUS:V6(4P5PM.@5-6G1@(0B4T2/;8AM]5Z#X97DBR^O#9X@GV+]\I.H<
PYBSQ$19A/V16;N?KS$=!'+2C;<>"%2T_W.[]A?B/"%&X6QI%YJ.**YI_XER@,C8/
P(!4:@<W9U41F/*(]M;WG#SH'$2:1N[5'NGL^'/'%Y6=AF$B A"=6LIP2WEM4+);&
P<'+PQ+2L);_[JI;#W[6=;BT7'NS N"D5FG(\[ YC(E$MO;D5Z]3G9T<PGXG>K)-B
PG:=/2-ZM4; Y'D@O+#P%$'D:$IXZ(3DVZWW-L<ETEB2K>I+LS/I]0LD\+;K^GF5^
P!UH5\SK6A=/]:-0I5UT-F4_\J=YA[H\2<]")#><*JY(HW3VWE^,78:[D\S%AFED"
P&GX(V;.?^EF9X_ ?.>\FPO8EE<J"VB>-[)NJ!EA?']A^JX\OK=5?.8!I. (CE)4]
PJKCNO*F359%]\X";])38V/ZVTG2W$LS7@V1@GIA=W<&*>HUQ[&8YOH\Z<)$ ;^?1
P "1X$@H@X$7,UC^NE%6)(5H$P,FCEJL#%E@E$6P-=%<(EFK8?%,:0OCSYNO*,72#
PTYX>F*MI_?$I&7W.$K%IA>;+:HJR2XYG8\'KX>O7_QAON"O+K%Z_I!5V!B7&!Y=F
PY^F:LR)8-!>N43/.+#!N7' M"0:SHI0O,W1Y*^0'"C/PMI_HJSR55E.S:[>E;9>$
P4_Y(P'AW-'E7$J>&7Y>H=(]N0*SKLV&U[Q(@W)^Y>G5-+,C]26/5,#UEU'!YM$/9
PTX\:Q]CW\(K5_X@S=II3(^3_I>,5'>+0C#U1JLTB''4L]&M_M47XXID:&\_O4-JF
P,@J'%*& LIH/N"IE5]VKNG2ZCL%:@,I?45'Y$%*7,$'/4M\YIM&AUA&'7156;X>'
PENRT,R/64Y0>]1LCS-F((%MA\;U6G5Y"(GVDF^"F1]57: P'2FJ(0.LCS;OG71!T
P5@K('($4^U7QLXL+&[QR"^GLP9?E<Q.9))VH12GE2%N/H<4'8A>%@6TI'4D,?E_?
P& "! !Y:&!#LLA9GX0^I#QI#Q]<LV93O=390E&'_C5 )4\&4;@W<N:"MWEF.7D3X
PCLR'0W^#2,7+>?C+FJP;ORNZ;9+F4ONB9IU[.IME8,+"1@-F<32Q:$K-QG@_/F M
PBQC^0J-W0_'W9V:8(I(,U?"D$*=IC!*_Z K&+E*1=S8''%R@&0EB4GPDWO5F0%08
PBFV'IE->$Y$%6AEF(;<BINSFN/)1P?6-=6*=1.?&T-'.Q\X-*_N*%?KZ",!Q7$1P
PY9^S-@+S<0T* +J>G=R*$=?I5@/3SV%@SC"U>794J/NBFB^PI= N(,/B4]GJ;8R/
P09)Q%K-/0ZYYTUZV#W.(T?75 (]"W"QL_V)J^VF0(BD@]9K>B0B5LCZF6W1Z"\[E
P+JL[VW"AHPO,<3BIILRT&+,N>>Z- A$K>;BQK\VJ0WB#V"'_M(BL8V<R*_*/3) 9
P/%0*UO9-P/$_10A&A3JV@9N#%$M7O2*'"@V%[N>]C<:L@G 3OD:<RXGTO?<A5'T)
P,-R"PH:Q])R&[M$PDE<KOA ?GUG+6O*5.1Q=F"5OQ:, IDYM)P\0QM8.UV-MVLOR
P_I$U<36O%*%XQB!15D&8I/LJKR <&&^)Y%+O!4J9O[Q1PLVK0A_FF?41Y)HIM['A
PD3_?BCY+R?[X.[B+RSZUMGN&S5"Q"N0F-!0S'G\(M<($^O]I^/K\NYX;5</2CLPD
POE,>]-R<%6ZC:IMJZ'CJ@M>WB7(USP26[4A=*>%=7)8?!MB!MIY_P[V%U31-CM4_
P@W0!-=>K57%1[R Y\F2Q@Y"P#4%#\$G#\VK4^#]T%D WDXS\NUD7T5*>J L&K<H&
P0ZQXH%H=^E<QC?B^S/QSX%[ZSF&2=9881I;@C[#?N99?+(,P<Z6>E5=68L0>,XVT
PJ^4S1#;R2"L/GJK%/Y,'N2U[K&:).YJ$Q.!>!P]M!-ME+<ZV,[_[4,G_&9BL7FK>
PB@=F%LF)P.H!0V#N@PU (29A3:=^5ZD9G]<%Z;4_?A=[%61JL%$WW^@#<]B<&'=<
P$F67LE=?V#"T_WIQ3#</X:LY !UTHV$>MAWY&[32U,@FUZX.K*A3OF5U&V9BT[!6
P8<R'S-:^;MD4X'!8<CLS'5Y& UM3YK7X#;,)F &054TT*%1F6O43K*$?8'@ZB,&9
PY3>PXH(0XZ,A3KA35?18A4![NOQ;-M7%J4+5WC(%YFW5EI'+8UVKT^O,Z/!B/?\R
P2(!&HKRZXU,@MQ)*!_9T(.DD*&#HU#35O7_9K'(G/+W_$6*O>CH6,WADGH^12&T^
PZ@KSDO;U?L'7EF5))C#S%%N P'MIY68'\DD"U&.6+\%FT'7Y*F9B+>T/?O^ C*\0
P4X59WL3*<F$X5+PQZH8T4,89P@A0U%RC(+"2>Q'<VDB)7]#N_I*KB_%GM@O>*-1/
P)(!9MBGM6ARRXY]&YG\Y%5;P@E-L7:ZDC(Z [6:,.I&WU*VSOIDF^1M/^+T+VDG]
PN"< 00:J7JS+.YXQ)XO2HV7!Q]><Z=W<]5MF[1< >OCC:_&><?[ZV#?<32 @N7!=
P]YV/F&&/@*W?%YK;G#>67T9/-GZ=PGY[MIA9!LO52XKQ0<*:P>'-;N^3DD_P="]C
P ,1?,5"\[+(;<Z0GCN4Q.IR-%.^I'= Q$"LVIRI(?LX-I-@BKA&J^ F . ;>-919
PN23)QI#'U#76K]Y !C^<GHPOHU]&4VZ:I9Q)4/P>5^F4OP6X!KXP_/_KL&;$0K..
P$K*:H@^]1:':VYC#4\^&PA8E 'J0KJM3\,7X4:@9ZB]$R52J<U96>#*DFSM,EHD4
P%":%&,'3C+!"E$JHHV''V+"YO00/8?TH^P[&,1%(Z]1RSNQWBSWJH:$$DU;S)4-I
P([>'(._DLVF6SY7(OP9'V#==>*'-##3"M&M,XS,L2219S- Y3"R0?".D'*AY)-MS
PVJCZ.H>0^^K&@AIX=+]B<<8=)TYAG/C5U O+\!QV=K]>BF^![MC;,A^U[;)RM XH
P2=,<^[*WMGFLR>H87"Q[S6QH!S+/_QY+=0#QW^-J0E72KMA=.A)PT?O&NR$ ']VP
PY)B51*@U@?:$CIO@_HB%L1J+\5T(8:8Z+?R9I)U91Q/F;I,Z;H<K-5WQX%/*3[OH
P$;E/P+'-?5U^IA[1SPP^C9SS>,U_Q51;]FP2XH11G2*J3_L=.BE!/Z"*SI$K%#7 
P/[/Z] +7Z7I)XC1D@H&]EJ!">M%^6#.=K8RE55PO:P%:3]TWL![ET/6'R8Q;<(;X
PQL&*E!%>A::XE2RU8?<G*4Z0O"00K6D/F26H (Q]KJ;*"/[9N./..YP5YH!:^^("
PNX"6@>+D^FD5-7KR4SB)B#+4V(V(2 ITDLX&(,">(J!2#4QO)_D@*RSS5C3,D^YE
PCO '\VL!HF*1<?XMXXK&L(VS:<IY4W[1Z568>XQJZ+N!YF\1"I$[BV:<](#*F6"@
PXIUHE?K6(2ZU^/==8'6;9J=\)67LBV][&%4P@GIXP^M%(BX=S>IZC,'84%B*O_D-
PTA);4U=H^="55#RH/+7A<[LO3': ',^0E6&;(RNC:X[MGH2U:2(D D'S#];&SDTM
P=![!L+NE&ER[7IE9^PTL3LAZL7RRL,0_8(Z%6YO>EZ![O5_) N-4<(DD?FE=\F]P
PUD?B;*/%WSA19?Y/NPAF.R$7RY69C.N^0@/21G&$L(:<[$$;\%.P*R;# 29/)@39
P_RE]#Y$G?RUW>5TG!G-8$UB_N]&W74O.'N?BM!U*0[B_<Z9V&!KB/H.E3MZ[+'J(
PPP0/M%ZBIV7E5'\W,T#:SI2@7V9J.SM9-302AQI/BM)FAL?\C#]%GF'+:RD>'<8-
PT-E-0L10)8*(Z<O%<5C ,2YOUKYU^<7)RI[S*XV:)_M03N7YF!W]0O<=>D&:_B;-
P\LBGB2.&V,WZG_O-G]Q)\8=7\<U#>\./^6T 7TP+.E#P\X\UDCOG+9>RV%NW2#3^
PC[*>"ASA/WWX:Q%_9N*6 L;VFS_/?'26X30^"Q+K2D0\ %MV#&!1U^X'9/CSED#;
P :<['S^^F+]1?C".+RP',:I2<66YI5Z%DD^?[;6ATJHTLF64Q+2E!MA [\(U*+WE
PS)C%(+C!=*8%4S=3\WMYK5G]=X1S K%JVBHDZV;U &#J,; 4:G 'M0LH.F@'S!D=
P0[^Z^8;2X2T&:@GK-YXSZ;=<#_'W!<K JZ-6KX?BATO0#+++IN9R4S0R6[;7 ^X=
P[#J+.5MC;[^\XJCB59L^GCR;R+ZK!&8//<-^<FA3UO),&><^?=DOPLZGT,9!3M]*
PNQP<\J\QM-2@C(B786Q@( \B5SL0%HB:M^,C[-8:G(HI6RS"V77SE<?5<:Z_^R0[
PFY+ISNT'ANO>^)6>7PEF/5RIYKC>)03Z/AR<[() HQM^"!:7Z?T?)#M'$_Z&:,Z9
PLEQ*EN_4HFJ]>D&&FNUC1,'%/LGX <#VDF0J=\/]:EK6-VD=/XGNQ;2TD6_R[I;C
PWR$&IOF;4<H(\APDI[<9R5"8,SKV:-MR63KXY>89X6(?="HVX'ZU* /0HL:T*D?2
PV6R"=#!U8DF_IM01%2VC@9%E>AROO"YQW0$R:0+KG#F!<'[=3##@<H8*UN);IW')
PK/LY* 2#[#<)4BT%&LV?2KCI'=9\)U5;^76L[,K$N+;?.L<'+#R+V:?5K+='Z4U[
PPS(6SW<:H2C7H+0GHQ<XV[6;T"X3O%;\45XILPQP=$:40@%."REHMLUHK[@X0PN4
P_DT(F:N1JR>8*KP.98T&<DU:OYS@[A""62[[$?&"[2)'RN&)7Y0*O83S#.7NG-#K
PA+:34><,B&.>\@M6[&)>@.*QFK7B.S_K5()24Z98 = 8TL>P'E%K=\@=S&ZZ]0H@
P\)-Z&\9C7P=Y-MH:N!,24ZRC-.U$AH?D'(ZES?XT#]\#L>%;U,9\_,L3ZBN!Y&9J
P6G) [=!<F58*+)2E8)2\U?4IP+13#EA^#@DLQ%):+ $/?-X ;F+Y?8-QTF'53 #$
P/ZUHY/B:G9LV<PN0;,[61&LX>DZIUBL&;J.IQ289Q$QD Z/][AM4+%G@^)E]C!J,
P5%S@PI0@$CM"=PR^(8>W5GY<'*RL<V;2 &@Z&*8KDJS<IIYOVD-A#K-U+K%2^P)A
P -%N&H[^U7"#V")ZNNF.R9+R[$?VX9??18ZE'4,3EVW5OYV V=/Y9Q@EP4Y9W'S,
PE7@4)2PB=PMG)JV2*+HPUYZF$<U@'XUI#5PVTBJ$5/#/279'T5,GO\#_*4SPI:3-
P4%V8>?=O;!@HNJAAS*C&1Y6_&JFV?^57*^LLL3Y6)H]Z5 %+?#:M3]"XA(-0*O<6
P"$,BZ9&_B3TH*FFMW'A)$N4LV>Z.%%R8[6&(!#@.J6^8,=KRV5F%BUS4!"6P^UE'
PJ;ZY>#C^I]R<@LN^"#^A,N[G;9JMSB%OJHQ["7]H )QY+HII]'EG"GFMDS6?6&5N
PY4('L\V-(V(6P\F'IG]#\2_<M]%(1-<H175@.2IN9-.H$XW,E 'ZA3'BGLMCB+$C
PPJM#[N\M3656SIO16XYH\\6^U/UP,Z\Y)U*S!@^G%E%49S39^-U6LL;*^7<%[B76
PV>[PG3$T<#XF36;KHP&U1!_<Z'LC=42R7.S*'?+HT#+&-:IGR4<T2<P:[]89<6WP
P>.;3P"',N<MDRER)U-XENKRS E^.F\+4Y%#_>Z%A#8E+[0E7VIU:TU(]BI-!I8AG
P)2-!=9_B',Q!:5_)IE&$.$ T[DO% ]BEG8V#=[\]-<!V_Z2T3*=(#E( DW:^!(O:
PKM$E*S1^-0GTRF(&"2Z6$&&T3G0\_VM1<9O!/&$#W.R$=9;]AZS/C9E$Z6/GT_GL
P1T'TKOY?TY(+N@]PR#WIN-OYA_*;A2DN\,QR45^1=JY_RWH[E=C4%Q*1TL#]Q7OI
P:QP$I0]8*6=L@K,W&TK#Y>[PU_&;Q3[;J\/+>(/E'+=+STTE[%1-JAD$<R-A-W%J
P $EV*8+'S74#>REUT8%$#>%[5X69O?H3.&A:8XAJC )MEFU5U0-$'E%CG]SF1;N"
P%;LP+#5\O[H+<X1?.L!_H,W_D/+(;7,?- >T]931=,X,JH1/$]7]( WGL+6&#S /
PW-S>X;>._R3&.TOO.%]UQ5!6J@8THO/H[2XC?Y,#@Z-L$Z@M@ 3O<JP?JBN ,\8I
P(B[^@0TB2BLP[2"&FYRGK2%STG#FA.)D.<8G:@VIQ_NXBIV;D2@R &"MN+$ZH9XU
P$>086G>5W/PIB1U =5-%(P?)(O1Y:YBL\Z)2:0P:"2,LNDG[\F;;1;*3&?7@&D7U
PH=@%7M7Z0_@GH23DLB*K,A.U')MY;<Q6T_*QD"KU2K)RO8JCRUZ0M$AG5S$<IODB
P>;5)E_6E[(Q^B/\JCGX?QEJ+@P5I&4M8)[P9](V6AY,X"@&)>F[\S/F53.Q%FR6P
P>5C^RSINY) 8_495@)-R7-R<.(C ]-GKK;+14QE8T4).-#+'F7\0F57'_NRU)>(W
PR[H0]NE=K$;^O#D;LMU6J;6SA/P8QB) N6.O5JVX3L*<X)?Y2_1H$ M)"J*>VW\@
P^Q-1@]8*3N/Z6<[,8ES].'G^O^GI2ZPID]NMFPH/#41>//*;@XHFX&8.M*6\VS)G
PDR!@E56#<\._T]IZ-&X[7<],PVP07&32](VL[OUOY/+U&D)L;=D:"G$[6@A8,G-D
PKTQQD$/1WV;TLB"5.BD,BNQ9A#0Q?^;D1!GKJQ<?W?!)\(V9[T*#5FIZ5N+I >DF
P%/*@=79+8K[PB,EI,5*JABB&1+'3R[W*%UZAQ<W:FPDR%=#:V[^#717P._.'4&HL
PGMPI2/CU,-FF-&8K6=MQ-9D2\_"B7'>TOJ"3Z#'^(5"5:K]"32%4TXPWLG=%$_5*
P<$LZY[)/H,I=I>,XL'*BY@7@J& ZB^NWP5GTHP6TY(_$ @"Z6EEA*2A9O_SOO,AI
P_$].<YEYYAK,F-JY/!?*R8W[6G ,\?VMFVI: I::J+SC5^40JT4V74GO9]@YFF2%
PEMMJHZ9'%'!/<AO'FFL%,'Q3-P-K/?K_E[6'!7($Z+BD[5U@"_:5Q(N<=?A@7T1!
P#U?(GS\=-? U7)C#NU@/!<XF=A1DC$L$JV!O+2MTW4  +VEGO'&GB1DU4]+&COG$
P_!BI/B@#=9YOE'H;:P>)#P&-][#I#J_9 JGQ"T?"5?(I@7KD]^W!626=@#RZIO<^
P(#^Q( P3>5>W!Y:KKM4P$WQIQ<*"A7++Q;'$KD93Y(IF+TG?3#F R'3=".H?Z#ZY
P-!K^RS+T8GP.$1Y,:LAO01XM4B_X<1#3 Z^OES/K\P@1/@6M+R[EWH=:"@=ZO/;:
P<B=@:62)]O<(8=E ()$\FR@IF_[#6X;FY173;E"<M^::NEQ]B.=3%V?GV8'(OJ"A
P]+_(W 4ZF&MB'YQU.- O5!_71JQ17W]\K*9S6<Q*.")6A1V.XJAK>EO?$/I#[,0/
P/:&C 7OJKSL1BNNV_ @?@UKQ)= Q!>9]E6-(S;>#T8B6 >FD,*L, X*'A728<0PQ
P<GS$# R2/@2 B7764#9':L>NC'_(\%&G?^E=%( 9XL&^)N#^<3>[#!\+3^/UU8L#
P0PK5OI:R9B7/E[0\*))FA]%/%)FO.F30JA%8 (6)BN+XXZ6C#ZVF4T?9UB#1#V@<
P%[.BE-]<%PX.9'AMMH<D_J.'T_3%[3,*ZUV#K_=5:O!<V$O-(.X0\9B9?)3?TX"G
PQZ\WX#><UI:ROB0.I/QC/(GSG<N&8/;F#X(FY0%024-DCR8VK5#.-E30RZ6KG34/
P("*%D;5"9H"N?BG4)J-JAX$0Q/[ZJ'\MLT;$X5"^CTSPR'T5;CBR9 T'N/B/>$MU
P"WW0@,JI]/K0J/Q>*6.^CA'*'")[24<32ZO0KIG'1L,XJ8JIH95*BR2>$QL-%CXV
P"C1@GL&=Q75$&9H&CO2>;2!36Q5"&P;6X4#7 !'L .&E18X%F0P#5CH^:3IULO"%
PX3?R7K2>T&O'S%K;?3#J-I<C?!'",A0-#I2-CVJX>L2A3??5.Q14!N;*<[JWJ[D(
PD6-OOE?=6]T91L;:O21-$D5^@@+*H'@N8'\L;BH-JF%3THL_/>*:^9/I0NZ@>]G)
PC53S.\<BA=/CI@/!LF(QL0BA\F_ =':IWHTMU>D;,-=^.0D"/U(?@W9[S1LB<X"@
P'K;*%:A,+?2ZIFF]V">IO>2P.DC0/IH=F"&&CXF$"%>-WR;&LLS6>\P,#MMP^0O:
PB9'M/#KX'%*_(KJJI#0!9EP)!U]NK8K%93H28S49\#J]4BP$M =[FV\X]+;8];-$
P=\[[V&>N^LNS8(9576#/YO L*S[7RE-*K>2%&,-^4G&U+2FIM.TZL\ME1# M>\X=
P;>@IV;=P3LPU_%?=:SB,HS";V^4@9;1]Z*78PMQNW%,U=%XM:AX[U-A?!$*ZGO"Z
PWR#SRKP6HPAQ)_B8M._!"':/MNNXR-V?K4@!SI\P/S<?PW\)P9VMUUI;3#*,._L$
P2BTQY\/[YYS"-6_2="^T/]CM\D2_VWS5".I$J$!@K58G"FNT.AHA"!.W3+KO1(]B
P$.;C2M *\TS>/E1XZZ 0W(O!7)(QWV-M,\@W( WGQDOD[*<MB"TE7UF27GW@,;O%
PC8;MQ?=ISI5Q+@06E)!+V>F[>M%70)B0W3?HV 8;0=(T;BNB=. 1D^X778J6I  V
P*]7C;Z\,()1Z_MR$K2'M[/(@C!C((.D HS.&=-YF#I:31Q+\*,YO=055EWJYV8#0
PJG**B*6%P]N7@S=DIFS(/>B74X!+TOX?DU\5'K@\^-8SB'.J4;EEB\H\;9%'E1)^
PG"B"!C20RSS/!!D(/RQ8[\#VH#.*88&S8%3'H;K4;EN54'6I)3!FAKR=G%\@4A4Q
P*YHM9FU2@C#FS!LYQ=!3T5A"E/YZ5+9[9J-N.KB43Y(].&TG2?W_5B[LY&!]AX]F
PWQUGO(" W#6$EPQ;4^"L89C[W8]3G=:%?XT-5T\8O!*M &K.,U<&9OUDG<OA\M[L
PE['%_\M)("9(\34T3,FK_9PAAM.7R?DO.B(^'#L#77/3X,;I]YJ1[OY-2GIFIB7'
PF[(@P B/R3[Y>XOY59V#7?1\.7?M2P]H>!765W/@4C$E51!D=1IQ1C+?$QFMW+=R
PS"+Y%O3_  Q[=XE>&:#)T\TZ2>FKM^?D]1C,")[[&;N6)PX%):C[:#>U5?>ND7,3
PGE3^@M4] $YI03O]0[$:)_((IFWH3C"<1_93%J@2Y30>!:7>;A-9-VUR"$ ^<T.(
P3,41OLC6%)S;Y8U[!RU."A2.VO^W6*(6<Q4]!FA/E9YS$5_1CIKY2$X^M;>!?FD/
PA<);+*SX.HWM]* CT:) EZZXM7-"D*C:P:QLYP'F'0H%(RT]HIH*._=8=9 2.")]
P>VJV?7$55HRZ$*?.=Q35-F;RH_RN'/80<N<=DO_KY- DN6%BM2V\"14%<\EE+R,'
P:&IG4@87M9PPG=]EO?M5$/\2!#7J!;GT#<1XW\.G#PF2%<6MEJ[GH$BH&GB.WJB,
PMD0K?VG+-:$[V-HE-N;99/KRHHVW6H,7PA:#ZT^OU0Q.+2 W=Q>[Z5O#'Q>K&PVO
P:=Z^+:,,'UV?/94B4:\>:4(KB!42& 0GK?H#'B*"T0XH>,TX3,10=&3)?Q()1J#4
P1W:DG0%N,]_SH#6[K!;6VM1CQ,E%Z><>APW#OA)+0!AOY7]YUUTD([+M!L*)YNB7
P;1$CEB\!RMXWL'7!,>CN6RV](J&:IX$8"I;WL7VK(/92L48LP;0^!);&99\FFB#J
P 74=ERH]8F0&3/VO3W4A1;+SUE'F'%%7F1E,K>0)R%ALF[7(2B4+ QR_T;J1 <O\
PC:108S4B=K)'S"<1"0*GLL0'$"9P[<B9(CDL"<&B%&IWPJ%('8=J(B1!U=@&D]#A
PM936812E?7N[^?4D:1,"G$C,^*XB=QGMC>GX5)'>GYP?Z%H83^U)M2^J;&74J[Q^
P3C >X3TI_ZF1= ND66E9BOVJ'ML>RI(!V:]O$+X3'BYN#CW#N(-/3)4@<\PG@.+/
PJ^22Q?Z8/:!L%8'4J?U'IJCU-/&M[SP/[7.-*C>X[TM=O(TND$ )R%GY5NW5-\E9
PT^"V=#QDSQH#2J6HL%V.#Q,B<:9\&J>YPK8@B/S2=DGD70?<888-^ZIB+I /=J(2
PRGA#(DW>@!#]B^297$4X[K O.UI,.L*5XX\V&/W;ET(5=GJYMY+9EZ9ZT:,C4BHV
P"-?YVQL<LWJR[<,U$LBR3^)ZV8WJ,N>Y30#LW,<NMAZ3XB;B1X)0B$/Z6R>]+WJ.
P_#]2+1A01("%=6;: *GSZ5%@/L-5DU6D/,+8AFDWY:,OUX7D6&P6T]0OA4G'R!_L
P,3C .1>@5&T?R]QL+U&DYPT2 C=3*#*1*V3,/GM?>,_O4,'BN/!Y4(1XM!QC=0P@
P5@]S=B5MI(,YBNLQ7O,AQ,37P9*!-S_ZG3D8-3T,:YI$1Q91WV@I"MN#>T1BNNO/
P2<&CZ^2\)E4Q5B >'/CDC<C:YN&+A%UC=HTU @-EHQW!W@K]LP>?YG"YP\-I]$A#
P<F7-A8UH%:6-!%BIC;[^%>-L+$9<V\!&UGP/?*91,F?>)9XZV%:,PO.^6U=F6+:'
P!U?%UID,BJ)?7SL;>L\ODGLSDK,I2):I$PZ]('!7S3O,BGP:G2"2-)!2"CXDO;WG
PP%5>0P)W)]*1(.K "E@FQS_6\*+.00K)6%7:C%33"$+\--_72"@Z=$? FEL(F2B^
P;6)%<&<VF)IZQD7]S%F" -.96_29-FX#MBM*]ENW(W)5#"3FCW)B*J&2VJ!-(%I7
P09)=KS*B<R4!;APZ"J?UD'"02EQZ1N63]F<&=;!+;P/(**TF;4 #7?ZV4YK[&=IZ
`endprotected128
endmodule



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : pmd_bitlock_ctrl.v
// Author        : Qu Zhang
// Created On    : 2021-06-10 09:46
// Last Modified : 
// -----------------------------------------------------------------
// Description:

`resetall
`timescale 1ns/1ps

module M2_pmd_bitlock_ctrl #(
  parameter DLY_LINE_WIDTH = 8,
  parameter SYNC_LEVEL = 2
)
(
input                               pmd_rx_clk_80,
input                               pmd_rx_rstn_clk_80,
input                               pmd_rx_bit_lock_req,
// input  [65:0]                       pcs_rxdata,
// input                               pcs_rxdata_vld,
input  [79:0]                       pmd_rxdata_80,
input                               pmd_rxdata_80_vld,
output reg [2:0]                    pmd_rx_bit_lock,                        
input                               rx_scramble_bypass,
input  [DLY_LINE_WIDTH-1:0]         rx_delay_line_data_config,            // from register : delay setting.
output reg [DLY_LINE_WIDTH-1:0]     rx_delay_line_data_pma,               // to PMA phy    : set the delay value.
// input  [DLY_LINE_WIDTH-1:0]         rx_delay_line_clk_config,             // from register : delay setting.
// output reg [DLY_LINE_WIDTH-1:0]     rx_delay_line_clk_pma,                // to PMA phy    : set the delay value.
input                               bit_lock_bypass,
input                               bit_lock_soft_reset,                  // from register : reset bit lock state machine.
input                               update_bit_lock_dly_cfg,              // from register : triger an delay config update to PHY after BIT_LOCK0 phase.
input  [31:0]                       bit_lock0_pat0,                       // from register
input  [31:0]                       bit_lock0_pat1,                       // from register
input  [31:0]                       bit_lock0_pat2,                       // from register
input  [31:0]                       bit_lock1_pat0,                       // from register
input  [31:0]                       bit_lock1_pat1,                       // from register
input  [31:0]                       bit_lock1_pat2,                       // from register
input  [31:0]                       pcs_idle_pat0,                        // from register
input  [31:0]                       pcs_idle_pat1,                        // from register
input  [7:0]                        bit_lock_repeat_pat_width,            // from register: bit lock pattern cycle number. means slip number.
output                              bit_lock_chk0_done,                   // to register: tell software lock0_chk is finish, software check the status and config a reasonable dly setting value.
output reg [3:0]                    bit_lock_state,                       // to register: polling bit lock status.
input [7:0]                         bit_lock_retry_cnt_cfg,               // to register: to tell sofware bit lock retry number.
output reg                          bit_lock_retry_cnt_overflow_pipe,          // to register: to tell sofware bit lock retry counter overflow.
output reg [2**DLY_LINE_WIDTH-1:0]  rx_bit_lock_stat_per_delay_line_cfg0, // to register: to tell software bit lock pass fail state per delay line config.
output reg                          bit_lock_fail0_data,
output reg                          bit_lock_fail0_clk,
output reg                          bit_lock_fail1,
output reg                          bit_lock_slip,                        // to slip control block.
input  [3:0]                        prbs_mode,
input                               prbs_en,
input                               prbs_close_loop_en,
input  [15:0]                       bit_lock_wait_cycle,                  // from register
input  [31:0]                       bit_lock_pass_pat_num,

output reg                          bit_lock_ber_cnt_overflow,
output reg                          bit_lock_ber_cnt1_overflow,
output reg                          bit_lock_ber_cnt2_overflow,
input                               bit_lock_ber_soft_reset,
input                               bit_lock_ber_check_en,
input                               bit_lock_ber_slip_manual,
input                               bit_lock_manual_mode,
output reg [32:0]                   bit_lock_ber_cnt,
output reg [32:0]                   bit_lock_ber_cnt1,
output reg [31:0]                   bit_lock_ber_cnt2,
input  [7:0]                        pass_clk_div,
input  [3:0]                        delay_line_uplimit,
output reg                          clci_st_s_bist_correct_clk,

// output reg [15:0]                   pat_default_cnt,
// output reg [15:0]                   pat_0_cnt,
// output reg [15:0]                   pat_1_cnt,
output [15:0]                       pat_default_cnt,
output [15:0]                       pat_0_cnt,
output [15:0]                       pat_1_cnt,
output                              pat_default_cnt_overflow,
output                              pat_0_cnt_overflow,
output                              pat_1_cnt_overflow,

input                               tracking_early_overflow,  // already pulse sync.
input                               tracking_late_overflow,   // already pulse sync.
input                               tracking_auto_en,
input                               tracking_auto_rotate_inv,
output [DLY_LINE_WIDTH-1:0]         rx_delay_line_config_tracking,

input                               scan_mode,
input                               icg_mode,
input                               mbist_mode
);



`protected128
PG%SV,3/_O=];7>;P&7=<T-NQ:O@OPU:'*)J"H,K_<Y^HC:DB-VLT<WM(@-$45P[@
P)MVSH"O/"<7"<Y[3\I#W)$4/*Y\WII'4(VHU>6Q V!T><1GJR]3$H! ;/R#M5V-A
P2\06>*7#NM6^6Y\V 4\4A_C+[(2^J <OP^S$,C*J;W7@R-$=?DE>\>7#&.[)D[4C
P$1W6?54^NG=HJ9S;9,5,-"E.VC+",AOJ @C30L=]/(S9H93;MS> _W#UC;-U69"#
P@\D*>5!>4LQ<+PGK?B!'2\IM /'@SB\W@/F?I?R%K08,&_6O6/++51U1'SG9UXQ\
PB0:=D&*,NR$ZOFO'73>EX"5=9Z(1?*RRF'Q+L5]4TJ>07$MO7*"J)M/.;2];@.H 
P!75G]J4==\HS%U0D_&0K>T2'IQ'W08?-0-19X#*WY[VQ3$*MEJH2*UR"RK,TP=A^
P3YKD$STC>EYNA]D[NJXZ&37,&'Q8P<)<WP%WC]P%#, \,,5=EH;S3_77]SZ<IZ(M
P99VV@;4[2F?3AD2UT"N$!$I V8>S@.^81--*=$')5+$#&^D($?CW='_*HFX1>4H7
P(6&ME:-)]4]+]Z"[QE88+E73V#YB(2^W4.A(8G=;A>82?:%&/CXOSW@H9*\ GB63
P_61'OI/R--%W!;N#Q)>S*3*C5!&^(IV3)>[](FT@Z_.]-LY6.4T(&<7>JW:3O):!
P;I4S85I/99"2^/W2WV%Y[)9>+6_D:%'F,KKWVG$EDXP&WVKZ@;7#[7GR(KLR01R%
PI7UBZCE2SKN%JT 2,:2]&#/G@<52S4M'O&X8C*T>T] 5X7L@!91,O O0ML ERXK9
P<6V7&FD ,11=,A;)(KFSZ\XU"I!%\RBN#]R:T<*)(>Q X0E:*3Q:$P_%[9Y1.P<,
P3_*V(,V[ZS2M%K1.>\V@R"AIUU%P!@FH;\A[") ANM;,?DL?(>8#T,?FQ@R3N0S^
P8=;*PANI<IMZ0?\0MKQYQ,<2U%U&&PN2Z$;>^K:SUT]55U)5D>7N^0%BU&VD*9)S
P'$Z20RN[(SV+NR3_U'F!XI,S8);R1&2;+HJ*8L$%%H-8-AT5+#A92S6\WUB<5"E9
P_SU*\9JQ'+R)M!$40%+6P4C,!:_P&V&6N/P(,>A4I@\DN!V;+@M7:C7H(8Y'2]U<
P]E-R(N0',Z>$RU\YBT""0R&0*2;R<M#)<2PB!$[CXYQ O\1SZJ$+1.J66+.]DKR/
PR7'L#A+N)<1EOBSJM;@F.K<P]N)N/WRUNW4*S9Q@<F)HX^SE,7DKTMX_?&0^^,-U
P+BH:I>:"E]XNUV;,_"=5J$I$/]KQJGZPPP<33PNF4G*EV\I:36UAK)IX=I.+VF2_
PB<S._9ZJ>NN8*"^$K)!Q>PD9^&SKXW:%Z=MD')JJ;D(UG+U#\LPBD[>+6@&J@8A_
P_P=CI])JF(UM9B);F!C"X@@123\A>>3G9;<2U;BP*>%F:%-(7=KWZ"()Y6OLYRX0
P=K.9.SM!SEMPQ4@Z,8;+1("W<T'^R,GAUU4^&VQVT'PK*T$8EU1HW[CI%UT!3,<+
P!3!]"]:>/(T!6V^4D76GX#"33^.F4^VDRLW?4.7Z,*1 P^^(V"FKP]CNX/@@@\SN
PP+1H((Q $W>-#7Z#JI(1Y8NCVV_=')!$+YFK=&GOE.M-=65" QS:;7N$+F$T]S5W
P/M&N'BIODY%TC+.L3I"ZG54_<S:% 4"N!)%6Y 4!7#?KY&, N$O6<%78_N*C]5RW
PF;2MXI*D ?*(Y"+_EH)N+-C+5:^"N3 #5/50)>+<V,"-S:'2A[ATH)(&YQ^KWQ0>
PH)5#YJG?=<.8LU7BTZ147D.?RC0'*C,25G\TDSR) _)5C!+O^"ALL+!2C6?4LQ%)
P#P^?L(FAR ?QXVQ5M\ 4./@,SS,[J<4@RDRV8^M3=/?4=L0:MQ_$T!'7VR?@)"5L
P"8BS?,I^'3305E,F5#L$%5GW0D$BM?8KN\;GCF$23"]V5:KKO76DH9^BX^4= EBU
P9T_6G^,$<;>6IQ2ASSO$;B+N9\XM;\QLJS*. *\:N:Q/_YGSQYY"+[+A<U?^T)MB
PM>T_FZO%4H^EIL;Y/QD3Q"T+ ?T2'F<]^S*9-FAA+Z#=X_5H!VG+N: B"=2Y@(#'
P#W++6FD3[R2VX#U#%P0F #^ ;N3,S,K9!_D''@PT7*&L14/Y44$>:@YB9\Y"!J@I
P]LEVS$JWF/IU@CUMS<^N]HSPH+<K1*80$C.*S60-K*;K@L> H,+D5ZPKHR,Y=:.7
P62&/>6;%9.$:TP(EO?4%G2^F13IFKC,41U2IS\\D<Q,78-]B?Z[MHC:C4CXA8O^!
P\@J*]UR))J0^"+'F'S$7UR7^$C(Q&T<,5>81_B:-!8[I"&<1N7%DA)XBC=>N,Y@ 
P:[X+1_/2?5'A]'4L$A,>.@Y$^$CIN:35H?+.8-!XV1*:AZ\!I>HZ';7#X"P6C6X"
P=OZ0 8BWOQ3?&0;4JSA4R2>#90,M: O:3-?BN^Q?D%_+AU=22XJEAB#?0[$9,1^T
PSJ)ZO70>1,4<Y%1_&6HG\/.E'#Z !%GC!+T:OJT1FF9E=#\BB0'1FN5?;0.-#;!J
P0\7PJW\#&U P(E/<N+LUJFU&\&X'Y\.![!8*G2G[939AQX"%G^N'/IA_IPR%AI0^
PJ7/O1[L::0VSMFB6CC"&\%G'6#YOGD.]^X,^Q'T]";,_G):OLHVTU5ARDRX@6QM3
P!DH@_08T_!<FO22HTLLX4GD6[C0L6J+^&PD-5^S^^[=%[,=P',:\88P(1=Y-\Q30
P. @?QHI=J2YRW%!W:[A/5'4V/AXH1I_HY4+73"8?Q1_9M;F/?2F?90@_O 9NR#\E
PA*&R.S:*45)UJ:.??VIC(?3(=%9HT4[,DQ0;$6%O:KB3J][PNRN$'?@=KAY8M?)H
P_AO<%G_,WH[++HRO)X'6\M?R$E8$EN@EK#CF#5\U@Y9-^);PQ0,=>KVX.4> 88FQ
PM_:K"PZ"\J^F@A^/;3\Z1U9KXQ<D@Q?G];L(T8X)/^B+8?2'3$6T=)6,-+01 +]B
P8 S"XJBR^O2]I5D,@!\/_^'S6Y@=I>7U#0I;C8G&[(3@L.%RVQ;&J"B0OV,W\\N4
P20D0*&\XO,2M(LC\)OK8,J %A["AH%&6W90U_OHQ^# \:\^'"WS;LWWI8,0WN]NV
PM$8M?,E=^E#V6H#3 S)#!]BXUZ3JK<Z6VI:]L#G*H9^V+X,$WQ/'X+AK-G@NR,0J
PWKA-R?/[-WU'X+UT>>%M40IQA@X,0-XXZ5I9=KY&63)"\/?4E12&%,G6U9N=P)Z5
PLA/T2MGA[,TM0-JSB?<XPZHX%<0\J#A588&  &!E5MV*9SW6]HE76)N/<P# _(OX
PDY2<*Y[_ I["-FVTN<(0@Z17K\$3B&'"(1M>(6.(@MJ7J<C J]RE^]6#F/?%8RTE
PSF.?'TN@)S-AC[2:/-?4<$G EES)77K[MG*SK4%#'[A%O' ^Z:4Z<@Z9.@3$!A3%
PM,HCS=B#_MSI&S@!Y,K0\)$#_5P(.*\Q*'%>?]:V]7^GE*09RZ/Y P="B+I!<^_O
P(L!WG *H;)PJTA$.IL24.T8/HC 3FV.(# ERTOR<7Q8?RF^@"\]2K5K+_/>9N$B"
P01JBI-3_V?_#W>URVW/7Y2%LCZ)2XK6Y28H8GBN<QZW/\$/UV&AI&B^NU!N4C,A)
P[#!<+R&?[&EKS:*."__[8YI^F&Q5J(CNM)(>Y) !#L0.FS7*<-3S/%8.%?^1K"Z(
PR)OZG7D]U%_U-F^,S#T!QUF,R#<V$F$DE-B!BWZCD08Y/V@>VY K^%Q.C:6J'=TY
P*?HS\07I+:[%QCLN$1OO"H.G';\+;$5S#(BON?HIXEGV-[VJ-5IA[N$L&*KJN-<_
P[[\.U&3=E[IFB/L6CV>U5SD^2#W7E#!KB2U6>XMZ\>/[42P5K(N]@=.;8Z_ :RSJ
PYU'*/N;1^/V*<,+TNA]MBBP^<FN,7]<V3P-U R*Y>U$_D\E^MN E5!-^*3.E&X;R
P$0;2!J=R\=CLH14LSTSM03N?E).0M6L4L]=)6 ,$/:36ME(?0/D9E0L0.XH ;['Z
P+ZP[Y-"J "-ZHTZ>^_>\&99P>"!$PXV6=3<-G2.:)8ZS228PB>&I^F!YS/0N+]P>
P*?%\"NS5M/#%T$&-['UT="_>/6:=./)7\VM+L&.O$=#AY6Q@!:-Z>]$*K^3AP88&
P49CU.Y_T^1QRJ",8[S)E<1;26GFV#:!\+77BE'D^S;=IHK<,S=O4U?I4E';5B<'.
P9S-<.\PZ[FA1GA0?S&\=>I3RA%>.@1L,?Y2<UW#8A72.,M,SZP'R)H80)H/-/T-%
P*7]UC$+NX8H&+NJWI)K>^QX<^3_-4:AO]\">E=C1>7)%RLGBS8_JSA*S7FSB*7E4
P6(]F#3?&"\!#+<D2"+97)J.#=B?W1JSC,/E8J%J[YC]7L$]W_'0ZUL^K"/N1%+$-
P)DM3]%&9O*_BTMD?]'*6M'0<&E=[0X9@\]1G!C0%X5&D14EP3>[( 7+-7>?O,I=W
P9=WHIM\,F?!)',4O)@^+^H3(QPVXLP9NK69%I1+K71(MPW!:EJ;HTJPDM_$RHE2.
P2;[G@V*Z9Z9WZ)YE44\-!$8_.8N5M?BADS>Q-B#AZS"W14DW,#LOGZDLSC .;4HP
PJRL2ZK@TPX"7+ 4 V?5QK<0Z9[1; >>5+W!R"&<41=:&<<1-#9/K]:=;F"COJYS'
P^P62-6<\"7J[$URE,GBVFRJ].->>=5VPD(4,O>R;[ :75<SS1*;L\4$7#.&L5[+P
PQ4EE ,X(ZAJA7XI>/0S9#27OC  "]H[8"[.9,6][#%+(&D"L!SLJ]).F-D<JX] O
PRY/&#%VI?EY!QB(+":,D:4+?#H&IAO^[/*!8Z>NE4F1:/1'&JQ.'/1YLD&M269_J
P8OR\(MJ]L7/X!CD(\\V1CN@[D;?I0=QRCX&PUME*D%88GY<8J_BX5QKESM#?%3>*
PPB_N#,>__1-IV/=.9YZR3\;]4-_G;Y35[YUSHP%ODZU:ZTF7O@4 \"++Y!R#@]GN
P!II1>@?P64)K07YQDC-9$G.'[C5/'K>.6LM6C]$?XOB):79XZ$9U4%1Z;:_VJQXF
PU_HZ'S]AKOQW4-S/*]M4)&T!24AU$58C1B$(EPV8H/[]Y8$$0ZIDW4\'5G?OAW- 
PZ?+M5#=)T=XW&P05_<+R@T=[NDMRZ^!-G/#:S/N_0KW=9_9VL_J+[:"O11B^^<>J
PFN*BPN+U?"FD7IEM\_"])'NR]]2>A.!P1"A>N35?(!S^?DCR6=5)-%IW9&1TDN&[
P,43*SOZ!+??@[K<I>"&.@"M.%]%HNO8I.,?PO3-Y?!D?PP/KB<\#:,WDTA4VK$!\
P#\@>I_/I>H^$VTM_:Y"NLB;+C_YU-_2@+JP6MX)Q&OHT$_WN?B,(*=/1DG%YIR#I
P04/(]WB5'7,J\A[5AA<UE!Q_\1_AK==!:J( Z%_P48D=/FK\K1'9WE*>.73Y;7(U
P6=+HAPT.[)@\[*;C2X7@3E#V;*39X^S3BM:-XG. K\%XNC6&,V_F+ !(1+K\5%&N
PH@[@H,^-_>$D Q:#&VGM"B[U5#R.'3'*RY3<%G@_*HBRL5!J?IXE2CQ+VRHRPQTT
P^:K*?@PG5*^CKZPW7B 'F8U>HUHGL@$_- 991X\)HMJ&CJ6!$3SW"!)/#9A!?P_P
P4E%IB"<:\0TTHQ1I1ZK#S)W8.A HT5E->(1Q.JB"9P]*L'AB^VH&(YGY[ 4?\EH/
P+%(E/L)E$%:/ZVH?%G6^9M8C-J$"+/NT8!.L:L ?!W1,96. D@$)4E69_GDR&QS@
PJ_*TF((1$(T_!RJ>Z,Y#A%)_&3J.Z<(OG^MBG-+/#/M$%:SY&9\_%@+FZ0%FL+Q&
PS,4<A)R@,_MVL7V;[T3^'J5/B\N4E@B4.3+T\>63BK(<:M.P?KWR=(>?G*R%$)*?
P]^H]- !0/.G5J.%P&\A9+WK'H!L@0<[_ZZI)L0L56G=SSR,=*\2IP>B/%G@/#)U'
P>W .8 AHXQ12=!K+O\= K+/SP-5-HO!_N(G&:G0J.*(TZ-%F"YGF_?INP<.A<--'
P\M'@6YNJW(<<SPI !FS=W-JT7M>^[@'WYF")DP,"#M]+Q!H&/4\[+..QD(6 ,P0[
PV4L<*I$@K=@?\2?U:V=[E)W6.=C<C'O+ZW#+OHR*J@P*2>RY/29"P.XM[8+%MQ$Y
P;JH:4V^+@AII,0O[86<7[*DT"?-_&]C$O#<)[!*VB[D]$M+MBP*>$E *I$.O35 C
P<'GB[)0?*BY$ZC?\[;OV'V=)3*WK\E((^%IJ\A ,]; #85"A.?;3?2CL+YZC%J.A
P87$\KC%$>."5Y^X!KDO@:J=S@&7%W>X;\BHR=D"R]$[$CJ_^A'^TS>6!I56L@V>?
P:XG!2L7.ZHSID>J'CF ?10(N]2',>S4:=5Y?DDTEC$M0RN6'4<Q#U=IE5)A2*MD7
PJOD?6+)/N#^@:F88PWAY'\"WE[-G>]D%\R>R*]<:)-Y_KHU![40DG[I^O-3VML>+
PP:0?Z#^22BJ?D"XZU=%,$OM8?(=AX*LGN6NOV$;T5^NHKNITT QDIHZP? 5]MK4#
P/?YQ'HD$IYR!_Z$X$WH%[74[_"DJ$A+*.S#9P>Z=_J4!'L;:8&ZFV' ?3-LH:'+(
P?\8XY;5'XCV<T134V7CGK'U8\M34/, C4"3TE]B>78H,5W;[$Q@$D,SI2<=O')KK
PYM0Q= X7F&QK^TB$4C8&[=![T_O_"IQ_;M;=7[C8:)+&V>O(IIX3<K=5)WTQV&!5
P-17E\;=]*.O <CJ81<+\K,9*"N'S+<[?&_;I.*BT=QQ"A6U-9VC=Z"XW[NR:\()J
P.)/.W!_[DAQYH0,AFOZGH76;)L.,?H-KO_]X <H?-CVF\8[E$+1+V^L;Q7:O//_M
P&UBC^Z%@_]W@7T:SPRV=+SV^L%AN1:J@V.8C2%?FE"XA D/#FZ3QW4926WL--X&Z
PN?K^Y1X2GORZ[$CHBK&W+],E=\G+/68;Z:0H/#RIGM0OJN$WA(2OW!*/]4X&9) 2
PG;ABG5 -A,8@$LUNY(4'ZR+!NZL+G<DK@D4E7&6N<4-::2JI-A) \D]5=J#0I]G;
P=(3[4I?]&EM.Z*/GX,&(UHL*43ZFOKB!H]XX>:XSNO6S.9@M,]_XX(M###I!\(PH
PU3>;J.?SC0:[SIOW]^<P.=YE0\U(3B@/IL_.&S,.>.P(>(KL0F0++X^"T69Z]<?A
P /"I7RGR-8>!FLM;-8?A8[BBHIN,D.\3A0W>O_@E',W]B"%?-0>OY37U[ Q@BP:"
P$\.I3UE]I] 0"H'R[@54(ZE"0 **S_;2'N8KJE+T*MKX0ET>/--G7MUT_W/Z?.R%
P%#X+'G@#>"B+P8:T5@J:2*I%&P_H#H6V:?&+=9Z;3+\1@;XYU%_3TY!XT--O,<TV
PZKOI?OZEY!UVQ7!12&RJV&%7DJO*DFUN[(SW]/-;!UHG?VWZ.6[M@V7\&WR].<[#
P#O,;'@Y_E;X1WSF"9><!E%]5F0)0AEBK)HIM+3Z.J#4H[%4SIS^I<CR)KD08$YC.
PF0W<=B!M),'.U_1A\F29\DFB:!HEPHC^;,P7/B>GWK16]$89J@2#Y_=?#)ZQ;=OK
P=[+*=3G)XKDZB#J\$G?,:)=\18WY<!>9<*MR 9O[G-%1;M[+HSYBEW<1,QW1!I\4
P4 PE.++B=;@?3PE#6#/QTK(7 UXJ>YXR\M\@UZ1'SK^+\:C$+:E&MSU,#./WJG$^
P_?=HRD9_2_1CAV<[H7PQUD*QCO0C+NJY,JM%=@[-V1:EY@F-F"!DC@X;X'LXA)4_
PKXC]'45.4*"JOH*P&_UN1M_\K5.+CT5E#3SX&DCZ(O7;$V;)1Z]ZQ%H^'!J3!O\5
PY/P8]=UG8>\JL!=GT6FMEW):DW9C31E0WI.P'Y3:-IDE."-*2\Q<W1+(<8WI@ 'L
P2XZ'0)Q2/R-C_)15>T30O!,YGA!$.HY"S":=E6Y[DA[Y&-W5%8; L3GY/Y@7[K@D
P9Q"L>-6DIT<W#SG/L8>B&SC\ILQ+,RVM@C_<6B^] ;3CG=@0TQG9V-J&ZKA$3'N'
P@]B= N!$[YH_S$EP5)P)NF.ODAM8(?$I7C\]F->CPUSPE CU_6@'WJ[29\^D'#)I
P@5U]TX[=7FTOY56$8&XG-5O,$_-.K+E?P4B*G7J7_OBI8'['4;C;C(J<I6E+,4,6
PO".WA059&Y38P]$"?;$=!%1EEHGU_/V =_F\M1Q( ,"S3YC@^DQ0?7>&((]O]=<M
P9/UG0D'N@>;NCLFIJ?Z\N!T74/G:L4PW1!@BT#=1M>-^V;$.YN@N4OD\>J"GYG@3
P) U(_DJ8;/O3[)4Z"O[_P!1,Q_DS <7-+A(!/K'<P*(@.[5).@8+>(2R+'V.^PZR
P9W&:NOCQI9G&*#@XF/'ZA.&B4E>T.3L%]]I.10:_9.]"^LZ72E>5RA'"/QO]&^J=
PTORUZT@N:[&KO+S[8U?I7KX!R\H,B2 'Q9];"J0">]/Y.3H1H,!=2;%]=W^;^ MR
PB_[*_TF2]!T->2HK.ET^Z?LYDQXNYOEJ3'7 @.,^[LE:EVY0__T+KND]5C68X43\
P;DWB0.TQQG;\EO7<3;TFF,VA>]#B.DC-(;A,>L:!! TL)W:TL(8?))=<T\&@Y-$(
P%$CY&6UR&W)\R87\__[F(QD.[U.0K70PN(/TJ?P63>?$"O_4/O-5A]2\VZL;/U[3
PLG:$E;]8S>+>2^"XC_ <1/FIN,YERA89F9K]+(^SC<>%:CLT^U'@,VS$9XB)^(2>
P+FZT0,YG/1]H!+&E,+'GJ2^'^GE]2GP12WB*#"WJO@>&9UR:X>Z*>*]CMA@MHO;)
PKPX)PJ&#QBM*@5[K(HWT$FSZ;&C%A*1V-@+GNQ]7FOM6NS2N'FL2?[WG)@1Z#G#A
P)]3#;C-J#9W>>*'=HD!MK?"M[>1[6$_S@VEJ+8<NS*V-FT0Z^:2XZB#Q_BFO=#,<
PWXP*"HE0*[M*-K'^9E_51M>6[U1LG*S>WLZ0-R9TUUL[Q%;@QGHSPA<^ J$KU3UU
PO9@2R $40.ZG!B!<GCN-J<VFNIY9Z-@!3HRU!7#&S<"WE=';*#=EY"Q1=,6QD4S<
P4*>YK*1RWR89 #HO\Y8-S3TUV=(/K:(P5%'+:L9&<)%B(<2OY(1]$!,P0@=86=C4
P,179RCFI 4.>JQ=_]]'D3*;4;\ZJ**B1&'))"ZBN<7<U1;AB:S\U%*)^MI?G.)^3
PU<PRU_6\/\7V;3HGXVE;Y5UO&I!0>RS<3^MZTGTE-O/7N27&M_A&"Y9,<$;1"PN*
P"8A&1:W7>.D_8S$W%Z$P673)K:EE?>JGO'P[Z+"X>T1#K;DQI%!>O3'5;ZX1DQV*
PLREO4$ '>H!@09F:F*V.WG7:L7R.%-F\O.PDTIL9H,N'(]!O"P10"=Q!"Z[6,^BH
P'/KQZW=<CFF1!C]N$@MQPD5C4.$'*0MHB<X]H"M6\S)ER:RSRX;V?C=DD-4L4=F"
P79?@%XR?5<F8 NP!"D0PHY2$/C$<R=C*:AB[;V:*EWA1?]((JE$U(C7YH/)L\'F\
P% S_Z&ELM2N9W>1,W9):TY6F>Q>SJPR8BVY8A'BQ+6:(#6D!J8ZF*FY_/Q:RO& ?
P0+"F@UBT$R.8\NX'W#OZU'B$7;,Q-AU)'A3C?''WK65^JCNC(V>UQRR>[1-*>]W5
P2S2T:J#O^;P JYLA;2["0F("!DGN.1G9ZX(R1Q8/<)%D*CQ4P/=J\AP A<%/F8.P
P1 )38J0>J51!P(,N^&*@O2HU Z@][KCS38>J]/U7#C0;U?()2-- )ZP<&)U4^D2G
PL6J<V+'OG[!]YI1WWEKE-DLKN/=I]*LA\8)65O$5FM0F%TJCU)Q6\\4\:?BWM+"8
PHEY&%K$&1AN.\&+],]0BFT3M/RR?Z@KDZZH&^$ .GS9Y"=$4G\OSGIP+#$!-Q2RX
PZ$!!GI$0TD!SU9F6C);_W;U%.SP0?0+5->57V0^H'@#BV6 E,R4^I19-HNZ,S;-1
PF/+OYU.DZS0[N?DHIVAPL(%.4+=ZX[)$KG*6L$(K?'HJVXVH2<T/./]C]>OQ9 *S
PK5G%O"S:Q1H.CB.1#,PR892 H:9='6M<,;ZU(-D.PUE@44:/F 97)*N@@]^,T[%+
PYU*(7C6*EW7SYYO1O$@*&^(T](JG%G,\51ZF\W4.8$^%^%TMGM!Y%*<<!=TK.[J8
P/%G%O+R=W(>4@W;,@YL%='G;[X;0AP?$SJ.;=$?_O7U1E=:3L^CI&VY12<HHJ\?S
P%.2>2?,ZZ@#($+'2)?4"8([^8@&\2T0.$N@2Q;"!^<'3:O\F& RFB1DBY4 K05N>
P162>B\<RL1V5! U1TO$18=,&"+IE&5&"LJ,K_7 4(R=J_^HEMTY&8:7^]:C>$N%D
P)7SQF!\4ZW< 1R/5:O-BTFR1F!]7IW43-:0MD$,,"][-(/:+>%<Z8[DL8)K^L_@U
PQJEAI7IM>7N1QB&Q*,WH=J=ZOGH2CJNEPX4*H^5F?*5@&HC#2$>S$H.0R V2_D&%
PP0DHQN,##?T7EL]3)DH!MOQPH4Q-\35[6'("9E+<V'(1''Q@&#@0EZR=U?IQ>3OQ
PPK1,TT6>6F#))4N3X:>Q+A1D*%M.'F>#?11'9CE[7*/LT)%2?<LUP*'2^5$ZM+;7
PK9Z#C^T%*"5L9&4W3<119#C?O0/W>]C(N#:JA3E?7F.:(4*-S3N[GLFA0_-=-3*4
PZ9(5]!2A5B$:_)P_^35Q,-J\#18%SV6[]\C8,*"QJTGTBB)7GPGK^>([:JXB ARI
P+>._X)Z(Y/.78G*/YK!/R$AY(Y)ECRVGDP4W5HV%YR!?L*P6$T3ADB?>O:Y]GT1L
P1"6[&3__XHTU:*AX^!1+06DC<PIN)HL;J:$TOC\3KT=#J"02=5")?FI8T^/AI@*"
PBM(9NZ<8L D">U1G(RRLR1H-+#^P?+@/Y1@L4[IX8)A"UWQ4B3LMU77?XP?XT87^
PLFC#;0_H_K)X15 KL(:V/$6P)T$6J,L"D_B'KZA@Y)5L>12"GNVD;4^9G7C$[>Y_
PL2YTC+1^QW-9))& &/JY-^1[179+$ _3'!*PM8*:)B62*R@\A]<=@8061)MEN\5:
PM #J'#,&T.>_^0EOM;I,=N!W)X7:%&'HWG=3V6<NK]_C&=<3626CX[NVT?!-Z7BL
PCGYT_4$IO$#[./>2LP(<OB]K/UE#J[.WFO$<^267:T,N.3/XRB26!OLW]5\1T;JM
PM+@,;O#<B/2XX&<TJ1KSA&?*P9.-LA62%L=#2 EE"U4&-F8;1=]N+T'*BKZ,;1MB
PZ]IB%W,H-Y2[)0;I%(/%H)SJZ8T01>+<HP=AMY\N )[.L"_>7Z*,,[!HRPQWF/'Y
P[7A?N<L(]*-GU\&FF493 ^7NPA*NAX)AN;#_/.T;$3MWD8F'> R"G3OVF>3K %V?
PXHY8F.!64[]M;D27:P1N"0P $96TNP,EO(E-.>G3E23/>N.FJ.,(S,<ETK[:^RF@
P5@Q)LNMW0 A"OVPVP 8 H_:[T'W_DSTU"QM,'Z>JC@\;,CT5?E55A<%TJR#>PX!:
P9NN8N:&&&^[>EDPB8D.Q^)7RG KA]_FG7N(?34^7 0X#U1@L"JSFA"V681]WR*2V
P2X*/JM;^ND![]/O10N O4N7U-MVV[\'789J;?2&<Q]AY7>-SXE>:2Y-^GVV"/ZAH
PPP^0E*#-.R'+2[0^2^2J8CZ6"1&]MC^-Q_(ODNMV-(4&,YKG4W*F5\:-EH$#<BX3
P07]B)AP SZIM4+KV!VJ_99J#^$L^JGV#ZR?NK-V\L\0[!!A2\OBF,XB&+#E/FIAC
PG:Z7CD*<L ]QA15(IA?%;49<L.<I!5',QU:F26BY*@"\Z2K^#GE:+>CX*^!#_=98
P2"#MK'&N1M 5T@3W"X>06R 0ZRN3RPBK'1(G*%S6]PEMNH(:,RG;'9]A,&HE\V[2
PI!*(X@K;+)P0JL7]O2RR J6"RWGC>_!7E,\+K11LO_&U.ZO]GW)-(N-^S;"[!X*&
P4P[Z;LI9]!E.?&Q%*2=YXX6AUZ0SE\OHZX8ZQ^2L6<<[&[X+$U'0F4,]4E6@%$Q"
P6DLR*]=,(,10*X39S=ST5X-HG@*+'8_$!OD.PG7H2% _:D,QNI;D8^'ZG0K99]01
P8+')C3T2"/'7F=&_RQ>BV??+[1$BL=Q)Y71V$$!E-\&,0 4X*&:C()'L_,!H**<0
PL1L:L Y4PC=*)2 386[.P44/M.SI0/-Y[]BT>3NU@W[KV^?;<;C*\7:M&.*^$MP[
P0- 2@:]TV8^Y %[?,_[&H,!^NR.1'GQ,BH=2T,JM!8(71+:%/,\1\+I5:HJ.5HK6
P=3M18NF@\URKM6Q9H-3Q8-VPT+-P>^;T#E)_0 _">H$DU<U$*)T6BGEF.M6<;F:L
P@$KF.F1@5(JWT!)7*#\HWN0EYMR-R&D0N<M=@&LGIB6,]$ ,*8NYI],L;L")1]$Y
PB$] "'3!F>>2EE3K>V15/UEC%#4)6(%&0S^=6]*PLZW09MNUV:/[27[#.H&%=N+9
PZ/IFAHJ-T-&;VB^?)9LU)K3]K+T47\72<5:J,>SN[NP9-X@\CN;DQ!>5PU'J<RO(
P.Y3<XU^']-2J[&'00Z7D^73"2=@A<OJ?$V\ JB HD\@HT23(M'S]O%@G78F@X2K[
PE&>;11D#CJG\OL("CZ!&T*F?L\H;/4 B5DQ.&QHH'\R=ZIRQ.I4HF%V='G#F!0QB
P[.P9<K^C"L+UA[E7G\DPA'AZ[;L]2EVK:??N+8B-M:J(0Z]8*\]4].F-D=@L?3)3
PP<W<+AJ*($0_-T'VZXRX(I>%<FWJ:R.1>JA!>]7)+?6#,5M4C:8"53Y[.-Z(%N/:
PH]7\1VTQSK4FNU#C;LHEWO5Y*!8?./Y19?1WY>UY!BZM?%K'6T&9G]KW<%0E:"?(
PPQE07WI8W;5A*%N4C1_)DW>FJ6+&#;8)QL;7:FBM)\3I B:F _6<6+DA2 [4FJOB
PZ2EZJIJD[2"*)M622]ZMAU>HPD;"?,]3I$Y/(#6T]<[(P-22'FEP<7YVB\&!W0N/
P_P'9-*V86?_-3&C*T( ?JH[(@.%G+OW%6>+E.E,[LTL<6//X<!-*1+*Z^4N_W8L'
PV1-U:S^8-.,%$/4?6,0>G +WE/@O6@,U]4$O=\G:HF)F^'CY/\8L=(LLV#Y!_$)C
P(Q(_Y>>['&X(N]U-V4(B^]@G"USU 66H]3*D_]W@W5BI@F .=#ECJBT9@]KD@U:;
PH)JXPU8 3Q2^<\@/_C'.&S/L%V% %XJ&ZIC2AY+.I/AL>R*WV*VRC[F'BAX?QETA
P0AB9)5B_C3QRJ$^<G)7;33N_+K8T:?^)9EQC8%\[5NT8T"@J>WX,?V))_"^\Z6_9
PK_SDK2P>+*O4?^F*V9],W(KE*Z<.H(,*M9-"MBI&R:VMQ%_R"G?:H%Z(H"!OS(&A
P)NS#[.9A7?'KNT* =$YO\-, )>5%5<CHMFEI3_951NAM)0"S'4@)4W-3>0B*.GV>
P+U*\7Z ;JA!6["G%=]K^)<))45EQE4R-PD+I+FYF70"QJ(;^>XUSH-L_]:$==J?M
P\IUKE70R55C\=S2B_!"\(HJ4 UBO>L/8W&;S?N@;I9M)CR_1*FB6(H:X**KV,1:U
PG&(U #6*>%&*BYK.ZGYJZI2!S5RWLP/LQ3C<E#5$4DH^X^949$F*2MR!J3,:1*Q;
PE+*JJ'O#7D^CL7BB*Y>,:LX Q03LHSY8B?^?-=@B7L\Q5&$R#])* 6"+ND+^FS1\
PU_LV+AP[)V2=M?5/644'C[UBJW_"0VF(^8_UD'X==F_C<G8P/"2%$_@4@H@^I3#I
PJ]L_N\18ODKL(NMQA9F#_>W;6QW=4@'ZT_ZCC)%U;AW=H+SMC0!/SJA5&TWETQ+7
PA>28"J J0SR0CN_FF\46:6A]@FZYWB@"+9M/L?5=93WX)^P 1!+ [B3WX_K_:/O0
PI2_T4?#IDWFWY&?_7A<MYSW4GR-*AWF$[!^PDC AZG4<1.\,"H;K#JY]7YY!< 1"
P'V3HJ&+]U$#DYN<]0[N9/*$X_)..S=!=>#ZE[.'23KW!&4BUS;*L%W[K-),QW< 1
PQ!21_#_KSPH9U8QS8F+HE6=H'W8$K[Q1\#,MRW&5"SBGO@A'0W0R<GQ/9NEX_8P,
P!S<F"K\G;HJ_?XE+XX#<\EE,LWZP%;8*:>G.37_Y>>'SQ\;O_Z@F\DV-/-(-E[6U
P]A-=[@AB4!V;!B*-;7YX#]VH]UL^[6:8@C7!\_FLG93F9JYJTNS^/ST;C(G7Z^@_
P2#@#ERP.,Q(E5_(7\B%.M-P>.&+)'2+F,BP*/(Q+VY<5J<'J1.#(J@7H'IIX-7I1
P8!OE>G&R8P , !T,1F&F!CJJH$*$6(W#PP,BDG/=,'!^/K.JW:O$_X<5-6X*8RYB
P,;$LI]E(#J6^>N=/,[@:]..[HGH*%'H(?5?[7&^1< VKY)K"WEN4W10<,%2[:E%H
PAZ 5#-<13CGXZ[EM P+MVZ%2*Q ITB<O#9"#?N)C"+#/EYTEBP]@EZM\#(GDT>4'
PMY>N-+0V:11R.6IP8J@55E=:M%.=8 /R@#)/C5&>H++-8R8(CMWA$ %+FTA"%/FS
PP1*% K!<H9D;F;C\+%>%]4\,*P>;3-'&X*Y\/_E)"TL4BCZLTC3S\*0H8';! !K#
P2:UJM@D/1G-A$F.A?+AT GT%)</[@K*3A?&C'%X[72+/C^1;M)/P-"<VU''JU=_4
P/S;.T)V"^V0S+J#-P&2:]1,PUI*\0$^JQDNQ6J++LCCKZ\[\XU=]@0?FD[:80F'R
P(A9MLZQ)YH28Q^FZNOYR2>+E:U)W&'C9?[K!K9.(24Q%:R4(W'<-_D:E#C-ZC3)T
PGG-VL,5;*224$XD1T3+X8"**D5;5<'WRST5%. [L"0BSB>E7F+$Y7Q\)7,$((731
P+L-"K>[>@[=%%$Z))[<@4@2V)?1_CZN=C=T7FT THRL,*V79C?2TX,%S#,MXM?#B
P!YUW(_=%/[V W"DG;RDR3DWF%WD]1)I3*9FF )3Z!N"]/WLB'N&_!:& H717[)NU
P:8O\87E[,-R<:U>9RL$9>!T\E6MV#0/^O$B_PG6%U>>8_F*F-*'-N9EW8&5C$EKC
P?F$9$1LS9R%J XWRBD_5#DW'TMI@V$T1=GJ\S9S%9GX=4,8<H,J:6$YB6PJ.BR+@
PAF55OC3TIKK&*<7F6,!P<Z\R[863*!!G#%%"I).IMV;(1<,L7S(#M08SK+;/<GE/
PC7RB!6.4B;9K*S2U7U"D;D,??R+EUG?,-.@LR^5Z=7$'+>'"<BK,S)Q36X,Q)(H9
PC)"M\V"7,W)COI%DAU;P,1-W[<$JG,Y_5M(81]MAO85U<J^/RSO&.BZ1!MY"*<[O
P+>7KJ"IIW+=LK9H^P:PIG?'J?I\L*7BMAREXS46]-:2KD0R]"M:%:4S?SI @H40J
PJNACM*M,%^[:W[WPVG@M9R=K1:9,H-J'H0F1(N^-8(ZK^;$HQP+.?HXW)G@+5-U_
PB!OK7=]TN12@'4IY!-RX#T!*WSFXQ8&#_*ZQ./&^,$#RAB6]IW/G+.=FB36@CD+3
P'V!ZN::3<M6H!F>'$512&:&#H5@:QZ)'SKB0V:"]QXD=FY1D)%NU/N06;82_*&A>
P8N)*_51L1)=S^7X<Z#=1C$ #-YXPCG[8[NL^N:YVZ+_ QB!<VZ!"GI!HTCP?KO\R
P&ZI52HP(I?[P85)ZI]^K'3H,( [W]GW*2:=F6]&$\*GPN/H#/H+G-WG$VA<X69 H
P>U[?.+YV+/:AZM%,EZ]U2Z;I42ZZXHJD:47A^K?Y9\/R"/8$&H)XT:ZUA5&M/?[M
PJ>GK\]^)%ZTU(Z0LX>9-,@[>6K4%LL_$VL#6%--L"UJ<+T:I96_O >!JK$Z26;11
PJ8@0,8K_^R\8):)92"Y17O"_)67-?N;.2FYF\*UVA3+Q^1M(-+9XG?C>(.QE2V$;
P,KC''PYBDY9VF)(FG9YJA0KN0'%L_U>0AZ-@BL\QQ1 ?410&G3]CL9:PKS4/[N.A
P#*!NM_=!A-)5IU0'_1"O[,X+U> Q*.I.J(^9[*V(QEF@+NU/%F2ND42A%S-=(#+(
P&:<#$#P9+ @-,.7D:-S=,:W$'4P8]_O?&SI[X'^LSR@>-"U#CQ%/4SF6D6PZ;PJJ
P)^@ #_%E)&(S-'<JY$N</P8^PIRC%IAR1U26 =W[$8'-K7S&'O[I[],!&.,C17T5
P@N&N\>X4<MJWF1D5(0'<E[?^"%0EOK"AO)Q(6FUT# #[ R#6?M &ADF0_S1'M;JR
P[3E#UUY7#(7R/EFL8YI"K'\;?XX$Q]/[0?H/K\A^&F(22S6X>"#B6/SWE*0 (MR!
PB<CM@V<$]_-(+72JGU(<)6S[?]>S%E8Y%-2W6' @KEQ8-I\K+BY24;WJDN"8^X!R
P4PV^8ZHJ86<9P-XJ[&?/@'6;_75W349Y2!/L0&6GV4_G2.?J7%PR:,R94.W09$?G
PA5Q#O%*^=.@'LQN;1/XFJS-Y/3GDP6/?P#2E\BPI8$\C?:^7'WFJ&E^#7$NE1_('
PG/.5_OCD=RO9AR7UV=6P!.#<74$9/8JJRZ&,'>)G*ZIH5T^B%[#07]2=*2BD.$#%
P#<&&%2>7'M(TN*P$)C:8C#O'^5[KF^..6@=B;H3="22LTZC-,:LES\VY[*BV3F/K
P$D'[X[NG(>$YX!?G/%])/Q0Q8+$7HSX?@F+T[G6)L<]H*U 7O6KF?+^X69E##8*[
P#@KC%=7X@:EAMG\%0<U+LRGC<-.!'O3&PU]U&</$AL#EP$NZ.+J9 Q\!#B<\Q+I-
PIA72(P^&\7228G.4F)4E26"O4ZV5AR\=)U<#E$,-G9PUF]DH;O3AI\/03O5[-4A0
P;UX5>_Y]P%5?&_(IFU2^%C$" ?,'B7XS&/Y)VL'RE%+T,R :SSNF_Y9;2.=W\8&3
P6*\<2!)E7%HX!_&ZMP(I&#CNQ!X?0+4*ZD7B+CM_C?MO0V;+-7U,'^IS2(I'QG(5
P2'4"O69/'R;1Z<0N/<3W^#>H:,PLY"%?YF&Q8N\+U":J:S@,>P\D,01Y%XP@_P8"
P\716(I8D.T$'F/4=?%L-QLV&LUO+TBS2H.7W^FK9M%/ACT40Y+RG6W_1P4<(+-I4
P53B8@H*-5XS^0FA>2(."_;P3$;CB78"9Q(FE4 $^S4(1@[E?=06<OCV\$X)Q8];,
PJ--'TV)XPXCT#V/K\JR?!,+VQWO0RXUHSFB'@8OJ36+N%5S[ S=(.ZT4 $8> >*6
P-+X_6^HCZ-*<J(%FH(+,9%L6NM?W7#QI<\]Y2<YPZV)K0KA2]3L^#2-G#(P83C\?
P!3O\'X"H@*SSO"GQ%U5*&I*5\D]9E#3@T=$ [N1>ZX?H^]2;B==-^=_'+G1T.291
P1.R-"UIHO HU>^JN_E$NMXU/H?7D=T2WVJVU'ON? LG$HK$$O8Y=5E-UM*\L\\W3
PBA4_\&6MRWP9QNI^G6'Z/^<S8QVE$F][1>U.\8BHKK-\./CZJL%*OYYZH+6J"_G2
PA[/# 4Q_'^'J-I9CIA;"\TIY4</:7 IGS9A3!I)7#]$.VDO*&;"? ^IRQ:2V<8LM
PW/MJ].CIC-8^=L@/I">2$:N'L](%DU*DW#-T1+:%P7 @NQSP0)<M<U OA1MAR$&:
P3>D@R12VIQ$Z9UN.P6IM7K6*? (RLTI0$'*(6(^E?GG('/@'YC7G^64TU)F"J5T?
PJ"0]&T4?"@2,4@FM^>#D416]OF^'BA9=BPQQPHP88H/BD^0HT-Q_23G-(/ZF..;K
PXQN@LG>J.3/[0F3;7,@LR5B2^49]%*\4>Y^GNY2N <A1.\<NDK3<>2:"IG<'*<+O
PM$.YS^1;9Z0W8\3CH$YDGB RO%*<^95Q8 HRJ,I($$/GI[$JX]H9%Y&0Y\'[R9AC
P6/&2CC<'" Z/C6S8<QY<3+!(O7U:,U'((M9*#0IT>P6?6*C_IQW,F7#_UGOTO 7L
P$LK;$$2:!O?(*[AV=M)-SZ_%-__."[XA^JSNB(/I0'[%YWD3)I\23%8D7IWE#AY&
PCY).@WWKK.KDERR/Q!(K=:(IH12N(ZI#:O&(W>73+D,.7^)1>HT>U$3(YM3]WN)X
P0#;\:L1?)37'2@X7RU97SJE'FP03/X%-A-A9W9CNUAJWY)^:J,*K](3 5P^*0<T(
P?&:B3>;Q=#6Y=EX)+</?,^>76$WFZF7-\^WG-S!.\18PB:C!R(;+D)0"^C6[TPE7
PPCB06JE9+_FB@4-)I>T#:1-X.>Y^$Y,0Y/_%,=VLG*B<T*:*:K?B%##\$,H[*YTJ
PF/S%5-%ROQ^?3GGR"%4)1:"C_ZA5E&4(K2XY* #G/M %B(H4+#\+Y Y'L]5/@.?0
P:_I=G^HFW3YO)V@9HPT)WG%)N[+;[\\)X$!F?*G?C+H!1=%9%IB; W(ATF )\BX?
P!*%R7OK6 K//-ANFDY@4<TVN4_9T?%YPEP^10NB478A CC.JM]=S8/L&8[_E2O&S
PD FC\]343PHAQ.5\2Y!O]]?NF$1$X=+[G%NA1"J1L.*)!8W)\!J6RF ;Y32VR6KG
P=E,@NP74J3PSRR<%5)3@WOO2,2&A7OP0DMEY1?IF\<_5APSC+'S@^C1T]F\MWA4)
PUFJ.+D[3A[K?ZGNO&&A4:$OGN.6C<6O*0K9B*\SS+]7]*XH^R.1D3*SSX$1/#RZ+
P;5_ #1AQ^!)Z88GGJF<: ,>)6S0(8Z''L6368SH5D&NT&50$# $IZ$]6$;KO!3J2
POJNL_0'Y/NZ<^SV-SQLU<)Y9$ML2,!^7SBL\.%P2S4%$%AB\;X[D/0*]X=7@4&@3
P#$/V(+5:B5\N,+.4G::QXT;YPW*661)/$_I#[\SZK$Q0,/R8V.^SZH@A5WL&\(D7
PA-..DS_K54Q//DD^2*A=/@/28*[9&M>GX^(AY&^$4HOPM/WY8SAV"5PI8P<9QYQ@
P.AB<AKEB1I/'MWU.B==#C'(%BXZ(^';*+(GZ]8&5&H8$!19N['L:5<)T:S6?5[9A
P (]_A1?0^Y)"N:C? /R\5<W2E>?Q]IDD<[TFX#3R@S-<&S$MMI;(#*&PU@:5IQ9,
P822IC1KNW1+,#F40.@ ^2OE/0 KHCHRQ9;'IEEM%UJ<UZF=SV:5&5?HWZ.<LOE_$
P<$/H4*6RI)+O J\CF V@=;1#@STX,Q8U"-#6@WX#:O0@(__ =AGQR$WA(HT&ZA*#
P[:+2+O"0B6U&)>S\*.' ZB<SSZ5N"#V4K59SU.![R1N7N!DIXO1;'X_1\8[7X*^ 
P!A%>^D/4^B@;X*^C-UIDH(_-[,D;95<#0"FQ9^\?_<+8UV:H0CPD@&*G)=]576R?
P+CV$YZ0#FYS/+$E(6(PB_"N>T$'ZBZDO16MY(<;7DX10B,42N.7AKL&&9Y^NIT#-
P=?1'KY%Z51O>FS>;_T6*3G?/DS76WTN%J3*\-;DJC8Y5*+*G$FDL)WZ:E@:I)CWE
P?FX;I?FLUM()GM" .2$PP);A__)%[T&5V!?A43I72'BFR9N&##A+F9FQ>AWWD3P1
P6!=)P:155(70%QB=5;AER_$-U-M F9?;U+-'*'6-]#"KTH>8"C"&FS5=8JAOH+X'
P=2[3KD[4:<LPW]^V)W^ZF)M;\T=L?@(W<)T'!!K+X&XM6I2[MJVRKNR2)[?U_"?U
PUPMYS2Q/9YALD'8R@LPQ^:>3M_!G%"*+[6;@&."CFYCL]<% E+B.N!<Q^3AL:?':
P\.=# +*_JR#?E-5(>PE6S>VTG;X@<7.;#*@B.#1^ON*+G^RK3?9?A('0#1,_X=;%
P#)F#/-&IQY:+M )((:<)\&LG^]2WR+C]34?])=&*X*_. 66X#14G,8AYN46)_#NF
PH,8B!99(LH\A(!^132+#RS4O3A[O:6:--6HR>P?6&R:>^&:26.&5D:#<'[ X(YS.
P ':UL#J1YOD9;G'MB4/AKXQ(=^EGD(6U<+.-YPYK@71KF/CX%+A#TO1J:=3CZF$<
P52F7@"1V^ ^LV?E3H>S%73<=_.H7<VY'H>=S@-5^#$QESM%X4C+.OTI@>6#CY$'>
PAV^,Z94S1@TG5:9"OSUWX,#2R.2LR.$5*1S586X5CT8L(V^/;*Z]B'R,O^[,XZ4S
PL8H2W;D()RP'*JXWUT%\;D]MX&1OBY9*1TNTH;#';N[P<YWKH/('^!W'(KP\J&#*
POM2%C<O[J?R9>R(.M9E)RKHLX# 0V#L1.FW!0Z:1%>3D\Z(#+9SCI/NG_$;^(5QC
PUS]7\%WJU<L)'4T4U>.YZ>K5*46D@.VJ%IH"]Z-W^.?VE2G[U'8&+)V%1O6B/X\C
P+/[L09_J C_VQFK:E,42>B-0 9,4RO:V)#PZ0-&3<;R1/.[@#[W?G>W&:(C&%@(B
P2=^HO?GFK1RE0R?<(>T/X<@1; 4:07&L;Q0A42)J5)!M2C3,KAPLPXA6/\W[4#=C
P>YJ&YTTS:71I405PA;HB0-M\CO;?)6#*L4SC36?"2,FTH6GMS;N$X3FE?M_[[L2'
P()-[3^(1DD>M4\!'!FZ7&$7P9"NA-0]V=Y;#3QUW30G]GH/*%UTSFQW>LT[?]H 3
P3&%^-<5?<Z2FBGAHP^2D0E!GG,*1IBG7;];$44T:#@/.H%B7'716TA+9-C2+J8VY
PA ,-*W_@?;[T.:C&G%%*<+8N/4;=[JMR(3E/KD8#TG4'\IMA8@:(L+2CD3=*3F'M
PG3XSWS+,B47;7:R[\'%IF]OEV=1^NB3&8YQK.>4AT"]C 1CM3J&;>,Y4_BR"L1?'
P0FKJ0!Y''D*"_I)R]KH7(B\WG.,$Q6^5%TZU-[^Y3Z4S(_FZ\=D0PEZ&O*GT,@;7
POCK]C13;<!,:92S9/J=03S%L(8$.+;Q?A-\CW"]EJ/04#3E&V'2!.=$'TY2ZQ&9"
P&RT,Q;%9 A*FEX]H@A_7'F-87$M.?S"@4OWRH)P)8CHRZ??1:-^&_BI4(CUL0 %;
P$)AK77D>VC9T@FRXJRJQ4C)9/;[DN)UL_858:O,\-8P=O-:BQ%=4[HII!6:[_#?8
P OB9DW*&BM0M0[:M\*GM(9[0,GR8,)B_ED4%[A#*%E;KU,F^H48RX]>)]>%RCX_R
P5U"_RS+(V"T6=6V-GKHH[7H3OWH&7J#\,4-I4*4_Z)<0II;S!,]3==[5&<,93"4.
P^>6YPLM,=KEI:A7*%,:; 6 X40^ZV##;O=]VP(J;)$.'TOL0/'XDXILHAV/YTTBH
PII=OS,<,M7)?M81S&_)YV6/K;[QQ8?"(?UWHS/OWXMF7V E:AW?7)@89 '2P2.L 
P:*5%YI:@D6#I C. ^E]4D'G,L0"#$5TT^9(OE8Y:CV7EBDA*Z3M&]H J53E@-'QL
POC>[JU_ 5R3:Y.^<X_NG^RT7A(=G>*8"Z#KI1:2JN QL6"C!;IF5NCI5P'4Z1%;G
P[EP&@@^3+Z>.TU J'O88OB9#9D=K6>!4R5[MTJC?>\08 ?CZ0E$)&>B0G')M2UUS
P_'PXT+>*L]R!7@$'2H7]1/NSAOO<QXZ%P8=[ US<F1 G_72YT9AYTSD6@HZ@7KZI
P*#-6X6=OUO*7 ]8Y,:3WZ6X,DFT/O=4%S94";I>"5(N,?0A$6OZ5F12>#A?R%MMA
P=].18>5@Q.3VG1)2\8Z9(BT\V>*\!S2LF 8X2X!YD:<(J_WN$>?S!;@&+?3GH!FU
PMLNXHC1/%#/' <5U.+5+?D,NLOP4#F!C[,/SC!">6_T9?!X[QY_\GF3F0C-$:KWD
PA'AUV\?>-GY0V-LU#6!NI@RHP#R:R(Q^[("/.(M\3BOC"NL@K,CF<4S;&@EIJ! <
P :1H&.!O$XM+1%CDZX5XKG$L^>>J<^!7QSST?5 =1=SX^ -/W_]<2<L]VP, H^,8
PP1V'S^WY.68)B'(P4^5("IF>1<8%($"X)GP/ T?;K;ZV-ZM<\G=+_Z1_/JCRIG/S
P8I2Z][_&8ZP"8 L#!]MZ7TM?$':RK"3@GZM\( [_WQZ6F.[&%T;!=CT61"9&)-70
P_0%;\P/Q0,6#;+F[I=.$][^Z.YQ%)@3 ]RK"5ON ,H,/><B!7O8]EU>D%YTZE"YS
P&>3F.;<8OKJL4Z@:73-YC+UT%2T)@GIF0@I_TQ.N:/XRMO5*WX '3%GB.\^A\[AE
PCUL5A2:GD/:=[#UC:T&%(SHL)A9NEJS%?S/?ZMC6\3[4@,FU\'_IR7+&U]TZ,S6<
P])#*],J-%0,36;J4D%JKJ<VVH"JC1$ [#X'5W&]?0.%ONXA,'!AH.3#YY"<-:'D"
PN&GQFZ)+&/X3\D.H/[_J''Q:#1'9>K#4C[A?*^#H\5ETZOI]M>9X1(PF;$[3T1ZP
P_,( )9[\DI'OS_GKN-FWL&5\\F^+*] )DSL$!L9MFVAS=88\,R4W&'OPGLE^)SW(
PH[JR$;$+ZDP@G$SX<IZ,!3(_QXS%^C47Q:9V+$[P\_Q7$#%9F*V4Q?4HN)43GN*G
P+0Y+(]<RF/6@MWEN73 .P[:8?JXMK_[;,S4:B^BT7SR_829!=T ",1/[-.3%:FVX
P);*=0O>^QTVMJ._GL"]K[%8 D_DAC:XCO84[*&2</_M&^W#'I<=)M=VE9=IAMW)0
PWX0%8UA]92/[BFX\_!IR>]#9-Z'3"E$F-QWUB/6H=)SC:H.>6$!C?WJUI_R=]]-G
P2P!6LGU#<@]G$INXWVCH-+0?24-Q)VRU]WK?\)./CQAE=V773.H_/]S$W/'DV]^)
PMKFQ=]KS[36Y@)UBG".+,"3!7\.")R#(:5AN_O-#)J....>C>,GDF<R@S71*?SEC
P6^<U-,X[-TX:[]MIM5#ZJ:%/6"+,6X^1G1M7A<(E:7 970GJRZ^2$I7B2VC][JE(
PXS',&M:I?>CFJN##F%@HRUJUYD_7L8H%J/,'_04<L+Q3QF,$A*Q:EI]T(OK5N.8)
PV(86[-M$GSM>]PM@5N**E;QEG]3CZ\,X<)770")G<:@B6K3-PW=!C<]HY&-(6R=;
P4407L/X7KY7[4&%]8M4RX"*RB$$BH@YQ%+_L< N<W3E7:N3=[RX6N"L:L&C%>-KL
P>QP/:3AZCL!U7FY3PIP3M76,*(0AVP.-1J'!I=-@W_OGL@')?EKQ/ECR/*1P%F7J
PMVWV*1?\[E$2M@/M4RI-D3Z%G\/[,PY&IW8#DSW P">P+LJHOA-E2=V?>@#7M)9B
PV4'I^20K_',JL&R>Y9&KURS)F,SN;3BHV[(ZWU1ULE[[[K!,(:)QV\),+$YSN"?&
PFFKY2&,J38MA;=\KX4XL:#L"DXDKX*#XJIYC"# 8]MG[MP2 9UP2Z)VV(MU/A+C 
PI=OH1.':ISEN74G%&@1I.T(S* Q7AB>+_F"3Y@*'K(WT03\Y"BY4\GJS1[V+%1;3
P,.F+([M64Z0U29Y^'YX;UKSG4YN<GXS..8#!'/3]Q KV-(E4(3UJ]>@+J68_*E1F
P/)35DMDP4$@ADU@?QUHS.]"F!#:I[N$UD =SG/26]%*7IK;D<A24MF8<BII9;GHJ
P%1.B+ DER!I=. ;]@9>UGVD:]1ES4.P" @TV3R&WFV.&[G^!FX?;*QL]Q#97".=[
P]/!JOP7VIM/ C8-.]C.KD-[K,?2GASIS'K$WHRQ&H&49QMM>E,?+R.P*X\3O/&9)
PO&VQN#X7EGLYRLXR*VNPT&_,5->S(5<!94+&;); _- ]NZ(FMF]@&\"&T\#A7M$)
P$EX_CEY!XT#NE'&@"P^M-6T[M.^/=1'5V&Y&<S'TXL/*!X=":$A.9LX2C.)*]K.U
P9C/-W=<-UL&S/#S&[R*]E%O6)EV&XH=S?M3+"AT!3(>Q/."%C^0#5+"4'@G[I$<:
PNM/N ;!_1U*E^8[N^8<7*K;C5+P8]??P9[O;5D!$"RRZL-!E1K/6H6?MVCQ#/7TI
P+1=[A/-G#'XSE6.9A09[A[_'8!5=.Z-.S%3:U"LIOG?[^]18KDV ^QW06ELLLC3V
PU75/LN4->)K"^4-8?70M<IW^1FR)"-0!-,UJ DMKCNI!N<,(8,KGHFS0_$N$3<[G
P^'37Z/EA>5R:=?01EB4QL+R\%>K491F__394C:+FN#<GL>Z$<4@I>Y#2DB!6^J'8
PPDZ-+@F[5!53/*L>\W-MNFP3!J2XU4T0%K(U+:'H=\0%Z!=X;TQ6MRY,H'CRT[Z3
P>KBCIHL5./HOJ1=1I+4.$KH'3=[@5I=1W>^JCSG]FN+U'G]I;&2LB@\]/.?8\N[]
PWWZ6V)A=;;'ER\2>"R-UV7>H0X!MUZ$2!!;YV51.CB4K>2$0DQ$N0HC<I-1<,M%0
P_FY.>;X)0ME4#3@#OZ(. [5]@Z?$4FJN.\\9@J1YK(HGZUWG3&0O.$,C9GC%P#_L
P$CL/)M?*_?XJ4,)-6P7:UKJUOJ;JA6QF%2,A6M9&D,83D?[&J[BQY):(FE^?+J^Y
PC0:>MHD0 3%4AG>'=/LAPSRI-^O&?X7X0:Q7 J,.1=@%XA,E'KKCR60\-EH.YW7+
P+]XR/%&=H1SL';G&>0;N*1>;TT?696(,0%3#A@C-'+=%^DS>$/;.XN3E%WZ[T7H*
PS-F>@/IG;9; NVFZ!:AR()_E/=\&S<ZS,"!H$?3/YUB-1_2B*%2*X&C@T:(!A34'
PO [^XG7L3EM@@,9D20<^XEE3WH9=9%L*?JB4ZF R#FLV^P98V")TL[,.WED\.+W]
PI&$72)GG6MD'5BF[[#^"UZP,KY3D_C]I2"F-/7X+H8R?C:B*5?*^H9=-*)0*=T7.
P7>J6]$N 0SSJ>)NZYP@J: U!T!]-C8;O*WJPW>*H:,WS[[2\2/@<&7@$POT$Y)2I
PYYD*R?)Z?P"5H*K_]6_7]QUZ\BA;A8<&1>?M*X++1R-.-AL6Y1G4LY<Y'8S9;H>1
P^DXCHXH'OU3+^];C3X3J*RX*A;26Q<X-*1^B)&F%S3,2L6A-6V4W)L^Z#9S/Q[5V
P;CR.PO\=*IBNSTS 7[::[MK.>L3LB,6\2$!IM,Z-==U^;1+%),V.YS(=LQ&("PZ@
PK4F[U23T?/;4F(1H 30T ]8)!QP'>3/%2N8T1LNYS-?5$%D'ORP^N)_.5P@VJ OF
PJI=HG=YB<PPQ4DVIRO)?G K"S72.59^. 0%1JPGM6/SQ?TCUJ:R 216\.73&J3HD
PO5Q97R/S1XV04^$3;_LCDN NU<I^K??]\;O0#8/Z*HF=)NES=U-M"<__NL\))A_I
P20\]1$T&G!-@L8 -ZVN7 @S\21\D;*QEZ8_>_6NO\9R++[;E78=;<O0;/NC:+),Z
P!!K2FYYL]+218I_L*6J+1?1CB,A+$#V^$(5#34).2\?T7_;=]UI&S!L):]*SK"@)
PHV+-YJ65S8N(;?UY#7SB1B-&V7*T981 :$AK>*\ZY0"F7+7&H/Y>W?&\CQB[.YOO
P<"0]>^]JG9P=^6LNB1G"-';AX7Z%< )*3N]I53_L7K^2HJK(+LLW)SRN8RSP#R"P
PGH-CXCOWY>2<C3R; (?@S$V[89B%5D3<$FO5,1LGQ$SM4+\[];:6$ [N_WUFH%\"
P.=*,Z'^$N?2C+PN0WE@1[%-PO#4YNEW\3QTP*2LF<4$6DVQ4I%TNYZHK((@&*[RJ
PU!9F^0.ZT% 35-RPN1<3]%52R);KU"_2$Y7[LKL.!R![46J%+"P^K(??Q3<>*.)N
PEFIR$AY*T1W.$ )VESEY\QZF,7>[,@Q/Y[;Q:#VQ>]M)5A'33U<M<6Y-=#QZG^ ;
P=C72-*4I94:CD<@E)ZMPN#E-EI7H!\* 5632R$0;OB:Y0'.V?)>VA3^L( 8U7S5!
PEL#PKQ3O?!D)!U*_9 B58ZUMY2A3I+W6._ ^%*VJIF6G\QX5Y7O <U'K3G: !(>I
PRAJ>Y:4U$-8"](5%XU7=(;H&BR[667HC_@LQH+O9MC8P:39ZF/2<FSES7=G_2=:8
P%=!0H\7*3D>!3(5&4'STC8']EIQX(2N%(.]"RGRGN88N0!-N+>RR!1^7JD*A0MA=
PYS=M"X0^C6>6#V^[XMH@H4-NT617PL8V=F]P;Y6&1=?F1ID#$N?$I1&*ER]RI)M2
P_^ R[E]+@E(>="3X?\-5 IN3?>CK?@%MF$=X:T0U7K5/2R_J&%][%VF;*@6GA5Q9
PKS$-%VS.5^,KH)>#H=QH"F4D:Y^N H@4>_@W[_V%$6+7J_VQG9Y'30]0EZ4ERW\]
PO@ZI>=G\HX@<LD0;?>XT_/'BX,[B/R;9?&M@RC,%$)\9PI]!IMK*\?P ^[@?-5(3
P/:$H\9\; %=;;>6<2%LQSA[=N"/\OR77U)XAQ @S$JEK@G!E \28NT"@3AO.MLMQ
P*F_1E;_!+6?M"BN^VZ!K"6*+ XICD$"L]TD1#TI4+%G,ZU!QU0\\IVB%?@IPI<0;
P1Y306;WQWD.,3:B-OB9%X<<DNL]IH_F$3\K6+LF/[HI]J?1U^K/V1JJ=>_V*>$[%
P%_+F#L3 ='(U7:8K!ZLMQ")K#.RL)"==A:?:@U1[&67HR]W\:I$Q'_!5@(L^B&'&
P'RTV'FR(0^M=.E2878UT&(KB.>74+88O>^2)XJIRVI3YE1A_.^[@R;JN?LZ$SO)@
PG!"SM_OY?Z#3Z@H)U3<86LOC<=FF81Z#:;EA20R[.98S2@C+YP46>U"DZC:=$7%\
P'2SG&4LLOTV>:@28Z7,V-9>L2CWH4Y0S3II6!J)Y4[+#LTM!<HOL-_<1>V=5XD1?
P55R^QM#$/,NIH2PS2AAHPSA7L"P$I,.QT A?#1&FQ-Y^(@741EO1!)*!S.+N[UM:
PUEBN?)I16YO[ $ODV/P&6V!B[+H1#I6$8D*V7W-4*&[HSNS794=4#6F)L0ZCV8][
P;^WN>_A(NL/P*X9XH=<'"!Q@">ZEWX!L$X!/C VL=R0N7D*0,D6 )*?/PP^O0R3"
P/"':FH 90H0_'45@LE=T]Y5X?K.RIAGD '_-Z**S,4,Z(]0*0_U@920H3S,2D!6=
PA"_Y"<81.<B[+2BUSBO#EUHA[Q;4WQCK'TG=!</[=$JW8KM-M"1C%>I4=&IJXK^'
PKEAXT0#<N+V/5=3=X@\=<M5+"-F-0RQH%:M;.U&]X&PP6=3A%8''<1G_J%,<51#)
P*DH?3?<J?7G;=Z)*7EQP]-VK$Y]F%#M>MOG>W<P07=A^(7'I5,0B"4]FP,"C/.EU
P<*3O<$  5,3=V6"PC +L,RU!WBFLU?XW$T4XFLJIL"UR%HCRAXYPUXK6&B(Y'B\+
PN=)9SM<[ZS6X=N4=T[XJ0FE*#6+GZ>8'6XUHQ*:KCE/<@I</A)_):S.VT*C!M25^
P72_%9GSWQ1LJJ!&S(#%#24!:NP<:J<VQ[=JB(*2])M?H@L,N[FS,S0KC*<$B?0LI
P]R^UY@<Z9T; Q]:6[JS6RD6:U,IYFC0;^M[]1:3I7?#MO5 )>*LC^!\!WU5)$3\X
P/95K+0 KCR1J>H-A1*$V,=3$<_+Y;(@7J589@MK !48#5H'':,TNR]2.(%0'Y.,C
P>T.#&07T3((*6>3 <TG>O\,<R-R2+4R_KG 8Q4R9F;0Z;L9)A,@:S$,>QAP#B ([
P6N;9+LZQ5E6,)< RTC8NBL"AR?BSKI+N""\GH#L6#_YPNJKR#KD@@HB0B*G[9_Q7
PS\)Z/!5XV@OSJ;(W(A?U%RP;D,K21XGA]?_#60)[.X1XGW;2!.^)M%_[ 1C4]B%S
P:/$B4:XM#,#W]-1W#*/EV2$Y9'.2"&B+%+_9%]X**;5O8B27?UE4@*)LTIFBL#2D
P$M!$=@+4"01D!\!YRX )@T^KT?!#/OG3EO:1><S%2!+6UWC^_LBRDO3M6%6C0$<P
PZ,)AT3R:N_YN(=0QI2IP7WOT8)?Q*NEP.H&]!$X!R4&2M,4R,U!7&IU?K^.=';A3
PX?,ZR>^+JBYSA1.BAR@N+6]YSZ?6FC1..B8]<PQ#[=V=G$+51;Z7W\Z/PRH!MALK
P*RQ,^@[&0VUM'5+XQ3ZS!",1"B[_]$C4;L;N%C0>/=X8E-3V5O2L$?6@2==1P?#_
PA)$YY[9U9SS5LX/#P 0%EKV+<$ >@<:7P:]^QQ^S[[+P:>A<T0F.VYT%'Q5P@-]3
P_PPKX!E@.<&HO4#K7W/. \S$Z4X05I+:T(@Z"&DTM$_0H6Y&C5 * +/6]>>W,N7>
PY&NX@E+RJ97$4H1-&=LLD;1I(,OI*U8N!Z.2!4^W59SZ.6?&K'*]HQ8X!U*V8<C>
POCZKO;Z;'\>A'91%9VCJQ01/&!1A +_,JF<YTH[)#W]_A)OU08M=_T[/ S=QA?2:
P0D4XF R?W! 07@SRA(K0#\?,_J)(.E.W6JA")<3T;":YQ13I[G0E2B(5E#9<"3*\
P0.7%U##>@15"H?NW3.(2;0G,MSC:A.[3B.*IWG $AO5^+0!U6HS9X[>KW=J_=W1V
PA(!IBWF!@!^X 9V3>^*OA..,$''5AZ&6(CE#,[C+]#@46MP0&*)\HL4A,X[+S-]=
P;,\(/"WNIX$/%PR56Q\+5#/VCG[$Y9L(S7Y=F P];"DI!4Q=HUYE:R(,IP/21I6T
P,1:]]/]#0'YQN$YA[ 55;-=C1*"=%H#=2DJ WRP7YCIWL$<V_XW]%,T/,N(G-ZD1
P S>93N!/L8#BSC?T[ ,TPZ(,90MDVLM],A0^=3\B*[B"1C]%-E?Y1 1VG^7P&>P9
P%&G$1 ..+=1+ !F7<]A:/3>S[OQW/5-//U=2"WTG%3W5=YVP+)1BC)TZ)?412BTN
P?DN9:Y<P=T)GKJ=1O>4P8I=-31>U,'4,6)),/7R:O'5A%J\:M0RZ%]_-_\*_"^Q6
PQ[1-%QBE@=?>YMX<F=_L3W\95Q/I&S7IW</5$*\L#YJ#B9S/9<P+'5  GGL,!#)8
PXFV L"I-'^!#]='D2WU_]J?8H)A\ NNE?MIL)B"Y_;1IR/CC.T"Y%[)WXK)E&X$0
P[GS_B-E7A*R$B* RQX:VW\FPU[J9@@3-.>40.%=FTAP00LX,OC\TM#,>;.D&Y@A*
PH(MK%.Y/4F,X6<_N@D 4J)XPS.@;(!;6Y(T=);F_$AQW^Z6*?("#T<%>Z0%.3$;1
PE5YT8JOU[L</ML>\2*<-B"_7N+>V[!NA<>I9)/+*2XZ<-?6-('Q1)8B*Q"FOMLQG
PSNTN[@&RE#4YGJHPQ/Q[)9GZVA5?H2<046_093H,XNR#NAH#:Y:[3II)'EE*$%PD
P5TS[DM?^E(K?-5""WH0=(S1=K*D%!P,,I@SFJ1JRNFI1T6)8!)B@3Y9=9*9U3Y].
PM30*=S=698=NQ1MMF"6$2^[@I?HSWZOFXO2Q45>XTF0Q/GQ?3@#WT/N88.'T'"<6
PA1"W'L*N=#.DL2$R@^HI^]DU5B?9S?8LD>DS;R W[YA/C5X:ZO<6+3,?#O+. L)$
PMV?G0.W4)56H.G88M@A,*& 2:-$'CY6M'B))ZF*JG\/$NS0@#XR<CGTV#/-^M']M
P^,\F7*D9U=/LF3]8!]?&<"]"Z*TAT'L#4B$U"Y_B(C7-_:RVVXH=,\*M:\]$22,=
PCR^&XCR&KG#U2S+LROWRLMED<"U>,EY'@7PR:C0#17^DHEZGU@&!\,="KS<? 1TJ
P(.0^WPC!,U[6B>87,ZYI5O,Y,HM65/+H-UN^O5Y):0'):?[2?0IR^<UC,;!LC XJ
PG/WR?J5N;.VSX%8,!J  ?4?8F*? "_C+U\_]/Z6S^KKSUA8^%/+)SDF<&T9V$BZ3
PN6-6,31SIR!"G#E[]!R#&6H;^S$$U**@K:Y5XC"#5_:"5$:HH8MJGC"MTPU;&:)%
P9GE>?ESS*PUT'=2FQT@^6WBD:'2KHS1+B[G9@??EY',6Z;<:A(02>KP-#RGHJSCI
P>KH,(/TP=:$(0RK*!XF%S9>Q(6%FD\Z#]/)-G/70N0!%BP( :Z%=^H'9*LA9_)^T
PJ//KFU'?4N0Q[?[(2.GAQ$6EV1,7V#I@LQLY6JT0^[4@[>LDW&QH^7;T%-X_1UDS
P7C(H[)6S"=1'!P=62F#279PZU*W#,CXHBE[1H0!:1G5VNU;6!M^&&3XWH_>G2N;S
PAV@]0@N18Q.9VD/N=^)/RYCCIFP'/"IDGLR;VIN;[X55T!%3V;T958!H!]1*- 3H
PO!3GGA\09I^*8JMG_I'U4UDW6]BUG@_VY@]Q$44EO%!9IF*;7.&@BW-0-@Y[G,Z,
P$!I5^9E.&1K=]9=_@-P9G'_$[F3&W%?J_1CG2V<6TT-.OU((T76(5_Z0(,+-LBF7
PSCZULIW##$4=_C&*!Y'<C_-R810M9'$@CWKR&1X3F@5*$:9PMC48&6![]KG*=%<1
P.VR*Q@=S,(-TA[TB&M^X9SNA(N"[_P*6R]MAZ2*I9RKC49=7'CAP&!U_5\1I]@IF
PB^7X,:"A[V!3)NT";HB##";D3J78.D"L=3BY,2S>WDT,G$4V3PD,+K&$W*A H>TQ
P[15EV1TV-BC%J)N+?]-EMT8MX\2EL!SIZ&/MOE6K'=I5A0K+9VV)TE@W'5^,9NMQ
PO.6_6 +5JH:)Q>$?G&%LUF%:0AJVJ*)2BUHVB=J?.SOG@++(2ZB6 XT<",$Z_&#&
P *0>[5I* '_Y[>E1S)O!X7UU50F)Y_SN61<6GQ8N8%&Y!!CQ< [I5@N5U\U>@B&Y
PZS99'Y0C>5&L^_*>!BD\1(G!=^L\ZB(N(CGH?D<O=J6CE_*T'S_D*X;V&=[DZ+M;
P@C<YLST1AI^;]-= XF(-_GNXD0P168PKT%LW@(BDP% R0RSKS///,=K9USH@9_WA
P**B*O\2PB'D3MF$G0!]Z^SQI$4KR;)./5LUJ?,^N68;#DP[-FRV7'^""!_^X]^[(
P9@FR#)_C6.XB[RL"13*:P6+,ME\M,R:*-L%. _D2YDU4 .\*_13XK2_X=)8S'9!'
PX%'J >C9O=:7'ZN@PGO4 5&A'*N9?EFXA44-E-/L\BQ41-L)$O5 9]C7W2B*L@>/
P&NF46;R?ZSZWR<25 8P.N#22^QS!WU-IMW2ZM)[>3*H_:WJEYR KWR//;JZH'L["
P1E1'*.RW R(,ELJ=CC" [X1/"@J=G(NL64L,'Y+V*2OZI>^2_"H;I+P57F48>OJ?
PDK<:!9)G+H<K1 M/\_+_P/G,)FL0M[W,]97MV"5'ZI:;4.:#]:A=_>*@X2G2&AV4
PH9-:;^(]E@\JL4TH^%UJ0AOR=10@5ZZL2K4VY30B"X!R>=J3<64/O9@9TX%D;R3K
PCAV5NUD@L.K>)W7VY-E.DC 5UKL.")5:8<E-MPLMPYM!I=E@!<$I<V&%<C:(W%%!
PDN[6&AQM _.0]RI$&ZUVXCO4JP9)KOR1, BW@O*TLH"J[8! AMR+J)^ RT$-AGI]
PY+:*2;;68FVW;,(@_+C<DP*\3^P=U&HY*/!:J*XYSFXN>JH9_$EL)LSPX'<01=OU
P+EY9*\N2G-GT Z8>I-W3XB!]E)L?>,RJK&&FLS]KV9;4&5=?LG W"O%(ZRM=>#DG
P=^T;(PX_1O5K.=ZKGUW2R2#7: *^$=-F?C>F9)N)>E)0+]C2B3U<79?J0+[VLI>)
P4U'RO#2><T"\L267X#= E4S1\\'CN0[-@#B&L \C;'N\<%;11?LV7NRN13CW5H2^
P*#VA&3X[+W?=TQ3<CU^^ZJ<3Q0K"QSJ.P]DLFAU>X.0-!HO4NO/@=LZ$98]>1N([
PU6;)O-&*F,"H3SPN!O75](L]1$"%8OKH"E.>)OQ]7K7RKO,<]EMO^7C8TV2:LA^*
P>(A=5P=QVL*\-O%"]H/-"BG::.6/'0Q:Z>N<%L_-\<X8$]>TR4T3W'\?*</_=3"?
P2/_/4]FKM;"/(=4DDS[U@@\2;6_\"18J9&)C&R6%;#OBY@V.(%;K=LU \FB13:AM
PAAHK@?*<+$0M?7!>(9YMS4<VE1.!^JCSGS$UL;L'-YON*36"8.1VW15?_8.PJ_Z4
P?K3^*^E9=48Y9C5(K4;VK-%<TF6N7N[=?32)W..^_BE:C1/9.3YN<R #5_C;6?:W
PL&-E%)X1@#X1556Z$W^G*YG=:"_2/VC4=[DS=X]0[\PB1WOQ2(_3\^S(5"C:CM-@
P_&?&?DX8OKR;9>>?6Z;H\#%LE['@Y%/HV0@ZLXYGCKO=H!WSW)MD=/^XQ>L4WM^*
P[LO$G-P4)N= Q[GZ0K0LMMY(J%) =Y7 QP<-)/QYWE&ZA#6/FD_CWK0I;P?)9-3H
P)F!0$ZZ#!N=VQ*=G6#E/<\8'N)Z39EJZ$FQM.J0OR1#S/4F#'Q \E> V]\7J!Z8Y
PL"GS#@]?:3C'>UK3(N:1QC*!IY^M?75G/7V3!Y',"?([DKL%)NX7L#/-YPW:+0-"
PX;P;2TT0 <D&YP>(V;B+!W<RG7/RU8%J-45U^@!)Q]X"K9I:<!<^Z@6E97"['\7W
PV7GY\:_9ASDZF67E6:]1A6,.&5="VN]=LF@L5B2S(F%)L^;Q2> Z_Z0TL_[^#XE'
PS6'B\@757B302_2O'D+5+(]*4%=K<-BC3(%)AO9V#P:G7PL/>\1"\?6K,_O4ZAIU
PS7\6H-(E%92KY@(!,#5O/@0/7HJ) ++N@V43\&R/;^%@2'G%DWC91RE;$$NH&SM5
P:+XB/*5PG>1:\**FVCJK'[2">2? GB6NJ-\IC-EFLL3IX[)AI=V//UZ7ER'IJ(,0
P#W@B.]@N0@ZJEC -"02N\7ZYIL/>4X0DE UTI"@Y[-')J(AX"HC5\#TML616%DJ6
PQ_I^C++''?"R@YV_PQ\Q@\L6^>]N D^:Y*B"GP??U(HG42S,;25;%:>Y1[-.IO!0
PP<<RIBK6"5GK%-M^=0'0S7AQU4F%@!=G"^:943#VFG:>=<7H)P0F#D_6$VQILRVB
P3_2S7!,"Y>/055KU&;FO5*#K*]MD\,G6>V8+ACT37>!I9Z0=)JUWB<)Q\&N:NQ0C
P9L-;.A=/LUZ<;80T]:;N\;4IV9S)FB6Z7WPR^@F$)A/:U?H ;,;]$/8?L);IXFVK
PDCX,!4WE*8P.^G>/\1PDWYHP)2@=,77_(U.3U>&")15AOXX^ZG[;K<]LYC4/N0C#
P7H_W:3EM [2<>FIVLPL=F3L8I&P3[/3Y]&$+_1W1H;/2MT;:/4G%>5P1-@%?/8EF
P$T%]O H6EIBEG/9[W(<0_6+[15S5W-!J-[A0HO$O98H?4)SMAUGQ8AVJE%.'&H';
P3'H27:U7!P_"LKO#V#4DY</4:4/QI$OQZQS5HGLF"=!-X\\*"1CPF#LO6QJGQ/F5
P8"\L3 RSC\;%O#+'O,9&]M!!-_EKMQJE$LDSY6Q>@WDO?$W*4GS8<A"\V3)"0$EO
P*JU#T]@EDXA\%WOY-*.B*<>(O JU@>-D1$N(WH;P1-?DM".[Y@[:4 $U'&05_=B.
P!2+Q^QB'1R5N%SMN.1V?V%I).!)C1Q*"I9&\T0"J/?M>V."1P?T9=<AN-.GVT:IC
PE.!B&N%FGH_-;H^L>TMAL587'46@Y%^U]@0[S8(C::?._8+@7@H%LG4+:2;&.1H8
P9IJ#WWU2ZUJM"OOWKO^69?ARKTB/W3 JE$T^>]^=Q-"I.^\T9RRL.)+=Y\;QEUSA
P54^^J\!3MV(;6^55N_K!Z'#]>)>5)55/.IW@S#/*$P"U='BVS;VQ#HH!(IAOBZ]=
P(@"%(*C'$><EA3W',=?5M^*&W1U'#&MVL&)[$<"53%3.&?,:8API\V)PNZ#U3:E?
P0M$C8FLAKMKU^)Y0=)524*0Y0U\"!EC"B%G91:_4 [71 )$ZS>8$>_W?N-UE+UI6
P6[D[0[?.&7=CW>,H]I,*'><)0*UD]=UBW3=,5($&IFWQU']:PJL+<K[P%4=*L&[>
P2CO :IWX6)$J?2@_544+<#N"'_K3DDHV\ZX?#H/#1Z9;,-W_YC+_[3Q+UBG4.GUQ
P4(1R9JC++43I8;QDN]=<8*6DC<Z^7-;.[L:FNE'EH-RR_(2L,?0&LY!Y[=AA(D1M
P*==WNZ%_A>R&$:+Y)_QSI[@_=QM[QS"I<WH\=<T^<],(9*5QB* .B%W#V[3"F6D+
PA'@,4INHNW!:S7B:@KHS;LRE==7Z?HJ?9&2(]_$P)L2/#G=?KY6 =TV]@:4VL)[3
PN9YM4V_PE:W*D(3MA_@!Q7NH2F9,4B%FL<P3D(SV91A Z9D4L0BH-@<V*LPK)"'3
P2=>(<H%:LF_/JAX!6I3K^306T=V-+S1!*LZ1CO6CL2$\UCKU&'T,AV:A&=3D<%:K
P!44]"_\&**D;#59O'K7L6FUC-AC=KUL(6"?%6A5ZZ%'8)^HKLP!XUQ_G(*,VS]>N
PQB04S4%M&2<>>9*'G3(T+]/*&L*NY-=IN\R^L[H<3.<O&E-GJ20T\2@U@JA=425]
PG/1IWJY- !R@1&,=:3^$?9)'U0><187T-3)892-3)"T@>PVW,=9S9<H?H]JGD!8*
PY.SEGAJ43Q]3GSRS&1->=G9['OA>_4X-89/3Y/EMU>NWJ=8 !1++"@&]TZ6IU!:'
PZK9+84 ?VG&]!CF8UPJW%-G</CX3ZI<O95A72K#]R=."SX*6#D-+1J'#U]8H*EB2
P0=:UXG?^ ]*)^/<WDWC)+LA>CP"1J:--\=G]S4$F4P%?"Y1=&?X3JMD$_% GJ#<W
P\'TGM-J*(BK.3^]#L%[WO\J;%S7]PA+/'<^]6PA]P![3_/^+8GR=FOUEQF[S [(/
P!;%6?)$XON."WXM5&Q;=6N U:0]/8"G0=#(CR ^R5_,/HC*MQAW=]H8XQ_"[_X?A
PQ!PV ZTETSPM$_B/?SI#$3!RNH'\*&X/%E@)D.1OT[P5%MOFO+S9MEF29P])R::9
P#F*_^5TR?,KS!*;;$&+&&Q\"H] CVPS-<>!#\LZQ[.]=J=?W@QL$&0:-V.\MSKA@
PEY*,]BX"1)![KLI.?Y(DYL]MO#D1Y@AZWC'"=$BL+Q=?%-(UL (:BXE//]XG$&H&
PM17Y(=Z:RZ\V\ZI?>>/MXOWV[DH+P_KSO1H#Q,/##\2MWIO#U*OOV?LW)(8-7(F3
PU.5JV8BP'N"MQH$3-V/=2O7[1H\I5%=RV\L=9\,C:'?,P&:8.VXLFE1Y _ OW"[=
P?\XT8.C&N>*T_(W^M("2I9$-FBC6NO_E?/>V#WZB8&P;O<;SV<BUR_A+ISPEK*2;
PP]Q;>;[9(+L>#9*[YPHB'VBR ]RO'Q2LH4Q3<^OT_3M854QT=!INGE4L3^]90N)2
PG&'6N+=V=78X.9T39>1H?!??YRI<YU6CLIS?*;T.YF;>$Q__U1/Z/W*[,)/93T]_
POKDX,U["JWZD\YA4L"M^!.[<-!R3?K\2>V68^[%]HWK+*GDY;O!S<Y>RVW.LZL$(
PQ-FGT^/R4(]VNI]3K8:=8#T%RPP5U"8@0BEC*4L>-K@O?7R+]$/%4CGGA]E>-1$-
PZU&T2X*&,TV\6V%$?9S +,'2 CSN$,:PW6M(V8KA1>-V*C#P!P2UDX.'QKE0<6_7
P?9'A_G?Q_5#9H*U&Q:DGM_-ZC\\2*G15(LP%U>NQ$M8*-]I6"M$C\45& &BNC0UD
PO"$751H=HS1J$3-W=D3NJ?& Y1"\H0WX24[-4^E\ZNLK4'=!V3U4LJP;0QDKV3UT
P6I2_R']=HP?>:P!H@@CC],B4AQ(PV0!I PN:5-K5]JR*]@O#=Y)).;K1>'J)[; \
PI4A,!5I4X!7Y9(&>B#C4/J96;&)_J/ZR2"NSP@3,G[ ZZ_LY)6N6FO-:]%">QY29
PZ('UJ[0HNZ8K8H9%=8;SND&%A"F#F%D)9E+OL0ZOV<9L'#26O"]+ZT01&BR-&HGG
PL'4F49=E+N02?\(5^2"..:=>I#2[<]5'7"0.((%]MJ/J_;['E5K:6$RF$W_1.Z,H
PUWU>\4%9S<RVJ4EEGRYD/CW9.D@\T[XL$U!U:,33!D7R<Y$S,T;5!D2]'AL=>L2/
PV=QTQI^-ED9<K;UF&4@8[,V0L>2T]/Z$@-I?:153*3QDZU$#/A51ZR\MEA+SAW"K
P>\51/;).[(38$IXQZG T./1I'T^'THDVTJCN.5),H)(>=6$(X/-9X_2CWC_,@.V/
P@85\/LL5S-%^35UDT6^V"3&ATE5.KCKON."2IE3]Z3C'7//1A/ZLR@V%^!W8PDG[
P-6B.0]7SQ<!T!,5:"XI(MC?NAQH)5[*E10+1:1FE4%6LGG3(>2:LE<TH_ X>S=_R
PUD7\_RU4(ZKO);I=/)ED94:*+IZ'5QU.IR,]Z>HXI8.7(]!['AB=CUG6]3C'EL!#
P[->%+O0ETB,J5%Q.*>0F0(X_YCN ?"D>/UXV^2\^A&+TCA_^V. 0 0F\3A_JJOV/
P.7+)M"&YH2Q0"=-W7]SHP?(WMLF,6*@ZG]HP=:^]6B6*S.^=[DZL)--7M"DV'RKQ
PTGD_[1K6Y1+?7%=8BE*B5"^\<TP<7ZRM2J<995Z;ZD0J5);3Z$_#BMF\ZC$7'4YN
P5\D80@_3I0BN$*%Q44J_TE)^'YINYZ6D60?^3)6EC-ZGK4L%N\YEZ=PP' <A8A9.
P):'B6LLFF;_?CJ.T+3=CN>._!YT+P;T*GZH:K^8*66W!(!>6E)/8J,[X$]4H,,XW
P3]2$_:[Q^&1"P_XK-W2X2SN._]>' S!)4\@R4T2Z/%NL/XF6=S3Q:TZTO4$74&?Q
P[)%DWWD]EDC(H_N=2G<WUCS[94CW5J=6O3NXIN()MV>>70M1SBGU0O0GZ+PU,GR 
PV8TA6;;313"A;; Z2!WKL@T7MAV DY].+Y9/=+YDL%_\/$XJMO3B"=F]91?F1EKV
PG$5.U2<YG?)AB$P\+D'4&L,:0FS3A\;]DCJY8].@\UW<$, IX5YJ31RF!,()?N?D
P@C:DS\X'"7810G+)#.P"WA3?O,+<@$MBOG+?3DO\9,@PU!=T?5HC;XA3HHW$$15B
P"^3Q6\U^1K%DA*1ES*LXWQQ&,9GM2\A9$\Z5PEFX!-%^%"]8QK###Z5"3,]S@C&&
P7DFC?(W1^R*L(B?$KW#ZS<[2F2S3B\XHP]Z!M0]C?[CG"8O!FL2$K<X4.(;O%0?:
PY^VMQ< ;[BAD5;"+LV&PJ*CB:LJ'-U.H2ID)?]TN 2\2!,(-K*N+0R9&1<B,M3.V
P33"(^JGZ QS]C4>P_,@?L+#.XEIVH5R'4DA2&1D'CHF'%.:XF?M&5MU)6*1[<LFR
P4OYH.M)W%9)W=QB8);:)U/;OF^':-N,/\9)F[*/'EQBPGY.R-P0J'E\74(MF)5R1
P;6EAAN"0+O#*WK/:)UOJ#G:5P5*,C,'P]:&AVN3"V?6LNM:&>(0G4\W/\"TNM:X7
PX4\T./Z"?95-/:XP$'"HCK'.2H"0J=&DOI5/+<G$Q_!/<ALYY&T+FY/Y2 H!8K*)
P6F&'$?:D0Y!Y:JZ%_QZ2DF8_;/AW4Z, A/6K';8--[ U7P2/0^G+F\N.PX248+1E
P,MT F3#Y;F++52!H!;"A]YUE;-EWD6VJ\ G6/\WVPYEXM4 SN..V2X0N2;JX#= V
PV&':6;8[&S6$*XE2Y_H9$_U4GH&>;/)_T9Y4-+-6*I7JT1(;^2$[H1Q5,^06MWNR
P5=_21F0AM^M(.3 EV?03C_ZTGZ7#/(3M$>%2(JL/K8G("\C+4S=!3D;;B^QB'@#^
P7!@X_MG,&3QVYN9$'V(PC5L['&"S\4$Q\%Y\T%LB9W#%BY?@YNMN6:C84]FF/T"2
P7V'[KE)C"(ZSPTIF6BQR,F&9?" T?RN"7SRZ22R=W28T986]2<Z.Y>3U[[56A4?4
P%H*IX K4L[!U'-\\XN'/HP)J*RG5B0,8\>M>OM%ZZU+LV/H9Y3']Y;I$4!I*K>T!
PYH25GC<V(_!CGJFU.KBU@MK2TF[^V:R#6BO(0FL/9QZ"V_99E.PN]Z5?2QW?G]60
P&Z3M65NR[RX2C _ERH'5%Q^1$*;WCH-?Y6!'2RJ-R";9>+!J!HF*<>(SB*&3#;1"
PHQM@YQ^ -TX2INT5]*C>S:=W+?MG? D'I2MT1[,1N #P03N 0&!B?$/L9H(_+#E'
P8I2LH%%0_L<ERUAE@P+M+Q$RCB2VOCY]=XRF\(-_<;5"_5ZW98'C^3NVQXG7^VBJ
P(JR>'3?I@LF'Z3:>)OL;,_)C8UQ(\'/%(YW VIR\RFQBZO_?CL ::+V0QHAY3/W\
PEH='E8,WJ*.ZNPN+W@0.]-3 K!$_JG BEHHSB=*#=J%DN$&1HPIAJR*P#QJNPUJD
P]?B[1'QM _BT0Q/227XL'++(?: MV<GSV[F9Z7"9T?*)KB!^ !,A4$Q-RXEO^%(_
PU0#-)T[&R)(VCN>YF$9OW.9EK6\L"9V!8(PI-6-CBS3>@V(6:NQQ$G1LFZ]X;#D[
P5/X:X,4J3D'&L%[QTXTD\K4L?#Q.-)'$X4D=#%FJ5AT4/">7$+%*@)5UJMQ:Y!E?
P0_MN;.0&8A<]4R:TZ03F1'#A.JKSY95?958V9LT%GS(].=5>.7\G.N>\P5BZO:/?
P.J_) 2%]G:K<%Y@ E-*;_F#-C=U,D'_*>@7#BD1NF'"=X#BR5N;KE"(Z"^ALCZ47
P#[L]<RA2W5L#@KW1?=KI%HCM2T^@[,MA3" 1Y8[@O_LDK@/EQ(.XNWSMK"NG,3X[
PD/=^'4)>V(]YMI\C@#TO\OZH_^0S R<P2;Y*Z2Y!?\5XBY(G#U+7B]WDS=NXAXX7
P:8!\T#V5?USV[^TS$*2 E]%O#&^&UFRX:JD?+$I'4)K.CSNIH^'[1=BA$:1&$I,+
PZ<[?6 827A(M/^-10!A1%SR86T/!S2VH=7_\'*W@^7/QC]IN6UZ+E HJC'B%O::H
P@\?I<*NYY_22;]L:^I:GFU0<PQC=![KW:8(>0VM0ZHHY[,#3A7+T]&7QT_,MIS=>
P&>Z.#'F4!=_:9GH0YRXYQ[W?CL0-BB)[4PHIN678+_+B^^MD)#F1NW5\W]VV7JXY
P )PEY,$"O6G\M>?99G@(M1+HT== 55K?(GN'@8S>JF>RBI&6[L$6.:_PNBO9QS>X
PBSM$"\!6?0(#56&X*0,>KHDN"K6#OJ^$HEYQVSV",LA&8#OET]R?C/4!0(T8?2*L
PH.TGA]#1+/5VX9,,F!; %2RB CL*Z7*:*(9=*AH <Z3Q.)8[9W)_6R8+"UEF+L:S
PI[6W\[Z<,8>T!NP9J2>(05^H)+(#$1$ $(XF_T_JS4JH[A8>6U=!9*=;JE#$ZT^V
PC1=R$B%1)Z)/.MCV2P)VE69A:7KVJ[._1_PE\SS&N!U=WUG&'J4$.RUM8*H]._#)
P0H_H=O7%GU"8/@^I'4#!0[@ZU#$>V!9GZ2\>FB[K[>A-4/" EUVJ[P@%%H/5R3".
PW'$<O_T9$)C1,H@E!O_SB^>&Y/X#B(4A1?J>.2*#F51AR[]%:I99 J#X)]N\<2W6
P&Y/7510:PIHRY,_O'J@ZA82-_'W4A7_ EC\WJG"7**U"'..,0>[>62DT<QTD"X6:
P_?!+#4/C?W[EIFD [3,7%FO[&AH\=V(9*%*>-KN.I")@)=UVX<OAR+2+FJ\;R-M:
P6"C+,QX"X):TSVJQ]>;3.2_&)1AUE7M#\>[\$0^:N6$C'JT=1'!<+I+D5P)O]0-;
P=7?C/5EGP*(B(3^U9"".-1<%^9.S9\0GI-UB-.,*5<;TZ^D- 34O:DU!%&6 R4IY
PH,BFSF0U]KE[B$723G"IV/CY0<*@#<QW$Y4U$NRU0GHI ,+8FDL'N4$ML^0--96/
P"A>E*T^@K&Z;(EJUR7A9#?M?3<R(KH^1W3D3GY<\Q;HU^964$&&7)@'-'HMQG0:V
P0N/E1[F:62X;W_U*J1<<O9G?:NA8BGJ:)LM<K!IYKS]BDS(Y-QC]+ANL$%[^XMRU
P+5-CY8 L;$STO$H*45TE_V.B#UTX-N6EH *DGB]2@;,/02Q?+.'@Y802Y%<Z7J(T
P735Y?=!6F-7YFJ^M[QZ["0J<14D,;DS(&"_+'QW,RRNW[M969:6#[[U^<]&\R_5.
PP!9F 4PZ&W,$LQL[WB7@\LI9>-C6:RJZ9 ]/P)-TAR4.#=:45;?&<0\VW(*20-VE
P'0L_&0-G03MLRNH^#W;G-Y8$"Y8H-S"#=F KV:[/C";2@!7%X 4(PG5G?(K7I9E]
P<"E-AV:!R3;A3OA?R 6>#?24ER-??B@\@%1B;PGE(0B1AS4[^L,MYI#K#.G-KR#1
P@@H6D> T_&E9>\' I'^9HY)C'5\=X9>J!"*K]Q"G1]\6&'2)U']3+4N@<*!B]Z^W
P9@A8L4=POY%N^ V$I.WP2<XL4 $=,J1Y1.>9<R@AK=F\:Y1B(3D];+8:HCNIP:$9
PRIFMARX;%I2<3K_36'@R/+*9]@$:_:&O:K6&+"CK ' B*L6H/RSFB/*+\M$RHPAL
P+ &.DO-5%EUW[K2I9RT&,7:BO=T+3S0AY)UY3[.Q61OBNHCGR:B'CM,8*:M86'59
P7>*0#<W@OH2>ZU7A!GAR[0#Z2UF80(?$J8+&9M@),=SY@L?Q,&J?F<4YMJLUP.8=
P;$X= #.T6@,'/X=-NW.DOM+4_QCGAB;11Y?-VH\KL?DG[,B\<[P1_K%7;"6Q-^1-
P<(=UW[HQHK>2#Z0)A/V'5*Q(U[3E0FI:"./"TW-$/^GJY*"B)Q/XH"A$:2/2+#J#
PP@D+_8,KC#;KS/QWG=+_L/5,98L88B&5V_&:JYS+EB&Q6##,53)1)H53\O(YN/[M
PWPPP0TL,(8"^.G5DN<YB(QM,5Y+Q2%1'8L60GR"O].<6!F6_JYL3DU*<F9_]N)[-
P%O-S#ALV$HR8U1<F"5WJZ\)7VT2-NU'Y3A?]-1V &?H'#2>;=M?]9-8C5U%R>L7G
P1YD#[L<;;:@BO!B_[3/UND%\V:O"69OJ1PX4>C>2,C 0:* FVZ:7G789[2?T-9&>
P]>*$](9;FLF-:@",NNHU^GY60O557,9OKVUZXP26+LI\V\+ WH:X>=_X->CW&AN7
PT21.B'G]'KKC85_9ZW;6/HDC:N.<I2?@11C:C;#?5Y[E".J3VC;5&7(,<,=D<=_%
P.X8=(%LFLME=><\+X/VV%<D*%TW%#HM:ZZ<9P)?,L,IWT_T]A)Q&C797Y$0AED;'
P<U_6AFMDGDNE+/2A9Y]KIV2Q[$?P:)*G*VC8:0$U%PZ4["T:.YV@X*>IOX 3$&'B
PI,?BH38ZT[/MAI<AIQ@Y+O1V0JXI6]7@%J,HS][$(2C-"J<Z[78ZCS;>FW^I*L0>
P^?C0I6.KL:];:E8_JK68YJ,!)/+^_F(B-7MG4C91GZ$9STBDBI9W[[)?,S'ZJ!"=
PA"$[IL?PH/)]+H=T&Q"LL$3YDR&H"0,A'2)T=3"Y%#$OSHH6>*RUSO-Y??ADQI+D
P[$U8!&,>WZ;DU(&"@BITK*BFWWR]01-/.AR5OI^;@?!,?#JG&D>N1W-1-2GP\U$/
P4'X"4:S;D:?^[.<5U<DE00:*]4]LC8DC^C'*\E< =^^KCXF<)!MJ>E<=^.I4!C6]
P_.ST]3%@DY.KX1<O\5ED/22BSOM9Q\IE8.661=<MR\EILT_'4)H67_C0KKSU97 8
P-I(3&FIMC/I2<5H6)-VF*: .LW6^HORHZPTV)O#Q/*S6K#VFH$J!-_CUJJ*@@$^*
P*ZMH8&>-$W;$MK@<@LQUF_W4*'$00DB-^70FA[\Z:[OM(-#:<K2X:R*20;N8(BO 
P=92MV.V@$[.:_5/0 M28L'VQ>Z6$=8X47B\06<@H,$J=S*,#^I3%_9>C8B=_!C= 
PCBN)<8L6+1LJKH/:NG*#FN?(%&WQ;ZI8,6^%5@9,2-_LY2$T@CL);(3K\2>TF6??
PBP%RNQ<CFTQ3%5O;?;FWE_WP>1@BVX&30:%,RXB\/LC2>@?AFRKP\4GIU1+\! P^
P;^2\GC'=7:[BH]/QC.[@"47G+[;<<O$OF(>V=%^%N#7><NPBAX6+[=*14*02$^^S
PB+H9^MZ5ZO!'?A$#4-</H84?6_F6F$E52) F:%%<D":C<)%9]/&5_!U4UKP[+M/ 
P'%35[LN) \9(T) .V61\L[[T./V"U)11N%(XJLGBM'MEW_?BF;7LU?'"#NZ5! A0
P9DI##<OPBDZ,,G5?*91?Y]GMKTY_?DCH7.)1CGS4K1V7CC9=B)N!7P"_W$@^U@RX
PO.B;PH<5**:XC:4R\V]#F[7SVXF*C7A\Q?A(CJF>E=U/8X,-)X]DMR;RU[;(5@,7
PU=]BL)A?+@,,Y07A7U%ED&20B(RUV/ALVW1IE029U>J@X-8*-),27E/",)2GXQY;
P<SJG.8/ZYEE/$=%>^.?0=MOP+$\0THS[<S^J,DLLEH1$0(*Q!>NM!TL/"W[7DL4U
PT#^!:N<$12PL\HV<#>8^MS[7- 0&Q6R9N-;OFQ,J^C$5J/W[9.BS,L5X6U9./W$[
P,W2NN"G?Q9890 > UUM+S22MPF.D,U7&C(F$"\7=]UE\=A&5C'9=# <9WU-U9HSS
P6M[UY4GJ].'L.^*VHM"_,EP[Y#><0O<_MYK&U ,D:2[DN;H]435>%A+3"1D6FH-]
PUBAV0M'.[]D+_M>;P5X/AW"2X/'A$F<<)*<#=^34!PR7*_GQ*.K$9436"2UVE P#
P\<=GO!.X]&BU6":M^A6#Y=&^&DE3P=7H(]@1EXKGI-!S_AWXU5)/=ATV3KO;E'8L
P6R=_!E$.[BBQX'@%!;$,>WE7_C2N7A\N[GU?O^+%2 QB2?"']X/D>OB-;S S5XR>
P)E"Z'^%0#O@+CE<$1<2*X"?OX/L>DNFTP;P]9FTU/)^)S4Z-.>%F<WMIP('7K.Q;
P52?DE?'[U6I(LOMP!1F""J?.X'']LHVB^*3XG0%P PKO[9OE??M/]"WW3]S+S^?&
P ACH\O^S79*/KK%;C,''?G-J%00)68S@6.HUP>P=$UXZ]'P(V.%5RO17A$."JQ@,
P;.+0U@4$K)?):'1I>P;]N02K M+"4AZD6&=*$_W7VY(DB  2XO_TS,.\B.-?%!//
P4H!7D9!J;>Z KF%JX=GD1>4,\'7&:V8/_( <TY7+R0H".8'#.$CX6&YY[FW%[M9,
PNTUFOI4$B* 4RE2\@00;(YI!W(FP"!YO6R&ZQ= U4B3ZJD+6:53_7>R%(.JAJ=8 
P[EHT&TIX<(%131V&-AC-8&C)E%DUEPDGF8(*JTS&LKPC@\8/1IH55)[--3S2GBG7
P^Q&8#7JY4TJ73_KVNP2@2 7_6/Z"\4! [0C^BB(VC?$ %J":EG/VE957R$0(,)&O
P8BFDC4U[[OFKX><G8_.4<6&M2*T0-U,:>'0G+<NUJ(R9%Z14$C(!0CUN5O]\V)T"
P=PJU>K,-ZF+(6%O7)^.0PH0U]+,=?SZ2E\_!R-0''4DYG]!;W7=2V,JV('"O!=);
PT<P-O76;UM90L FJ1'5^DYZ]0'Z8MR1;H4G7.FH$])IMK7(OC6PT7$(SXI^^/9G"
P >\;#TT#MBP;+TQ^(I;SOV$3B:%*).H \.!R;K;OD5^2WDQ2 "-#S,!KC6TGE9!2
PIBLB=;N\+SDU*BQ:@)]H#!GR\WHB'/T^BX(8"\WUH1D<P ;]+(*?WQN1N/XM[2(8
PU_0[5D*^BQ-W]FW:?GO*E.[RGWV[9@189PS6TP<N0TOB2PK"5%22=@16YMF49JU:
PF>T47SG^:=6X4HM(=MD:E= W/##"NS!^(RN8N2C6#QOBFV_*TZC$J/^9D%A3U(21
P4M\HCXJD\HL9F\E(<T\O+/Q"X 0$1/J9.I!\$*>4Q7R"\1L[J\R,.U^4/H#$G1LO
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : rx_lane_async_fifo.v
// Author        : qu.zhang
// Created On    : 2022-01-19 14:31
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_RX_LANE_ASYNC_FIFO__
`define __M2_RX_LANE_ASYNC_FIFO__

`resetall
`timescale 1ns/1ps

module M2_rx_lane_async_fifo #(
parameter SYNC_LEVEL= 2
) (/*autoarg*/
   // Outputs
   pcs_rx_data20_sync,
   pmd_rxfifo_rd_aempty,
   aresetn_pipe,

   // Inputs
   aclk,
   aresetn,
   raw_pcs_all_lane_fifo_soft_reset,

   pmd_rx_clk_20,
   reset_n_rx_clk_20,
   async_bypass,
   pcs_add_pipe_rd_clk_rx,
   pcs_rx_data20,
   rx_wr_threshold,
   rx_rd_threshold,
   pmd_threshold_enable,
   mac_pcs_auto_clk_gating_en,
   pmd_rxfifo_rd_aempty_pipe1_out,
   
   pcs_prbs_en_rx,
   pcs_prbs_en_all_lane,
   pcs_prbs_mux_sel_rx,
   pcs_error_inject,

   scan_mode,
   icg_mode,
   mbist_mode
   );

input                                   aclk;
input                                   aresetn;
input                                   raw_pcs_all_lane_fifo_soft_reset;

input                                   pmd_rx_clk_20;
input                                   reset_n_rx_clk_20;

input [1:0]                             async_bypass;
input                                   pcs_add_pipe_rd_clk_rx;
input [19:0]                            pcs_rx_data20;
input [3:0]                             rx_wr_threshold;
input [3:0]                             rx_rd_threshold;
input                                   pmd_threshold_enable;
input                                   mac_pcs_auto_clk_gating_en;
input                                   pmd_rxfifo_rd_aempty_pipe1_out;

input                                   pcs_prbs_en_rx;
input                                   pcs_prbs_en_all_lane;
input                                   pcs_prbs_mux_sel_rx;
input                                   pcs_error_inject;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;

output [19:0]                           pcs_rx_data20_sync;
output                                  pmd_rxfifo_rd_aempty;
output                                  aresetn_pipe;


//{{{
/*autodef*/
//}}}


`protected128
P,Y*8\G=SPWN-3O1Q<_=@];,=ORGJ,9,K+F?INDX83&+M$Z'?@V+6TW.Y0<PC*$KM
PMNB+<\]TB@J$5KB*>7C;:5-T]T:&@)YV*L[ F^1F<*E7##50\3+RG\Q)R!F&7/NE
PSH4;*7P>,Q0SIU;])N(AK7]IT?/(4,RP.[<6[G5F=J4JP #%M\7T+ [VZQ/I[DK@
P\3,'";YZ-FNEZ3\Y!/O($8EYQQ'8**,R-J'SVBZHR^^3^L]DIK#8E*QB:/T3[9/<
PFP-*,MJ5,MM?6"!C6:HA([AFC'*N_S&)%DG]!5^L0$S?#L/MGPKDD%1N;L"B'3-L
P60ZBUWOXAUS9=R/\L4?UJ,\RDC(A<(#D\:*S 0(_;:8T=;&X YY54.@)# Q8]W+:
P"I(]SGF9C&\[C13@8$@Z#OAN7Y)#:_A$3O?5AF_<^\W5O,0=PZJ=<HW@'6M!!T[&
P7[2+P TM'HU(N#RV*OO!LD\<\0A8W1M$RG6A*BZC59"W)&'S)%',\L\ )3Y1G2\)
PJ1S4U/ 7"0X/C$T&<;B!B=M$LTT^GQ_]U-C>J*?#@-D,>KN1@G4W.Z1%_N)'8W3D
PC$$_8(IJZ>R67"=01+(Q'K(-^3'N  \#[ *0,<\MV%^*P+#[&UI%PEZ(FQA^@\.3
P\J<I%"ZI5(IP 2$04QJ;F%?)GNM+GJ[#.DA W"6)7O[Q-P(J)D8Q8 F0QFO%70'#
P XH7(9']L7>GAO90Y[@-,$P=(+E75E^(_S)8DDH /S DK'U4G.^#UCVW"AB,:K"D
P7AQ3=EPXSC9-">:G'+Y4""W.H:-9G!23V_VQ**&B@934HM^]><4X=WSIO<\ V@#9
P?MOXS7>&=4KT5),M6@YH([%N$#!+D$FM)PPH(P9"W1K('YNZ+-8,A:USB.![N2]X
P+H@5LV;P@,D2?..=NU,7<]\;@"[YB.G^&'*RIJ]>X;,OLQ#@AS['NWCOBJM[K0$Q
PEUF)":JQHCI1"M9BM-&-G,&K<*5B*#M>HXM3<4:N#:4;'#PR/E3)RSA.4YDN);K1
P*2KWE_Q58KDWS:!5#5(1B=\]<Y,D&N9SRT;'B5'>#G!F'QWNV/#O#O#:UTHRU0+A
P"=U. 0U4_N<!4Q_#HKVZFI5FZ]%)RS<5;+@O4B?][ZWF63HHHB^8C1;GZQC) M%U
P!8-GQ. \9E4V_]-3.)PU3H5(BU::S4KX<R-*>)/QX'MX_!]MA6+'51+O_OQ*&I4\
P=?"^%D/+ZM$C4?BJ,?B@-@I3$J7&D)C5C4:'._0(:*VOKS>/*PNOC23?<0J!AGC+
P* '"U1OZN.<@?1$9)E W:FF#'L)L0J<4IH&<V'RKN P4X[(8<4>GTZ&VFZ]$PDLW
PKT$B"Q\P\50JE::4V)@D@^A41G1HI%40]"R7??1J0C"RH;PC_2G4-)%OJ5)4!9Z)
PN V D>B+$/]0-Q1\]>479Y#6H6YC+.U:4 :O(T98WZU=)4I^CV4V9ID1.&*>$HT1
PDX+U%9!5<WW$*)(SB=?21I2'&;4FO0F6K,ZKX1B.JL%X&%KG#<^D >:& <[PH7,2
P)%R)ODC5*5TP,67"1.TP2Q^8&PVW&6QHB$:OC'A-V]7G]+,W!.O(M(96_9!H92&7
PRM<8U_!_I,4K8ZX[3O8;6X%A%VI?3V<Z2H"&DU1/O0C/!4\UT62TF@OE(RB(D/DI
PH*0XKBJ'2BXV8=V"LF2,GHS;,SL1KNGCXM!? 9<*]H/-7>%Q;5S14-Q5_XOI"_B.
P7@5(N0Z*,(N=S_ $2Z;B%I$32&*"XZ8/IAFDMG:J3[0.7$+S5KM"O%30G\^*RU'?
P7'SOJ#DX[IM#9W9M60#JPWM/ZWMZ5DZ[\=<JBL8:BR^-L DH4(<-PJ3!/VY;>U*\
PT;"%X.^P]9F+Z7IH*/)4*AV*WGC]E:,%C(%.S%+R5F*%UXH[Z(!S5I+C;(?5TVN(
PT9GUMLO$\)'W5@.*3X0Y39/B&3#SDO2 ZW@M1;C9MK+3:AD0W*CET'ATVCNK([67
PG($6+:I,!="K?QK'0(A'Y-8&6YPNMCI/?D'$D1OR"&I!].H,__M_'2I;D#:S*.=N
P-O#?O%>HB]$74; <ES3!"M>2.BLT&9,HKNR*6X9-CJDUMFZOS_"@-#4O'1]\Q43(
PB;!-KV@R3# S=0&A3R)H_E),N),'3N*U]F,\[3'8R2NQ+M7"/ZX(5D/>#_Q:*BQ*
P#%:VOG5R^$+_V5U1DM%*#',DX)@>O=.NLR2,4+/[;N,'Z%YZ\>Y@YN(&[LQ')==U
P7\#0#%&'T%H_W=(#FQ[&>9I38_0G^M5>?=@<4IDTS@:V?'X\/RH$NP3-W_B *%-$
P-Z]B$H/AZ!O!2+*%>PP4$X/3>QFG; ?!&>5)_,*E/)P15_/,GI*=5*1=8*""J+]-
P[47*G%]% -,*Y,YWWHO;;"VKP$- P3H0J*3QD 8?=QO]:7CI>+$Q;A=G!>,@$A_D
P<,HM!FA(L!2X<!*7#X4RU^,G-Y(E[.G@[OTP9L>]:,NL/R8=EWXQUS?>N!59@)TZ
PSJ*K/C ;".**EFU[VR>:S;KYDJ/D:B&$'&64W[\L;!*/\IT@+[%,;%?44[L;X[6+
P 6@Q1?KKOG"3G..%P,V:Z.!-A%2Q[OU5_6<",O)DD_SG0C:8BB#MQ)RNV!+),9*A
P7MWOQ;0ER92DL;UW?""8Y :*.KU,*Y*&%Z=3LW6!-!JS.BV4 $$J-JL4D'PX+CR]
PY+S4-M7R\%%G.JW9='>]4)OL;D^(C5,+)NG:''7-+([G:DE0SC@WZ2[GP@,H$%[N
P K4RXUJK[/(>1V!K!-'LDT.UN[)S-9C&H:5_^B[Z#Q3H4:#B?E86]FB23<@A(::R
P/EU&U;">(3"($6-<1JK1MX'#%)#]XTJ+QP-EQ?0JVKI-<,!&%AWS?&ARO54%2<^V
PMO[G6;&-(;U!6V(Q#4;RQ.4?=5@%F',W\ ']/!5Z6^DQ+ 1W'"T;K^F^)>L3L9EV
P,I>5CDHP W![_ N#)8H*I%;_=(0SP#5:8+C:V$7H,DX4-L?^5?_C)R+F-(_?U5IW
P=0#B\O8F>Q=S8%.6]9B,9*"DU8=/WU@DBK2_'.8F/NHI==<WX@ZP ^2B5#GJ1(/Z
P>%LM"NOCMVKEJM*!/V!<H(D.'*#ZHBB%!E</=(IS/O$_N1DV?TTZ$7.R-KN(7#S=
P,- (H]@8V!:=!F0PQ1P21$6 8GP@"/[W2'R\]T6+J4QSXRQN(G 5_ U2%]5,P/>@
PA'C&0?RK8Q5!%KM_+;3$J<.E,F4,;7L+_$NON6FP0$K\\U/5%% E_6;TU(\7E7&7
P0=4)-Y_/><8)7K?P=C@M "9"/^GA3;SSLC(?<X0LNW4C2.(G4A7H1Z+MT0257IJI
P2"3DI>PUX)+H,N8%02[*G]ZT"HNU(L7D;YI\@? [.QR#.5]/'F^T7S;<[Y:^2'L<
P_:YE\Q)7Z8V4#XSM3N5 XA(T8!5\C;!O.QZC =<[]22ZTY:4T'8=AI3-,$MJ8@&;
P :S.,15X<<>:M[)RC^KN [L6#AO:E>BNQ)D@TZSZ"Y0WV,@@?<1V 7I*L];UL 0I
P1@*NHO: TVG;!@O4%)9#)P^<>EB+C!* Q]@HXW0Y@LN!_S5D[BL0M4E[4 E+K+=Z
P)MO(Y0DL2<0XP<BJ[IU1D6!8J_++MBUL]C@)@_!=_A6;_-$X@TD3V]6^TU4B(>8/
PO/>]-5&P#* RB%@>17W^'"!SN.W^!R3L#*;0I_MO5]ZP#A?/'X.M^6DEOVF:G9NS
PI:8S6?+97S[L9UMGGTA3KA(3X9?VC[_2P:R9N&3VGPBA [[I4#)Q<J1E3A!8ZL:<
P1,<PH^E9OBLIG)'"U:)^:3<\W\$QAR&B^,:#F%(%)ML\S2M=9CN:<&:5Q-]L;N)Y
P=$_W^+^Z*(,?Z2S],T5S(+G5!J!/>+HR+$21#8L[GFY3V-_$(XT$I)I2*RAVWW+/
P ,C)%;H4ZUK"I(4+SHF2]D'ON6SPY%<[@\@3]_U8D#$B-NAC2L+09),W/..IR9"I
P;&M@:6@\*=+3Q]D,<GT(W\4Q]V$BHJR5!+O3ON]+UX.0-+,84R/L$<XVJ^P+M/*B
PCY:7$QJ8B)^Y!7O'J.>'#7T5F%V]D@&-7MUQ?Y>SBTQ,!?6;A 8"K,*)\2Z<C9L-
P(QG6+/-NP/?9&<_EIJ3WOBWE2QARTH710I)%KGP^*H)K1C;H;>Y(+(!_>=\UZ:_"
P'200P<#*13+HI2)RP%Q1>NRDJW(=;ON((MW,$#<(G)S*$B9?I%%'PC:3.* /O?;[
PSVVO&&K=\VS&@-2)#]%-V4"DWABZ*.P/PP(QTQA/*VM;J\&5)?RX'$T#^F=BLJ2F
P%U27^:!#_6A'Y+"#7?W__0C(4PS?SEN9,C^:$& RD@WM7&O*R+\.X_N2M<07?=%7
PRK8 EFKC7;<-Z2"VEK#SQN$3O/D76GBP$IR74\NE2$ACI!'J@^O2IQ/$H!4V*,2[
P/6J2[COM'-7_!W1"Q/H+!WE]2$!]-,<]&UO!E7UQ9!/UPGV[0RT[^:DJ (4AZ?R;
P4R"5#SW^;R(C042KZ5$ LTAO?M1T UVM"!(\V69(<81ZB/@$JC'3R42R^%+!^N/*
PVAX3/X'<=YUIGA8X^A&'.S%1(V6Z#L9"\F3F$A'61O?KLFB9.IP8J$MCL&&%O0RB
PI23JTCTG.:4'O#+$28VW20ZZ'0'@R7$-J"[2SQWT#)0A^-LI42VO(VLZ/"0B(5RV
P#4%U (Y6"Q0Q4NYS_6=SZ!XB-;[@<?8RAV6,U[51"V#_JRH9>)]:S:Y3).1$@\E9
PRP7]+(#TNXK@59L/\)VJ!^W%2T@ 7[ZX&<#7,#RD R(?#(N%U^9>;P:?0,Y+?P$G
PK_SMGNL#+*H9;8!-R7P1'[$;"'0X/*ODW"2O3FW^C-G[@P&232-$AM>6<BDB5RQ4
PD&O+R614:MKJI71EV/$,V?-D%1+ZD1R6L!3Q]=\YY6UP\TD X0#</E&</>1U##]?
PD@P9]?4]6C%4,BYK_V^/=[G7N\.?65@##*%. Q(P'=YRTMEI ZM0KF">4RP5(]C]
PQ C= Q4%P=.2SMREIDFV_ CC(@8-]N/ U.PMU7H$*(*^A^S+0B?3(9_9%A@"1DX*
P4B9UB XO$.$AA R<\PGO.!I^.H6X6.2Q)40V0022NQ[$2V^UO E.BSD:2W71E=Q_
PZ%:W4OZY0-#= =?%D8[6]71""=!_16*_-.I:(4'T'C\N0V!IM="*NA)C1QHR+9FX
P2N7XOH_S0*QZ:_Z%@5NN!3DS>.0]K*F17S&KE<YT#E(.8$'4CR0?T*R7?8Z\01-#
P7D91'M[IE^8QS_>L0%<4^,'Q:[Z#+8GAV#V;W)*US*AJ$GM8,!X%/:WU=IPO/6?E
P"!(J5&>:[][8/@K4[/7 O>5MI;C!HX 1;22(>LUS][/[O8&&'^)YM_"E'/*,0IK<
P1\Q=FCY\3H9KX'.,:<'761',7NP:YGT^;Q[$)*ME.K==^S%@OQM(3BD([,E;-5:"
PF\?Y JC:W^-(!JA[(:B(AQLH":%F9#T#9(#*6=I6"MPH7LO87?1Y/)8FD,%1>D/A
PF2EQ^S%GVO@C2BU4N2(T8!5B%MF^?G.O1&H!Y24*-)NS(10_T%C:>=36_<_CV!!J
P^><*_Q94JKUN3=;/8+!;(=THAO/0HE35B02PN+>)^T Y+D"3;" 8V/C)C*SKV./A
P^LWL871EM!BD@4!U(Y/R8>!\!S<O#!HI2O_"J5KCW=W*X2J_TYYM7 IJ"6^RKVRX
PST#\X7M+(V3=_ ]"L.O/&]C)V7%O RV.RS:?;[:FP#4"?_1$ _#$I)M7]P-O^LR#
P^)&]W,MZ,\L'J..UEKPNIF2A:@NA@PRPX>D'LI]Q$?3T:8J!L./>D1- M!UC.S!!
PP#HAPY._(O"4&X$A8NN3A@E%]W-/*X(*/P0?O4YT-;V25^RE61==>ISTCCYDCFY 
PMNKA B[*OZPW29?59^(MXVHU6-)@781M>L,'[E@&G6_PAPLK^T),Y#JLDO$'=$4O
P@7%SQK&X0ZTTE1&.%0Z5G#<B,OF/_3XNU/C'EP2&])@$A149H#(H;#\C$<,$%&_B
PK4^Z#:V BN%K3>!%DUQQ\>Q/'.QMU5,=G;9!NOF%URVWI2]%I@M0W-PB6S?K !4<
P1H-4:HN!:E3]RUG ,^/M!ZT+47U07$5,1!=,:E>>^Y: V. @A@8C4GYC(J4# :AO
P/@?W]?O*ZK*VX^2LQU"/3)'5>62ZKC*/45M,;?O;WOLN6Y"\J_0N!)?85+;2D^^O
P4P7XFB].BL:CJ+CI[S7=B+>A[&9<1YL)6*I%P1184+">TOWT,D.05F\]?6 Z>I:^
PM27R))Q'40GWN<Z(,A=CKYAE_)O-!GE8<C7A([P[:\K(]?$:6%OHK5/3=_H#F__4
PXJ^-<FH^I6OU,I&3F1)(DE7=+>#0MU5T*)K!JOY_QZADLO<CK0&CDB)G)</<]"9/
P'%PBXYT76?B;[UV"6&\/C&$:]DED!RX!,9AO%92AAO?4$O!U)E9Z%+%=N(WMC+=0
PU2EH@U:'[ZKZRZ%825K[&"0]5U=='57H'JA5.A^BJ'!-V)>P*6@XK<E%7D&/G(5A
PP;AJP!Q+$](+=WLT2EHU'6?SU^X95@(.'ZEV@+(D'?QL>K2D3)01QM1<UYOJ2ES%
P;2Y6R(YM/.?M\T(E8C/9SOBFD5-)_L2!F$&S[W'Z%Z-9;K\[SNH-' ?"K;^;H-H7
P'TP-,MP"JV$FA>G=!I8'!!"@N3O\)((#T(,@4K^-73?NMJ4RCA/,KOW#)O9.D*[U
P3V7B.)5T804_,+9FO;O_V]"<7Q6. U?6$F8.JQ\2A8A>Y?%%8J++7[7IN%OB823$
P-Y*/+BD;4Z@^UEL*DUW87\IZ-9'[<A@-6LU"0C7G#_KO^LB'_D1:9#67+I-17;GY
PB+< [&H\N&RT6QN0G#=KT+@]4$_,K<,CF2X'?ZK*Z1K1:)+>BQBQ63L=VNBX5049
P"@=6P:'8J%DB*=P14!QO*0ED0D/NW"$C<ST(+G$_^1BNA_?7TD]X>M5J\N^I:)@K
PUA\ U5\,HRD#9<9HJ+,\%.U51^>K(]B=8N7T_7H<.X/JC\3:D\4(:5(U<6E*V$8U
PGXT'U\="$ U-7/"%Z)5X]5J6;.<$_K+HEA-OI,DS[7-%;3=PX_M\65UU3S.->?"K
P*,X"G$IIJD>=@:CJL<@)<A/,<#4[%7;@Q##J@FJA6(0@,SBI0G=!'9+;3F'9$FGL
P35=%2-/'^+7*:/&L-V&&R ++1C95(2SR9,0N EHR:M*@JZ^Q%3H"IJ(K:?7ZU]8Q
P0Q>OGW!GMO!D(8(,> O2N]!26'.K0Q+ CV9D'SKY9 8F_<AT:-G_B61'!M$-G"0+
P&(1N(?S:2]"NGPCHJVL"<!9B.KVE@X!*ENOJHUN.MX'Y4EM*'@K6.>E6L3'HZZ91
PU4;!LVM/1A7LN2O2S?T=9/-D3<,8/VZ*^*V&H^&[U=I1(\>4,THZZ[[JC<!.C@XF
PR"0,9ZHS<+$^LM[[DL3(R-.9Z2O2.BSA&0&.Q?$^&3010#7@KRXKC#8?W24*S]5W
PV!DMTA.L<)3*1?<Q+^"#VLTFQ1GB"\3*GMED]9=@,(^8 0CFT^>R2]:IUB]:C7#'
P%$8[@=*:RJ5@;<<>&SHA@Z#X9\QB,9'3#2F<6'!BK_&:$\J/LA\F9!F4)M'C]):_
P !EGR))DTZ9G(5-)KJ6G"Y +@/6/VCY0M3<(#:#<X3NSY(@QX)/)8^LDG1,'*V#@
P76W>LW&WB8TF9M(W2<\S2M%FF5-0(BS$"U@H^9DH]=E;-1.+S)X86]D0Q>$E6/I+
P/(S+*2A" M9RQX0N;=;/V))L$H%^$ZAO;Q60G?I0F@NW6A9M6=RZKA&\[D;"SP-$
PQN_\W7A6Z!!TLX%',IV"20?9U_L:VZ!"_YQ8B7D)<V%?!9$IF-ZZX1IGDU]%Q[ZI
P[L>4#++/I!9@]A'DS%#^>R[K3%B/KK(+)E98V]\DZN?Q 5)%%;WG0NZE#FO1L8FD
P7L!EXHT$<-GNW2<)?'#VSQK^!!=_L($A<-XUDS @F0II_?A2PN>?&6"NJ2[47^1>
PJ@-2$G,9+%LPU,F.K/$NLSDR#1PHU3+A'&;/DY1O(4V2XLH/>$!Y-BPNJ>J(:;=C
PSQ*2_^#@=G';*29[/#- CQ:Y6R]SB?J9)JN>?E!J/6*QS- (TG2@YFC'R<%;XJT:
PMW:4-V\[5_\@9'<S<FQA*/^I?5THI&OLLIF%C\5S'E4C$,!,C0I*E8'<D!12-O4R
PSSNNV)9/B;VP9)!+/,H,-R\.BI[]I:DPO>8T[<B*(B]NUK-:B:"'=SOZN%_5SVR,
PMHA9^$&PI?+F=%BL8KCA)L@6.$ZZ[3$8(\WTA-97!N;COW NBXV92I9!&" M#.1)
P5K"&?!)MC)1._C(TL8)"%]SV9[#JW[=F1Y*+[!:>P8_2M_%_[IOORQ)1WB[]W@HA
PQF92;*+.LLTNL*Y?:BU$ ;@.,[+ [M*@^JKJ,.TZZH J7#63ZX83/K[/FA+0G7:O
PA6=:@$-YTZTMP<6','?JB(&^DOL(V;O';?H\DX$:]5T+-+<L<1W0<"LP,@%G7[?8
PK)&$\M[@C\.97=$BLY[*BP 1D2& <6 5,QJ63!JG#(DRU"PR;',7B)#1G\B/BXTP
PHDDT_FBVYRL9P?9"7;NTB+ R0<U.75[(+9L'49%2?H_^\$##'.D&J?_4QI8_]XM,
P>'3R(RNU$!"H1D\,>(#I]N^R)Z>$)B_B.\9G7\Y:4_U0JT,*K-Y[=9F+QO"&M&Z_
P?X9D,/(46T39PH]#BLDF&;!Y-@E@+,B9_H$>[Q@O)J'??V7W+_*A-VY1_]NZ4P7-
P3('2*>P'AO/2?'*YW4/-&JIOZ>([]DM?5(^<$WH];JRSY%*"GMNX'!U'>&.G,%+S
PWEA([PG[\2 = !54CG/4)O^-&@$4#GU[7F*\!+T!0&(*JIJZ8.78VJ?L?@OYU;2>
P@NU<5UM+!]IA97)6!Q 9;JV.K)VP4H\I[C0&TR8II%X%L5X&:THFID9FQ?[-"X_,
PQM$$TEF9B.\65>>""9EMK"]9NJ9X.^!"8ER^A!QJMNL60L=&"Y4#O5F;21L]B2=;
P#%88?? *A<@Q/>1[71@%W4T!U\8J'(M^A1S!E_HGKXP].%P?YR>#*;\D. N>-Y&U
PN7O7GG=N@C\ -#$#HJ[<'_5T2& Z,;-<5 8(("YH#0INR%LXUU<LY>B9[E"],BEU
P;.!U@!KC:4KN,<$VU<X6G,.-&C'"O'^M3TD+L%:D?U]^'.H!?6E"Y>UI)C@,>O+P
P/RC;IQ)66@^Q\I.:A$ICG7YFH._IJL^RA>I1HT;^+DNV^"A?_6>V"4XI!:KU<$BI
PV<C[H=5++GV=S_5=.R8_42^] 4]?5Q"=#6["U-LO.^P!4+,6_;A> (U;:2W"<LJ"
PR&G(_-7<\XNJ.#1Q7#?_4&(L<4[N@6_/1GU7Y2_E%_^!2E[BKV\@"I9&_.20U\6"
P8 %J5-ZVR2ROKC6>S]1U+$)U-3+ZE/N'^"+0A@5Z;_A<ZT-[/%57+!@ EQQ@R-1M
PFS$_&6#($]:.$?[IJ!"%,[CR*/ O;<$+(FFT)=%F*).$=16I-A3[<X]:C3:M%S4@
PB6O"JO3[-NI,*>W>*G^2.4"C_UIM+ZBV#6H=[@K_I88.U2\\M?: T.5E]H\H=UDX
PL;^67JC7-]_GE59!S<HF-N;,/Z1_:T5(OZ\T)TQS=:=:)[*A5A>VC8K5D0S)3Q'S
PH#DE1()]NC=!%&8X^Z:Y<$Z(Z:(4]F5U'5J*0J KH$_T3!?4"4=IGN0RD(RR$>[G
P'O6;# 4?D2+,$ATIX#I:.F>"UY%QO./K#5+\#FYCS:\A)"5=E6.( 51JJ0 Z<J#H
P VNI=12U\FE*EU:\9Y Z), )34CK\S:<Z-^P6+:F;=/5I(4NLTZ.4I,/\O!<:(^,
PA[%OFRML,_5!,!%2L"'>=JN>CF194(K0[K]=0KZ5M-@GG$PC'K"L67@DZ$[='>%7
P3Y4C#;=#0/B]]=?J[X<<-3&FWXW)R4IQF5Q\@<O?9$%185>G.^ :K@\Y_SKG&-Z&
P')/A[N4G@Y251J%^2:P?5:INBNHV0M1@$L\Y!1+MY<<]Y%_R7Y?H?NI)CN2?>QAN
P"J+0-$]2MS;[.\BI=\M^GCG#1^47/P,35AJO^J*FL#YKD%J]>1'T'T';3^8GN\Z8
PJ1 0$<C_87@WOP_>VZ#1"L()7BY;3U"-JRT2G'<\U&?9Z:BN7+$MJI@7H'3U=(P3
PCLF%?Y?=5OVZM_IHWM.A"$?Y@1(77I88C&WN@%2N]J1)O Z";]FL[]!.%8;V[M_T
P(GT15-+"2-()/S%)F..F3OS_K&DJA5B0>N<TX7G$(]U67M @$IL@&B9[B(35 FZT
P6[3<?'*GL)[1:'P! V?'.!4+DFR [H*]2?^ V7HJ.Q^,8<5S$O,OY>$M!DWM[4;A
P2*FY[2@QL2/.(XQ;]9ZLFG>;C<!&=]AYT.-<Q;](?^PFS"8Y+E]0R '+<>40OY43
P+BJ>C7V\8_ <:YAG6E^MS!6(MMXY?U5[HQ?(DO0<0V8[I5"\9P\M<)+0@ DJ#Z:2
P,WVK#)CCRE(&Q)WNI5&\ZX!$+3[I"/#8-@5@]<BORVOK[;#WBU" *MO4H</Q6=[!
P=/T:7"8 H[ W*&:<NT/2-;M3:1Y5KC06A_MX02,<,#U#O]CRRKD63P-PT$3_B4VF
P ^(@/G\CG]; B7HCD70$DE<-XK^:[JO. <\];/65&69\8/M-ZZ9FCO56_=OJ -+^
P49[TY/:N^&,C9&FI5S(K^]HPD;:O-0",=_IYYX&]#\!)%8?Z/B#IHV^9YM*>/BAF
P?FV7SLMUE_&)\KF8\=X_ K:Q[D@',]D$)*]OLT-_(:%H4+%/:Q8#Z=+.G-,;T.D]
P<@ <"HP#=3&YT^<0>F@KH%QF VU,$S_$"&M-?RPE  X-[1"]S;RJ>\^)[Z,("D+_
P<<HR(<YG*O(:]E]3<)PP,D1[DS\QX+*\6.;ZHX13$A^WL0CF,-6W0<M(1(]F3/Y-
PF0<-3KB:.[%$K&5"%V.OMPE(R X6/AH)UM%XF/HJZF?3$R'4M[(-CE7,3'W:?%3)
PF%P>^Z\4_"S;&];'/&\E!H/.<?[:(@"2AQ,@D*KJ.[8ZPTW^VILD:%?122-M):76
P:NG*^88VVO4^@6E9#N.X</C\Q'XQ'&W[OMX<P#$R0$-(<?Z)&WG9[Z^IM=^'H[=.
P'\J(YB-=@B[V9=UZ$*F;H^S"7VA;A-.?0)<?'WDZHB]>B0OHPM,'6U\0CTI<];\D
P-'@EH,R/??MZ[/>AA[]RHEO]LFCJRW9\RLD)^1&52L7 ;BIKC D:I,YMZMT'("$1
P:T^04_E5]*[.8P@J^*6*W?-*WBVN@+J4PM'XC&H\Q;3AJLKO^#U#P9Z?)>\399*O
P>*5S?0RD8P8X#7OE?X:W5HL@J-8 ;L"5G 'U,K;^_1(J]!E:0X;/\10KG;RFOG!B
P-WEUB;($1<45*+^*PR.,Z=.&6N.'%.\:OU!ENBD2QD6>-Y?583D<Y5D64K_V 2 "
P4&)^.[=Z!8&74L*5B.XB[HA([_:#7$-OFW&;<8VYFNCD!3V]H!)Z;YU.JWFT>WJ)
P"24._KVFT(5^QCB%49.OK7'&@N?*!_Z/.T&(E12,#XU.'7)[]GE+D*N-T^M%*6?Q
PD1"HTA G^=P+.Q%)1=WJVQ7"]PE\\V&N!BF O91,\O>F-C=\N<^3+=^O[1+L/+D1
P)9<+FH>S<8K6,8PB);[UNP<HU?@"ON<M*MHZTMNN*O5<;5C:)/5CV0=ZL[[KFT2E
PTRSO-&0G@6*!Q3WB'K(II^0IE2VR';S,B+!'-U5VZ;W%0")O:I,"!*%Y&BH 9\SA
PE9*K/"K!(:H^J9X,'.^)S3XU5(#_1M4H_4UB BA-V<>5+?M]6FBA>I!N@9J#G<@?
PJD.^Y7$%!7-!(CO@)M)-WI0C[GS[C6@%&R)K2_"E5")TFF;OGBZBR(1P?5A0'N*O
P-N?]52'NS<H$:#OR39'FBE6@X>?)=]JQ=UET!G,1R$M--EY'J9.Z8AW1"AQ(CZ,X
P@VJ?0_UE^3VCS_LJW=?]]TKZ>Z>P-0RA^2-7I==QUSQDJ-CWP-6!VVQ!DJQ<7F8O
P[Q' U/Z3;B,4)SZX D*E+U/^MJFL^&O&4HV.DTS!.4UUCCCU%]@2.#JX6^5G\,X\
P,ZJ"8%E07T)M_[.#X7SO[/K$KDX6&=FW.F=>F,"QRB_)#\3BU\3!2PWN$FTTV8QH
P2;S9N,T[LR+O6\)%&.]%?-7]L=@I&(I@Y/<"-(#,'(GZ04*X*L@,]C4YY4I&HC:5
PDC\*MR:&C#D4B+T-<B+ZK#S+3JTDRY>/[!GWD7;?\@EHZ.I](G+3./;-0,#59K6,
P8!@9##_,[2\7^"VJ4U;S-2,<O!HX9]KU[^9%%U^NG6OT#B0_%3JF@C* 7TJMN],E
PQ9L:+A5TK-72V& +^QV'QR.(;T98AL."#WJ@@,06=NGV1P0M)VE33N>JQ;?M0;;J
P' EFPJ$OLN9"B/#\S3.P3 &^"2$%[&70+Q%0#(@QUS+2<::Z+$.,\!:C->NA1!>/
PWL"W[^";,/2N;KKR>UME*MM5B8*MOUG;*14=QUD%;61EU]:07?!\$>!OF+$RI+L8
P]U>?LM%W+D(.IH\F]-V -G*N\ZC5"X4?"YX M%*_W!5DGQBVCZWX;@V2]>DPMDE=
PH]-0XM!'B;M(MGIH<!YBT%4[^A.AHB%O.[NPX,R>OQ0.O"RUG-$>#[4B)DT)C?KZ
P\QK(#9$;3$LWW*EF.UI1M(5@]&92#\W$?38K)I2;!/?WX=V!3>:[U4D! 50?.JHP
P<?S54G'+^;&P$[U(;[ ?Q-#>:=^5SLJXM-*A)4^XJI.IC-0W]]OFMU4]M1O6/-YS
PI65\A#[6 A9HY:TP2:5;);RQ.MM9H) )>ZDSEZ<#1*](Y90S_%1#4I10E<:1SQ.[
PF W)9[PO=2GXC0Y2J$^7\%E(Y)@.5/D9K_K#X4>'RL89@]"@/MZ*L4U('RCDA%.*
P HPKN>#JUXN*,TU.^%#6:?LJJ4:](TY*+PYMFDH/J8<M<E19Q.D"]S07&P/IWH*T
P3466C)12&\Y2NSX6:^=O3>!J[E5X7HIM4;2V9 C( !C'9NA;._RX*OH1#7+,Y]X8
P+&:)M'^K_&7$K#-%*F24GV1S4Q=1CL?Q[@+:)3G1YS[=1; %;HT,>K))\40'%!@R
P@OX&P/5H4/L:_QZG^;HIB9AK9$T?+H48C6WNPI-@(#N[E$$IS'7E'^43W\=7@V]X
P8O)O/ZM'1%TRJ=R-D[Z/ H&CC1.%^C4C 0'OM]Z%6BPHT'$5@8[/TON?WHTHG\?M
P!0W"A!)I4+=N)9Q$]4BYQ+BE(N*&N@U_7?D>TR8[B') ),K+2)/2N9.O$,]_P.M-
PN$9B2I$S]69*3V;."KJME,[VC -LB7N7! .WH5"W :_C\Q6.[PBFCWI:>J1./H#B
PJL.>$)>45,AOZI)$$7#/'FM8*,]T:7.:M>GN\ZX<Q4_XXIVI8\3RUNJ4\3!"C7-J
P!3/$^Z.=KQ6Y/O(SOK!#'L C);;<K2RHA*!DJE/TD^W&_P85&9XVW_BQT5=":X^Z
P!_'W;E^:61N8AYK/=Q.UX\!1'/$NS@,O^0D2?EJI$!\I&5&N^^*!Z@6RK?6T6^/A
PIGO;.B\H\Y ,:2L!@'>38>=7$<]- )O&+M@]) P0M)PD,QW72>>O0RV.WM29].X6
P;&Q-E!/L,6Q<'#*@DSZ:"$1BWJ)&]J1>"?T$#V'-)!/.?-W$>I]=5II]2ZLCG!>/
P;TN/6D;-IS9-F($R2;'*%,C6,^Y7FVT*7GTL3S53E^Z*:(6FX5$P_"9.QEV-I\#A
PTDQ<]PW-H=2HP5E^'3.L>( ')T@_1@EU.C@RCA'JT#'<4(ENQL7T8*B8>+FKRL: 
PW^7=W;-U=SA0319A83Z/32327%\_8J+L[@2.L1]0JA8K*@BL3$UT-I).2B#%MJ-E
P]W]H=6H_603K*W -*.>-1]5,W?RU'N\W\X 3MN:TJKAJ@7;K/DWI@VG1D#KPT,O/
PI)((Z20^9Q"*AF!NU$++C]+='7W*U9)97C6O 7X8RPD35PN]N32WXZA&4WL",,G*
PX8ZJ5/N'IV%7HS M$%T1[ UN0]RU9M0GP_)"QP'+VV-5:XHJS6X?5DIZ\)0,R>GO
PBHML _E%@D;N^6F^J%1^*('.&%W?VL;/Y"6WC5P6,ZW8\-X@&7CX)9&;VL=.S2.:
PJL1O-9R?^F))]\[4BIU1'O22[R7[QZ6#4^.^Y/?J116].WFX&*.6M0%L6G9&L=_@
PV<F5(6BP'.IXXXHWF++?GP8_QPARRJQ<3WOAT O16LHMV]^PU",#9INIO@%PZ3>4
PCQEZ O%RT]E)D7P=36?C#$<)$R""'3%]_P36_'\:3 /8#OIO?\E15\- V 3[0>"H
P,X3@;/67<95&FG5WF SGU$$I**7;J)[#ET0+E0+L_<F G/N6>&W]W!\XH3+$?*_M
`endprotected128
endmodule

`endif



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : tx_lane_async_fifo.v
// Author        : qu.zhang
// Created On    : 2022-01-19 14:31
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_TX_LANE_ASYNC_FIFO__
`define __M2_TX_LANE_ASYNC_FIFO__

`resetall
`timescale 1ns/1ps

module M2_tx_lane_async_fifo #(
parameter SYNC_LEVEL= 2
) (/*autoarg*/
   // Outputs
   pcs_tx_data20_sync,
   pmd_txfifo_wr_afull,
   pcs_prbs_ber_cnt,
   pcs_prbs_ber_cnt_overflow,
   aresetn_pipe,

   // Inputs
   aclk,
   aresetn,
   raw_pcs_all_lane_fifo_soft_reset,
   raw_pcs_tx_lane_fifo_pipe_sel_rd,
   pmd_tx_clk_20,
   reset_n_tx_clk_20,
   async_bypass_tx,
   pcs_tx_data20,
   pmd_tx_data20,
   pcs_pmd_switch_manual,
   tracking_mode_enable_n,
   bit_lock_redund,
   tx_wr_threshold,
   tx_rd_threshold,
   pmd_threshold_enable,
   mac_pcs_auto_clk_gating_en,
   pmd_txfifo_wr_afull_pipe1_out,
   pcs_prbs_en_tx,
   pcs_prbs_en_all_lane,
   pcs_prbs_ber_soft_reset,

   scan_mode,
   icg_mode,
   mbist_mode
   );

input                                   aclk;
input                                   aresetn;
input                                   raw_pcs_all_lane_fifo_soft_reset;
input [1:0]                             raw_pcs_tx_lane_fifo_pipe_sel_rd;

input                                   pmd_tx_clk_20;
input                                   reset_n_tx_clk_20;

input [1:0]                             async_bypass_tx;
input [19:0]                            pcs_tx_data20;
input [19:0]                            pmd_tx_data20;
input                                   pcs_pmd_switch_manual;
input                                   tracking_mode_enable_n;
input                                   bit_lock_redund;

input [3:0]                             tx_wr_threshold;
input [3:0]                             tx_rd_threshold;
input                                   pmd_threshold_enable;
input                                   mac_pcs_auto_clk_gating_en;
input                                   pmd_txfifo_wr_afull_pipe1_out;
input                                   pcs_prbs_en_tx;
input                                   pcs_prbs_en_all_lane;
input                                   pcs_prbs_ber_soft_reset;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;

output [19:0]                           pcs_tx_data20_sync;
output                                  pmd_txfifo_wr_afull;
output [15:0]                           pcs_prbs_ber_cnt;
output                                  pcs_prbs_ber_cnt_overflow;
output                                  aresetn_pipe;


//{{{
/*autodef*/
//}}}


`protected128
P$4W FHJ]:Q1H,&ZV*1\3M/0:M:#$7@XHW%ALKY[L%+R$=$_\3^F&L'($CKLB0NJ7
PJ&>#9G;?4Q(?L7YE=$^1RUQ?@<PEN;WI37EG9[+\A)A6W$0"(?4XY?W=("/W+"PT
PQ/X[001639589Y6+,D[P&QG@&]R57M>N]@-7V/G&*I=6Z8H/23TC8"9).?)Z5CQ8
P+O.]"?.U%$]1GD".?%X^["X/KB,]#: 2C)/-%)Z;U%5:@0@"MBOU<._8J<'@/%^M
PR^Q?87BRGP-V&-F_ +2R\)")>[[:W-" G!=<G=#5(P8"(?PPW3.Y?*2U$W+\M!**
PQ=.@3!G2N OI_Z2X(E/:2R,',[.)P2XM,U!3R;JO*F.!3]Z_V>M*.(1BG65SU:Y0
P@9.T?FXKTMA\5I..%F[FCZO[5R<X;$E/K,XI*]Q>C,:?4(1Z&A<\\>&K?B3$7RE+
P&#X;]0Z'N9V2F)("@#L)K5H2#FYBV=4%4@8P<M]S 2*""G#&)I.^WK2C4?S86-$F
P#Y+I&Q/'FU*RQI@<J]<F^Z+N=)K[5KI#9>N^A^0S4D>D_GBKHS-,':!^3%W&,53,
PA7G\_I.EB1@]RL<#D="MDYEO<.4'N>IDFD,S]WU#M+H- ,"$S1C#4:UT:8M.69" 
P),3%@*?KFH- TM16B!='#58/,6IW%U2&B-)ZE#67]!/V:[*OG]UL[3-)>)/6[SE+
PJS)K"H/DJ93H(86,>$<(7$B,IM3@)NT8H5S9XU[O^?8K$:Y[:WF9&Q4$]E"Y(^Y>
P24$G&:_21Z5L?^VB#Y&6ZD:Z2XMT@4/)3=PW:/[5>5W]\NL![:]2BP%#3QJX(GV9
PLS\Z_')O@O^R,3D64JPTR>!9(<2[3K5*TA?]$#8(_9[J[58)\FE4.*[6O/C"WY]3
PWE/K'X9?O&]_Q1(_@_%&C^#OR*S[$K!P7E*AG#NL@"UIXW1_LR"AT#DJ+>W$T"GE
P3-N8S2!I,\W=_5:Z>J 9J,TM3K+AS;IDNL38B82 ARC)A[:523:+%0" Q_7*M( ^
PA,FH^?Y'7YC1%T7"NF-\KDF2' ?0@SKOA)Y>N\.T,5*[9SXOD;XLDYBH'62LEFZA
PXZW#YN+,/F(G.)J B H-201V2U^&?F 44EL+G!1'#&Z34=D5!J*FI:)&_2Y&+:!*
PSE<<%GAK(.BK+(9X9F<@(TMW'04R4 6D2\]-]!*,K>IE=$K3J#'?^/C\6O&*B(?J
P:F@%WO;'H*T,;:,(+SJ;.WZE5*>O3;^$ZJQ#;U6K4P7/*-#VO;Z7Q5M8VV]6A:DR
PKR )T506&;9G3A"(N-5 \(F<X6TO*\DQ^6MCE :<S^:\0<<LWTW1JL()*@^/V)M5
P;?D6;LRUA$"I'()PHG67'7?:HG8V4^W[%DW]WES_(MZ4S./6K'1040BSD/C "N6S
P\JN&7U_I]_6^J5V/@0",P'#(N/MB1'QV#9%_J:4>&GS_X$ABWK,4Y2"07\Z_M70?
PV%R!9./GIJ*;DEMMNE2S-XY/) >GBF=[V["[J%-!*V0QRR'2B4#'=+:,KK$<)/H1
P15,0DA=<##%[?^^XSTKHI7:V@?,C7C]=*B$1D4AVY7(Z.!4IX+27S)A 0"2 .F-Q
P6 OLA1C3R\:P/#J\ZUZHO/T6A^);:UQ4Y+LJX9YBBW5ZTZ,CZS<".[KTH=#J[-:O
P#SP, N=%NK>/CHK61P/8&@?R>S)=,,^+E+ 9@@NH)9R8GTC]OC:0HF4]H:?<-\U<
P[5_@5JX(5)PT>-5;W=L403FV,"^PLD>HBKI2^0>@?A@ 5RDKA)+B]W[HY&PTR<GJ
P0!53%E2%9&JP8>HL15'A<L^=GHZ*0?/\*:*VA/LH$= (P_[?EGL5)MI$]+J&!4RR
P:%W'.9LAI%V:+>@$T/FNIP9A=4B!5=U4'Q&#'6;3I5F16RF5OKV]B:L*4=#61N:2
P)#%_S0\1JRH_ HC9\.O1G\RAX-(30!J\UKNX(26T:Z_I4AI96#*QG&1J,H%$<:22
PN0#+^$'S%M%GZ9K156OV88#*Y=(3LT'4S]2YC,#'YR'%6)5BEQ$_P3<\L$>A2L>#
P.D[?I70:G%3PM:GKCH(CX*F/D3AVUV]HB2@X'N)WZ4D)"GH-7\K(%NC7A#2=#\%F
P>]?WN:%YK??'5S1$@4V,DU5Q!/S/X !ASCZLI RB>Z8U,V#B#DSP9QWFHF=/]8V>
PQ]/F2K/HD?\T*\:T::*GD\[#=-%&< =G3Z=[0;UX69V7-CT/]0^D1<Q+XFC2^'+M
PU@]]C8"7_,,U^106K::L$K^VZ!P&=P; G]<&TI>-VP#RD$LC )2"!DT&UY&Z-"X%
PFM*L6-FH"_07"^A73:-IHI>)A%?#P'?',9V;*S0X-,H%,33BE19C^#KT:(Z#\I%.
PABTQ)3.U1EN5YKB.K*U,60\6I$Y &))6LH?SUNBD<&3+SFV1K22H=X>7R0'X71%U
PQG75I6-BF9\G^O]!9SQ[*31(^7[X06MWI>_V8? X"K5"#8ZGYQ@Z%5H.^S6F?T0(
PFQL:D2GFZ*56/ ;;3;WS. 00^=J75\2HGST)U,F$<KMZ!-=2R#TW07(YFJ?Q5%LW
P*B9XZX56:5^;Q(;8F>YDS!?AM#>Q"$U]K3>B_L5:3\!0C$W84'[GPE=T0E6">:.>
P^3[*9I[C.C::7!*UO'IKI.[3< .Q!LM=\]?X(>'CW9KV,&6Q!?46LX-1/%85JSMC
PZ#1*(HT>6P+FRI4K\S\+[;EK-@-CDC33M,)K6#=M^S6K6C=0CQ.;2P>8'^YWT%%K
PN #)_7)Y#6A>EW/(7?4(\&!+Y8JS\_X+5(G6F5P-S;IZ#,Q\V/U[YS@+QHGMY02P
P71G5:80#"BN>?"-3=D*Q@B.MSMA5 ==.X/#AOVB:V/FY.HJ)1 :I5O\OKV"$@"]R
P;&QB1=F909<;O^ ?2U;[X>7F:=@3V(3D#R6*LUP4!E10F@WN2FLKTMSQA@H4G9L&
P'=UMX#84G<F"<@LO#"C.M0TN!/=+AG/0:/3.0-0B=<?\$%<2JUBPG0/7N%!">RWQ
PU&B,E[,WE67_I(MN:YJP)VEOXE-( AK?K-F"]RI=K*>(5PYUSHS#1BJQ/:X%]A8H
P&%'0YE1_JG#>-SU 5WWY< <;^61TU3)FWI:;1<@2U9B=4T2F;%C(VQB#?:2>?I@4
PRZL9%IP;806>N^T$XZ=S1U5?Q(79L)G!\5X!+.V IM%H7]V#+%M89C#-;DEV)^*=
P*D$@(J_!2_%TZ?,_J_3](BR=*4!CIY:^!>@+S;&QO;[!A@O,NROEQJM2<-8]S& )
PV**#[;@\'I.^SIL)(&X\$;D'PS+P[3#3&(*N9\VJH]Q\E$5=*O!VI$7B<W0S#UFR
PPU.LQC,78Q?0S@+Y8.? O)^%O<F/U#BH2\LENN>,X(%A97Y_<J!LK6K":3DB].N?
P^TUI7"/O'CZ/V%%&0(H:GSX;/#9Y2Y6>AK!8S%MQPQ5 "K!/>F#BO:M0WLXU1/C4
P[W*S[AH)BW#*WY70RX+23@H<"6D*AV[&3A"+V-X\;W7&I/A,V#6U.SC$-(^Z5W6&
P4_(Q F'& K'AG5A!&/O?G9]SU:GCG7_IHU4(-N)^)R<'=:Q\R96[$[@>=(IUW]WC
P X6E[(V;AJ\#C\!.)=6U=9*@O^Z<_GX7738GG2B *<;PY.> $$8R5?]4L":]CL]]
PJ/F2[O777""%!T$"*V1 FFA?PW72'+Q0HP#LRTL=9_C"1B0*P$Z?< J?(U.),$^/
P%XD^!"%0 "U1JCHI]?=LJQI7C/Q3\0:\P5SF,BFGN2K5WHZZ2^/7VO,@SR#?!YKA
P1V@KU4 #!0IXK-6>@9WJA6_H0I>P$=^N9.>3:RC[D*#?\\Y'13Z6]%#S5U(-CT-+
P+ >"DT_/\PO-8:+_DU \,^/#_CC7ZS_SC+5A;]KZK7/;\$H]NO<JFP3':B302!X"
PV:V6X"DBEVOG?"O0>4^B0(OO"E1;(!&LXQTG-;#+H,[@O;,LE5:M=!"[.&](^UMJ
PCK[$00]B!H0<%-+SD2PSX4&_K^T7&BW*3AK?"\QA)H[+Z2[(:['V#Z":%%8[J;>F
PL3[,&MO%AO:;8GH6!8SYA#%+UG;M-N/NX5+[MV[E"%58\KX%SOJQB6^Q; K5#@Q]
P.(47<4KZ'"F=>;BH*R)H\O9B,D[3M< 6@M6Q3:!J5+51P51@*'P16@F)1Z4\_R#(
P 'R96^"^D-Z9ZZ>E^J?MA(20WIL]LH[9$R8C[OHW=^XZBE&Y50$MS*%M_L$1ZV"8
P_.J@X-R]<N!L_I:-:%Z>_9R2E6.N:YVA%,*H8&X\V+^*?)8NU=:GD&B1C@]SS&HL
PS;OX>/Y<"M*6%P8H=C[T?XH&Q"E^RD/.01X#5LA^HP1%%-ED-"Q>\2QND^"")3XX
P0T?#=RC]ZMR5#^:FL&J<I:!MWVSRMU>MP;>0QW6(J,WZ,3*EB4Y-QCX]435W*K?_
P6CX$?>,5R.]&I NS,T%EG-;A&O0SAZ4^3LSZ>-7M*C,Y6T9$U"S96W2QQ^YO>\AA
PY]'X^>\K[B")8'IEL(RWJ$CH>*A%#0UT*%8%DY?:A\K0Z'2IF8670TPO__,9[5&0
P.J,M>71A868>@!);4%UVZIP=K"VT(!WM!F-8XZH #?Q& 2F7,UW/9YE[IR %)&1=
PC@Y?99?2JD]&I,F'I&/U''N,ETGZ=<%2'#-Z4:0*1U&WY==3#M6^!J%HPA8V-C,H
P_KRL(+NJD^E2$=8-<6E"#'4H(_ *8MY%)OG)_4T=$LSMM"TLAW>$2G@PU"$DB'%0
PZW_/][PC_5O "3X(>UAHKKD):Z!UNZ6,-L>5R257[,HEA69(-% 5449^E&!RJ45X
PYP;SC:U;'W<4?"4YRKLIECNN$]WQUH" 4)TV:#FR!!^3#61R:=D/:AES\0M?<*)S
P=M?)QBN/!YVBV6"8[G?A/\5]?F(MCU@+**_>.# N\!V<EJ9K@>>%/[*59[QPQU9U
P=;5F:93BUHKI^1]1>*F/!&W3G"-2<"TB\<1RS*U<O(U"A&1&@C3KL*B'ML* B>-G
P_J)]3ITL"IR@;:I()(GM'/0QOGR HT!#50DDS+EXU\>(E("$29NEF&A</]:W#(*+
P2ABMUUNBJF2<R2[A-"#GO"7B;NPX</:&HR>,''\*!V1M(Z(+@^]B?IP3X(U=*06(
P&N41PT.MW V@MVR"C<UPH'YSL5*!+[';HBR58&.\BMJ'N7;]@Q'M;/5A ^NL=JA'
PA$0,AXR=-YS^]K:49ZQ$<:$@[3*XJK+! %3.M#DSJHO<;\2_P&:])+4>2X_<0\ !
P/*:8!D%#"H0&\\I5D%\'MEZLHTW?NX2H#+4>[G>%]3/[?U]E5=^:\\IZ IKK0MEA
P;_?=&9='LJV50D"B[%5^%,.I?E+C"^? LL5]Q3E$RXV;Z9I^ZP-!OF"BCZ-"7AG4
P^Y&:PL =]!K 3]N'=U6(AO\,P@?+F5CEX!#Q.S7ABF:[Z]_KO:CK#N/(2<*WOT5>
PO#&=8) G?E4H6[\N,AU.;WP44)NG(B3L37')"F2LA62USGN>M5Z,@W,B4,-P)Z"%
P0I"3_8KM9XH^?M/]#G;EIX9+:7C)O5R&/&)H@N-FNR!Z^\VJ7AK+T.GP2DQ3DS8.
PP]YM7-"AF1Z<-=3W>:)4^9(OAA&)$5 7UI@W[)A^1V]+2&@R"@1V6+(/56B1VI"2
PL,F+-2$!"_LA%2.UK!;F9JT7(;%=" [8"E7:3@0+[AE3A7#IDM9$@QT!@#>6V ;X
PONV>HCPM0PT-@,3@Z-!563,6+3MSO@>IGG=Z/1PGG39O,1H50JJ;IU7\[ ?>@;3#
PF6\88+!;+VR2UMN?H6N^E1GUB+L:"+,HM<#R[#$^@-7W:O$PN7S\12\P'$?]?)W)
PJTH87H9HOE"OLOWL&1P+A^?"$C/M(5 "::JI*(MPE]2.S,!XCC_"#95TH6M]X,O6
P%"M\ARO'^2@VCQTDX^:/+(=7326XT%##?J.M<[G2W#@'P'1XE6LW+HRLE>[<[4(U
P38),>16G+(H!%(H;&'!P#_9#-!KGZWZKF'1-I'RX0^[/0L/""UM"6J!=#NC[#\"A
P'85OG'=E;T]('NL6>-QDOCV5!%969@0TH$"):,@F #Q[$-6T2254B<[,?D"L\&#1
PAK>:<(+,[Z-FS+-&,:Z*AAA:C;J6,#$)-A-O/!(VT2D1,Y;G0WC0ZU?NWR\\.'4M
P78=?K*@YBDW\QX_3%[*8O)C4ZJN*I_^')=U@?O(6#^M;%6A9C1?QF^R46<QL;()9
P<CNZ:UIDX 3)EL^MD. =2X*!M&'CIKD'U?=72FONX"[TJ1K2DY!#<BEI,6)$1K;H
PDD'4P)MO+(RA1R'P85"C?*U46+(G6\ U.9/RX#D/5.NC(A=H]N*+J\CQ@8TI&M;X
P9#<*LTFYNXQ@D?U\7O$&T(?>52<(&R:IN+7;I124S0Y-EW3%,QJ*JP_5;--XZ\6J
PB$7;"OP+F86OU&$5Y\LW!'R"')YQ5V9?NS^6FRZ%MJ*R[I3U=&1/,W&U5Z\[ +#[
PAFF?(.'/JRFE= B-+OD34^2CF2:0M)T[6WG-;<F]4_N'%Y%:BL2XO*#Y.SP_\=$V
P.&RD18(735&\!1 B*.>M@8WD$=]<WI>ZJ-2MSKCY9D\E'ML9D4_DYH!2W \!8X]A
P'>&.9#=N5]AM*B[[8*V.:5'2*+Q.E1:L2 ,VJ6HC&=+KHTC2\N&!!^J;&4@P-FX+
P$56Q$L[AP0-6^6V<28_SED()WC$IY?X1*0@P:GWTA=79<2>+')Q:R7>LO@F%;Z6+
P3N'04E!IT.&CB@::V(^@.T>7'(AY2O;!7R;Q$S'@6?\^6"@##'/,.CPDBQ<-?HB*
P@$B,DP;72:"NR^[1YVKTZPH:?[@Q9R-69,>$?,;Y#HJM_[?7J>J^?4Z_!H12KC[M
PE'E@SQZ#;TZV?6CP8UO6<%.3W0C4.I,$W)Z:M?NL-XD?EGGF= 3>^>13_&*NL9DL
PNC2@A)N]KP3D]&;77,P)FN-^#H@46=>;+$RGP]%*O7L*FM*!)V FI89%2T%NZI<W
PJR$#/2/KI0!)?Q%"OQ"B2W!NF\=:2Z6Y6P9#5HGUB37K ZY9S-9^R+R>9A)OE>J2
P;[/>_;A(>LY11$FF<OI#%QEJ!#22I$3=>!S3CL-1)#B,2X[;WRNU&22@')O@[[A=
PJ&D"V;[A)DD38: 6@5 3A.@^VG'4Z0@<'$]!"* R>,)%*>.AZP@^3;A1N.&:Q4-%
PS<>]C-R%EAE\;'7.5Z&RTRH@^H9KI&2NB!^9WS(W31)JI6(=/4+Y5(!JNQ_#,)*#
P6NJ75&M*%)7_JN2L.@.>!&6S:=N))^^1GK_XP6I2(MJY,>]/QN+>B(2C*P=2ID&Q
P(C[1?^/;#<T.$TGP%12JJ[MQ82KALD/1B]59G-:[$W(#"-$?5Z&%UO4J0NQYUI=U
P\U SGS(UA9)5^C'^%@L\/IW$(62;,(3TI'8+5MSK3BX\P#X*_PQ0HX@(Q6AK&=!W
P82V^%?B5Q^=Q+83=L0IPQ9+<S<6$6?K<?MGY+SSWYF9MB>NUVML7P'QF14_55A_7
PO%[M1!^OLW*'5UI 25S/ L5G-IZ") CM(DH*43^N=I>>10]^@Q:0_+?TCGHG2+K"
PI.6)%FP&IGWA<2C3ZZ*+6_O^G@YV,E[BL1TJ<\!IOW"!R';'W7:GQ?TO=<[P5 5^
PF[IX:NP;C<3:?4L,Z.[Z%-DDM.I]7(WR>.T/N0CZR4"33R)4@2+^2CMB7=VK)8'Q
P1V#WD!8V3!>>/?Z@CG0M(<V$4&O;8Z E/SBEK[<"U('= X'5GZT,\9[&!]>%<,)P
P>D&EQA-EOK.E3+!74MFB8$[G9;0APCO*I8'VOBI8D5]WD<>OTX>?@#-%.[ .^$T+
PZB7FPQ%^H".O*-5"S,1N^\]2WTX!]J7-]D7F93^G9DZZ>912HR!V3]#SIE$&4E)P
P0D%0'%][3\$&[5<=9H@Q3<I2XPV:,@VV%>!B;N^5&NI##WJ,+\GKH7.77$,/[>5Y
PD4<$S.7![//R'MB?:8?W4LX? =G>U^&!;M2O5]VA;Z]<:&QY$:OV[14CQN%),1TV
P-8D>)V(D1EJ7[E\Q!<)![/R/!>5(() (3O++B4&H1-D]P.)IC1P)E3F0EAT[<F3[
P;71AI'J 3:EJ2B#*#$K>@:#AJ[2K:MJBB3ES8#/%^6=(K(_/B=,4^O1YVOM>&O'E
PA\X2XXI!#[1<,$ @E2OZ#8.!ZC-?)!%>CC(7(-Y^S!MX?W'6@[U/P0J(AELTN@"#
PH=6%$V">%MAF7&L7=SK,]\LO- ^L(01,U0L*5\$HY]/>R/95 QGC"Q'9Q(GTJ.'4
PK_G5^6D_5KH^J/AU7E"J_'29HPUEI+,8E7:2EB"N_[52CK_Q/Z%@XUI (0P71FE9
P_O8K7C.I^K91-U2)<#5D>"!TD++(NF%C^TGY^5!19#$!IF; *D-C_D+X;8369N9+
P673H4=H+>9H4L8L>!6.,=\EFSS<=*KC5[GHV6-I!<2PZ1EX,K)3R3X1=_>RPX%:*
P(DVEY-+@,UP2_U9SYW27^5,/!?@5N ZI34<MBZ(UCKG/0,ZM$7B,>KR/VS0&R^Q%
P-U68)K>+,XK#M1@>+XV B#B^)2'/H[6@P$^@'MY\X].T3V<HD*OS2%'^4D@-!2' 
P:V*_TD;+S]I".,_USDQ/6^\<??-V7FMO]B;/TLO)D#I?P6]TMCQL*_6A1/*@6J/8
P\HQ+BQ1+PHYVW<'U,5Z8V&(=0[?&Y<80PBEC-I1<1)Y!(^F@U@7C^T8T\8;%PX>B
P))NI-L=>^DKO)PYRVIG&NS?>B<OS(#]+$4%)"*0JQ_K)/.!MD;P/9$(AWQ"D0NAC
PX>C^%BAA!>FZ/F)(%PGA-1OAIYM3O:]-[@[H  ,7 *&234<D!B% 4+_1H)]GXG$;
PT$L>Q>(DY0IL (PG[Q #XJ%<2L8Q^;O,>SDO@;B#^=8@'];XJCN(<<\.PE.9D%^T
P@VDE!LP;.W':(G%F2%]Y]*,T'\FHV(($F(X7LGSBE5HVUVE)?K6YO^2:,8+XU:&8
P!USQ;,4/U3+3<*%H\1P:U\-M^C8FC8TU0R<3!'WQPH1R)"W0_\4T;1KM+*K,@@DE
P_7M^2"7>\!418'GZ(%=OR=N&%H\;4" LH74&=#^&U=S+7&'U+$G6_#R% %G2X]T0
PR@"1 Y<-.JIILRK?[<0".+\>HB251KBN"%>)^'P-TINW^#.P9YZV7EK$-:&JY5.L
P%K(H'B+90='*$/%V1#XV"WC7FB/(&S$*=$)QAC.1,) 4E/B4H.;$_WKGOO-+"I#I
PA-DR6WSB4^VWHG*EH6W:@$-;PZ<L';B^VZ^R3<-"[E+?O!<%/VABI;EY MQQIX3]
P+5=FPOE];S:B6'\H^%$C'4A$ZS6(I,ZN2EIV;O0R99)@5!P/D.FW^@1[-C*(5OG!
P!_WP!#>*@(>4?R#\1N8T$;4&4CHL4ID?-EGEVQO/-OQG/:+Y/M53:-+ZLT$WP:WM
P!M]F%.C%_B"+R[\2^.) >?#-+,ZI-<P<GUIZ154@$HM70RVE)+>)Q_[N"=\_7TVW
PRNL*@ D79OUG0U\CGS @>TH*/IUX3!I"@U@1^%%%&N2*V;ZQM<?;ODJD;OF0OLB&
PI\VN\.-0*$(LXY$H3OQN[T)/]TY;U[B:[6D<FA,)BEWR7KHXZ"!_N_N4]XE0MM30
PZ"5IJ>X/@L'>4#-486@2V>W:];=B%6E-9%R12!W+QDI0PSP7B2LD\."*@X0T\P=-
P<6BD@M#%L!JJ(;:225W6#JY'^R!7V:F3M(M>%XM^+;20F4YX#+$#02 !52@+((_N
PTB,[KDZ;;!1+M\AM3+@K2/F1/J+?KBQ^'N,;WC)I3/.UCO4Y#5'SE-VJ6H0E'&X9
PEZ<5<_#<F@_=UM C;!G@.54*;EG/-G!BD*DR0>>Y#$RI'62-I8$)V#@!.%G.$&*'
PV>\BN7D-G?=/2VQDGX>YYN(&W50M\(05V822=/6[N@/<UE-_P?!O?8X).T."')YN
PW%P:9G$NZCS!YBZ2]PNO.WB>1^X7_[)=[T+AJZ\B)^UK31LJ,E$#6CD*D:3R.M!(
P=213__:Q?Q0X5W"LW<[5L"545[%["X]E3N>O5O\^Z6<:OO!^LVE,07 PK_K,,P3/
P/VHOH3^.<#SG&:W_4I\SS7ELI%UUSA]6T<$F/5H94@^VV);,W*6COOZ6F KO8D@(
P%?^1(3/(^+W52Z:1<&SW\98=3GA3=YX)?\1:G _FE$CDLR%IDO6%*"%JO N:YXI$
P',4!28HKQH#*V$GT@[ CXWP5F_,U>XK<1=)DGGW)\BB!-WATW9"Z<Q*T$'BM89F9
PF8L1+_?P6HZ0J1]1,J>?B.AZ@17NPL^+'=&MUO6.AZI6(^W-_M1B.&5LX06BL%PH
P8],IT:O6\]OW^MMD?#&AP^ME#&<7^]/+%2M!XKV%P%I7O+6, %IYNNP7H>(--;AO
P4#HXXG)D3+S: Y@@N(,,OW&TRV#9J&E=N(3=B$&K/S1S[;K>FJ;J09B"6L* ZX>+
P2(5V[#J$%O*_$T6/CDB&9!(CE>6#C3]OJY,+NT+&1K769\^''K>GX*J.9,/)]R#/
P .;H(T=Z8?/VT2A8^C".[[2?Z_"LE:C@U5<G78&.CMSB187;%;KC^S-:T.N PE24
PV+5P+KNR"_780/'MO+0S#%4:,S"#ZH-Y^W@GK& AJ)F?37I"(-X-7B&R;VPY:%<J
PCEDD-*(?76R<@%="J5RT3<B_J<+QY,D 1Y;\"TGHVG/#Z"#>H3 //ZZDN$);O(T'
P,BO,"?C9EEIRP%#[[6?__^;_(5!1'.K]FSI(9B9VAD:BNN=#<:?M%?@"F(M$!II!
P-^8VS7-B8U8!PFR>RH-J2+:3[ ,BR[T\I3KIL=6)2=-;Y&)=2P'+MV_5%$M%[:TY
PM6'BV@.;B)],O5.1>9"7K^ SFDP2O:5[DH-H6::CG*1X)8K-(QRG<5AQ5<!S5*R,
PR48]129[V7KK!S-/*;%G+,/17L/<#NU4?^SR>:('C<8&_UYZ$8_>-IB8OC[")I>;
PC3(6E&=G9",WC[T(DVP;_I)HPQ+DM/Y^;>1&=)KKL>3WH4VG<+7H)&E&>N$4:M?3
P=TV'LO1L]E:'HZ!,[97#[Y"NO^LZ? >R\M89&K1I<D0+K/D^7ZRA4=R+<E_0'6-X
P[TL7T(F_0\&LFB/Z_EP4CX2G24%>&7#_UX#EI[$O(C#)\&_?C+"Q1NOD\UQF9Y'Y
P6L<)")X*F>)O8'HCX*/MN(7A7?BA=H9EABDVQ-]?NA3#Y:21@>"?5530V-I2*&CC
P.&=23W8FE7 D>9UEG%HB[\9L'1-;ZO'Z$Y$YK'*+#(6?)T_FZPA:.YW5R,ODS\P1
PSL?)XYX;1L=9K&<H3T0$, Q^D]!,S7P H9G/#T[KJ"ADL"4OT> 8P6N^UD$^-0X1
P9[<R9R0FXI&3X47,%\#BV*R*6\M8HH&UA^I);'!M=5!>(92M-@AL<\78X];C)KH1
PHN!)3^_ZZ$#PZB11>2!O4%^?+0/VHVQZ,%*!!9M>\19=7S&#%(]KB^=/3MX#J8DO
PG7T@=.%R#>*-#@22$X1?D>0T17YT-0G>\4'.)P3 ,B*3')%"#1WE(@M'>!A.$Y57
P5H3/2F([N+!8M6PG06)SK1[<B8!]S[GK4]O.T5S<.&F^/DWM/&S[0QQX1&\^,/WF
P:G"^V>B]11]LFTQM3#&H]_N\IV5_\'HXX;X*9';\Z8_C2V-R 83ZD JNJ]?9NPK.
PMWYD2P]0ZILY[SCE73W&60W;' @2B>F!TF8=3%G<^")!ZL>YL[VK-FM.YXZFZ-AO
PZ1 ;'+XDECEO3QQRYZ<0#!TA^)TZ!FWH@&PP/L(D3LDG$"TR6]UOFOT:S4'2R*1<
P=9E]OV@G6'\3*F)_)TB%=PX#6B@5#]?'?T /3>L_']-?X#7N%GE6>R9HA)P\GX"E
P;(]'F4I7)#\@#W5ATZ;5?D&1AY2]X;H1+/[JI/@XDF$GMF_^\M65)%2O6.PSPL] 
P'5\_:/B?BF/JB$J61>EI2SK1_MQ)R$SV=O7OB1C3$+\AW6P!KZRL$<:3HJF&RL4,
P*D7NN+M1!"F_@J6&@JB/7IN>KEVF<E8H2DK6D?P[.%K7P?[LE@ECAC!.D\W!O<K[
P-G=]:R&>U<3W;?^3K8HM<4$E07IBW9(QJ%KJ9MMV\X^)6$[7PI1\[K6DI'ZAC@M?
P*3JKU..5Y=-F:>2\[Y+F>V<*2B@6-E7KZIIBUA[A?I$[\Z2QD#R8 G*YA@""VREI
PF2#G>J'_$ZY8WA;]T3!SURF0M6E*$DTFKH!K?.KY"T_U- ?,@?#OG4&][X Y,D7U
PC<<\22<!^0+[8/WI?R""(=#!?E?L!8V+ETOVZA\=>@/_V/PZ)F)-!L"^JP*AT6BV
P<O%."VD:"9[D9$DGH367QCZ9<VE;[2;9Q^#B2@B(_>,=8,26.1ZS(H<Q0A&T8,<2
P"<W":ED2K!VQ4'U:*%XYRF7VG^;MH%0449X@3"TN%R:[V6W59G*MU13X->D8]J6N
P*>F?T:H1$1:D-7F)X\$#1U=[27Q$)@O3C<RX7\!2OC=5+R&)=D1M;F'6R!EK#XLS
PZ0T;R2.YMSX0J(M/[<KO4"_KG]PQ21P-6Z"$3FS(5D<V*&3_%"A4L3]S!$Q@W6V[
P!>2)))+5F!)^(N_IVC7A@_+[P%R-YD*QE[FZJ'9Z+9F@&8(EH25)W!Z?.8(?)94O
PPH6Q4;9_>*%4@%=T?.-)9\#&_!:9D1*'/QXP+PT!B4-*8H^+0OP#M<60D0RI3)5)
P#,R5G:C%VS J2I55,ZQ4N$)H*%]\EK622UQ\Y^*7U<H-;$:X@$\SO-SMW[8J10XM
PKQ,Q;#$=18-[\U8>AUL$"/W,PR1.%/=_CQ@6D6YC/I5MU]4.Q1%/IKI&5V0FUL96
PN*T)2(W>X-0HE<<NM SO<3&W5GG7RN$W??XZMK/CG0;96,IWW@;!;U1_DP.CR+88
P0=CH9)WC2L)D =_A+8S#<1_5R1CHT6;:7S3Z2OE]200<L[5.X51GP_0Q(R9(>U6&
P]8#<(K.Y)TW]F_'$QU3PAS2.??8ONRJY-48=)#+A3)X^*$,'TH0+S?E2ZPP.C-I*
P;96KH54MK*D9FC7&]54@,+<-2I?BJ?]XN%-04N*J@>.W=\ZUNLE3:'($)81GIL'A
P?E#$%?&E_FK1??D:A@G]Z>R"\Z;F)*U#QPYA9GW+T%"A?-U]E>;TH.!OC?]*/_2.
P*N07SE*FMOE&IZR8?VB5J)V4:OSDH 29Z,:HY[F^L:Z]+6N4>.U!Z=,!3",$7_3%
PB8^&01EYW"W^C7:.-8BTZS"F2V2@"A0U_1F?UQ'/G\A $M%S/=X+$E9O\D#K("--
PVBB%%9*F[GX4!!@^2%-FFE;+LK8;?3?G]^;NJE7R6>ZCSQ;-*RALT&0Q-:9-9U![
P/G2R?$)$5'&:! !J_27I*G1EV4\O0P605^ZT28&+?=(*%(.. Y(!1A,P"C,G!>:%
P*(%ERU7FTNUP5$340Y ^*1"^B(5WI*]+LHZ@.?07A&&%1^4$4]+FD%YVG6YNG!.P
PH07;@3XNDI3;P!%'<NY."%+[@>,%B,*2!\:Y O"HC216RB^_YVF387[B?87U_K6M
PK?'[&06$K6YF>P!-)&FDG.)%^^/$NL*NR=C>_:UMVXRYPG0KQ-FB@T;."7R!?T!4
P2WLA+\M/[FQ?')!ZFP"MLE.,GZYWI=/:,_2Q$DONL?1SO<5G"5E1H$[%87%UV/AQ
PETZZ!7!LN"*CR:L%7DQSO^P'660:6:?5+WG:M!K?$Z<(EP^W\AO3 <  Y9Z ']K<
P@T6Y54>)RZ7@_S\-%M#-",_.9L-*IC0##R&:MU,4.[_NM81FM[#BJ;J.!L]B#$]2
PB*D0U:XQVF5)"EMZ^*6YTBV8G5HB<)QB*M.2'"%M!%;Y-D.F+AUR*%)TOS?MB(W4
PL'2LD@K<\7S<$UQ)2J]4*E:YDS=B,>G1R3F=JFR3E$I&%SUY3S.<HF79Y*%.K8NT
P3U1RBOX$&Y;-KGDTV!6M&_A0T_\5,P= *)?KP-M,[2IQT3E:^L]0+!AWKH#TBI))
P<8J^W4X^X(1_HA8-'X7J$T\HK,A8%9S(N=P&7P$4.S\JJ9Q&3XY=PV:.0@@42!$0
P76T#43^K;X91H7/V^!M!T8)\MCA- 35SJ/ES8?WQV8"Y2H\8.XU8 <&"T^/SV#6X
P)E8#=CFQNAJ *M^Z786K,*SX^W'8GNI85*)P=-,9]I KX$=JK5UA?-]_:ROTF53-
P;WE5!P<OU2%ZT?)[#K<Q@2947L1"S1E <5_4ZV4!1@AG/+F^ 2C,"DJNJG9EA1(:
PJ;!*1BO3F')2\9J-LF_ZH 4%G\\UHW?A:OGJD !);J!X'N.V1&V_J0EE:#&@9YM9
P*[#:/=2JO-A;OX[L^E*?!:/Y/P=;Y.B2=ZT0"PIE\V7[^8=/F,WM5R(9M[S]Z[/G
P\-?A-T1,./G7K%F1*=GB823I3+D6\+U*%8^D=U1]F3#QJ>W@,A5QGPL%!>?+BAQF
P:8MW'E%+\-I-@)UJTX>$@N<U/>R'\6NJ "CTN#=X]@FA0")H5-(A1<F@C[Y_+03]
P;(:]*&[$!KJML5855VDO]DV^7/Q)A^!.9,VP"L'S/G<A*3N,R"HQ1R;AA^$5J8MP
PBS[LY^R7V:WVT"4:D!A/&Q+ S?.1G:X^'2)%0P+9SB;Z:%,CPV\UZP0L#7_82.XT
P&/8G\_/89RZY(K;706ECW<:C:91> 8IJ']#]'GEB>Z:RJ:X6RV<TWUGJ[&5N$[02
P!Y-X(&L_:<NTT2M9&@M!5FO-G@*FN]8DNC[Q%:2JKW\&B;VB#"2@]:[!J!-HW12"
PD#!HCV;+-4PLTDZ>4K]:0-M5#:J$PSDI@DGK<0;,:\*$J&6!K@?6B)9Q,P)U)36O
P/ F5^L1H6J$#\+#6C.$\0M83WO"@H<'P?^'K.>V%E?X&LMAR'21E)?PJ)Z><Q#[*
P4*1^XVXBA,7G$/ZGOOW4&;5R6E5!!4*^&8OJ5;?!J;^4^N-J6H29G5D/:BEUSTDR
P.(0I Y(0LE_TF^J,00PW_XEENF2;83?D @B]P<\$.L93@#63E=5QVD3)A@.5;_R6
PV[__,I'V.>O6()-MYHPEC_;P-(<$FE"V5=B#?O><&X41[%J'"KI(%DIS&TQ*LW!(
P^J(B]'<*]U-[/I7F/Q69%Y"+-;L&YC!G'A$2#<=LLMJZ5:OS9RCM,ZADR01M/"%X
P,R68U.]+H6B#X,4XI.XE,F@E:>9/7S:KY&CC8C #X[HU7;J)=_- )3042]Z2SNQ@
PD5W;C<+ 5OWE.#*,O2?%RX-S=V+#@QK!@)Q6E>-,@A#?J['6DLJS(<E6PXQWGCDY
P\P0:MT]J"Y/! [52T7*;4TJ$!*9X<4<]RX<E1=C_^0?-OPG:'[GK]C^YY40_ZWYV
P6Q&[;;Q!,/E&1CGN,2]I D:KIVCJG)27T,HNQ"A4R, $$J!OB/[<*@^CJ1[X$1P(
P4L>=FLIO\E^;6F0"6Z6*VH2T ;N&IUF;C"O $&T:F2R#C^P/M_6A<4Z7<QZZN/F9
P@:>5.+?;:/,8) ,J>/T]ICN2Z);)@H:479AR3/<"1R=_X^3B8!(A_73@G0GF'D%B
PV:;V_3-6F:,]+>"H)<G<8.(TNXZV<@4G!E#]EK5>-GY]5\VTWD2FM0;>S%G7\VR.
P V(')&B)3TD/YZ3H5'JH@83L:MRH/@8T(W<!<7/+^];M]==7.BXZ_QK>C1N:+!@5
PY4;=@4(&BFP*A7J1[5(WU^]1:%HT;YH^Y$1>$&TND$2#^6.DX8N<@5?HIQ[5K6RI
PV&/?1SNDJ-5',* 2@E<.+'T;.T5>!0%1%C*24\\$6UL&D+/@]/I!N6!U,@.< %>S
P)<B9W[*\2E45>=/](V@T]%33$\J;,Q3*+&#EK:L54X^_/FCU,.-HBM.\H^3<.P_/
P,;@'PU0Z5J3:^G,B[-FF=D!_0,=D,RGS;512AE]/9DZ@ZBR5\')'FT/F.7>^D*<E
P1;"',-AO-:CJ)M&4P0,-TK!P*W!G^YXQF/6XQ6E9K[8X($KRUXG3[@M'#.1A1W8V
P;B,2!$%8E%P=<)6H?S8_O?8=KUHVIKN%R\IOFS34<GPRUEVC)-7-8*@&8]U2TM<@
P,"J-_:AA@+TRK69O(D[!S! 2HYZ66CZU2Q%ZGY\HW<694K4J!!<?Y'XB&#+R5[8(
P+D#F8WW-*"'4A?-EI4&8]2R[CN7GY<LOL>&P(895_6(2^! @\O)GXA'76L!M.KM;
PA^%%M5K+$VZ4B9")%KQ SN7*8MY&NYW<=^U3<S4?)D/#+GL;5S7_ZF7O??;?SY5%
PQ1Q" R]]$WD?C]P>75*6?0X12H[(@P9"$^9FBO&TB>:K 6N4[D' ]$Z_7GY-OY#%
P)O/C 57SEK:^95$< U<,5;7<I @C/#9 &5$G5K0@Y5\F5\-P%%\NIWJD+^/D9Z$U
P[D*M0=)/3V@61DB$"H<!!_MX$]"I,7PY;U\'NT)<!M8M5=;O)>O\B"9IE--V.U-5
PH4QQ4!(J)Z;+0]'6I"_*B]O,M*JSUAQ? _[+I)CV^JOBN/VYY<I=D.WYW*C!(\XQ
P2P'B86OV.@N*X.8A@YHJ ,0UZ4:$/36./USXLF& ,,*.'U$;C),IW_:7WLN76E.$
PU_PK[48U(TR+4^__NI; PJW!:(>,NQ:^_[-YB9A,J[A&JD=_5*BDZ@B8^) ;17^$
P9GG1\V0NOGK^R=: , #,$U0E \Q)A<C;28&/HRVWZM@"RLT8,D0=O/7L1D>/B$Y2
P@S)KW\SX:J<9=:,T&6D\PL9J:9$-GQM&)>@-4)KJ-XC"XD6^7:QW,:QT*+RBASRA
PJIW:A9^@S>+7G.HFSBM"<%E%C&JRU?O@:]O3<FF:3AN@5J_Z:<52BK7&E+K<>SJ$
PQMJF&1@B3QDVA\Q-WYZJ\,&Z8"CSQ_<\ 1\WE2A%^J/!VBVY<)9DID?"#M9%9CU+
`endprotected128
endmodule

`endif



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : pipe.v
// Author        : qu.zhang
// Created On    : 2022-03-08 21:15
// Last Modified : 
// -----------------------------------------------------------------
// Description:

`resetall
`timescale 1ns/1ps

module M2_pipe(/*autoarg*/
   // Inputs
   clk, rst_n, data_in, data_out
   );

input                                   clk;
input                                   rst_n;

input        [19:0]                     data_in;
output       [19:0]                     data_out;

//{{{
/*autodef*/
//}}}

`protected128
P2Q%DU<GZ<8:Z<P!'&SN-:6] /_;;)M*-E*KN7!%9U7!JS0'-=?QH^4TKEA'1'!/\
PLWS%$4_V>$6N&&6[?3=\W*9P$ZC[9S[\0LEOAJ$22LA7(TN@!V['WK7!T.[TC TO
P@.MO,/(WM7]^NQZ*UJ?4A<B[)/4!W2Z7T5U'8+CHEY6@!.:-S2PP_EG;+]0=QH8R
P7PC-T2\=+$#,8A/V-[8 *2=>+SEQV]2P$&%S& @I<;H0TG^!QUCJBKE99 #HN!^T
P<3$YZ\DMF\1X:P]&0BF4>L;F($ZT!)#T EA#&<K<MJP+>9ZUDC_?#^TCJ]WC-I^P
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : redund_shift_bus.v
// Author        : qu.zhang
// Created On    : 2021-12-13 16:20
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
// physical channel: CH_NUM
// redundant channel: REDUND_CH_NUM=2
// currently: only support 2bit repair.
`resetall
`timescale 1ns/1ps

module M2_mux3_bus
 #(
  parameter WIDTH = 20                 // system bus width config: 64/128/256
 )
 (
  input  [WIDTH-1:0]                     I0,
  input  [WIDTH-1:0]                     I1,
  input  [WIDTH-1:0]                     I2,
  output [WIDTH-1:0]                     Z,

  input                                  S0,
  input                                  S1 

  ) ;



`protected128
PYN9\'FVGM'8B>3)0-X1R>=7==X,8BMS(#O-F5\#>YQ-SGI*#J1'+:8VR?+<IFLX;
P-*]H9/;46_-?X&P>XJA']+ONEC%<0'7H3+#7\SJH9T6/P-S"(Z)[?UF=R[L(V=#Q
PHA0_W4B=D[9!A$>AY@W$!NN8XIK1Y=Q3QL8(JF.;M.CSOR=GXJW>@RD(MG',FAMV
P)S?E]<O&+I;97] N)OPFCD0>"36!0>N&]:%<1/,Q(I/H3.@SV=5]!7IR<D7ATM2:
PK]=7/37%P"YN*H4((JQL\*'X3J=9,[GY \ "<66GL7I-AO//H7+];($0\V;K7Y8"
P^]0I[ZV*'F]GK3OH#/F3YZ0U?^X1!?M7LH_(Z)YA8]J0"GO5DXF$[4IJB"^+]L_I
PL7VI-8PA\ZSZZ]W_ UV:?[6(-())F7?C;)S7U_2W0A:+D.\O+L_=5,L@%R<30%CD
P?!Q'LLL'C5(@8?O&PR\QI?JG(5N/7>7U$[5D13?FLY#)L:.PO\624#C]#=A$CKS[
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : redund_shift_bus.v
// Author        : qu.zhang
// Created On    : 2021-12-13 16:20
// Last Modified : 
// -----------------------------------------------------------------
// Description:
//
// physical channel: CH_NUM
// redundant channel: REDUND_CH_NUM=2
// currently: only support 2bit repair.
`resetall
`timescale 1ns/1ps

module M2_redund_shift_bus
 #(
  parameter WIDTH  = 20,                 // system bus width config: 64/128/256
  parameter CH_NUM = 17                  // data lane widht + 1bit redundant.
 )
 (
  input  [CH_NUM*WIDTH-1:0]     data_input,
  output [CH_NUM*WIDTH-1:0]     data_input_repair,

  input  [CH_NUM-1:0]                    repair_mux_sel0,
  input  [CH_NUM-1:0]                    repair_mux_sel1

  //  system related
  // input                              reset_n
  ) ;



`protected128
P,MSNC9,2EK,7".T@__K8X9-]Z'23I$5.S"ED1.<?[)YW4^GI(G-I^K3"KB\O7ME&
P4*/H1< 4IZ!"Y#V\THG#\I2)]4;.5%U(D\J(K!01'<V^6 %JL,8'8:)%CD5"_*P1
P(!VL_Y'_PUV6AT]X46L^I-1[/^*EZ4^LJ;?I8?7EB,6"/M-.XLSDCK#3K-BN]Y&_
PF<R#2E,L)Z63B<+/[DI+II_%A(RB>M^/W_LF.))WM\U78$#NZZ.%B(P)^[2T1"[ 
P8'&[+*JGKLF5<G?76JI_VA:#'C)%"U"9)[\\:!"J/!X1REB!2!]DV[Q)Q#>LX;)C
P-I/W*#I=2[]/Z"S6I0E,FQ68LN(N*J!L SW>=4Z>Z"O9\63FAIWB9S-FFC-[&[4=
P#1$FK)<DFA_%_;*16 BCY_9-!@:NJ;QH!T8^[C('W*<&%IX"O>D-K/A]$!_;P?>+
PLP(%M1IEENT8%\5.(QT9<+THLG0TFXZ_IE"CH!BDD "BD1 PH=1XMOU^"!&U.*Y=
PS1T:-.:WO([W#S.M^S42&_Z^0T1":B9L6[X[%5SM-9O#SX!Z-0'_)1\H[3Z$(/7J
PHI.3%&[Y65WI4B_J92ILY%'I<=._J];L!T>+-*>M3;THER660+(:2EMOX*7!%]>:
PZIB+:\MS]?/U>8HD+#E>B9=7/-@LN>M8_[-/*QOMRH3_"3*+2R#4XJS%$ AM6_W-
P_L^)6W_Y\\1D03CW<$_J,G.:K@0@KQI%*FWY0FM2(,%;0=4]B"GT9/<3/849)B7.
PM(L-Z^)V'E]P,4P848E*"HPK.E9O%72I(&)IB+?A2+7PKNPS@)64*-L!60 7R@6"
PZB1;F'PQ1<JHT!P[R@674)ID9KY+CTL#YK(>P@KFX@]Y(I=X:&@:%FBT'JBA$' R
PQE.IL[I(Q(F M\G-'QG))RR8NF9*3C[D>CF0HI&F<%8'V,E(F--:OZ*7__7Q(J38
P%G9!2Z+B0 &=NLS#PO(FW*DIJ?7>LLO Y3/J+?9HY)R"/V>@AA?';.Q^HB=R P[E
PA+ ?1&S6D9+ 8-H9GFA-)& YC&[NN*<"=74/W6N'2?V?IG_W*D*UJUYZL'T[XC!K
P7C]*:&0.VAK#%W;_505HML65RP=YZZ&#OTJ-0\ T*'DG#18TW*4FG3]Y6M09I/NI
PW@2I=,/Z2SHC-1LZD#R]N]E^$) P\<B*9???$V%V) SG'7=!/XC)1*:TQ&KCQ%B@
P^OH9!^N1EW,?%LVM]5:B8JH\TC?5DMO8*M:=5$66V=N-RD247,)';VN);<&)N]!/
PXPM(31'@\=M^)&Z<)(:A.SU3@3CF<FPO-EV;V -C,8NF:Z0WIT]4#F'4]N_RSP)M
PI[YJ:T%,TL3@17AOKQ%^F;=+W2/X2;I<,C;NK#H'BAW1O:U'D%@?Y+I K\!S\?7#
PLB\P]Z.#Y7NW(,A'?9;@P(.G\%GZ #2/ZQ3Z%^J4-*&6)/\04L@]. B@_/=H#7^7
PG;2&0A-0NWZ,/\*OFG"SV"21DDCQ@,2ZB7X%<A)T *[J#^H/G!<V\6\AT:CZ&>HL
P'!K?4<H,%2_U7-NY!.Y0M6[=]\L5%?U08?]M6P]FJ)=#I,NTTN %J$"U$<E]X_CG
PJ3+:/TI'4Q=$O&\NW/O#Q_-@S40[<B[?@5<,BD/#8J'/-2R,9$5N0@CGLV,)'7[7
P1_[,>,]%0NGG S5P">8EPO+?]$S(@[Q==Y=AEG1U(?U5!_YR0Q_"__$6(/P+ I/Q
PD&*0NAIF7]J-C;P_CVHZS:V)[>K9XK?Y%09UG:9 ?+UPT!4I(A%#U4PV,V$3'\ 7
PFI*HCJTB+0**U(M"E8JZ:YAU^R+MU+2C,9,A7'4A+0+YS^KA4=32])4.[1+@ZR<C
P6AR-'3OCM['2 =(BVE<!["^@H>CZ5?NR=NVX,;CY^@._?$+T"?L?=W8W,7TM[;LJ
PC( **H$&Q)$-@^D-[XX_0L1^%%N-CRI*8(LIB,HJ5G+=9<W,=HLB%%N)_*KR@/LD
P. A(/J.IA$%P[WQ1/>1C8&S:%)Z&05>F*'> %B_3A8Y!S[WRV]9/!6(X,NUWO$7\
P#%]_"(JJ,JT^>L,M1[$S(B\OME"7O! 0D2-Q67]ET63"G1O1>53]]<4P=-P!R8#B
PLK@0S&JG$]S.Z22^[4N_-OVE#(/Z09U^RF:J9 1:VK@ 9RB"6+2="*?/[[FF*G0>
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : lane_map.v
// Author        : qu.zhang
// Created On    : 2021-12-13 15:02
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_LANE_MAP__
`define __M2_LANE_MAP__

`resetall
`timescale 1ns/1ps

module M2_lane_map
 #(
     parameter CH_NUM         = 17,
     parameter DATA_CH_NUM    = 16,
     parameter REDUND_CH_NUM  = 1,
     parameter REDUND_TIE     = 1'b0,
     parameter PCS_DATA_WIDTH = 20
  )
(/*autoarg*/
   // Outputs
   bit_lock, rx_slip_redund, rx_phase_redund, tx_phase_sel_redund,
   pcs_tx_data20_redund, pcs_rx_data20, pcs_prbs_ber_cnt_tx, pcs_prbs_ber_cnt_overflow_tx,
   pcs_prbs_ber_soft_reset_tx_redund,
   pcs_prbs_en_tx_redund, pcs_prbs_en_rx_redund, pcs_prbs_mux_sel_rx_redund,
   // Inputs
   rx_lane_map_sel0, rx_lane_map_sel1,
   tx_lane_map_sel0, tx_lane_map_sel1,
   rx_lane_map_sel0_pcs2sphy, rx_lane_map_sel1_pcs2sphy,
   tx_lane_map_sel0_sphy2pcs, tx_lane_map_sel1_sphy2pcs,
   lane_map_sel_mode,
   rx_slip, rx_phase, tx_phase_sel, pcs_prbs_ber_soft_reset_tx,
   pcs_prbs_en_tx, pcs_prbs_en_rx, pcs_prbs_mux_sel_rx,
   bit_lock_redund, pcs_tx_data20, pcs_rx_data20_redund, pcs_prbs_ber_cnt_tx_redund,
   pcs_prbs_ber_cnt_overflow_tx_redund
);

input  [CH_NUM-1:0]                               tx_lane_map_sel0;
input  [CH_NUM-1:0]                               tx_lane_map_sel1;
input  [CH_NUM-1:0]                               rx_lane_map_sel0;
input  [CH_NUM-1:0]                               rx_lane_map_sel1;

input  [CH_NUM-1:0]                               tx_lane_map_sel0_sphy2pcs;
input  [CH_NUM-1:0]                               tx_lane_map_sel1_sphy2pcs;
input  [CH_NUM-1:0]                               rx_lane_map_sel0_pcs2sphy;
input  [CH_NUM-1:0]                               rx_lane_map_sel1_pcs2sphy;

input                                             lane_map_sel_mode;

input  [(CH_NUM-REDUND_CH_NUM)-1:0]               rx_slip;         // from mac_pcs
input  [(CH_NUM-REDUND_CH_NUM)-1:0]               rx_phase;        // from mac_pcs
input  [(CH_NUM-REDUND_CH_NUM)*4-1:0]             tx_phase_sel;    // from mac_pcs
input  [(CH_NUM-REDUND_CH_NUM)-1:0]               pcs_prbs_ber_soft_reset_tx ;    // from mac_pcs
input  [(CH_NUM-REDUND_CH_NUM)-1:0]               pcs_prbs_en_tx;
input  [(CH_NUM-REDUND_CH_NUM)-1:0]               pcs_prbs_en_rx;
input  [(CH_NUM-REDUND_CH_NUM)-1:0]               pcs_prbs_mux_sel_rx;


output [(CH_NUM-REDUND_CH_NUM)-1:0]               bit_lock;        // to mac_pcs
output [(CH_NUM-REDUND_CH_NUM)*16-1:0]            pcs_prbs_ber_cnt_tx; // to mac_pcs
output [(CH_NUM-REDUND_CH_NUM)-1:0]               pcs_prbs_ber_cnt_overflow_tx;   // to reg

output [CH_NUM-1:0]                               rx_slip_redund;      // to PMD slip
output [CH_NUM-1:0]                               rx_phase_redund;     // to PHY
output [CH_NUM*4-1:0]                             tx_phase_sel_redund; // to PHY
output [CH_NUM-1:0]                               pcs_prbs_ber_soft_reset_tx_redund;     // to tx_lane_async_fifo
output [CH_NUM-1:0]                               pcs_prbs_en_tx_redund;                 // to tx_lane_async_fifo
output [CH_NUM-1:0]                               pcs_prbs_en_rx_redund;                 // to tx_lane_async_fifo
output [CH_NUM-1:0]                               pcs_prbs_mux_sel_rx_redund;            // to tx_lane_async_fifo

input  [CH_NUM-1:0]                               bit_lock_redund;     // from PMD
// input  [(CH_NUM-REDUND_CH_NUM)*16-1:0]            pcs_prbs_ber_cnt_tx_redund; // to mac_pcs
input  [CH_NUM*16-1:0]                            pcs_prbs_ber_cnt_tx_redund; // to mac_pcs
input  [CH_NUM-1:0]                               pcs_prbs_ber_cnt_overflow_tx_redund;   // to reg


// tx lane
input  [PCS_DATA_WIDTH*(CH_NUM-REDUND_CH_NUM)-1:0] pcs_tx_data20;        // from mac_pcs
output [PCS_DATA_WIDTH*CH_NUM-1:0]                 pcs_tx_data20_redund; // to PHY

// rx lane
input  [PCS_DATA_WIDTH*CH_NUM-1:0]                 pcs_rx_data20_redund; // from PHY
output [PCS_DATA_WIDTH*(CH_NUM-REDUND_CH_NUM)-1:0] pcs_rx_data20;        // to mac_pcs


//{{{
/*autodef*/
//}}}

`protected128
P:B'^I<]>S:!$^Q;=9A1LW83;/4@-)5!9(T./WLLT4E".PE!SG/M(6P%S?5]'9+#0
PX@7O)[-DCR.E,2@"Q"</A#Z7=G* ^1+(_J;A<"<3@\-ZO]I1#@?@1LB435C8-\35
P62UP&V$WQ'Y%J3?9#?1Q)/-<[D@-Q,X5Y]T^I\*B0.^TSJ.P0!/K\=OB?]K(P>7,
PL1@F0H3VG^D>F#.8@@T1IPFXU8BWO0+2F+V6N;+61_U/U)M$EPV,>'N53]+;_<.)
PQI_5$FY-$IO&%\P$R$8%>UQ4!X+"K\WC/T__+FUB SCU\@W^?3WS/=!LG^AX":]>
P:G)T2='9=3FY UV*+=",8&8MYMB4 =*2/WD8:%3N$V199#@1)EKC"]"&R3HSHOQF
P>)WJ M"/8=,J:LQ]BM9^F?87UL+>K."RM65Q):K^45?CG(5,TM%55']SUN6]Q%=B
PB6+HL2+C^S31G_.B--3DH>>WE7NWJF!;UU0\3LQ2WJ!& 6$B'L!#P+:96BC$$E%]
P>]MP7# $TO$^YF*E>Y""1Z!#J@D,, !G*&VM8/^"Q..".ZF^BB/V]MBAK70R5^F?
PX7P1A:97]VNG&H@&/+;PT"LR>4K>EH-2A1SO]3K3:&1KJ6_(S]DBXX6,/4++>I0@
P)6XVCSW:-,Z!\-9[,LO\^('S827_B;X=*";$/F?)W-EZ\4H/IX3;KB@;D\-:V$%G
PP)8-&_@*:4!BU.G_H+/=RDXZWA='@P$TOW<O1]^=,4V-](!@- C2@BKBNC"BJ)N+
P7515USQ3D-!;$]ZW+[EP2MOV@6/^,@]![6-R;[R9+S:16,"&82_VG[B);_,^ZI@O
PIM'$@Z &$N'8$<GJ^T0H7=Z/X"%Y:K1;""[WS)4$U,]W2N%:V^+\S7%H^Z'X/97L
PQRT3N0(;24&]:6N&(VMGTO;ZM+^Q[%N#_K3)FCQ97%5TS,361?VWK.KRTP@/G%JG
P^J!MU#VID, FK1UI'0PG5M!:B4DE^V LA4*;2.>02HFPM>/GPR4S<8-?SZTXUN_:
P/9%&V4$1;;PEVZ?4:K$!)&Q>3+#IGD)<97Y7N W+Q]H"D%6!P2?&DU$:E@G93?(Q
PP[A:+\ Y!B")DH7\^QB SANJ5IK,JLB\NN3CD_5I -3:38T;T#LRZXNY"RDF<CZW
PUH=\@>3COMNKG-]J(AXHZE>-6^5F@3A0Z$4='.^%+_LH%9_BA89\S:!(9/:(/BA/
P[GHJ6")&X!#;5I/EZLF;(E*]ZQVU5VLN&?+.7:__5U?.=4\VF_61"BZ7"QD\S3+)
P^OVZ_L"KJ$@"HX4[IO<<^LL$6P3G<;>Y_T]DY4Y%L>"YZR5M7%9>"^,RA'P@TO*8
P9;PX!4$1S6(YZ.X1=8Y7R350?4JF$T#07.K,9V;%7C @A0T[>W@4P4-:.6XF:V!6
P#FUE6%O>K5E+F 6EMY%NB59D1<5X CNMP4?'A.PYO%@)$%C S#(X#8LJ^:O ,:60
PN!0?V-)3%45FINM ?'[7;CEF167BM,?< 1VF>TD-!.QSFO(E>(EES<)FPW%B[C&0
P'<30/F.1&GL1CA[Z)&AVV44_2?X)@O^7<]6S#"HHF0#;D7IA.E0R6>P.-X=DQDR.
P?^&6%K9/5; @LDX&S[Y_I\]8P<QGRL_1S5;QKZF_2O>1'\%WK*MGSD2%C8DL?-<X
PR1WG#0?1ILGL<5@6_!)J\5A%(]$B75XK<W<Y,$AATJI$@OTHN[C$:'(?4%2 -3^H
P8LHAL1*-E0*78'R3D +4/![@51I,92M'@AU,O6R08WJB>= -M25KB"Y"6O6\GU3J
PGS7UO*JX*/#[J=/O.7J5*:S@_U-E5^2Q,+U692CL<NJO2.I#E,"9H/W\BODPT"R#
PYE%'Y?\4[.F&Z.VH-SB=R( &R/1Q0)Y9Y2IJ$Z%)Z*RJ@+?1FF4GIG2P(+B RM-"
PY3,=Q_$&"NO5%%RP[3(SNC-J3HJU!F5 >WNI5S&U.-'2M*7.T?]H[4\7-T[]@$A\
PQ[@QZ9CD3-<"+6:[%._# 5*T*R&1R-?.$" S!4BH&?]JR[%)U]I1++%/,XZ/SM,/
P#26[PO26I2AK'6R3ZG+" AC(]1%OGE=NY_P#A0F \>\4'7,+HY6C5E5I4V-SC-K%
P OZN68*.O>/&Z/OK?4Q483:8@Y8?YDCK):2,S?MO3Q8V9JFJXK!,7NWY#5MN\DE?
PRT6XU<]&C.YZZ%YGR37:JB97>N+PEY :!WU'@B#DG%=".-0L2?[W_VI[R7_@8/=<
P.(>S=)&1O2,3QLX2HTR05(D'3#"/.ILRPH3*)K'R[_-06Y7 >^+QM+Z,&;?.#R%3
P@Q,N;9D7!=^JE3M<UAYIY16_JM0Y,WKIIF;Q0EE(-P0>,AL[+#!,A"\0O3B=HN"G
P?FRE!R<7[^C%C,<]+Y%O(3(M72_L^31W%-CXH>Q!"8RM%!D0[<J#-4+3YRZ>V)ZL
PO\U(3W+;>["RK(]\<&R7MKV2CV*W+5L_5M7NS3L+L8<(<"_7!DKE.CH9UC'17)XR
P5<Z73J)O#TX;M 3&!LV2^GA3SY"XCAN-@1:^0-N<^@8OZOY,J,_".&(?P^G:M]Y:
P3,IS7DYG6"RL?R+F-\Y5JR;ABH6^>^^9=UABLOI5]:@F]B+<1Q=<@86XD8=OTS0V
PHT[2GK@^^/R\0027W<V5_3P0#Z/2]#IC; Q*G?J3;(4.6('>ZG;P%:7MKV64HZ?R
P:\[E+6&JYNK0FKU(2 I5)%65#7^*LBR-VD4M0#OA%OS%1P-'E@98#,X[J<X; Y].
PORX-BK0\-),WJ 66\A"A_ZE7G$0^@T!+[;D52E,'H&<<#I?S?!NAW=0N,J\<P45G
PE&PS1%$?&+(?F!->:Y=MMIBKJLW#ISM==QIJ-[GJTDIO7KT%>"FLE5[K$UP_DF.'
PB)+A,M<);L]!9#MNLIY;O-ZVN5MT;%</6P0K-&!A_^DKHR<E/62.\0?)L49^&$$T
PU<J3=>HG7PCDFJ!QWG;;QXSMYIZK+%X?X5/N]L49S!H8?K,U:P6*JNX3H #K+':3
PBA+'P^5L2Z(*:[U-Z!,MH<JMB(V&Q7Y06HLN/!6S!S)<<:HL>^]86C6*9@\7S@+$
P(-#S@OP5C&4&VEE1PK-T0MBKD.-E-D:_ *,S=L>/>ZT!5[0/;Q0IMVC(,7O< XM5
PYY256*$'AD)FF\7N6O&CH::3 X$MB\0MCLC3*8;0%.&Y'[XPZ*$I!8*OU$X@-@>A
P=^.QWAR5=<0K[Z 4*(_Z)+F;KG]*\P5-Z\^K:A,Z[+O .BP6X!E;)'5'DM4;&&$6
P_(KXYTFR=V^^RJ0E$ >?6L\XOG^U&TWOT(&J'@A-G'?21^BPUA^;#1Z3952 OUGL
PGM:[RO?N(8]/;WX(Q1Z8K,@76\FO=9)3&D0"&7$]+7_W,*;7)_E>3)A39%>R%=-@
P*ZB8?-R1)Q'X*;ZA-QWL4CD99O@S3R+345L+D_CI]LHS16+F!S3+";*_U ))@0#B
PFOC'A5W_YZJ!9BBZMB/1O]"JZDPVL=Z$,HJF+87#$=[96[<>5"EG;$I=9S,-C,(N
PQ3,FSWD+L+?[:7@K!9Q]MA-/Z-RIH!/^&+D/DT1BPC>2YERI\7SHF^49>=IUJH]:
P!^O_42 +7I7.Y*P#MRUPJ3E<U=4XAW!]HXB)<FD,^:J<VI/$E+4N :K"EWGP23S,
P[)T2-J0#QX#;X\F]+W: &';92,$ES$Q6U!*#K1G%+B*7/#+Z9@#@$%6!ZAPQ)*"<
P]Y7#QH&A8.:/%,L!8G:)[C##VH5E:<\!BT\]GE6I(P9D4'O=I[J%V^\&Z.,Z_3=;
P0_<HR3[*RU5NR)@" )868!UV(F@1>ZKR880+2:9LXFF'BG2Q1CC@-W53S"K.ZM&[
P+PGR'ZB&1@4AB5XC\680Y E@_@+.X%TEJ>!?Y9TG;MW&S)(8?="D26CL(O2L 'X/
PB\[E "P"#A'DAZJE*:09#CZ(%:F<.KB3>$[Y%@6-DGD6NXP9)I)P?!$WK92IG84J
P[,M" #8-YF.VP\4U-]O&J<NHSI=X7P*0_@+Y:R[V@!770[O?=FY);/G"2$:D;$:'
PC;Y?(T<SCY7'M #_N A;+4Q@$,%XM):&87PBKV7PIHJ"])C<?+GE,Q7;Z<F-B^WG
P^5>1CVT"%!VL5_NV<U1<J;:HC4=.FP6P[QK.MU.;G"H5\\8P0IWP^&D_!X5J\UR)
PB*ADQFM(O1*&J3D!G)2R'U#_2X>HNLX[:NJW=0!I1R$MLV0['>?\5LL0S#(S/;$$
P_9."& .4N/JNB_E-E+]B/0_K"'TS9]RS'-3TUT./^G/;4WQ2XC[C#&+T ,OB;9@#
PGU,10S. (J48#;XJ[4]=H_HF2'SM+L' N#?K;[NIZDH&G]NO(_"'W7Q\&J.XV*ZW
PPO')'I8/H1;899":9BOI:^5#_EF'HC(W3N>H+;)$(-HCG4T<9FZF[S%+;3-M%\_O
P7.XR-);7I<WK+W^';65&TQO3?Q[\)"@F@^Z3\N+.92JDV,/P'883D6'2;L3\3/J<
PV/N4_755D-B;DI%#/[VE)('G;6/H_G9T*2HN4LQ!RF"@9M;_/*3]R"(0*7I='!>B
PGI901MY[!*WR*"M;:#NJG5L612,5^)<B<?IUF?!KQ!^O_?."26UHVW#EQ^F_*\4M
P,C(W8Q?SOZ@_:2'/S@T+'?G.?',?:R.KDT9&E;F3LP[%BNC^"2G22W8N-@<NN&.M
PC"QGB:O]&:!GN%\ [EJ>#8]Y7_J?88,_9,$7PTG9D&$66Q,=7;2F\I<U ?36U;3^
PLP7\N#Y-'4$']<YND*?#A&E)=#&Z=)(PB2J!BCL24E A"+EE !F_AU0(.Z\SHUS&
P#2TH/I6Z=^+7BC:HV1<A:,2&M'J<O5X0V+^]8F2R?*QLM"OU5E#416P=3OOWNN[/
P[\/3C*.12<DJ:OJ.JY3SG7A+\!GH>HD<'V0;^$8I^\7YAQ!]Z:HH^.*\!@6#"]=E
P=, L/N]&>JCL(N]WM!XGC'>*@<">W#Y!JFN9WR@9B:&9-<P.@/\B&C]R>S6"CE"4
P0TH.[MBX''@S][/+%C;2/DF6FBC1 H^KE"Q'2360X_LX?<,0[[XT"[/Q1.!%WO8<
PT"#;&^H]K#ZZ^S&MBKH_(H:HCZP;4&&F:)=KU?$PPF!OT,4=HM:HRBSFB;02S6^J
P6Q;&6E5HWX1XA/Y*<I0DR1$,+L"FDDB'_&8&YX<8YF7E+%!SE"#YK8M@@4Y'FT^L
P88!U8:AB9\1ER@\8-Q/C<Q2'7\I(5."^A,)?/1KHE F8:&1,RB"+!;R^K(AR^%Z5
P^X!+VD8VYS4]0%@S.9(_@^Z>P@O\D_*#3J3OL.D'P^>5;(5\\]OR1"YK\TN*M*'"
P>O"M$ ?PQHE(Y32<O6('D#O \^HL&(#:=T4W#S8_UREP1"DR]X]_X\Q7@X9.FKT@
P7M:+VE^\=GXRE3WDX?)L4O,^P@X0@S:BSG!E<M)G"]<'"=*PVEM?6$!'1^RJ1I3L
P@BSK.,R""ACM76OHM&1U=W/U>XVL@BCH?M=39:<68?Q44O&?<1#S"O=^U.9PD2V#
P%L,JZ!-2!QV-H_%XJ5'PU'W1\^--[\"+ESLB6TD^?&8VHI2+_^!D?L1?>A:3<\GB
PO(7@LLY9VZ[;61)N(&S!O$V;V\MF DXL=]3F! \?]DJ)9?[S]!AEM",7=NXN[2!T
PA]*1?"=+FVM"=V*7]87@C[57=]C3?ML)3,W&RS60I@JLY$_!L\_J[6R0O1YV+Z7]
PRLGP[?5,R1$JQ0F^5*4)TV.;B0;F%^.)6D)->7%\]N3H35\_O)SS>E2!WZ?GVS#>
PX-#&6]W@^*(A:?Q<+(D^V>\;TM=-BI]XJ1JZ&\'14'\['E54!:CO8P= Y'UPM@GM
P\S\-<8)1-[[?==5?5XUF(;H5GUL@CZ(AA+R_Y4(QQ-YCK/=]"G9GJ,7-ET34(,JA
PIO<P],!X7L6OE.$F9,,#HW<#,IR(0T1<,<(04VT/J%U\?+Y<GI1VA^R$9$+-Z4E&
PC;CHWF*0S:B<W47WEBQB$*RE12:M*]?0I3=!COB?1"U\^VQY9WMCS)UM'X:.U#1=
PI8M,9BX9O54.5O 0'!<Z=^4<7]A_ZCSWA^:4#AW&9@ \Q!O:C\#OB0*[9TH"I,8[
P@NOJ174RB8[\EB.T: -OE-?T31C)>!-$>(E5#]T(XX8%FEXBGDCM?(:=^>=7D"Y+
PD7B,M-;74ZS&\9!(8(7LO+#VH)*&SLS63']&X]ZQ'/.IMF[QRF[^A.04**Z<W+^!
P>C,[I0XN@=Y=D*?8F\L4P[LM?@8U_YI'UX];B"G806<Q^$JV=GF+18.:G[JZ4M7%
P5<PL[//RD7@Z-93TNT_19>,&N&!">+VPI0TR1Y),G;'7:U1NG-?\\04/XZL*=JEA
P6ZQ@\@-(?QVWWZR</?]>B_!)\IDG;J&8)R3NT;VEJRY4!GQ?&@3J((:T';HT#(PV
PA$&-9W$/-^CC QV#07OTT+C3]1\N'Y3YA7+OQ$TBF)=1T:Q<WM^96E-$*)N#L;OJ
P__#$+K#CX6%*[#@W,*#8((/8#*V@O)5?$JL1Z/YTB'E8\*5<</.+IAD84-G@>9C,
P8-[\3OU<%O,8T8P^5=02X)2C*$/U*L:S=)M<<8$MKUN\+-<N4N\BL!8LP!L?7,8!
PU-'?JHQ[^F3YGQ:@?VM@VC_6XH5.N X?_AQ(NTI*3IV=1-<_OK"*J00/]:;S;S?1
PNMT-27N8L ?]PZ3&/L&@1#P;#Q*_%R;)2<PCH5S26^M"2+J?G8R/X<!?^#X*!9<H
P,(5U1@8_A/(L3BGTF2E6.Z3N#_['4,$XLA/]9GGS8-#92R,_NP*5/D((X\9JXVF3
P5,G,"FD?AJIDCM,D)O7T 8N\DQHY6ZAT5Z3Y7QTJ+G1F?_MF0?.X]X3SX<?MA673
P4\0_OFY]ZZ;BCP%<EG.FB#W!-#J)Y9!3.694=L(5NHV@)D)=1)Q !K.A)9\JC\&%
PB0##YI-9]??W&/A;"#AP4#R@QF*[(+ \.H$[4,XK08M?NL[])?E!&U_=R]CGFG!'
P9_"1Y@OF2XOT0E.-Q,7'Q27Q+Q!U;&2(:<XRZ7_V*_QP]@-X]FEC]?I]SD3?)\\K
PZ1!7QQ_7)4[8&EZ(970@BYD<1TDYNI\-$[--'/PXCY)F\<+_G+2VX/S8<C::@52-
P>>C"W%B'K0\!&%!F>M&A\I[OFPIETGTY-:P)]>H*A$(-/U>&T5I6^,BD.8,5)S^@
P-[*"W?[ E'QT&%6S<NR:)JZT0J;P*5_JH*(0[L)/A5CX,*3]X,MUS-+G8),(QG@^
P->Q4S,463N\QO$0KB2@7@T($K5#+DX$0 !NG^M!,%B#Z0,(A.1M.*[!\P*9_.$ :
PHK?Y]^W/7%6%T";U"J+FI_QP OP)R+4.NDMBLPRJL5>X5D+A(#)0VM6<,Y1##!@#
P$P;;$A;,1@LN5CS6^+:.7*3G%-"\82N\XF.OKE)J3[Y[=B/KOHKC?2>7&ZK";_BD
PK@^X1K.^![-B9TC!;)5)(OGW)[P3 GOHB'+C42@XME,WS SYS&%P)D;C:+F,9G@B
PS(J^S7C6E+EKFBT@A>&=:7/1&761,/"=*:;S2Z[?8O"@><5N'Q&@IQKJE1+J_;-'
P\V"R(9Z.'?T/)1X8*(%G9[J>7SL$/QU3T%:<!+J%ID.&($N:9M4@Z)',%Z@&5/8U
P57IHSHJK-$>6(#II!/W(TA"G4"9(J73EUU7 ;*&<BK')LF'@_#1Y<)G7]W$!R8:8
P^\>MOS46F<BQ'07Q7*AQDL"7LR(6/L]S< X#2TU[5X\1Y_%V>D5:5W8UW5Y,Y%#Z
PPG!$!8AWU@'X(1-Y]XSNP?*_X0-OP17G\8$(0:YL+]9;4QZ.:UB&\GAI1+3)#0TP
PO14"\;.[^Z$UBQD!4Z'_>Q3J-,7J(P6Y47<CYO2O&4"8#MVIFU>Q4>5S]K=#V'UY
P*G0.(+&M$N%<O\<R=7+#*I#1OZ_\3914MH8C7)\S4-Q/; 9502>14!YE[0?&TF(X
PCS?,#I!1ZGZ1EHO[9/'H9'+_/'RC,N3(TD--/*K2'APK'#X^8.[.CB")&5GL_Q&0
PUS[EV*_/1E/^1-Y';I0+*\SC,CW W^O'H[#=)=TI>,U*(P9Q-=;9#+:>I&L;SVIE
P;DQAS'F)"7L+J+_$9G:( AHA#ZVF:II 1*7\6\GU(NU%J$923*"3^:XGN*J+\_ _
P!73S*N#I\_E'=FE 4QE\(GQLI^IH5+9V!4CL2582J(%?#K,-88(HJ2;9M]H^0'9K
PZD+0(-G9\%CP7;KCJZ(/S[R?VK5R+,SJ_AGX(W']2LJ&O*@MW8+1</%WLA43N_H2
PJPKP\?5X3([F1(RK1Q&!+-LHJ6"3)DC AE-IIT)70YJ@^Q$?M62[(MY5<4OG8.]/
PBOFEP9E["9(%L>607%STT#_G4"XM$E NVM,R5KPON,:AX'P&@D)CM3/<OR^E5V%E
PX5:4KDB=B+2MQ J48EJS<8RO,HMK5ND/T%IB@\O+>(_^#?-,K+];/C8 4)+8P(N>
PWQ_LX1IIL3$Q$6><[+&DR\1?NE[^T.Y9'.PD!IE)JI&H>;A=B 51)^IP-9X$ITAI
P>E*.;JG23&*JQ;^JJ6-K#]%MCU1"]&.BCC8/6#GY6EOWKV7K'JX1N0> VD;ODGU*
P<;M;#$^ %R4!K;-PO0!-,4-]ZZ%K&E>F.-@G$P=P$UI,AGOS-2G-T"-;?'9*>B.]
P9)<T?R/U1Z>O@>'?+LI1SNKY_$D;X;,/5*:+]])GE<A\[!*<!W7&LR/XRFLP+HRP
P Y!<QA3#^V$=;2)Y]MU"-VD?B(^R-@83V^+CFPI?7].\WZK5/R(_JRFLJ&4##EZ+
P4D"R9_-,$4JX[/TT_JXEJ3[&:T#2%@+=+-Y^36F<<7MXH3ZV!1 "U(,&!)ZD?JCD
P!OUI^'9R8ZJ]W,)6ZA\VQ*@890_&*,_0GH#'\$(4-:'X2>'-7+]3<V]IQ!Y57)8N
PXBO4 F/]$6!6HM*T(\DO#W_F+WHK0:E&/+/W>2++\.-K4Q9W+&=.Z_.3,X%2A[D3
P ;("S_L.6KA6YN>;]OHK<MTK\Y>[GWN=%M1G$7H_%@M+MGT"X16OP*G[NZ/Y?[Z2
PWM@PS&SE$3T,OHA)@NE08U6K8[8"Q=Y8\ ]A^M=\@?PY9U+@EH9KZOIN&&;M?,AK
P]B<ZXIJWK ""\O^;NXU4 ;739-:D$R .FI*Z\O2T7EFW%[8?SM*4@^- XI,*FETO
P;")U_+:&!GJ4]2 B# O.\?RM]G5F.IA'=??FDJ?B-ZA@O]9D/6RFCSP69;<732]S
PPK%$PKW.W!@2F']V.]!&O>5R#O5RJI5RM4I9J=;N4%=>FR.0@V/U'D=4#*V5X5OC
PN[5OP\5Q-)^\J.L8/+I,B!3Z)4 , 'CN!66EG8:[T3>;+.7.F/1G2.4O25=*P4.C
P;A6AI(R6?%S3G?N9E[R4)\[L0R-PL_9W&N9]E%S]D5?7@Q8O((V8N1V\K#<$],!K
P!.[X!B*'M)JM(_-B.L?1SIN7[*AASC'2*[D_@H%.]$>W0WG1EC%,YGYCB+VVR8=S
PG0/+*@U-Q%,00._'WQWO'>5OLEWX!HTR??(%/MPG+L"P<=/^/^^?@&&S'RV4H;QT
PBRCQ.R?_/+U4NI-99-')=E3Y1WUT0VDF!.A3 T:]'#NA5IF2_#0&12-D%SD-1Z08
PRP8\MF,4*UTF<)?V, -K3+1,3+8CR8$A6$:2\'GP#2U)D(3R D RQ$56,SU6P(KB
PT.Q8?B\I;,2L*X O@-1I0G;VL>7Z%7TD5,M7#LDJ+1[[;V&%YBWU0IK@F#/$^"\5
P%9NTT2/K#(JXV3IJ 2T/$'F55'V6G9X%MFP[MOF:^X"Z'2VYVE'85'^7,.0F!*?0
P+E]:CF@(S34N%;D(=?EJ+.FB3$K X1DB%^M5\<KG=-&'7VBRG&/2@Z>%TG%C/);;
P5QQ/2W9T"KOW'H, ]7D3A%E(7&0W<E6V!6'P95*L/RR7SO32HL6;'G_/J-5EV":%
PV0^@NC6:8R,K)A2W[,]6M34KCE1WV)K(P=U)^@%5KZ"I_(D1(R/ OO=3/F[L,.G*
P#,O@= :@C1[KQ%-C4!78X+7%HJ[;HQZW.ZJ<DD8N)@J] J<24.TVP4>\1CW'(P@_
P_K!4#9JU G(,Z_Q95GZ AZ\YC].?]OK&)&$Y%!D!X[M <B,,)(3UC_VB 6#ZM+LB
PEU(IT-Q+3R,_%M[ZAL"@V8"9\UYY/^<1R6XO.7+ =4X]88%8L_X8"1FU__&[\[J2
PI>O3Q: B:RAGS)*A?>_<5/3*PJ3)A=,*Z8%,:('D__V#>=O4'?5GO#S1<9+XQJ@+
P\4P95O0\?S>_PW Q]7O0%CK*_$TI6?XJ=G;T[JT=U;.MC.$2Y3D<JTYVLP!MKEV#
P&WW=SK!^M<H>:L?U(\[R9?+_V)KSG]11/,K II[I7"CK2;UV??/D$M/C]7/%BL,M
PC@GIBW!CCS70]-G/P%_1&O 0^TWJF_UR>NLF"';2UO+NR]HD%67TNC5AO*NOYN<B
P CW,*)JI>!CL19)37N43&WY2BVDYL8H[E70_W[:S$L_<$E")B-A&\=<ST'3!/%<F
P'>XP*Q7,@GIA^6BLP@4).']@$,3(R)%TCP9T,U7^DAW9_TP"*M[ '0Y]E,9+)UW;
P/F4V(SAB9F_3H!OI/*&8//E9;:\4VQ5W+?1H[$]2XMY=Q^--XUWD631C4&-^0+I9
PWS7 CE2:-(W#^19*3,]=Y0@*/2<"AD+Z.,9(+X^FJ$;(W,54@#2$E'8(;QJ1QZYT
PR6I'7SD4$F\D)TCDH@4I@Q>T:G+<D"+W%^+)!.Z);_XEU*2ZST5V..)Q"[Z"$"N,
PGW(0#8KFDR^ F]T%5WF1)4LZ1:""#9#O.1]-RNBO^:"#W\NV6C5X1*)K:;9\\KB%
P&?21GFK>JPLS.K5K\!KT?KYD*O5L;1CA*: 1E)D6U&.WVZM\BDV@G8NH0!= 97X3
P[UDA7H$K=>J3RC2V<\M4@X;^5-[$\@DVB91!-T>2V&RABFU@GO7'C.TG.;S&!FAO
P?@Z (\,I296E UH [TB*8H8@5"GR/8NT,]M.!P&X+_ON0)@IV^3Z>#Y;#R:C_C&L
PVBG35_/\II(TK2? ',_' 3 55-! C%"ZD7S5W_4GXC @T>O(<NC -/$$QHBM.G[[
PVDJWS)H_F"5ZHGV$55G8CRU ?O1/F*=QJ.*QK-FSW[_#5;938W2&R1;*?]=BG[NY
PWFM][G706+@9T9T4\CI R"3Q9!7I[NH2S(L-SA=]E!?-28Z!P!((/"YK_C9\FLM^
PQ=X_1SBK>.N \9NO)P61)N.X+8XSSS+^HU'Y6<NITGFQEBP?IV2V,?8HYT)"!T8!
P>S&%J0=^M "X\"S9G%=1;80HX ? )'JX#!246K=</0LAO1N9+*N3;WXO$?FUD)3,
P1/&3$0-O'QP7$(A,;;E;@(-;HA7TLK9$TYFFW\F< );BBU" ^=:$>?<]%H[!:2@O
P1;PXSMOM[OQ-O%Y7QT:586X9%$5*D'J._Q>&Q&2B5WC BU*+=3UH,A7L,W/<?;9-
P=;3'_S7\D4$F(3?3VJLW!?'B-Z-/:^9<,I4(3AM1&["YA;OE3R9IILU<,OGG,-<)
PY\"2J3+91,7-P$.O>20CHD15@IY7(3*#=I+KUZRXM2B@P<YY;:N68YTT3 , PB/T
PXMR-TE+<XGY $APN:9WUZ8<K!3<I&XZ>=$4IP7] M+N ]2V5UK_=0F8J!W@&J-D+
P4!>"<#/+YA@P8=/S31\9GG+H,4QM2B5E>EV0V^H,+B=/7WU07LUT2O *F:&1CI?.
P]I0=8[<X,$__^(S+$9>6!4I$AAY&MEI?]LXZ$G6^T/?AO]8]\-F^1YRMD=T9N^>=
PY!!4??#,*%!T8(7^Q6H^,R4G($!1Y<,_D%3N5K,J8Y0[A]Y+J@XGPBG)E*!.X6P,
PP IQA<@?@NX,^J41?*<&EXA'B<)=.]XJ[I.]\ 1+2!1$<*VN$O4/KQ)/)DS+N_/T
P N(+-7GBR 'L1\DM#G' I71\S3A9S1J&X $/M5*] B*2T;;:T*E&LHKH!M\WX16D
P[KM%XB1V1[R6/*A1 ;0B_A8Z,]YY*7JO&F_5ON1V$ NQHFZ=W ?<"%TVB:IH828R
PMWZ,6YH.X5>TU/.(^HT%HSWFZ,KTOU#Q+-H66IF$2+)J _BQITI1#(>(H;W$EK!-
P!C;C6#@@8_._2EX=ICA 66U,25I!9BNC=F"PT]V2ID)0$DYKGO0F)Z.KBG-M"(JP
P8H2'/(#,'! _],QC2Y U21T9'*L$K90ZF-RMA)U(CCQ"JY<!JL\)O*0TW'\>Z!ZE
P#O]2662-3_'%]2:R17N!*.4;_:E*76+L\= UK>:9BV=P&F0I- M;X_.-94?68DP9
PATVM--0A*'T:+JP#2325*=AI/ E7YC249,AU@\0IEY]@66(G5I^[Q^.XQ.KSJ2<=
P250FGK$P/-XR=3L NB+%BW-T[LXPKTG$B%:PD#I[ )XEA&C['&890(4<I4>&/ %F
P&+HEBBM9&43;='?W%7CH!M(IJK>TAUX_AONZ<_W?7<NQ_NY^@OKP]YGJ:D=-)AI[
P_O[<"1GL (4HT*Y&1J0'OS%36?&XA:QJ2D-WUG%![&YQXO$V$+_Z7^+*.>RQ2ICW
P;#/G^3;-D(<\=0>/ NU=D.HLUROL76DP_UH6YV-W/D\:9"++6LT2)M&PFHAX<W">
P<@FZY)M#_4#QKE)SJE,#TUQ^.4F[0?ZY*E0N!M@GL6/A[&4=:6!']R3=GHIQC\B'
P6M84#X,E1'AB?7L*\ =#/HB<#QS_OK?B**S83>W,TW0LC 5SV-617;"7D;SO$_).
P3$JR75?BM+E+-VA:2:#6K[LH=FM=2S:8I9G7MF\WH&[.,8 3!K3D$ 5+^M*1'$ ^
P86;LB[T"1G.%P6T'HI (7#8G5QOVTUL5:?UT'(^Q/7=T*_06UA*Z.DNYP &! :%T
P%$4^@H"*?ZA7%K&L@[N!AIMIC!2 '^U*,N1GIOROMD?A>*A*_>#R4[1*19!6=NG!
P7Z[<7&7P-4C]'1O& NQ*42F;MJDB)^KL&@>1Z#7N H151>GM*-TZ>^7LK]0AY425
P1S%1-^XMJ[.TZM+L2/)!MS=&$D#N!$EZ&$G(X;ML4V@!EC6,OP$)KK"=:;1@'*%^
P/^B2#X7(@_%@;GKTS$.<PR6B&V9KZZ2U)VTN7\A\VQCOOF"SET1;728"04BX7J$;
P?>M@-F:U<5#J-Q8_%<?<GYA__)E6%;/;1IKB Y-P26KDP><<[OJSQ/VVS /_J%Q5
P.M::VP/I-4-%<;W+M;[1_$9#5BX5+"55)B!&,(@H%6;"GS]]2>(;XJ\V3H0<@:Y<
PXG(?)CCL3"D/24<[1N;3";$1":,T5@_/*]-X9?S1H, 9N<PI( +Y&M-"Z(?(X;TU
PW(30_[P6QFO]5E70[9QJC2A"O <E3X_$6-<9X/0_JIV76OE:+/M<-9<F155_D@#8
P:IMD+0P>UN&Y@?\,3D>D]62R97'!K$1BMK8?=P0#X=R\&66-&&HOON8,%ASA#/E2
P2 KS>6*<56&6Q7R/'$MB@:\\D3PN\* C0*UWJ-.N2#UZI81@Q4M8X1/3+K%'56:Y
P24I7^&>H^=]FSW CAZ7"#]4(DP+66'T6Y$^JN3_H=59@('D%9YA$>5Y61 #/ <L\
P3Z>U)CXECAA&J%+75$.08A7;(X*4I:5N:->O\SON9@<_J=#N44RYD>D#J@6K9EY9
P'63:GG=!6+XA0#.2N!)U.I-F">T%+CPP,Y -/W,\^[+L=^[P/1D6N8EF$_N\V2'V
P\TZX/"9X (-3O(+(M1-$Y;83Z>W1V53P@]P<WE6\@9\&!)YFX3%#>1#:&XI1]SE(
P,X8H;:TO,7$E<&&/3]04);_6@ DQ6W1#7.;1FN_'WR@'P=9JNXD]COAF!:BDV]US
P&31YT^[:6O<^:3\K*MWHCQ"=*8+7T))*YM/Y !#\NS44SP+["\X'0<MR^TN41R#&
P(VOM[&-X3C#MQFZ9ZHDRO D^W.Q2"!NB:<)37#(;LQ8GZ.U;$61IM["C SO64G] 
PLP;']]+HTYSML7AS#>/KB>C%*(WM(QXQ J2@#QL4M/8GB5ADI;6H@CLD]ZE,L1$;
PWVMLF@88Z3FZA,O%F9_.O%$DK.[(G4/D,-7K/X;LC)S1T=AOE^=.HG[U;XH0I&K\
P>]+_[V>MICL,"XK9:&'509%#7$3HKX:.P\?_!!W0P$GX.IB"06^S1+V1U.C8>RZ3
PO;8%WF 248D8C[+;2<)6MZXXR+WR6]U+N"]O59\MF[CLK&[3#?L9!*.*!;E04+M!
P%2(19Z+<]+QV>0/I-9^K)LIH$Q$-I9<6&1JBW[?GGP89?WL6E(6+C30G_#  0"81
P? ;/P5N!^WUO;?HV-/O-;)L>!Q:;VW0//,7K4M[TS(78]@]/V%X=$T6%Y2]?2YZ\
P%/IC-2\LCMIP.L+5\LL<=$3]TD[ VN.57Q@-;Q.6R8U<B.,Y!73Q+27\)XP)+F51
P&J?ZH\5P\>872K=1-J<=8C36IC>#GU7U?3:/ YLO\&%J9\_YK<K?G(\/<F[$']%;
PY%JK0S&;*EU14H#K;/=?WP/-4P9K5'L2:P2U!M\1H5SCY6O2[(9\DWW7=Y&JR\^T
PS +(FH_59R*3>P8]Y!#%+M&M:&*8[T&B:GR^S<G5:3N4H)^F=G+T)CI@Q>*CY[S]
PA;LY*@PA8C$]I00I^80Y49$2FHD1A22##0D*\GL\BI U_HL\NQ;"%Z,Q+%AVP"&K
PD]\OWJ0UFD%"3@[3'6&\=MA3SKM7:G3PH^U53Y[K*5P.9C5W12$1F<'IG<YMYJQS
PR:.Y9#01&E[<;/5#J L[V%#W\!D#&*O3JOJ;25:(D EJWP>*<CY@%0+I!=\%)J$S
P$+B3M22KJO2";%02>!P361-TQ>51ZZLY3F\4@0FB0MK6"R.5F=R:< I#[;AK,I+3
P"^[SS5QRT8<A:AX:HOF!_A_/W*VU%!#Z=\,CLT?_68[ZPRGTY8$6;;M-FN^I+CN^
P,JH":.%C=Z 4:>ZL?@:S2SHBB%FU:V("!</"6D%.C?G\WGJ!3$I@W(EYUQE,F(T-
P &)H!(:)[539LK?:C?MG>[5@D&MS[H.!XZ#2;PRN<,^.[M2MF!5%P\';C='VC-Y1
P7NM"8M)R1 ;BS7)^)\NL' -#!8<D#L@H?R%:R <;OA2,<!>S#==CS1!/S2[&;4LA
P\'?#!6##T@KN3K6M@H%7I7I]?!<:X"'K9NXQ7N?5%&G\ E/Y]JET0W?>N@%MTUM6
P2IG^%@[;:17/-1)IE6!$;AW.)#2/RFZ939H[M(P3K;Q\L3N7Q:Z(DG;L%-CRR0!2
PHQ_.D0QRG<TGKT+%%QA5-V@'P)PO6=5F_B$C:_4'N?1AQ9C7/U6</#/1&U"F6UGZ
P%UJGE% 9SL.]6GPJ3-^O<X_^,FSPN\;J^$%NW#MZ,=AMSY_$E4D%<%NUV=6)YP<[
PB3#J B*!6SHT55<;&U+>U1J=+'2ML5-P/0\,A.[4&7M\CS5RY*/"2BQ"DVQ<P!*Y
P,Y4/S;'&%)K4@TVF0OY3MDSNY2Z.# -GJ5\\WABWB41_D.!G'FR?*=^P0#N:J>ML
P_3<2G>^EE9+<V8O("E0&$ %L)/<YFW->W@2%3>*O==#<L9,'MI:!;@:Q</?G++P$
PASGM@Z+B=08>Y>_%JN"BXYT"9XG@)A#9#!^+A&4>:K#;<HB]UCL[BU6N>21,\\H0
P_0QE2TMGK+F<)[: OQS"HZP^-3#?ZT4Q(M[F7$@UDFAJ8/SL@^SL.PW87YB=%(ZD
P"!Z>!5'>$ E!$E=69@O,X8ZGV69PC4+F44Q#\HOM*O#M6<\'CI7KTZA33EM^OI96
PA.,,^,QM491BMFUAX#OAK0*K)$;KL /?3&@$4!Q:2J)3=ZI$:<'@=9Y#R&,4RJ#V
P?D #1@6,K2NXKVB7Y&)>\VQZ]^\QCP7(/>UQ&=UJ2:9&U?'U)&25R7Z%G^A:C<:T
PDM6UKD>D]:1Q6X6$)8(I@ 4'A^X_H'W-%S1V"_W#/@$0=,LI20SSG:R=;]#=B=!-
P?&K,R8WI; 1E_#5,_,9X6=22CR76!P):HJ,?259+2::M"K;K4OO:GWWV3[2M$K3_
PDQL^B<OX<40<JOPZI+P')@XMK?Y"2A>@HHBEB/ J76?#^^7L_9>!(F_C0[*H![PU
P+W<7A2_1&$# KA4]#'05Q0I&_;_YQ_)/O#86[/"-T=_<GWU)$\\[583M@,4.3LY,
PO=.V&;758>]+ZH!V&P)0?IWMR>'P/_^DB0%Z5'N]=U^*UBTTRKEIN[^SX,NY7O0Z
PX\HXXE/DM0D,]&&UES#_.^N][;>C;IWA?^^P)HJ#5I)M!@"]VJ9C[]2AJ8M\=Q;0
P/HS^@5\A#4V<+*UO@XE;FA %ZY>.FL>18FCX8'08.]ANEEH$A,E.L8W>%MGAA P_
P4E>&CF;CJ4WID\X^$[DVTN;'?)%7!B]YY;_:]T(D/X) AS*WTG"[K+-D!-;#"RUU
P]L'U9#I]G<SJ& [A+!!DW"OKR2!!I].FE-=:D\V6]7,(F208&?O6MC92+ZU@%5=O
P'MAP<*H@BNS6'#,W I6T-  :K!B"FP,]$L_>.)#>U?L##:XY59,P QQP>2VR^K?A
P6;Q^)10/I:BJ.Q'>=!!(_FP-])R[(>_?NI<B@:SV6[;[(DD[;D!3\(+:;HEH1%(?
P<Y/%S[FOP\=GA8@6&[JE55*E?I1)UR>N*%:I3POP]S\5R3G-QD4N_HHZ7J*J.[44
P*D:EGHC E$3"9UTS08U^;9K1Y?R9(:P0BC1"-?CSS@H1P*,YXV<97!]V*W H?PZ2
P=1/_- O2U03,TDL&.^B"F*#]EG72Z%>2MF8GPI<'*W/5&'3PNX3%/PMQPJ0^?LB<
P+L-LR,<R(V0N!XG<X^ G9UD63V3Q6:R%+5P?.2$;8-U:N]_R*5D-6INXQ6C1M#;R
PY:YT)Z[D)UA8G---YHRU-V%IG.HG&V37>&MBGR<K'W37"YZIBMFJ1L)29RLQ9-DS
PB&G%@B+QS=0])O '?=%A%HG4Z$IT?6/",=T@)V-+""GE<XG'8FR#/R,/6R<28Z$ 
PBP?+_44ACIIR_E7J)+D:?;;'40J<Q$#NTLVE99,3\>7QV_X-Q>6CH(/C^U.S,*^V
P_,K-RY^:-XND T$>.-7B]X :PY]N\GT(45:CC2@%F ,,\T19 MP7E),LCV\$<;]$
PF^U* DQ-_@0 S\9@@_ 3S*K-WZJ19A]X,B+-7>_,R#^]F+.X;UJV&7^EAR65H-6S
P+V43E)L?TP56G0U^L8V[*7T42;/K*3;[#PS/+?K/T4F&$TV:H2TH",K1S>TRR9/?
P%JL_AADGL \U3:A9A)K?R 1G+_2XE*!N'/;RD ]7T=]994[(V46W;VEEN2!]UG>\
PB^.4ZR*VXMHB'T;@2K-KDO> ?535##@KR%]XY=LZQ?OO?-;6-OE,<ZB3PWLYYO"'
P')2'+NT,,JDR#43##,T %?@@%KW/W#(>\X,NR[GMT5LK@$U'H_CYP8%C!9M\Z=2P
`endprotected128
endmodule

`endif



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : clk_div.v
// Author        : qu.zhang
// Created On    : 2022-02-05 16:00
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_CLK_DIV4__
`define __M2_CLK_DIV4__

`resetall
`timescale 1ns/1ps

module M2_clk_div4 #(
parameter SYNC_LEVEL = 2
)
(/*autoarg*/
   // Outputs
   clko_div4,
   // Inputs
   enable,
   clk,
   rst_n
   );

input                                   clk;
input                                   rst_n;
input                                   enable;

output                                  clko_div4;

//{{{
/*autodef*/
//}}}

`protected128
PM:2>RBB2NYD1V%3J? V%6L2A6L=LX0;[\SJRD'H-Q^D#)N,W#>V]7V\7&?CLE:=P
P95]E=3C'CAFHJ%(QX8T&EY"#R)799?Z4S*4BN-^IGI.1ZJT '>QP!U1O/1YT<G*@
P&'%R!(X@=U-UN.8S1\H[1?A)GO\ZZ+PT/+*OAU<<J[^>X;K*RQ_\SY2]6UV:F(K"
PNKWGC*D,9<(V4Z/2R@PRM$E&PB+?%0=_D!%[K71R]JA3<-[&5S#"72(/Q^)*#I\/
PJ8M.A+S&D-2%2N JRX>@G(L)D#R""]=FHO50&%$?/&4INKC56!)',VQ0Q;(O@X_*
P4R!H&_PSY2:'Y5Q!)%>OQ.CS?4'BL.YLO)-_AX?%=-V29^ F/ZV^Y7L^50)L/=:1
P_2TDBY<%#$*'OYA-I+@=IO/QIT"#.HI"/=@&RNOPB?DO3<_I"%_X*>^!V)5;$/C@
P@QV=>;%/7*Y=$C)B[2<W+-L[H.TW#0I\-/(TAH'33/T"_((&:X [F\JX(42 C'8T
P8[!'3=SVX0R%D.:^8U8J%0'2EYNT+1[QXXH*&WVW;42#G:?=,;2PZYXVTHS<$CQ'
P1_GN<\F67W%JC<6V\0K)[323JT]]AL&/%1[=QA,7'B#8YNP[:3D9M*TLNYW=\_N&
P$F8_ ^4KW=%XZC2@]D\O>VW^_K=CB#Q(#4")^5:!]&$'XU#V<4 'Q9J6!. !:1M7
P+"B,\!7UT\-;)7[.Q74=I?#=R(9\G=M$3[SI^V/8_\;8I7!25  [17NB![<25,(,
PVD'BVNI^_:>%2^L-!.A2!P<=8I0CB6'(-&%E3![HMO8+9YCGO//[,SM@M,@SW]1!
`endprotected128
endmodule

`endif



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      :phy_20b80b_with_slip.v
// Author        : Qu Zhang
// Created On    : 2021-06-07 21:35
// Last Modified : 
// -----------------------------------------------------------------
// Description:

`resetall
`timescale 1ns/1ps

module M2_phy_20b80b_with_slip #(
  parameter SYNC_LEVEL = 2
) (
//clk & rst ports
    input                              phy_clk_rx_div20,
    input                              phy_clk_rx_div80,
    input                              reset_n,

//ctrl ports
    input                              pcs_slip,          //toggle indicates slip 1 bit in pcs state, div20/div80 clk domian
    input                              bit_lock_slip,     //toggle indicates slip 1 bit in bit_lock state, div20/div80 clk domian
    input                              in_bit_lock_state, //1 indicates bit_lock state, 0 indicates pcs state, div20 clk domain

//data ports
    input        [19:0]                rx_data_div20,
    input                              rx_data_div20_en,
    output       [19:0]                rx_data_div20_slip,
    output reg   [79:0]                rx_data_div80,
    output reg                         rx_data_div80_en,
    output reg   [19:0]                rx_data_div20_d1
);


`protected128
P).IY2GB<V-T7K7X;6^'6?3-FJ6C>4X>WLXN^7!*@JH.UFKSY(PS+UOKB!E6(,*D2
P$G 4.TEN[26.3G/N3$S-ZY752O6;4 MS<XO\4E(!6P'HT%N&5, :5#;1:]+RHL77
P6 =X+[X9!7UK*TBM6A+KB-J4!D8!F?%-NCA]D'XIT^<;4PPR0C1&_32M@S@#[OSP
P_?6FVBPP;-G+U52(JY_(QM12-++$,1 [[$)ULWDD0].2EA434G9BF^==-@^V -!Y
P!9D_)3">AM^Q&? &N@>CSZ<^,5A7LO'1F-FG_+'A+:S%%H?H!D@M2>!O0_]X,L[*
P@KOPD;C;ICN5M7/Y?/!:\(- :(3?$8O1,\ C!,]*X_GD\ 7'[UZ"X8NOF#/QOM.Q
PF%+"4&M#/H6_\LJ%[%*S51\8W6F9_A),U=Z<-O16Z#<HF?A"Y-;S2D8_UTK[.-.=
P-1*W;;D3BI&EP$*:XB5<G]\)/1?F5_A\.P822A(F.&"8C]GF8X4JFWL&OW#S+/:<
PIT*L_1R>$^]NO)5PG=BT8%Z*/1BPCL91N8%'JJ-4BG@:P'LI->A2@N*H X:.]D*[
P91^ 2J<.Y5.!K!.7/0QZC'DW3Z6(F!.F7A@UYZF8;5<$G/W,UN2M*=@!7@>X0AV1
P*YX?P4GPB10QPJ2#NOTTQZSFNL/BR>;U3D)^3%X" %8D UC13;>.X5SV#13QTR=>
P7S)XC".<WA>KMO\I;K4E?$ JT,Q?(+?==]%+.]*R"!^3J0!V.9L-ER\4%G?7&P+B
PET!3H@,*;"57,$Y0D$Q"YF).7V1]:_RX0YB_L[A9$.1*= H5>_@,,T:<TAG@^<7-
PS;WEXH<*H[C)5ZGJ;K+&Q_,LK24.A6M,#$/^H:7L89=X BLQ7,>$OJ1^) 55DCG<
P,73B^0\9SUW4[-7L_\L2)5G?KZDJ<;<T=UN<_)1K$BK_K(" P#*9V4H ODSV.(L'
PQ;1)H+3+?72>-HV]*'-N<!_[VZQE][E1"%/64'"_S6#:(#!U(TH)56V.J<QYQ)>3
PB6;LJ*KR=I@5*_R/"AHWJX8""FU"/) &%.=>(1JK^43L0^;'*F^^#P4?VWK!R[RG
P&DQ*,(_%G^>Q[39!,;*-G'%$+N_&D\D61;C=A%'CC_;J=YEA&-?#Q.SB(FG[Y 6;
PD_M10..P&7S 4]5=+5X5]</NMVW%^+1"?@>Q>$.S#H_-"R)/ CRON8;!<<'[5I)A
P6<BT!@:"U->$-.0W%/EMVFDOMWF\%=)\UNAI(7R6-7J+EH>H#K"PPGW*#^5S/E:4
PFP!59KQ59^:$RYBRPA<GQB(NGT;&]X+C><+!W%Q)USLF>7M"345$[Q;TDCD6QQF_
PB1D7#7'&Y/8E^DC]"7E*L"<_E:> "9B_$IA4Y*!VV4_;L<KYUIU"&:(K.W-8K$;=
P19X/"(L"7!T^, OO^6['YKM<J0.*,W72I#%-&([0A?.6EQ!@?/L0WF,IV/M?1KU3
P$ [QT2Z48NI&5Y:QAD?30T^7YH,GO/5;7<'W9P^^]F@TGD1WZ$-75DM)RD\X)JB"
P_V;[-AKBN>I)_"DI7OEQT"?/6F:;JOM$>>)1XA6P6]IA-52L#TF2JBE+]*MZ;[#"
PFSUZ/FH'T&SK /%M]YD>-Q,0>6>F,7DT1>(]G?V;/$<L_+%)7?Q2_0I V)F&Z+XW
P,1M-+D@?3N_K=Y1)M:L=T&NYI?'6OYLY<SAI,.R)$A7?WCE'\)D@<K.;^MEGT<;V
P F"$RHR4_!3WVQ9$WKMRNUUT7@^BR<AZ(<@=+CZ_ND"D%!L\GD$\^KL UY#9[H^'
PJL2TP)$K#6!P9K1FSQN]M*K5ZF-TDU^*[5SY63;UK1OGG9,GQKI9_0P2'Y>W\T04
P+QYHA5AD"HY3+^@6;Q.MSI0GI/:G\W -\Z0@_UN^J7#[,J>OV/"58!(,(@Z(:V"2
P3>)3TA_"+PN\:LTA0J,&A^K9_IC>_Q#8!W1!0=?-^B=$=Z(E[I\K2ONP(>&*DC#D
PVF;\218)C_DSFHWXF-+V]\VBV3DJE=4:LM5<<,8K\K$:7BT ',@90OY\ QDY(MG&
P:C6- Y% N;#83*<]1$_,C3YT]6ZE3_Y[730X\VO/ L*IAN\I[1E^E:48;(744TUC
P(/P-N84XY6(2]_F'YDK&Z]C?F: &U5AUTFY,(4S>IDUYXC,BH!H@0^"Y\!)I[QM_
P>%*.DW-8D^66U*!S=)#XZ 8)*$%BI1D@%@)BI-O49R4VNUZ%B) 0N.?!)-UI\BA+
P(!G\MVJMX:V7:!),$\FB$>!8+WJ#52=T 1+>Q!*,9D>*Y@?B0^6\X9I<WL WY*JR
PEB=4$$E0ZU\05>1+;HW(U^)AZVNQ56HIY2A:]6SCXZTS*80DY&[VK"I5@/.PE<'8
PB7>0R?,B0_)@RS+!J5Z]G-L_J43_1:#-9IN*"@(?'?\*8KH6UZ\B/#VI<?#1$K9@
P5)"/J "8R'>$@8P#7O"G7E18N:47GT$JCIDI$JC/JXOH/B=\8SS;!*W';FEPD@@L
PRH]PXK'P BAWL6DGX@';30EYR#C3##<.PU(C78\;7?UF!RJ7>=#!XS0E.*!E:%+^
P5[+?GYI(P:"P/6#V6W60=OT"M'*I-TV?:66^:NL\],^M$8#/+LJ^=]VQL$0]6&5@
P1U438&P4>$H*XY@N>*&8^BR>4\[W&?.B.5H)_TH;S9B2O<1SS!A0[E&#[(SEQS;2
P'N9_C,K-0#V4'BC+ )/U&,:T''&NN.F+F@*;D?<RS\6KN9GPF4V(WAQ*8%HLRMTO
PMZU/)Z@_%H4 UX WB#$UYZQM&E?F%$\VI-PWE]6](+[?"-%)Y+[Z%>3$(:.\0U)E
P[ \R UW1V?[YZEXG^ZO!,\W/;5)#">1W-A5\N(/4/2(B4-#LR:WOGIYA/.*QH$>U
P@R;+P44DTJ2N/"S[T:]$K0;,W";/OCZT0>[<8!PQD<&^J(7;]!6.L':PFY4MB&QS
P1--8&1[%IC3,^3)?7YS<E6>%6]+EU)60(YGE@QN9KJ/!NHX!6BE6/ ](> KT-%"%
PZ-F$$R@P/,OYX6'N'-!Q84] )WS,[GF=(9/&=B*F?NJFNYPXK"]1*NCW* ]T'UW 
P<7]5"74Q6Q7%V;#8!FE)>50+[;6RE',?&](L'1-F&%]&*6V"R)-(=-PQ##Z<^EBV
P@G3F_QE!;B9LZW8EX@T](^)HVF"[&DEMCA['=T5F27M7>OH3%X[]5+BOKQAUD(G.
P3H;.,_^\.@+8I8H$>- "ZI;P^/Z51E9/^QO''<#:#C6UIN]"_^]:,93.3TO,M3H5
P:5K(Q91K3@@P%6/H''$RPSYZN& E$S2J,).&P?_(95?B%=]XQK%[\* RY;-:JL:"
P#L82#HK^]@0TH?0*,I.:/2Q>*2;IC]LM$ITS61[?D?S0SA-':6'BF0Q ]GO5]1OD
P,T%<H5_:^6\;D'DC4@Y@3 'A7D)6O1_]PRE+J#SEGH5#^>6?[IPUWNY2F H0"_K 
PD*0""^AY<3/^EJDR[AIT6E+U+Y<T?4,3Q[#@TB#H2EG?^?YR;V/V<8:A:L)+,4=U
P/I^B!FPQ_+VDB4>_==V7/2]!HNUQ7XIFQ)<_=7W4A2I"^6 =4UG)OTZ )'7KP#^"
PM%/Y&&LKT!945[4M*$E,NDKN/L!%B!0*:X[N[YNY/4F5 [R5 8&PNE1"-Z4SJ%&/
P%MT(?G,KAL!Y4\WSQBL )EQSF<@J^:0_'_2)%'WPQG0Q$S78+R0>1SG>U?I860$1
PPN.S@HO_0R.H05>K232B#]"G?=M(K'H-.1O&89-3A"#A$XRCOR9<M3?"2\/T]W0A
P8+JF(:*$V*=JMQY6 [BKA5O9/83-?R8TV0Y"K:Y7*VFH;SH9PC!A00 6<==M6LKR
PK8;_4+-J@ 'XVC-F:<OV95^,'+R>RN^,'D6WAA;T1B=&=$%KSSBX7GU]D;U"3ZON
POM2OT2%"0.OLXE#/X#O7OR[XI= /';B<RQ(BJ_D:&A$?V*'WW#95NZW5]ASE#^*%
PWS;"6MES/8=O1]N*9LPZQRDD M#D@#1H7$61)V/2[S.G!2EMN,DCH5?/0:2X$\EP
P[>57#:\@"D@G(F37Y73]+GIO*7RJU.Q!U #QJR-726%C0VU?O_H,WZ*<]2\Q#B<>
P0%&!0=,4,K+>8M/RN%/<K++[PH49;0ENU;K4"3<1NK_K^Q#D>#^OY1N!FY\'6<V=
PW7X5B5:M%?'$4LT.P3RMOX!^-Z9FQE.%N25JR;_D4!&68:+$P/?*TA*X(K9$UW-*
P/\/V-/!#S:2B48:#-_G  P?:61JO6K&NXZPS7J( F/.7(*O^P*UX=G"3CUVZ00*@
P:F"B.U^2ZK[DKXT(G/NONEW!8X19Q*NPGLR^\%)+\QU5F*$3-L[YF> S(S)!PH+4
P+K$^FH=E>+4_3P;M./I(ZAFAIV$&"JY*H$'&'EJ)48M:(*59PUP@1O 2]E)1MTMV
P!#5?/!]'SFJ_Q^QZG.Z[$+DE0XW$P+X(,O=YG(VXQ@Y<N4CRVF!=J=74%"CW6@]L
P0SQ+3:5O_#BDGZ08M 4)183N:;Z;W8+S8."][VF*E/,\:?_X0,]0TS<;_Y_;SG<9
P)Z571<;Z)Q!_9 [5G6[-M&PG4Z?5XV# U4K"C*0,^?T/9.>R4TWK!(\U%_4/L3OB
P:-Z?8)Y)0,A2?VDE F97*[83U^L-?&G+CWA]ANHI%)OZDKFTA%/B^NK2EM^Z](L:
PYN.J,Y7B!Q!TY+XX(N%:5='%UZ_#3\<80G)%ZR>*/+<5%,NNB:??0X3ND7*''+6^
P.''?^LM9SW9)+3;2MP4JS-E1/M7_3.R*;&S?S7<[>0@CXNM"[FS@[/@GS/-5?[T/
P+2#*%W=!8<DL<9)*%ZC'6P%.K'*>!$<4J-H'KQ?9CD_9SHJT9\S2*Z>WZ]8A!&7L
P:.N.GIH1.N0\7]X^V"!N$B./$AP>6B[RVLW9,CCBQ69Q,!YII *>*$-[:/W(^FRM
PT D86-D^P%!HFM&6 G2-&HV74$$^<+'*[%=UE9_^K42P=J'&QT\O;'M:8=/OY*/O
P9D#9$E@Q5$B P5W%'7'K9&-]MS^P3.^K1FG.H<*;LVY5$<F%I-M3[8TR&IG4KK-=
P8%([!S$?@$361KM0?":$@D&OCK\6Q&H/&Y=P<]T4&D2&1L^FIFYMQSRN1$F+PCGX
P4YYS01_Y@D45E5SOD5+SOQB&:=;)U<<J#>(:>K('AO.9+BWF=G"E[%0PZ.">,+%)
P4@4:-%WHB(ON^]!B$W; S8#,KEI.$R#J1JY&45V2Z!J0DHBT3/9N%V6,<SBX#>&_
P*L)&L?2J/LBH94_M30F;5WX<GDI(:$N<X#P8_A8PFO9:A^>IS#"9O%['^46NO,D/
P\K8VPR8*9XM"["$1@5H@2TBK^)VD]TL=Y7NS?>DP<I%HZ1^?Y;K7ZQ<KNFXS=C,-
PD<7K#@B"Y P9WZML.OFPD9P&DF)!WL:=4&='2MSGI6HTB%U$Z=EJL_5YXD:;*MJL
P*HNK;F8"]-'R"V82<BMG;A.72^5)6Z%?UJ@4?Y2*G0 'T'((32I#K!WXBMC=AL:\
POAH/.?1%3M(3^7]P"YM656:GP\YRP_M<8O0?;$1 >N#M[113$X'1E ]WB9Y"W2O\
PG%M]6P_4NUT0+YD=.X -^6:GM+QT>*3(W0LY\)&B@/?)T>-0?^1WK=J1YP3\]\?Y
P4X30O%3I.+(4)N-M"U[Z11]B[#5@H"+_+"[Y5MKDU@5<NG2EM/@J##CX@9IF6G(2
PU5FA@GS2>1QHJ(""6C&#DAR%ID! J5[8)U07,XQZ>[^T_*.O +E4(Y,XR1CY'(M(
P;(7OA*36_.9'I3!W1P[!-X(QT*RO,>)DU0'G!EE,[?SXR;P&<GO6GB%E0!DV\S-<
PIHUBDJ)F38;H;)<S-I%JUOQ\,AU>PZZ*P/#8*W[9,(DMC&1NA??[QW.(N92A+XM_
PB>;RVZ+[CB[/=1(^N6:5,UF,H3!7F72+<2ZKJ)@!*5/]?@Q4'QY;*35&K$]<HDLE
PT*?[;@W.!&,:I3U=4[2-7D-ZD ^BO(5!U>\C%FAEQ?]G75GN^BA#6231T#.G06@Q
PO3/MVV#]/J?"Y&>JZP00#S]ZD6!L0/&XC=.8H.GR'>&NF74^IO 5_U^+PI%<K;D.
PF.*VYLE#<MQ-^2 J#]8C<ZU7(54V"*J3NNHX7RHZK/']8[3Y[(OG-!:#08=J'#FX
P);B#QF05>WV,,$ 7WA&W@U_<UV=;D1LVEO9S;#I0F9UU[F =U.5/B+Q)W>7,BXK5
P[4<*T :DXAVD@]J+#O9U$Z8IPV."=<.;B!F)@9]R8T\.+\(.I)R9,SB[L'275\&@
PD&@;:@2L-HF@&-'TX,+&N;N.H(K<U2_;<Q-HJ+*7IMA0FGZY\"(,PQ*?L$S-32NS
P3'SS6S.@8/VL#DF8.XH?:/QAM)=,*+*/4-9<.<%9$D+U'/$\8:$9HDOP,.=5YN 5
P5+]SXQY (G\QW?4VBB(TA$/6#O38]MRB/4FC8KG5$\8WZ\?L4_F2KK/T0,(J1>4V
PD=I,%A/11S6.B0UTWDZD?L":-G"_"BUO<YVYEF'8*,;.,N/5*Y!>!(@3C-_"2IUT
PF--?M#.SD)H"N?MH0..^\?9$Y>&&VCQ'J$FTUGSXY:6B%VW1M"T,O:Q[+8C245;N
P?R9(V^O:'3S[2=;1]%YP 7CW$V_T/@JQ_"K9M/WU=&T0(-YC=I0GA+64N$'L%G0Z
P-LV]V:M-9TMSS6P"$W<D@O51;Q1Q#7Y7)6(?@"U@1<)8E;WD>'+Q3Z-';5$F:\.Q
P8:<TA9?9<NG!6_$1PP3R5<:,3?4FP7[)XK/TIS>PZ K1:,+F_"%\%F'0T8FEV1%H
PQ0)@VU*VMB4O']UX34><UEN;V/4SC!=[DJ#M-N4$;>W?18Z9D<X42B)/-[/LM,V@
P!E9+/6'/D.[W\@U!O BY@7B5'" ,O5;#?]B0CO,(4^'!W8QO>DU@,L:HT,W6 ZR6
P)*YZA%Q1FQ4^&X(YERK=KC'0Y'^2, <#-'_YQ> TJ'3#9-HW _S8UX#_#B9R)U>V
P57(=ELBWX%&21?A:X]89'Z'+-16\=_\^T8J%_LS7FJG//]O#V"\J?"K*[CF9 8FY
PM5@<T_<NJ5UGVV&\I@:?C649QAG=\#R4<?(D&&_9,(]@_,J>]HL!&88Y<6P^A-NW
P$VL/&P9C.F NW.Q.F(XG^N\M&R:K>-K"Q'1F7"_0K7C:+#6]""%_WJU S(WS1#T[
P(\O'H=IVS$P@,V6[:?![.,"M\CO8I@4G^(-H!GNT)ISW_9[Y7DC&K1B_+58T^Y=9
PKBW"947G?;>0863A>\*^8Z7J&UB2<7\ZO?T3K",</%9*@ALW7G6"H[.>S]>"X8]]
P+D);5Z.@MWJD,>2;0CA>\WOC=0B"[F*'DP=4L_&>Q.+-"+ZI?L*7"=U06,4Z/;#D
P[E&3Y(\M8:W;49![A;J^<:X@A5@Y EAS2,D)/ST&N$I.F;ZC.X+ 5S_RGP3++-#^
P+P8VMT)Q8MF3I-9M6,&*0=;R(IV&@*:RVP"<U.?\(=V1RE&=WJ:!\,\"%<!89%Q8
P?\.N,Z\DV-YX'"FM73>*:I]ZSL2"WRCP_OTZ$]3(,^;F?[;Q.Z2[Z3YSI>S+@U6L
PQ*!F>[%X-3)+F9NC$I8GS5;\G+]9]C_R^P:OX:V41$OUY)XZ"-+I8J.W3JVERCT"
PYVEP<B+?GCW3V+AXG^6*5\,N>FD^5*4SKHU E>DV##=PX#+2A_2I3,QH;].Q\WUY
P(+"IKUR",'B>;<?//T+$]S"D1'@]>1YI?I&TG4)2O$9_^@WLN<GAEJQQWPD ?HO2
P@GS6R.,N*S<9?.UI7P+6[>=.AI+RS@TJXL'P:8\+"[?KFL^.A5#7#C2"!D1:S),%
PLWJ2\+UWXG+T]5>U\EJ5QH8[[L"\7Y$3*SP=:UZ;F54(<]L<T#!'XH$:] )L-IHK
P+3MM-K[-=%J)3JUU0P?"OAYJ7;?*?-^)$6AH33%U\WB"@?0!(NAAKN.5_-13(3T(
PYI$LU8LSOEF2RQ@QYC/!9/=+Z1V5LK"?0\+]$!I93K=SWMNP'B79G_*Z#%3S8L6H
PU$.W*<'*7(V,<#WZTQB T%(9BF_&G8W277/;C>[VQ->.F(!.C*"D*FO1@BQZ6!BW
P_7^\OF)3VYK-PA3#DPDI^6X[.PR$GK]W#/T)JC6,,;+"B.X5$ZWQB "_%T0KYUVL
PH#TXEU]H=9I$RYBWOLB](6S+-UHP$"8NQ&Y[?(8?N3)N%E#3%*^_#HJXEXJ#D;%;
PC3W"5E8WG.@/<K0C^@QW R)T]T#X)KFCU4E68:N8SAUE*O(4G-;T,U[J+#],K4^@
P$Q+5/4%V;9Z6>-((*J <J4&?);W<2IW,TR?)GCL6O+V6X7[92ZN8[XD8)2VP^FN2
P/OHQ1^*?+UK/Y0T8^)#I?<^H5-?$COSQ.U=J0*<"X5B=63Z#MPT&CD4M\B.^A8P!
PELY3=)SP&_!3QKAA_30WE=':1VC+(XC::V/E::%4UE..VY$KP1P=7Z4B[\:=W?\@
P<N^MC/_"E-E[;U]I;Y2?\D@#]X9Q&L*.B)"S<4\"Z79I>HH#Y2=!T39??#*U0JZ1
P%A[N'!95\ 5'NO"JGK@B@&FAUL6#W\.RG!]FPY$)YK#R];JP3)RO-@&K?J@"1:S.
PB<O6A/%WW4ZQ.1.)&C_RK?.5(UJDN!U)4=B*Z+R*/J\_D^.O#!=K,R@3Y+WOXF\M
PGIA4-KZ!D&91%/"A0>W=:L_MX"80Z+\[DX&FU:QX /_%S,8:"-LWY++R/W=#9!JF
P3-<Y325$-!C:GXDF&SODR%J!?GXIAS]!4]:ZI0<'K,!"&!QP)$[";.Q<-OY*N6&Q
PP+WMAVNPZR34C20RD=__(Z64GSZ6YFM(TS2(<?Y]@BPH1VG.*='N0WK?\^GBP>PA
P-_Y;_G9.(ZL=HA[<3:,89+Q)P?;B??/X#HS;4/$SBJ^8T-IRX*NWU&M">R)FC:_Q
P#%*^%=WN?![A 01./(&?R,/%5L=M+"A!69O.#V4\8!"7&JH*>#XDPN!!5%<AP0&C
P@!.ZYAG/VZ2?IX?=(=C_BD\HJ^$@K7[@&8HXK<.J=U&_S&GZ@>S;'"_H"4#<!QJ/
P4#R0V&/3$#FW0^</B)+[O/6_'/U.9)L\?Z:*F8FKS LYJ \Q3@87%1"-5U=?&=ST
PSZ4H O<@C) Z;Q5+I %>'E+T5)NV@9I3_HUN02^8G^ +]^G);,5"J.;(MZU[!G$C
P@1360IP2R5'Z[C9S)T8(?JFB-W/' :5>QT4P*>%X!4,D#-U+>GX2+R)7@$(\HWJ;
P,7^R49-O2:T.%^M_\J 9O;-.)^!$^,+#M>]R_1VZO/?:"._F[?8*Z>E8!=/M\YMP
P=Z>!L\\UVUF31&ZN_PK8DI'#P:AW"1)\6/NNEU<L$,*[%2,IR<<IJ06$\G@-V1>)
PO+A+U?]<I0E"O3^'7MC"$6T_U3:);\E>')_[/P%P5B=-C<G'R-%M^4J":#L=0VF"
PE"GJ>FL-N)_60_^T"\*F;86[0H=DX0#&75%]C\JS2'OIKG6GI<D\:89[X$1BN*"!
PJB)=ZBM4)SU PIFNK"U="2XU4^&/_*<PW!YHH[6ZWG\W;<>*10ZJ?4ZGR'+5,B!;
P5)-,9+=IR5,G*X%](UXRJP:&4IC4IJ-9K$+I:C&O8J@XLSB-F[GD\U@['A*GQ!_/
PEY%%\2/6:'QX>;0$MC'X(2Y3E"=Z_LB[W>"8K/K"M^)]T+C5#&EFN"_56?<D<'GQ
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      :phy_80b20b.v
// Author        : Zhe Li
// Created On    : 2021-06-18 17:51
// Last Modified : 
// -----------------------------------------------------------------
// Description:

`resetall
`timescale 1ns/1ps

module M2_phy_80b20b(
//clk & rst ports
    input               phy_clk_tx_div20,
    input               phy_clk_tx_div80,
    input               reset_n,

//data ports
    input     [79:0]    tx_data_div80,
    output    [19:0]    tx_data_div20,
    input               tx_data_div20_rdy
);


`protected128
PQ1P?"&4P&F/5;>?H"8F_^=!7;/)V3@8(3$!)(0"(='RV6'(L3%NQ31KB[^WV&FMI
P3A5N;7.M?,O2X< ;!0-"7FX;NU=XGJ&17BSD(Z>89PS>IV'?9'!F_6V,*&1@31*<
P3)E7""U7>+;G82K3QAGT82Z[0BVA-L&/HM5M2'FZAK9GOZ3 /C(2>][?Y[*\'0LP
P11?<@09;\8U[ ID5/SC=-O* 0=.8^#?RGRL'-M[_,1 ILQTGJ"#QVD-6<, _Q<O5
P@'6+T3$Z1))%VF\I->'5&R3Z1E*Z//VH#P"4P3C.Y/'%>2,-,V-X*:'HO;C?Y"E#
PZ.\@@/'.A/^'DYM6Y&9 8B :F>06^5Y'D^2=LQ:&U#]@5J34M-MH7,(?C//>I6SG
PI?O\;3ICH?\2,NF0DI'7@^Z+H-3HG^(PA<U%?4 $@[^GG CK8IMN<&F$G$EGFY<7
PP5*Z"A0K#BHZ$V62@%ZG(74E@?Y/<EK$,XMP!@%YXPSA!3MFNXW7,DF!(\+J)4AH
P1-,H>_-*./C_"79*E#$JO#KK%(^=^#?,&ZC"!8]]R:LOD,;"/0#%NPH<VY'CT3WV
P%!1I@_L8_C3PQ$T'K6U/J3AB?G+ 9X"$R!DFY1'Q>D>YLHY;BI^\Y(J"C.R7J.A?
P0N!<!-B5Z9@+US)_P?=]UN#5=,^:O1 7G;_:-S?!SH-E\ZR9"<L??8T]UNOKB+):
PR3-9@D![L5,N[]-2%&(Q9Y".3P:I,D9R28Y1:;"@RF:UT, @X"]*MACYU_5B_,"7
PM6Y>*:O5"Z28]!HL)@=] ;!XX+>&LZ)09(W(BNHFB8N,)]\!UYDCV_)T',8WI3)@
P^0K#(I_5%9E)#&JF@7*$R#CP- ?$%"+K7B[<5PR)3T0KJ;:[%\LXI=+;0!0:"0F'
P'\RC$F"%T"M/-\.Z@,TG93)I"?,\P68$S493A2E>VU"FV"B=7-"=]0\9'''1H4!_
PQ9!Z>M4<5A#&O1:HD[.@B]5NH^0G?!_KM7=UC,QTD)C23SGC%@7[;B'_N!Y@#6BY
PZR (=,W#_W3:7!$@5!.TFG5!%O.QC87F^B'F@WM_@E%._?K5FJ,)L;5SI41G<+9$
P?(25SH WA1^)$JAAAEV=",,RE31FM9<^\:/WP$_,DL)A-'OL/-@'C6"14+#L^DL0
P$[>/+AJS16'7LNER4JIK>Z2?X5P8H\V)0633S"@X&/POS8I@X[G\6"*/C,QW8U!,
PE2PM3"22,_ ]68Z9;>N1,6H0DKFF,1Y^S75-XTGC(^#;$.=B(%>X5S(7C^E-1=EZ
PVGS]H/'')1K';R!N8INPB$-0.0U=26G32C&=1:C35E14\BB5=G>MSLV6C0Y:@)7_
PZ&HRDR)@7J\]6[T?Y C3<[X_ UAH*SD!YR>)HP7$5T8.>4 (UAE[!O 39>15M9V)
P!RO5V:\6QP$#JBMTVF2VG#4PC<,IG(W4W;D6-- ?:;47VCFT'#(N[O-V1]AXVJYT
PAFXUQ:K9H'1\.(3N(,J-7 2E@"'!@'=T 2^!0T 2%U+WU UZ8MK!E"K?MMT92F'&
PO?)M5R+GS2E4.0_$-WAMXIZDZ[@&[B;C\F^+U!5Y4<:U"DA]?A%'LMSG%I/%QV8\
PV=PV2WBNZVLX)N=[2GXL),.;J43M$*F)E@P\P("->S05$J/JQ:'I'5!?4^GI7?SE
PVAAB"VH;52@BYTCA(^YD:+G<L6S@Z9T_X4]I.>-_70063F^I"L^0&M^;UG[+Z/A?
PV9;>$<QX_#H/DTI\%,=N0<D_]MA@L2)U*A,6*GH/L?P>C!T-\;_._+YGP1QVC3A@
P?GC?TZ3O#1OA6::[7?)]/^$DX-SB9PM%_J[:"IZ0#%LM!Y"XG YP<1CMER90#BW_
P=3Y?H=)VM9+1KYJ_7!C4%'=N&C.>1J*F,R]J"^!MUD/SPF47S8:B!.7M_.M'P#)"
P5/]= E'3^:8=6=8D3I7'5.)T[C+];U%6D=5^H&U-3JN*>S9KSC^6,(B$WS9^L\+@
PI-A=<C='/S_2NB6=EV0+5D=Z0&Z0%1;?VV#Y^)F;[(@'4UZN6$V.#J0OUAAG57AG
PI10'R5\2GW8@(4E/B4G 9:I<Z2&6M4\GSGGFM [X)U3GN4&7Q/^]=[WV-2&0:?;-
P,7JAV9LZLB-U "4)H]R=C")39;NC[Y_(15J>*'?-[CPU@@&Y$9K=OL#)^=*67J(B
`endprotected128
endmodule


`timescale 1ps/1ps
module M2_phy_ripple_cnt (
    input         clk,
    input         rst_n,
    output [15:0] cnt
);


`protected128
PU,_;W,]H6_H0)BI+=(\ >(CK@="]5S$H? ]*,67D7)7&Z*9&E6=>PO@K"?;9+QV<
P)GA?2MB8/<D'(SF,%%O@F&WU\4D;]E$49D32#%F\NWR=OW4"H ,*M 6M0[D A"1A
P1BJ+-,D&/?8JSFI(K<0CPQ>M!JX_V^:"@3ZQD;"UT(V)X+Z?*%F-0+1*)P#>O3WR
PK3<FG*?&JS#,=%HBB\"3G<P.&4OCAHSC&BB.0/;SZ\9**Y83'\.BOS2ZA9H,SC'4
P__%,'82FK.,H[L85C)M^)5L;8_9&G/25,[-^")!$&$L?[,VQU!5I8;4G!]*^M%?/
P#AL,717+_%@ZPULMUM4IV^*.#'/Y4H%5#D,6I4).6W-535/*+&?*Z<89Y%!?DD@U
P^SYS7Q3U,CF5TC>VWVZF=6F I8!$[\4NC:K0C:Q]) UNVO5(4RU0X-&@3V6XM'+N
P(5&A%:)OHQ*^=QMYML"3(:O,9605:C$R&CXY1&<0MS0PAM\J+4@MDT@'[J'49J?"
P2^P4$%KT,%T/9&#K,*6_/5*/$]=1@G'$J0A7*# X6X16B?X@Y_VVUL#X,I2[MUW*
P;#25JZ(1*H1JDDTUD@[\NV'M+%KHOJ='S*;_>#,JHMX?KK"C+_AK69;B!D4U%(M[
P-%^A#B8 CT4FR@CK]HS<G4"89)TY*B^0_\IO\*!_X9^>J%DO#(@S*EAMCC.U,A=&
P$XP7Q>+-KK&L8[E*V"=L]DY"5"I?:V+.VV@,(8?GA$*EW:M#S4L&M!S  N,!$%5'
P'4SLTUGR("M^#UW28)SCP5*$-%91BQ4: F..0@F^V088[%ZOSMB7_ODXRF3%J=B=
P2?U/9S+C=<JOC*GE;Z82./AK[F$<N43.JRU8#LIJ#[V=O\L(SB7(FH!!OKV7O'NQ
P"F%=>W"4Z[39>JP;_@E;:K\@DS./4G!*5,WFI(-]<!>2-_[)2H8&CNSS-S7<#WJ4
P/N>I^Z>AYY78U>#S1AYSHU@ZL//$E.BQ.H&X5S:)'3N)MH[M._=UPQ]_6YBZ7200
P\:D]1+YK!W7R5,_##T&P!A<MP)3I"Q1:OJ+J)G $O1IP%&0/A<:W-PZSH65DIE2-
P]L#KVW_L?&_9FX6E74J5T%4F;Q65-7?0V7K>MW&WB.J!0N9&FHK$U\/C$G0G968I
PCS Q:R!AEU!874LJ%O!5ZZ,.MM8,7-FO86J63JH 29/7? T*01?E. ^GIC0H5?&9
P\4RU>'>Q\2]7RR0\OPT)XZ\KBAS@,&Y'@Y+>).9:!F-+ \+__&W.S:['I4U 5%_8
P[4K&UHM=L0-A.AI,CPFN(>>$).E^S D43X 1VJ:S\$0*I/IGST0=W[)08,CC9R*F
PUUK,M9ILE70%4_!:[)92YJJ(JNHXOXGWV %</FHN^.^Z\\4Z^5'!',=DG/X)N+"J
P(.NLV(9*1]L:X\96.J?/YH)((O-U#[R!8F1Q&>$L=S?UVW>1K3&C_(7RG_:/D+_.
P.$BHC"#8S[-JN*GQ'+=\(=5$%WA2"_.!'/597P%74EV4\!$HCULXXXP.M<&JK1FJ
P*5UN&2W_:XEE:H***NBC?AL9T#U])$D'\::R)/;M3TK8Y<AHNUKTY(V2<,\M7J+9
P^BA6.JV7PSZ =@$T9.'P)?'$],_(]Z?8R... 4>E[I_)N/K9=2^S"K(VIMU)Y*ST
P5*2O$?Y>\$XCA Q2;A!B:8[/+>/CZ0<$XZ"3Z+POY2WS).W3T^]+QL?R]D=%O=S,
PT$+.124\ W]75-\ O-->X'?F$@DK$NPLL!MG891=+@M9O;RM@V.*>5.V QT\?T+;
PP'#3+FC75U WECUO8#Z':%<75M?[\H>@BJ8_%^UJ&Y1H7"OJ#6Q@2J$X*0J_"FSV
PF LO"]]GK9]>*A^\8Y'@.'T0FK1L2=(!=2_9#&@:@T88^#9=@I"N7.0J%+STQ(%L
P;CN+$_Q?P\6L'541*MY(1=,!?V+<?E\?,KT%+8/CE7L^_G=6%DAC<D,'ZWY:#VA*
P8X-4Y_-(M=#N!+%\[LXT<Z#<OIW@^I\4>ZA?3KD1YX)9RC49"W5!>,)JJBPO;])'
P2P2 B0ZZ;HD5QZ W@/_R1R05<,H5/9^&35F/6D8,ZS/)P?6'+HJ$35X2P&-N_%4G
P0M/<UI(5S+UMPB,U#XKR!S/G$@OAV]-B)U*E>$1*P?2N((LJ,4U#I!6=J/RG.EHT
PPH)A&]#R_UE>EW7C4@97<WBU< DQ*QE4$.+\RT7,A(MCMD.^CK\RJ1:*&'V'F:U 
P0/OW*BP-RBG?+!%<TOW=&*LS%XGL!M=PQBZ(L<P]@6GF<>BL(P\+E9)+"T__Z@,"
PE@^\HO= \(DZ*Y6G><2$>7N9YEONF_+S'ZZOPQ?#DI&\7Z>PUZ2_:)!..SXB+.51
PZ&PW-EYP,+("0%*^(R(K:_Y]K\\.]#X7U;[*9">F.$]BCDY*-IA E%PYHFT;^,GJ
P.INO+G,<F_<FERGM!GN4T7:TD0[^T2&D-;7: !J]_)0/2S^I3C ;;Z$(%JT#.I_7
PS<]U0<-SE_5!W10A0%H#*UEMJP9*#U\0_EF!/R>#H'E9OM=F*9,HR6_@_!, 1\II
P0U-^MT_[8OJ*6@4B#*DB>;0OK)]T+\E[I;5["J*55KQ*M"V$2D52Z8237SB57'KE
P"-<CZ5-^^7M9%;P[D_;65YCLK8@W/>)RC$P3[D@TO7KG; ,LXK7NLX\'(PN6)U".
PHJB)U^QAN[JL@5_A6J:!-QZ.1'R+D=0[/&AVI-(I:SN"@?!PCG3].$&A4G'&OVBN
P1_#QB*&V,GI;';Z'S*M5D.'\B*]"_GK1:=]0"]RL;-X$E30X] Z#EHSW!)\O3@I[
P7P%-KZ=Y9L$U6YH3^VBCBALFGRM'<"0&X#9'=T;:P2)/!3)BC(54IZQ8&KM:0S1U
P!CH\<%#:6[E4 P3R:(BCE>-L"2JDA$RGS%^$,6:6NS[4 )!/2X[2?;& 9 KJZ$-X
PT+N"[(UEZDQ:J2^9U]$Z<H\?4M3*/"LG%4->+CN\0:+4U@TE_B-+6!]1P?%# ^7.
PS^C$,$\AV[G&("%;O4[2.R4G&VKQ;9^C1[RQS4@JW%I7(W!QQ1SLWQZ1.NQ9#:O+
P#OJ2G-C8*\P^JDD)ZT3M?4_46TW7.:7WU"<#%WJIT_,S8F_&"(IS<JL 0H\*'O3V
P2<VHX:>EMDG,/+(HS3Y9V5/P6"(@A/F9"&U%&C$ 0Q43CZ!JB;6^K75I!CPJ;O!=
PQ0C0KMQ)(?I7'[MY "S$S*CU*[=G-^-[K1;5,5U73^$9";G(&[SIZ=#(^1ET4AF=
P 2*N[!'T-XVCGY'U* [VU+UA#L73Q4N;<)C!LE$+J*9XM0X\!B$9LA<>5*N+[6.O
P.&HAO,"&&A$)=,ED0:N#2K6@>%5Z9,4SACL^H28R!5AL=R0^ZH#<X,RG9H-W[$J,
PY 'VNF)RE:,=33]0@M7E)OV+8!&M9/N3H3+3.[)Y4=F%A'1>BY@,XOZ6-&==_&9W
P=1-(Z6/V1X&:G1[/R/WWH)'#!T2OJ4$8J3<5'CH/:V>.4XJ84$\G,R04I..OL!05
P&[9Q1/.7%!(L!H+R%,UELE_?2;L8.+R<6> G*1)><"/C@>H>$>HQT9/AEA$K',&P
P47"4YU!1RX\\P#[*O<K2VZ*6>C/7K4!$OAZ-'\U\0,W6)^FL."6]PW7Q'I.5N K5
P:)1J.Y#NY_J'TG+'7*G"$HGF+]T3IN,IVLQ,'E&!A8 FZ1R[%VH,-"-Z<G/E$ FS
PXY"O65EKVD. 3T&66<2HY&5M..A5R>P?8:QYO)&C&Y#4&!9).7$T?AU#U\>,;F=)
P9/"8O3L U?@MM\%1'V\_U1<MO6)I\&P0:D0-G,I9<W/#QUGU:"C'&N,X1?BJRF$C
P;R*6-(!OU;?]LO9"1L1;#%==JNT58Y75,4NZ]E<8QLVAO7R =^WUV&EB0MMQJ:+#
POO=V<9S9VXS3EN@M,Q"OJ9/KUI%;<LZ;L7/H(PAHX,$XQJA]:7+4PZNBI_VK3*>3
P2>VA-W%'/]MAHBO7&=&L_V&_R>/N7WKL<?;ITB"7PRJ>U*721W(XIXDUJ=2F^12D
PT,0<0-=-^;("S< F]Y5#=UBI9.]=F[3ZAKX ;E^JDHX^"SLCB>8N83FSM,<51E\F
P91@BGA7GZR41['!+P^<@N7LWJD^N^S9^J=P0<W;L%_Q6@GYNGO=+9M]0ONX6><RV
PWZP3QB+P'8Q1'Y7 IL:6LJ%7MT%XD[(3CZF >C=)6:.VNJ@:PP;MM;DM[#J@3%'N
PR),KI,%J,B9X8@ZE,FQ_=.\9U0-N Y?,6F8]CQ.H@.FJU+Y/1P04S@)H*O]N)^M>
P\!6..9$)8DRJ!(4/NA14<0-BW;S\DI0JG.),.*[@D1WC5P7V[4P "FJ/F=,!]/57
P<5>FU/\O$;5M[C;FF>R6D[6?FI(&*>V5+V?<$;'PFAC5NRTS;=A5(((%2E2TG,N:
P>:^UN^&B4):GVE>5BA<>(LLG*O=%MGS!&-Q_H>?(2UV=,8;.?),D2R[,9O4GE?8_
PF#UL+]$:U <54Y+1XC\#-M'J1L]R-N28-NE0>X@('55[?+_2I0"IEI'HWYF5-\I?
PI-!R2M^1A1E!_SY@?^JW4?4#-7D8(IQAWQZXB'>=F4Z",AUR?ENPUO4PT"@0JN=4
PE).05./,E>0(.FZXC.8 U:I&5.]JN;DSE75_N/V!">UV'P K)(?+PT)PK&G@K3I,
PYR3M>QZG.I/)+V6)A?#N4+N?WE)9-.&9;IWM5NSVO_AGZ.EYN2E,/U -(TX2^PC?
PX6Y725:@OC$5T*5]I/"KDX;BN<:;=UW.GU5 &P#+NU#5!=DVI17@7RE>TL7/1F.*
PZ%?Z@A*SOF8>JN!%T6&.Y ? N !Z=D@E!XWV>\CI#(&J+Q#@=A8,6&O1&7>*]E"W
P-3'Y! >,,3CBR($0;SQ[* [!O"1B28)JX+%I.V7/ I+^$4H71_XOLTQO $*MTY--
P._!0I,0UJ;H$2^X+HGV.[2-\_.KM/IFO*6#0EY0=F5XRU\]%B*LP],C#7?8#1)+L
PV$1L$RLP5(BQHMUBPV<CF)4NX:B0?:1CH_0.,=4^D?!G#EG 19#,\Z&022ML%@:J
PT8MHH?UR*^R.0R3=$-]C)VXQU!&KWW7F$>>^-Q8 DH8TI1*U1UN&F$8S[ORF+,OG
P0]-,&8;9P*H):S#2L'OTHTJW-ILVCIT-A[LMP&1'<564-%MFKX?T_8R<\NVQ5P!!
PZF0)JJ%)^/C<1660%B1R##;A5C,<QIBI<;4V;08J1=1#%]X"R$F '4(M8!G6%6]F
P %/+WI%$9.6KJD.Z>D_HQ>L9(I5 HD*1OUE88=Q=/#,EA%DZU4IUWI66Z/8^15D1
P>VHVP>%R7\+%8ZU:&'YB2,\H6).ZE$H7BJOP!4?>NO;XO#$>:Y?KI9'K+CTHM#8B
P7>WFMAS6%IS8VR2-M" $[A.Y!OU[^M)J6IQ%<V7DA2YK#%/5M&K^:;TGM\$=,U4I
PNRN%<1Q!ZBK=*&RY";B!^.M@=C_\R481E>\Y] "@&(=RV[QZZ QS0*#7G*V -(.]
PW\N\HE=:JOXSI.AWMD?85DT#3@D\,MCW&HR"CV7'UHS-]8&#XU<:5?(JV%1VY+P>
P6,W1H/>!!T_( T\94.I9BH=U18^!Q/ML-[>_SRZ$FBYMM]0/IWB<E*N4L:2]@K+0
P1+*7AN\(YY$2=RW,5\OTNBT?/[C /R$V8\#G[/Y"Q!RU*E#RIAK8L=T_/\6/-9HD
P5SL%F)O=TC!5I_TWY8K0C5P+3=LZ_03QB#P"G03-Q:AX_DM7O#VG*=(>98] G+YB
P#:0N6^C<S-)6MFZ1R!US?*_<'WQ(PEWVC';7ZS5F#%/!)@$'P^2R*WV]B?O&L!4U
P**C*H^<Y"#CB [42 K9Z?*CS=N7A#',V#KIGKMQ@%*BL%&B.DVUY&/4K(#704-)S
P%53]C\T4:,(LS'=L%E<S$($!B6<("P;N&\[5I0=$/&/)<E79JK(6AC>5"4RN"B;Z
P@H<RR8:><'EY2%&!8ZK")AATK*[GKY+HWPVBB70S_*-J%HY#,ZA&!M3J5(]%>YHF
P,[ SBCT]OBVD*$/ _80KIU1F*VWO,P<P#7APY=8(:JDX8*#'T-060%L\'6,H/ZPH
`endprotected128
endmodule



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : phy_clk_test_cnt.v
// Author        : qu.zhang
// Created On    : 2022-11-29 15:40
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PHY_CLK_TEST_CNT__
`define __M2_PHY_CLK_TEST_CNT__

`resetall
`timescale 1ns/1ps

module M2_phy_clk_test_cnt   #(
  parameter DLY = 1,
 parameter SYNC_LEVEL = 2
 )
(/*autoarg*/
   // Outputs
   pmd_test_clk_cnt_hs,
   // Inputs
   ref_clk, reset_n, pclk, presetn, pll2dig16, pmd_test_pll2dig_gate,
   pmd_test_pll2dig_div_sel, pmd_test_clk_start_hs, scan_mode, pll2dig_clk
   );

input                                   ref_clk;
input                                   reset_n;

input                                   pclk;
input                                   presetn;

input                                   pll2dig16;
input                                   pmd_test_pll2dig_gate;
input        [1:0]                      pmd_test_pll2dig_div_sel;
input                                   pmd_test_clk_start_hs;

input                                   scan_mode;

output       [15:0]                     pmd_test_clk_cnt_hs;
output                                  pll2dig_clk;

// // ref_clk reset_sync
// generic_reset_sync u_reset_n_ref_clk (
//   .async_in_reset_x(reset_n),               // async reset input, active low
//   .clk(ref_clk),                            // clock of the destination domain for the sync_out_reset_x signal
//   .ptest_scan_mode(scan_mode),              // manufacturing test mode bypass control 1 = test mode ; 0 = normal mode outputs (alphabetized)
//   .sync_out_reset_x(rst_n_ref_clk)          // destination domain synchronized reset,
// );

`protected128
PM2/L:P0*>N[8Q506B*09.@.(:@LMZ?J<,U9ZIF#>GDC 53(;9T$REP\OQ#ILI;MZ
P<4U,U*;&ROP*^?ZQ)A[L:P_B*G8S? IX:SH_8@HN"M=QFOJH@:?OGD 0?WOWJ2&_
PI]I1&K>(^:UI<VM@.$U<Y=#&SX\(,:2?HD@F=JLCR/A(-)#?%3&[P@//F/V>'\UD
PPQ6/6>&B JD*U9/4'CZ/W4)KISS?2.S58Z:Z%ZS@_YOEXL:+4)#9+M7=A.P!6?ZX
PX<^B8,(>(K&M#7-4*L !RWL_: ^P.19\7A52T%HZ?T:;]DPDXI>9WSO?=?-7]S'X
P:=TDC%J.M&O35 NC&X1 53SI-;HM*,)[JS7T.ZS1<<8Q"D*-FJCDWFZ1S"^-ZT8J
P1CSWY&0^95#-%G&^S!BC(^\I:]WYN7;@U&O)-*K -'G HP.HR';9]BVZ^[["O%7F
PC842IU>P #SEP_MTR&;&@Q8?@#ID>:- <.YY*SFT"DY 9L]U5.<R&[CPWSKN<:<A
P'8A2^5O8O>JQ]Y!S,_8\-K06@91<3X@+76.PIBA[W66+VW'E_N6T;7?RJW+1-8&X
PU5$KW]RO^A9W]JG+#?^\=,S:\B,'[I=T%1F23A"(&]:Q9$<2 *G^>4SMK#C2U/VZ
P'V6F8=LE?P1.AUOY*=2*G[$0AZ6:H/3@+!ZA<) ('U0I5_Q+$GASZUY*G,(^'5$J
P&@AA^]H.;Y[N[[;1<U$GG^# *.(MG$*/1#'?D4%N\NYOBP*H9QPL/1RZG!HM-ZZI
P1HHSO-$JP,@"EZ*'0DA1S_F*EA*[ 2>4Z9$Y1;.;H=C,WNZTY4G(8RW%&R^XAIJW
P=\XS%DD/1MIV)D%(5B_XCUEB5\2OOD5"AZ!AB3IZ2\6!RRM?2Q+P.<:!YR*TN69+
PK20?)E@.N/YMMCTCFU.Q$KE+'E?_(PM5)CZVLOTH>3#%8+-)DHWMPD77<Q@K0X9<
P!^68><6D'Q].<H?'V\.3[//. )XI)&QB-1<UJ$U(*]+1@?^<](P+JO?^M'EEVNFQ
P_E3[_L9M>,@ [,(7.?9OT^,RT&#.JA0[3R;U0"SD):UT$39?4.'7R9Y[AJFQCH?6
PH]@<#A3]4$TBL_[<H^[.,(:(&P472OR=>O!/BR>B-OUQ$^^>QT8M3:03?^9(<E+E
PNUZU[EE@8VCOHXQ.WB0X_D%R /[UNAZYX!"S_NA60,<(+N2E$CC=RQ^5E)>+V7(V
PR8O;/P;4HC590)7FU0@+4Z4M6IJZ8URT["W>K])YH"@\>N1]S?8[2I^+[_3.Q3!?
PCBC5*<U")ZJ#JX%0-4.AO):3M/C+_XQ9#PX#9U-" ?H[ALSF'^=ON)#]'@8Y7_',
PV,I^G@"K76^@NFC?5G!,@=!I]BH7W//_&?[LO*17$,\%&4(671N><8J>QXF^+1A/
P.7D#O;?K5J2O]3$0<KP_A[UD9+YCZ<<$E.F=\"L<\$K2 &6QGSPAB B<'U#"E]A)
PG\AY/&3Q\9=%O.?R!'"#$1^1#D0&E86,!Y>"3<%+&/A5743!]02PEZ .6]B/V7+2
P15ZCSAX"=8T_C;UO1R.;$L*/[V8CPF0@.'QWTU<^Y2U;A^FHPZH'8YOFIB0>$J #
P+?:=1 B3"^H^'4WT,(;UIH51S/F@;0.?4&B]@W.D-^('_;DAP@E$T-?><NZT(M&C
P)<<%7"0QAQF=),/B 'W'HY P[R\6ZNWLR9"AM*..7,[%:$X^!O%\Y6)DORX?.*?\
PL&16M/E9>(:A^[C>Q8@*$B0$5F'J?*;=@\AL>/J=GL@33#L4P_CGX%V\919/81KI
PHGX%&+13D'1<@\3T\<*+:1RM*O!H MP?HU->FT<*R10 FG-"#?8-)@>TMQ+O*J;5
PTY8U"<QR;MC(D\2?&SUL()8^HK+N=%SO\Z00CD3-M$C40>\+YYH,+4/B?Q,).5!_
P"B5JSED5!YOTNFDP$$W9/=*L=(PL\JZ(953]4=RUI%$XO9:_UGPX?@/S3>91V1,O
P_Y)$U$<XUN-"= /,.J4S/=;"&!8(F3X3>D@3ITO)X/-;C??_*,B:!X-E755V$@SQ
P8 O5:\A> PPJ=QT\!^3N^$LCC[%_CV%F'D<R5[$,/E!:;K<A?)WD4-_XO;\]C7>@
P+O>5E4JFWJM]7]-N)FU#^=V0YYKG R=-_NLR"/;[E1]U/3 ]E02SU2-O$"H$14&0
P5?W2/]PNR$3_[;?J_.V"MRWB<DY-U;\%H!&V)8CY$\+OM&T83)QUVLD^H>UZ'B+<
PNK0U>\;+[\)I@+L1$_@ >7B9]4#S!>;5@QTLR(7ZZ=:?,259/J9<#I?9L$7DN"_N
P*"6C5[J!I@,$KSSABDGTW?N\<U6@(;"0D^_6F?Q+96UZI0"M[O8)R/)YQCF<Y;&_
P]>3"U!'J>=('4D7Z*YF:)%U4)[,<(#;_D7BL.-U69=#6>]ZQU*7E*=Z*#M^#)L'(
P[+Z9I[2R($: #;C(2_$1;?;@G,?3(O+OKC?7)#60*S: E1R;8O+QNV&NP<_O-20I
P#O .?YH7M/;(@@ JCSE/+S.KBNZE86O>EWO;3NN(9.:T/ .8X$I]2:@OX1@]3]55
P]3,+]!>5OSEE ]6YM(.6_@P'QS-K55LKVKC$7$POG3>=5ME0.YO6Z*,)X+ +0^<]
P[)Z^V:'5;=9XZ,+BAOX9A*43F1ZY\<.X"'F@,R/G1R78K(V*<:@3>(H-/>^V#YJ7
P -MN^?C4^CO6)_3V-"5C#7F)VA#=[6"9\#[;E$@1$8*,2B/^5_? K!+R&S%9PG[0
P(#F*9/VD.."(P(ORG-\JU:\P_DLGC?=()#51@707^&$)X]C)^*:9=@0SD0#EO"^,
P_SYZR2;X-;K4S)!,O5[77NWUK7_'RC/!XVN*R;3&7P&=QX#LR;I?F831,7&25TU?
P0]N,#R^@];_!$7O\+3(7/!"7>6BX2 M7)F*P3D*2,+D;/D1(''H#<+!Q6CH]BSH!
PD#D+;SRVRL!K3OVY./00^QKK"$8_-!2W[O^0-7Y"773^XQ)H5(\ 8DS#;0/E:GXN
PNJ7"DI+3H4_(K6X->W7I,ZG+WNRGS@'TH[>8-*U@+]<B$X!37U1M\K&$QBB%*ZYB
PX'HX?(RRBJ(=V-YOC&H-^NNY.6[5WJ)GFS>@G^O SS(5&9P2#!2GS\OJ>H!,,J"W
PUML99DTAD%7.9%+"1+KO-"?>;E4TE?Y?%9OP*TQQ1=0=E,;3N+B$M>Z5QRA?C<].
P#9(0C>/4WX]U20-';Y.XA5MTM]:/W"N*3SNRX,AZ:/68L#PC\RGKF%X@L1*FP^\C
P:7)BGAU=Z#1NFY(I>4I:@""7:_D$:F\5*TI.\8D]N2T RQ4;4=3];$\AE '@T?74
P%^)&F76"?@^-8X:#A!G\;^$P'8"6FIU&-3UQO%M$NGYOYG/GX7HU2K/DD@SPL==F
PD<<4/?)X+MWL$) :W"J3_UQPU)C3\H$)XI=OR*J'"O+@)@*+*T*O?QN2?R=O$M!3
P>/\O9!V72?Q+6+!E,TG:EDPN\H66@UILD;1:XASX60FC:\MQ" _#:R=JE0['[WYM
PR70*J*8ZJ#K(C'=.N"J=-E;E5/X,?4</?$BT6%NZ.!;GN]L,\PI,=7Y0S8X)?)A5
PQMGY^8(,M4LW@3&ZW.,I?7N_PH'NHW>IZP@S*R<6IR.JM)O\</6,>[B+4UF:%N#'
P-.&!]:W+BXJ2'*1;ZD#:N)<,,-N<SZU-@'%*6UR&!O:->=_GN^FZY.(@/0<"J;#1
PZD>&,KJK526)B2NJND0S$%1^S6^;*='9M:P80/*6<I<%5B2-D=#C7OS,0NWN:!]/
PBPGF]*8AOD0JB3$"!#2LGQ:2PFN5<AV.-D01DY^;HVG[[9\M2=^G:Y.4U5*,CE\Q
P 0!W4#\FJI0U0T-B0"E#WF-O'#;(X14+'C^?<)68RVBJA(?#H+3KL]CPK_$Q"1 ^
`endprotected128
endmodule

`endif



`timescale 1ps/1ps
module M2_clk_counter (
    input             ref_clk,
    input             dut_clk,
    input             rst_n,
    input             start,
    input             scan_mode,
    output [15:0]     dut_clk_cnt
);

`protected128
PADU'F6J&4\00<TB9P:=NC3P\U/*C$6537.TF^__VIP)Q[X0?N55:$,Q7D$8:P5$"
P[/:Q5=^X@<A I3BJW8CA.-A =J? F\*)NA6HIM%9+N/SB_IPFM%ZP$E7;+!>)DGQ
P3P99B_NUZ=CV336<DV<'"JBFC&?%P&TBI2^_SL=S+G<,K!T+=I+(TG/C1-D4UG*Z
PJJR5N<"!=M6='-+W,>C70&^-<X9Y3K6FPFC(5WN[!2P.%1?K:6]!XJH54D+$J6G_
P(!^HTE4NAGF0L-+\8G\>R_<6Y,[$KXV))OUALB^E&_>?C97+@_LR-V54^MM[0_]F
P1<>R@L/"%.WF(.,H9&CB[817/@3V/=W!])C@\VYEIE]$L0Y*4/M0Q+5^>*]_Y;'!
PQH]%O>ZM_C53+@<TC<-U1ZN-]O].))>^JC]K!8UYNZ\RP2LV-B+''JN*EMT4[@D.
P41^Z1MZ/.,N_?.5A6-Q1^J-'P7=+R@+]9&AA-A8=_;X^$T=WL )=,1@OF$;C3-R[
P:)/!4%&M9W^=$I:31"7N5".$GEHH/=F /;H;OLJ\FFM@JFP$_SJP3([6WRMG8&2O
PLRY[TE80HQC!@$50!A9B=GJ^X)/UJBHU<BN]ANEQ"7D192;Z% GEZQ>] E11MWIH
PF![Z' U?L98UU5A()6C:\N"E;Q*<L19:]0P;!4F]J1CJ9 HJ[3CMA3-UQK8B=')Q
P,3Q.AMN=1V^8,GA^I" UH;4BFUZ3J/V"%^/W+GW +Q[;%_N>&D4LZ!(Z'%]54.:.
PM;QI#O^&QKL=L-E&X&!2&F1]][_"%0BQYF0Q-,RV/SQ(5PC'@9DY\(NV#$UT%=5?
P?5!+F!PW3V5C@T9U*Q^70&:4[#M'P^N78:?$4OL%7GR"1DG,G$^MYD:NCC=@EW8!
PNHME"[H89N-"2LAB\O*[C\?X=@$<T'EV'5A1QKCZM$XY_%JGXQFO0WV9MJ(I^O.E
PX$VFAX:2_S<<Z7'J%S RA@YW4@S]'S?@4]#9L"%2[A:27G=;O+[=G^JQ!"!20H\6
P5AJ ]+&( NT1A(QLG'FN/AJ6I\ .HR\B[G0]I&*G23HNF!Y+!(6>6XMU8RI^9EK1
P;/=^0<%UJUCNW^)&7NRO$90Q_"#B+4NUE+.7'2V$?0NV<3_.QFJ1A06;VZP5(KF]
P>>0D$X<"<Q2IJ#];.TP$0+!GZ]DE>(#;3B2Y>D6CUF&!]/[;S.94-S"C-O#*0(DF
P;^F;0<53\/ WD%I;1.>^;6N.QL1M4BO%++N?Y4W%*14:UH_M? #+1E!*_O&\K;J9
P[Y9HA61.D<(XL39(&_LF1)=T;.=CJ/ ZM2@3&G<08B^WT7*^V)KGO,^H)GT-IPEQ
PL['9^ZU+1S'?E4]AZX^S25Q2M*V[94CG1N[7#YS64^' 6BIK;'6!NEE$<O4QRL<2
P8,2F*9K87CE^-G"-MO]+'>;:.JZW/''$J8AS#T?M= H:[L):87(Z^<\V,*#?ZBS=
PL'KI_(>3B8E:YR=3V'",E$Y*CB3F?PVYB\ !10U.CQ\)D#]9F:$PGSXRN[R[QVD?
P97,: -$BT)K5<\2D.G/3B)_\..N@F1QA8N\5NZ_/)S&ZW03:2\;'V#.*HB:,3())
PZIG+_)M;!2>)X@;#ARS!K4JD/A2K:!FW],OY5 4CSR.LT&@,"!)0J /C8XQ+1G$T
PFR3I,=Z=]IA!7Y&9P@_%^!QY[AC 6X)8YARL$+LMDT5!_R_B,#ZVLN*B#,RSMM%N
PB7H$B.6C0:O\LIC90/1>SVM=/<ZNE\&T?!S50IKYWRED;EK7C%0&E@>91LTO1K(%
P(&9$BD''10V^(GA0%C$J8"@@BO\0*?WCC53,3Y=5L<ER3]#7<DX ?.56HRE+F\YI
P">9A-;'@^3#H%6N4OIQM%*M=%Y!$OV*>-3;7LF+A*Q]+(5R+1E:. 6U)%[DFPL3X
P9$"^5'H*,$*7M<U5#S3(O*+/$&#])%9L7!^J=0T'$"FX/+VVP ZEGA.B $$:F%)=
PU:K"D77.6"?9K5FJJ$B LP1<=9L:MYR%@B*(S/NL%NV+1M27-D3;'%Y)0E<>H\KL
PQ)1!B=.$. DR\8TD@+5V*"1H<PE!U$9FZ E=*3!W%H'D$Y^+:E+^J[ZN?*V3GVO<
P1NS^@&XQ;W$[]0@[OV)%)%8^#L6+3.H9)@[STP49F1%:R>T\T.@$+,:]3)/GN?/L
P^K&C'LXM7AI#O.L*?[6!,X]J:3A.$#OVZP^!-1#7S 4T9C^D0R_$LBCKR&/1*,>!
P%#&72,[HD4DX_:'C.3>&]-(G4>?L?'/82H>W3Y_4B_7B? E?@S#:*OGEQ,!WNU&Z
P_$%VM8+@)UZFYN(OCI@EO#;.DE:=='MHU-$JNP^FIDX?/GE_*]R%/+43Z(4S1R<-
P;(IO60"/P*;9"S=5=:H(/&,/I/'(0">&EG_KWI;I1F^CY5_W6RYAZDN AGP(EY[9
P*@6>V3O R;TDG:J))L;IY;,'D*Q H<C1JSRJ2=L.*E0RA>6L-DM]&S%/IOZ+ZP!)
P_9<U!E-Z=&\:6=NA^AWXO!'J@G,N8E^S !A+<"2I@,C+#QNUA7S-. M@.;QM_LYA
P?,E,K'@3;WJ]7(\F2I^4#\:*5_?L&?V"#T5Y$036:K;N>KJ_PL_2XXY#K(O]OPL.
PI^0;'EYMB=(O8V1G&UVYMQS\XEW%M!6_6WGTK+K3J8$6"2P%6X@A5(K]NL#Y=]9)
P#3&2%49,N Q]YO^TRSEM'>Q^J]4;ACXE38&)H[1[N:6[NW:G"R%<2T'TWY#H)M50
PPNNURHXOVY$BMDRG5>;/XYP?TTQ:;HO>/1#[<&,.YN^DE[\="*);4D89_/4-V[4F
PGA:34?WJ\.2X\;99S1 WZ(A;O=9W&VY^U73!+[X?%O,\<"\M8Q/P^GA.53;4!<P[
PC%!$M:IFEJ?"=)JZ*>&:Q+/Y[]I5<!Z*5YH)<#5Z@1WQ:_2E-?U1\V<:U!X:U?:R
P8:_N\W)4?4-!A65K L<SS9+E46=*BJRZ^GZP75Q6*W9I^]T:I#C(M2*5(E<:V\6R
PNPH2"94GT:>4'+RLO 7Q6A2<!+@?("YF $&M@$P-0H%3A J[AB150"-/()AE"(;#
PM VVE878B!D)64O^,]A/XC8H'=K"K(D 9+[SC]"-'-N7GG/8J[0KSXN'_CLKBH!H
PY/W&Y!?CW1=RE3T>98'! 2G'CUU0.V=L$>$L8K;HV,[VCNA0LH4SCU9_G8C]@\Z#
P4B+RQ*< YICSU&7!0"L6S+%RZV)CRAZ,SI27WOR/"!ACS*9[O[[L9RT<#=(Z$&-M
PB_ !C/Z-P*,E=__(!2'R/+L-PTX-/YNTC<P,] )WJ\F$23*4**GM+B@+ET!5^FN4
PK5<S)*.Q)"ZN$I(Q$C"6GWBW*N'$G:C<?B=> Q><W#*M\TL1KN3.-^G_C>5Z0@<K
P@4RKVBF*KH@"1+FIEBH=V6T*<1AL5UN2+2XQ%=V6VXC'L4P4-* A[:BU?0RLXQ0A
PBA&ILDZG#]^0NGQ/K%(![<$8/B4N+;S$BGTR2%?U[V8MY7]^;DCWY!504,>],*>W
P"RKL/C*&TK5%YC.S +^I/M59NU.H6&. "4UF.P.71<Z1_%."#0S5_G.0GX8=]@M<
P&!@T[1M^!^7T,8-&6';$%$5Y6XC6-SY=%/EUL=(0LS)V2==*N3R#)0>!DTP2CT=.
P1'I?E#W94_9[G7SBGF"*]"K"P<*M\"23<0.K%]X -7+RABKN=WS*L1D)P'8/@EC%
PA+MA0 K%G$\]P!:]#FZD_OIV$X#LX$\N(0#N>? F64L4M5<VGC50IDSZE)Z0"N8A
PZ58\K+#*,_!]Y98;#P(25_(>7YS<Z0(E8T,7!-U0+HS#SK-6U9I@<!>;>"DRKHYM
P178.B(Q63W&YF?/4*V\*:V1]JKX,1,0W2Z=B\WP*FNU IS6&""SPL%\'Z'AW/?:3
`endprotected128
endmodule


`timescale 1ps/1ps
module M2_clk_counter_hs (
    input             ref_clk,
    input             dut_clk,
    input             rst_n,
    input             start,
    input             scan_mode,
    output [15:0]     dut_clk_cnt
);

`protected128
P'=AE%8LD=LO9U^*0QNJXQ=6&:]+U284H,Y*=\#3%CD'):(:@X?XGT:0RWR6$KI(0
P'^C:BF;G;[TSZDBO!%G2@L[Q2+7:)L("7__M"3I!D= K;&  AT)N"HMN=(J]S+XS
P_=Q?B)IH/W&^W+>/K1T,0\F\\B>%O=EC:["T+HN]/B!9=>(PT"V%R.(!]3E">*$*
P)A!AQYR_X1GF]?!*<F]--?*T[%=I%('H4A8-PEA, $TD4MGRP&\UT5S&Z,&[$ :#
P@S!0)$EB?4&_!<&0S:<4Q58J87:N'(T(WG=GI]%@B$GVX'*Y>&G8TPE0+0RWS#R%
P%G=]&^JHCTZ^"DH[10:1<.\FWWXBAIC[G9'^LN4K( W1G-TP_T6%;6^F[23NAR*9
P<[!!@((J\.!:_NTUG"+5@W*='Q>1SI!.G-"5:9^)!!.;V)R-$0$&:_H&'#U/MHA<
PU^3-)BP9YMC[QR=JDNC%ZHBG_X]Y'?JW<3;]I-]?W(5"!7$ 6$?R&"<IGW\>S6/@
P9W3+U>+!2I380]L&?:NU?V*VQ9@)TX"U3$+8Z\MF23!!)074OQ>4"I,XSF,]"+DI
P610FFBK-Z%4YX[LYB:/$OPM%K%^IQVQZCTN0BN6U]]6D_$1D,.*55P?UJR\:RL07
P>T9X.8%)%M8>+\VH\_)3!Q?**<)$EX'\4/1]AD64T(L&T'OFL()E<%3=2(:S@/1/
PDV> J&/V"E^<#H<@&MXZDAGL/YV"&O<&N*>@NDY05-RC/2AU]-9+)Y162%(:[A.%
PG*N\8]&Z%9. TAXM,1;D(GR&">*Q)+SY=(5W[NY;!V+NX6'88;WFO[F$1\3D[-J/
PN2P0W+1T3/'"NOW\2W&:-3PQ<[C-&>4-EVHX.SIR'G?J2=&M Z*Z)?OP^@9RK[C3
PQO])WFJ<\>ET4>[T-AWP[S-NSX88_X-;J*[3<DBDI04 27HK*KP[_]?@=]QB61ED
P[5P ,80[#T&&?_3P#D52R%Y3?7@LVP$WH)%("U\Y:4A/18/4L,7GC0H#X+L"<G?K
P_ /_.Q"E<X[)15TN4(]27-U"><R(,,PNR8'Y.@7,I<T L!P\R].$AR])YYG/,K,L
P!K,%<K 23G":&@:-HY_OXM4L0)+FHW7R?[M,Y</R7DWB/S>#D=9]F8>!5G3F[COJ
P\&[CU28*N-R-QOF-F1YX1#BIU* &>_$0F/ER((RU3CU,3,;=PER[FWH (DW/)1R&
P.XX::%TXG0QV()GV^SBNXW/R%;X72@99@5.P<=^?IZ<5HS(E8 ZP"H#E'%:L F:7
PLJ\_ >I]=0'?[D[3/2>*V=O(3(6^5MU&'-9AY&+/&3F^\3!S_2B["]O(\KHZT9!1
PC3H"12VG225+$&ANF.*8+_A"+ZN:(\KQ<;2N@GC1M O,9$RQYI![8ZHU:ZVY H%J
P%A;-0KVBSS"0S8% +&R=+_19@,R887WWOL&+:0T6_XKJE9<5^=V5[@N[?#M"UH3O
PW8GV\YP59+;A/C@J#M0-DYCS!SN.WI_PW3N<<&E6;)*'MTUB&L;5.()#RTA"DTM.
P#2/0Y<JK$(1$A3NG@S\2>YF=)N? +2U:19U9R@,L4Y6>5OX*&KGM;,21G5!:-@=7
P"R"T)2GHOP=-L&FTX[+TI2&'Z03UZCLLU/A(7F"[4L))NS,0[*/A:1#H1%>VW5,,
PN.)8@HP:7 M6^6Z[HZ^Z9:X3CC]'8:WM/)E;3F2<W?9OXND^7U+^6]OZ/,G M?:[
P]5A<\"N54FS0K=SF2M,*]G)$Y[3P4]U!R599BH;8*5:.^\/E-] @I R2[,FPS\%?
P^+,A2^V9R%OH:D125EUAIVXES2\"YCMG=5SE-,F^+3+)NJV?[9[:[I8<6B1!TV1=
P\ORJ3U+<QDI[(J2MP4[8F"/V%MI=7!O8L-#VJ;#3,"30AA&"8K$+2PG-O51PT,J8
PPB'2$1'@&$S*]QWP?HO;0))"0S#7V*DZOLA57L8-V<"GQMU[ CC/(%VQ._OM7LZ%
P1['@6/!+QN-\[:1RUCFQIMA.R2IOG4>;D[8Q0D3NQ$0N#)^*R[<(D_USZB,**D!_
P*PB\N>%LA^>TK*@C272&@6.>JQB(HK6UKOAQ['@7A![JIT_;#'BU%;4E$?)W><1^
P%SE0OG"U; P_$"GDW75&_QXB/7;2K(X("C(NX0EL&)4P4MWKF>,:#[O[U4K/RZ"Z
P?, ;P,AIQC) 2QV0:%HITO#O@GOYLR2AV"P$OA]%O#WVT%0_V!KI!A<ORFIA&-#?
PS!5FXMM5%&Q^*0[\FMWNEVMS3_K":JQG@\Y_#X7W<O^%@K*J2=]4%;8NL^K<DRA&
POBQ9.@>6)8;A#=%(%Y&J2_%8FOL6J=^%>PG]]G/?EW);ZMS4^ O( 22X\5+PE(<O
PU-LUL#RDR$+M;3,:3!KIM6XX_ZPWVS: L#@-U P9I($A!U@"<=G8 K9NFX]*5>J&
P1W8V9M.M3X$J^]&B,O""-*G?32&Z&GZ=%G:I#$_E?/[-4'TBH^T"I>G(21!ECSV#
PU!RRFT/FA8I8)*0%S'E10A *B=F<6(Y#T9"6A[R5KD"&C\IZ-&_N-K(".8;+,9'.
P2-)>:EWXJ5ETZ)28#,29N<YV/EZ+8UYQ1G'_"WD6R=^/B4^:UG9HZ,Q!.-"-_\X$
PK#?NJ9_DY^!3E\YDRO-1<VCT%O>S67XV .3/(H+@D$V,-+G74O8E!N&QX/Q+(2Z3
P6?:Z\W/+F'@G6^O+B! PY+F**N3J*-VF.U<WQ+IN18AA((F($/?5M8STR='0U$.6
PO1QL;4#B:PTB@M.TEES&0XZ$QB#3J%78+!_\>,7[N(VW;[<N/E&]P$LTQ,:X2!8-
PPZLW<-RUP9(_+$*1Q7IG9T,\E(U*^%Y:9:+FG+RQ"K51BM$W6@-5' ;W83IU6N.W
PFH&Y O]3_;,%LW119C,1:SJBC5*6 !'$8CF.27L8O(%S+)52,8V0=K*(BL\:>5-S
P1($0KZ>M[QV+;OSK$O,(,TE0^I.'E@1UP9_&D4>XS*'6^'C($[7:OY+ZN!B%5*M"
PM;E%)ZI>_;U+ZN;=B,B-B"YSB\:ED2/=9YQ Z\!NF\Y;-5?X?L0Y9, NK)NNLN]*
PEAIS7L:ALYL,@0NP+]E;RDJF$^N:-!Z86LU(_D'.J4$I/0Y1G*21'^#T)Y[A2A.\
PDY15?(<U7\;#@AK96AH5]4'VY$A:=B[LRMQZE9F8 A'YO.@K(G9'[Z#G#JHY'_^"
PU_E+XPF[<"0\C+=-T,.#)T@ZP36=OY'RS:#G.2F]<4*#O!FY.[&X9N'BRJV.LL*S
P59-,M(/;J/V5G[O13LE 0%'+7G:8^$NJ6N9]P.'*P-14"+P93UEWL+ZCLEES=_^&
PR4W1-02?Y<H1+D0_;\$@E;&>EH6,&*;4)8!'+B13451QRJ#TIH+_34:<AI=\X+MO
PC;YB,QYYW:#J#DMNX0PC0WT_*AK5M$U]J+AU1>4L1#8\P\ ZS%ZVJ9["7SWNMRO\
P&CX+"QQC>,-<T:&D\G7=A0%5F:RY/GXY_Z#AM$[""'OKD%IE%HJX]+__MIZEK./1
P,_\@?@(. ,M!WE\>G$TD&V[.DCDPJYUY60;]T++*OU%\HR(@(VS_R"-_V+,U_/NO
P+ $YI77;Z"?BGQ(<.9AE_B!T+J;^).:B'AR7![84-H\O/N@2(6OF^)LV]EO_T7T?
P1?^-"^=EH_]=DV^R"TG89FIZ_S#PN^ 59N\XGD6[^R!N2(1G'CP&HTPAP]'7950>
P)TGIN-YAM*0IN(MLKEHSG7@EITOW"O=4!@11:,WRFJL^41(_CW%./B+ <M'92S1I
PXMJTQE_V<>4M'^G6PX=-7*=\[U6W&*+!83!19!^L9PMVW V$[N^EM6+\=.]LV;)3
P6T\,"K 0HKQ%QV8(<@ 0:W#.XF-5G9TBGR3Z=O%EHXF\X]QD81=AUQG!@+\\C#$C
P0J98D$0,#TB[M'>=BATNUWQ0:E\%?'3_?E4J2EB>*'$FZ/@>6%_H&^;*@'6<G[2<
POL$,W7(N?B!+;ZH L:[2Q"P[?."].;DVGG&.][EH&#AD8C>3P=@$-^O_1?K@^W+'
P4,9>\M4R_G72.PG?XC=EB1-NH_Q($<:BX#M_!K/!H@B@O^:L[G)%]Y5 G_6CG)LW
P>I'(PI8VFV*EY;4X'\9S%E"CY?W!STK;')D/T5?YVHY"P(3QN>UQ:UK?R:#HQ$T7
PJ5"M,.+$9WXW^G)VF;%)_(7#5(?!_TKO3"OVNH#ZA/H*8YJ]"VS*  Y.7"JE>E4C
PV9:!UF72P[NI#4Z'UK=_SZ]?O=#5Z.^0.'=8M3M#-XQ\.(A(SP>H0@Z!5;O=)44D
P#/ K^30[^V_D3XJ!T,0&41F'1PYA?D7" /]B)GL>Q4C=3UQ,F0JE:D;=O@AIBW$+
PD*P1<7KK7HB.H KQ]()T"@:5+'2YR#89>#DYV:VD2#Z^(#:]276?;U =>56BAK/J
P3\Z'NB=LYG.G;X2PDXG!%;CQ8^<S*.6Y1DQ3OU5)1\]9[DX]EB7:]=438'=F5US7
P@%>?VJ$J39*<'!;VKJ]O"V4*9J%[,Y1F7SHJ?\WL=>XN*1CE!,S@NM8(2XY+O)FE
P2''3'AOWEZ11"(0R=%U717R+1V$<^3<LYH2AB^K2%#P3Y^)YLA?OO+<L]XP!FM+)
P=XE58^#SI8,A#QYX<?XYH/W-3&'!TF5!V5OO[0DD@H,%<[ @Z!O60S%<$<N4]"&2
P )T41(^_.3-"O(:3<B'V,FC67%/J-U&YC1L$WB9R. H)[;1X0B$X59"D!Z0SX9,8
P2D+_[>9[N,Y&3#/R%0 >\9(V/=[ WG?A8^[$#1 RP;;@EC/%AI<:[0E1#<!]4FZ2
P7C#:5"6$6=0'<F'/FH9X&!#<^LCX>Y(+A*+7U1V!Q8.2+DDN?)^EU)7=5$((%&\!
P/$FK!6P+$*O&AU&S]F7&*Z?/XJP@\/P"T*N7>LHDEWYJIQYZT#]D1Z,W21H<75JN
PS267Q<LNXM0XR(91V8VG"5BCB]>MP,-Q'MX<LL[O>:]BJSV$TDP,M#8PBH1P:C]Q
P6OM___M1!@BQ/+B\UR)$'U'V7[J#/V'*1F4>ZK92?:'#NGAS$]?"WW 9&]A?^C3T
P[KG$R"CEVJ *[!P/&4)*!Q_'J. 3S3WTC50Y 1L^5PX3$@_D(0 ^.H&^ 085BLI?
P,TB[>6M/7S4L-@;[7\>L(-F=,]XX> A4MAM%P6&PERM>X4%0.7!+"G)F5NNX4P2+
P:/\Z8B@0^,(D7'8:)%:9!":3\_C57FRO83& KUSYIVY80QR([4\EXG*4>B$WY97V
PL?UX)JF^#;-4RZ.ER=:$G-\H]SJ#^M;DBS'"1T?\RBOEPEMXK9U1VVAZ.+OB^4@:
P_5,[NS/E]8=H #]P>#A!16+4I727&/7]@ %"UTL8%W3#X!XV\7!SZ1_62_@'L&<M
P767AH:UR;J"%#9@7EL>K.Q(U)SO&WG62E/INNAKEL \EPK#._1L<6/8+O=.20GAJ
PS4L?A/OK!(&[-(!VFV"V4Y.-[&_] RIXDW^W8JA&X/!O",HXQ-&ZO *)>6;>+GT7
P# 6!Y'49U30?OT;ZHEZ+SM#EE"<P,/\DUR8082U".6P869HC4UPL8<0F;81]>E"^
PYA)%WP4-LR0]EJ8.K4X*QPHI^3@&N3/!'.V$4*[B,H+Z[& @M<!F>?X^[?GZK,W\
P]W3[%*N2)@Y#^3R9;@CFG*5A?+0AJ\IA&S/+1T.)B'"-8G% ?S BH.D6V>UG+J\V
P+)?J5G\UT]'TB%6;FU8N5EQ^9$<7U06\U3.^BJ:JXEQ0L 4IVQ6Q&AP,(=EA63)7
P42N!X?S[2TULL;E50N8OE*;]/3,+ >4S]MT/36N5:R!*Z'/W8QY(!0H^-+H06-@X
P3&+#9_;K%</=0YK>-PF?@L_$O2HA%9:HU%3\ ZJ\"PUCEYU@A*1MW*08S)1I!EP#
P4H 8&C&)+>A>S*2S)N5V&N25(N3_ X/ZBY5@CCR\['VC'8L3+\!Z4LH')%?D28R_
PU*J_" %RI.+3Q7DVLN"<=3Z+J_Z8&TCGGC$S :%EWT[D9H,4(<P%M(8G,#]<:IP"
PR L%HR(@XZ3#=-KI[B;7'/C!W)W!.B)'11KL8DGJ&A+8#V)-@EF2NL#NN!%".?*C
PRBH!3?[[Z&-P H#F.YH)3.R.K[WZI4O=%]UXS*"L]#=,*# RG['"TB I4_G':T%3
P(2,1;")E)S;P:=\J^Y^QPW^>!<(A*$@8][Y<&G1V]5#H>XZ1CNSNK!1K797M7!=/
P3[82[J5$];&2M(\V?&B-6"CW=/4@?O=.S#WU['9 HO-;T.C88Y8U[H355M33AGLF
P  NVX/#_=?L 38$2*DF1CYY;)%N>>8I.WYN-U]F4.=($K^MXG[#/;F7FIFU]@V I
PZEHT]%'E[C/$NGZ<OH8Y6]J=UXU9SO<$R(OTL@^R@ENOF[:P%W'Z#YNQN6/.9P)M
`endprotected128
endmodule


//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : phy_tracking_cnt.v
// Author        : qu.zhang
// Created On    : 2024-06-08 14:17
// Last Modified : 
// -----------------------------------------------------------------
// Description:
`ifndef __M2_PHY_TRACKING_CNT__
`define __M2_PHY_TRACKING_CNT__

`resetall
`timescale 1ns/1ps

module M2_phy_tracking_cnt #(
  parameter SYNC_LEVEL = 2
) (/*autoarg*/
   // Outputs
   tracking_early_overflow_pclk, tracking_late_overflow_pclk,
   tracking_early_overflow, tracking_late_overflow,
   // Inputs
   clk, rst_n, pclk, presetn, scan_mode, icg_mode, mbist_mode,
   tracking_overflow_cnt_threshold, tracking_edge_select,
   tracking_clk_enable, tracking_cnt_clear,
   rx_din_ltr
   );

input                                   clk;
input                                   rst_n;

input                                   pclk;
input                                   presetn;

input                                   scan_mode;
input                                   icg_mode;
input                                   mbist_mode;

input  [14:0]                           tracking_overflow_cnt_threshold;
input                                   tracking_edge_select;
input                                   tracking_clk_enable;
input                                   tracking_cnt_clear;

input  [19:0]                           rx_din_ltr;

output                                  tracking_early_overflow_pclk;
output                                  tracking_late_overflow_pclk;

output                                  tracking_early_overflow;
output                                  tracking_late_overflow;

//{{{
/*autodef*/
//}}}

`protected128
P""#.$AH:PM\C#S!\&TBF#]3'D ".J^&J+3 A>B-J@AQ"(7X[TG.5AQT:R?W3P61^
PXWSH-Z>7PPVV#OKB9Q9T.E=3TZNF*7K ZXUROHP$C8;)0-@CW_SS'D\%!H6A>WQY
P9;(U@E8YPR]T1KT+_1Y<N' 03J]%.J@N.L\$FA]/]BMD]_L908RL<MY3BMQ^XE!:
P;>PGSQK'I=*T%69U/M#5U=2R:5O@UDQ;V_#$-#")Y<$R/@QJCPQ'\^C@22J!R5NF
P,8'B1,]&PL\$V/ HNE<H(@X:J]I$IFF7@<T9=Q\(\L/Y@<FQ S'U@/&&ZB("=DI=
P[&T.@Q%OS2S1B"<>.-N4) M*^-2:\MM;1/)[W&IXHGJ,1TC&'"%PE#JRI146SJ[I
PN=FKYC^S2KM-P$J606S'&OE9J9.8^>*#C)+_+Y<]5H"3.;3!/;%:U:TC&.'-()0*
P6>;>5NT-JW9S258(%PC/Z5ND;\D"X3L'__.:'C-$Q3?#.QR?5'T:FA^^PH"%"EL8
P%+XMBTK1E ,;R+(>+=&,_DDB9O!M?N40+=3N?=-K[=^NL:_K>YJ0NR_D.KZ>OH:S
PC1Q%)V;VS&57D2_C9C'MT4M53EW5P4H^9A.**C'.]<=P]!K\O* (@0'Z#_..G7>_
PAO+2:<'T,DIF^9HD-42YM'E(-Z/M65.CF'A4F/"6P_)<?.D)IN2^DE>("3V%S!6^
P?/S@(EM9FK/UKDF$XCVB,Y%2&_,/38!\VQV16+-O?0(3IUR"*EES<NN8IH9=!)%,
PO9/@);<GM /7N8BH5( 9VE)PQ6O'@^W9>\B^=F-!O?@PTI)8=_5]42_A<X0H7,S:
P:S6'*&-Z']R-S@&IV!IT[F!:^76C>JG;=%C&1*/ /(_QWD70MB6Z0&D@U0H+:J&E
PK\$1X7<HX^&G:-RAO /MF6,R[.&-F4T>52:#[H%3WV X\X'!  >NE)ID @:C^YC\
P=[*@%REBG1QTH)*(3C3%]$(N7ZBO6Z)4AG)&Q@HZ$%0+11<TB<B";)GLTAB:CBHC
P8 ]O0O#M]*2 2BT3T>:HA>&HN$DGK@+F;5D@(\Z3E]>H/-OHL=\TQ9&N4;Q>1-[0
P4&/N%"@"R;?UTIIT@*DV>6YY;[S#@80(])7VP&WV9D%LJRG97DT1Y&GV)&U^)Y<:
P57'Q:".BGQAD;DBGQN<E"EVK:-C-&8IWC_S5I[YJ5Z787Q4#_(;:V97 0*8ON6_-
PG?$Q_(D8(B[$#6+7IF<&PCXG;<IJ71-W:HE=IY?Y-,$0X4[A ?TFSK^"%>,J%AB>
PCD#"=5=U[X0%CWL9*U""V7;1[%+*Z"7JRPGM+0,VK>!WEA,,\TG[DW!LN<FZMM#R
P3%'I3\W)W%>R^]',2A_FXBL^CO-%.):!C54UBQ^O:0+4ME\[RT-N)&TQ4MQT'>N8
P0\L(G49Z'+%8;D]K>BX"/CLI&]!3^KY]']AS Z/_+O#"W)Y<C3HJWI+;Z:6A:S)8
P]IT,5U&C;8TF+.\_+TW=YOY="C8H7*?#%[GFRQJFR)I\1+)L,]J0PJ&:$,L4-CO4
PGKVJ-I8W3;0#D<96]#P+VWMF3E&ZQJAIRR"&KDGQ#&MBO+'[S].KT)>*P,T(4_/<
PAP<3MZ(>L6B*'[(/_#WC<L!U<N+90CQ/N<C)/5DMU,\J-6?UJ0)H]#N,22]_6\7.
P1%"2Y!F'301\PDTG>E=!>Y%*09*-Z_.J58RRI:I?7NU$&37>:$;@4!@UVQID!/U5
P]LJ2&MXJ?U7<SB8U;)=S%O+^'!,WD#<NEV9)CYKJQ_>U[V^5"9K3>;EBI$NR4]66
P5?.W_*^^5,.J"QE>1-@S'%"1VID'V$ZC):"AF@9EE_H:LD7YF\LW+SMM5QBHA)?G
PBOYOB2T%DY JH6,@BPA^3+7(5EGJTS?"*SQNRY8ZG:&YE^^TC@@N(&9$1N[Q:K@G
P$=8M)4*TW450KNI73GU$E\984LS4XL D8 /FP"YE7%/H:M7WE=*JE/);9OA:UK0^
PE!'S-(:#3]R%R%_KV*= %MX[:3<VK6\?MP94U4_-NODE]KQI]X^\I,Q!#2;3X^!Z
P+&8AK$D[8^5\QKB,MMV2"C7(LT,__D]GU/?NSDHC=-N%K=$7B"IK"J1;Y(!^O[$=
P#1S W72E("2?M8FJ'9UBCFXDXWSF/00@-9O"K9A3,QI.%R2F&E5!F^"7/7VYMPZ+
P/;)!-Y.73U%:ESC++7NV9X!QH.#!-\IS]S(94[&L@.#3YX',?5UV-+@@[;GWP=8\
PTA^70BO.T&$)4/X^L4?JEN:Q"X45.J59CJV;#0F,3=#+5R^64?M3UO.WXU0HQC!@
P\H@_X,1G]VO(.PXLX)[V&-F+118DZD#>"?'%[COIVEQ_EWK-Z@!9RJ?X"1%P#0^F
PN:##.#FI"XP4-K^2I7L,6 >SHN0B59CADD:.R7RFNRFI-R\Y9%R.^6BVO02<?F$;
PUR/$2*?D?!$@S\%V6^&Z\TOXWD,:?A :A7K=&+WME%K;_2A=4+BF2/\,[_R2==CF
P;00/V;!L)\4*BXPAF*%6]]- #FJ6"IIZ/5_;F\8]C_/T>3RRU3H_&QM),(&G(0![
P(-(2B8DO(Y;Y$*9E,OCMA/?=!_5SA?63T_N_?)G(BKJY%FW.JWP6@/[8&W43)Q;\
PK[@VXO_ 5Y.@IN:2M6P7V!R[&(E(S_UVMI)"\-V./@C.WI<E/M6J@V4 ,T5]\-&!
PU$.16U7E5O0&B?)W]R6ETLYZ)</)[_'LK#7T!?K721O'K"H/GC3>D1G6_Y.\-<2I
P0+(2_AL+#8[S[@AP*I[[-F5:;UE4_F=V\Z#@)I<NTI@)W^X;]O4]>ZYBDE2F0?G(
P7J_V[>\DR0](0$_2V=#.R%[36)>Q)(Z0W\1!S3,_<A;!Y9[]&GR97+):A3_CDR"K
PQ_Q]-99D56;]Z$8Z4&V+Z=G+<?15Z81O$COU?;T*)4+B07Y*DGB*1C:N"8W[%*-'
PZW'>?/Z/7)<36 ,C<T;F/3Y=*[.H=C6%%%/^E/S5L?I<4HH+#%JVR)CA4\YO\-4C
P1"", ."^DZH><?_MW2;+KT7?,>P>&4+MPTW%FLT@ZF6KWEFKLYT*L0U7ZGJFMPX=
P(FVDK])-D?7)ZPK0O3BI<OW E@JJQ.3;"5H8J:NZ^E.(0?IV#HLJ6ZB6WH@M#TQI
P5J112ZCJN3"3G&> M#*8-S20;1L</$80?(>#^(3IC]&G'&?O$!&U"2@A 2I](N0W
P2H-KUUD,F]%<%\@(?JXSM\GE3K&@BDU+?669DQEW_RJ>>$2 H _N2D.X'DYM^J1_
P5S^85*&\B;()S=.U*4O^0"@:#%E8R4SH@NXA'DS3,+1$9GUC\=/TMHR+V5V:)'K<
P*UIK.%MFL7^9+S;>J+@TDG7Z<A9V[G6%>!,UUP&A#M$"LH+^&X(53S6>]J5%;.3T
P;F8,!Z]U9\PD!35=5H)O5+QTCE1M?$Q>K82]7"[J.B=("1BTI08QHUB"?C_J5 YI
P;0;8*3];3*&9,\!JR0E2$ 62B-GDZ*$.:<29H5([S")0)0;7'#%Q:TVY446R0]_6
P)XCLCSP:=XAK""%3,56%]W-N,03$9V!WU%9HR'F;X5W5 T-"F8X:QQ9BCQ']0(/8
PX=#ZS@_Z[UQ,9A4_N2WIBUB5R53XP9A(*"^^ESH)=A9>[KDS0LC[XG/5LZ5!5^%_
PO]Z47VW<HHX_CN.(P2*WQ//"W5<%^P2[%BP>8-P<C(1;1XK+_+U0[XG92J"MPH--
P.R9$AHV(K97(JMJ2OLK?N;.?L\2;)*6"YP81K<J5!)*J$_46& Y*,!HFS$%D7EB 
PR+S^(I1/<M/@/G,\H^OOOT@(I##4'<,>)"I4X/9"JGK<*UZ8QH"V=9H37F(@4;E+
P7M#Q96JEVC/<P=D'S(4TE-=BZ<JS5:[WZ<I]5;V'S5FQ="/O,&\(;N^#:FD<Q.[ 
PF?('PAO,FB;0Y(6@)?#"EG1H8#C7][4M;A[$=!R*=YV'6KM8MZ3P]'_/ G&W;3!D
P$?6D$\MT)P\W(JXPVOO%A]$B/HN&HG>Q_#B@I7,'A T-*&1"*]X&))*T G5TK-A@
PM#SRHVJEU>7<869 $):J8(8J3JW7-JD?^W4^/5E_$N?<%<F&'=/07\W^- Z!MB4+
PM[$<K&NJ.UJ<F$6%5KJ$L*ZM2V?V+*8?##9-F31XS92=_T#X(&K"^1XV?E=E:-A?
P_N)ID5MXZGYY/XH2_^9+PSB!?(Y],7"AP:+_'@!.O:*K S\N%!SSF\%8)^?&$$D@
P 7^J@*.WN$*/+UL8^5XP3KDHVD5MK:_JZJ9:=B5E,;%C=3]!W,L)7>^/H<)S-CE[
P@!%:&>OS"UPF?%&$2 =FA<"!Q]#K,T2)&5\W%&$>,/S[\W8W_CX<C_IZ_#S.1MOV
P>8G I^^+[RCP?<2(%<'P-7@X)67=]O519HYY,-CXRQ, S93?I XDX(L[W9E6USZ\
P5K 0C$#6'0NA]CABPOI9C;R\LFI 3:>2H<HXZU&6YA =.E+PX-+ %*BJ/Y/[24U5
P0VK$^A:1U<,5V-SDT)_B/(@0YR*'(X<L3S2G$V,70,FR^'7N?&8R>_B@4SYLO===
PY%?<6ZT<BEPUL0GT$BL+QU;M60/<E)'B5=C!^1\YNTU 7CJ/<8Z7VZU]OL4&&%%^
PZ<8W  :F9\ C^)&&MC<2,IN S*Y.H@G@5VQ^N-F?1:+!P2 5_U1PR#LHR^@[&(+Z
PF6U0*3H.WRHINJ^*IB&??QXQF#XS619'N9.57V;"6'[A8:)U\"7..06A9J_PI#S8
PP0(+P0%+1YBZYT<&_:S]2LFR9D>JW>E!P4VV?T:%;G 7L.*B@]H7K)4NEP C@DAP
P'X/[E\QNMC(2_?!.K;D:*]QND#(RHHR-M OA3&K*0NWWL>&7NI[K[!D%NQ]O]$Y\
PYPVOCRF7\'KV[4B^5(=#$I)4>A\4RQ@44'=&(XY &GL.'J[P+M#!AM2A%X?>A:UE
PR/BA4];&J'C]^\N4JU Q5\V!L\Y\,6NGU-D@]O@S[.'.UJ%)U;]@6 \5""FV34Y)
P8#%B@S!,T64S"!WQZ F0VL9R(B4UVQZ&M_%T'P5:-O3SX?"SDW(RZ) !FMJ>'(1Y
P$N!?/.N:Q3@S_@E'DLZZ')=\DME8P58[# ;V%@N;36O'MB^'==62UH%*7%7)NMSN
P(<O='*;##\DV[QL)B^U.@]$H]WZD3H69N(_;=A4[SM^:'6GW^J2IVL$G^@N2E%!N
PLSYLF21[[%*C?JG#$"]"<.$CLDN7,G"]:J^ %SBH"KAVJ1HXHD81#NKKXM/4CP;L
P+W)/%(KN.G]OUGY'D(\J7U0?!)+TB3&I MKN???@/B6[0(-57(C.9?=5.@&B;W-V
P)=!&DYS4:1F?")=MESM[TC0UCSV9NGH*,:)'#._:,LH<,/9(LHK^@*@=]M%!2U[<
P_3N>9>,^DQK_U#E>V08[^6<S;?8T873#2)*ABO&"3A+AI$)L0P:5?@^%9.D+@PBW
P(;EU950.+CEL^FDZEWRK5WF@O@83$8&1^4H??*UX+ (]",_)_%,^EF!6)P]5O;>@
P?Z"]L$RR,#O?LU29 R3L%.YLJ+8LDUGBN/T\WWUFC;,?-3 1Z)4%2'221/9-)U*Z
PI0H0)NZ(]QYM^9<6]ZQ+[;T@:P?CW^\18FG^HU_2=W4('+OI1X%P5X];?\47XAHP
P.)2Z&M$:[5J^AC_PI=25&6N<ZI)>Z-MD%&.62XQR_3$R?E1;/6>DB4; N>_Y2"I(
P-6=_%,TW8(S98*IUD2_ J$H7)ESDG,CJ5J\+D2]0/MY<_PH@QP_OC,G=)@@WE<Y"
P9VOR[(97UU!V5H_0X-$G<PN$FP*4QFB3Y:O59>&9I/L77!\RF@6/_DFE5XCPN&FM
P=#=2?,/G?W4(8ROMGNW1Y^+Y>KGI96\ SZOS ^5DT,58NKUF<"HYI//9(L&K#ZU8
P(UZF-K)-N!CJ'Z,#F8NQM3G7I&21Q'-/9CE"FF#UUZVJLT[Q)?72(V<Q!"37L:SV
P[0#?YPG:'E.H#-EL1HWE]8;ZU"(2>9Q\MDT7[15<V>@^9N+*"C+F'Z._QO%IQ(WE
P:F]WQIL0:0&B_7$C@:8ES#@MPERY!XZ;7Q DD5ZV=BZ(T6RC(?0/T$UV0V-]#XTZ
PG1%"&X2K^YNF'7$T'FUCKP2[!%%T_&PSE,;G69X*I[UM\:M2'QA>U>'HKF?'FU\,
PO$MZ 41=?&5\UFCVBC_4Q?6KJG'=>S#"J+%+9)UQ^CZ6ED4J=E!8"P;CKS4T".NE
P@73&E5CB*KL0)EJXN\9I>P\7N]=4-42FZ6H_KJ2U]_\E ,WPZ QKL+[.[L>]@,UN
P<*IHCB2M-0%^?PSI]C<;U#/RWA-Z+\?1#NGB?1_ ]2KYKLKZ3CF@5HV8HB((!#[-
PU35X_61$SY<<_B+:C"/EH3".!^M/@2_/[,C[EJ_^=40.IN'8X T5%@;GU<8%R.\1
PL;@_%G6IE) ;'M1)+[02E$?'A;SP<.>Y).2"..M>"P>J=T-+M%#F"H*7B]XQU\V[
PY5ND*[(/K>- ^2R4!'%YL!%2IJ6#<=GC=,@SD"Q9=KFUDH>VU!$OA L[^>?7W3J/
P?Q_'_*%L%YUX^QU2$;\RR8U?I AE+_@&&> ''I]?A^7<0K9HNN[[ANQ4,\X+;1:W
P@@Q'G9=\U5J*?H*_X(#D6KSE6WGCW<*MJV2\.3%L>7,@9.,4]THL.#69=,6N"J+C
P5I8N%B&TXN8VNK^\63HPYF'M_"5KB][WOFB<@RBNL)Q%^!)^EMF#QTCCTI=G6&!J
PQ^BK/R&&0?J5#W;* GZZ&*;-#EMQ>J2[8\I<3NN+,D!WU-C_,8AI[@4P&(L5<](6
PU.IU>$!5]>;3H+"X:!M//J-N!"<VB1>H03LF-_2A%YFNWJ-M%T;5[ULJ$<V8H0 L
PU;DH"".&<?ZU4+Q"'V?[!A>!6FIV]^0+<0;\&'L2/@C?05! ]"^31:D$ [3F=/]/
P! L%>Z';(3]4B-NIV)- F]6_*H84[QP59(S$U$RXC44"! :55BT<AH[[$DW+6AA8
PT$\IC+3@IX"D!0;>'R,,4X)$?LZ^"ZY#I\Y!>&C<LH<$@!(2>?2-P)^QA;?9'']^
P]X2*5P5@FX/K5FQPDM.8X@:T@$,;32!?*L:>>+5&*.BN^7?AZ$9ZW (XWSGU\>/Y
P$BMW^-G>ODCP(+5#\MTSY9W@O)'U]%4K-MK2B*!H5)EC4.#N#.E:-?'^A"4,8AR>
P.SW-%)=E6HAZ_Q*<> %:4P>U+BJGJ;_5436YK"(%N;LJ>O,=SI4^LG+JB6%/F[PI
PZ<03*C+:LY)#A"=IQ;[C;]$))#]*_C!=1C,65[#Z*P/%U[DJ,PCU(&*IAU-GK1.I
PW6<82H(L?;3 Y )6_QY1%S$FWQI\(,7S2 JHYGO3Q&TKMS0<K4Q7V:]W#[0I5"\8
PF_G)SMCVHL(1<P=9'RK3*3=TU-'5U6JU"A:45LR$/20WXU;8RX#IC.[KUMO$4-A/
P(;ZN7?E],WZM9&]4>QG?,3@7B7GK3^8><RSLLW!<B56UAQ3[L^ELE^47L)WG?_"]
P:*4GME()=6"A%T2EPX>R@]=:(<QBSP."RX_$8*E6-/GUE-+.LT%C)?D8!P=/AT35
P-RQC4%=+H\QONH^_0R>;[&VWJ.=$P=*MN2N*)BQQ#G"&"LM6N(8#N@!FT8BMC?;8
P$U91(_@IVN=FYB;3&K5=K$1*Q?O6O&I);&RW*5'1A^T/D2EZ#@@Z+[@C=+9^2(CW
PGW/5T&W4YH*_#IRY8@D.A>\/<@ :XIC4[W'('^O\$X28[RT\?\J,)&;*SRWG/N@B
P@'@WB_Q=2*AL1<Q]3/AFN8 *:TX??,;S  L0%<<4E3+MN[A(CQ9, /QHP*G>G.Y>
PD&A9KP: Z7B!WTXQ+)V1N7/!JA-%<X<.(X\WQUQ;>\\"_^[A["'_MVE-UGMRQAZ 
PYS)$J*'0)69E,T T#[6,QW?E+,92-2 HF"1:#.EIB<]S"IN$WCL(Y\6<#6EF+0DD
P R@F5X[^2[?TA#<MD-'E-O<> >:SL3(E"_Z!G"+[<#=.G*%TKS7R=+4=P=^PXAY?
PX?M4:Z>>;S:N:;(#/,JI!.YU2+#'D-C<M#^-E4=WA87-+_Q7A=NQZ"8A7BVU</E.
PP7C_@ S7<SUMU?F?2$'3W2Y>4U=UX<]4Z&6('3"Q(3L=W2Z1:%JL3\#ONC%Q^&/H
P4MHH[/4.8K+1$V]6!1OY.DQ^6EW2JZ30&^U&OA;#O8)'MRQ8\TN=R,A7'PW_3&PX
PX69WW$SUQ[9"UL?G>FN&Y3M(-]\]W:^8\><7I\AA>Y+P41? 3B7BPF?G0.XI2Q#L
P/J.PQ[.GZ2FF7751[^D@S3"HFB 0K) H<#F<36ZX)C>C9D$?\"#5N>K55W^SU@JJ
PD#@TO!5%#DZ69=Z'E1CP>?7N<G?:N).L2&RW*7&O:&"UI-N=^LEU[@UGT@38GL^"
PB58D<%#%\%+9?:S,53N0YWR">#>Y"1+@]=]!BAQ=+(@6IA!WI-"^WCN%]0:4"4!0
P=*;F!-ZW>]I6C*HB._E&%85!-$W=;2EHWXK6!TF=/^W@?M<\+6@Y+RB@^&WAQ;"Z
P4!* ;+L1?,!0%+H'PLXAJPOQ[] I%7;Z 3/ZLF<6_V/ TEW17"O7/$XS0'T-,4X;
PT=,-4AU%()A"0_I4SU<2(;WY!DU?0SC47L7)S@D#W]88[AC)[AIUT]?0(F+*NX]\
P]N)#-TSN]E9T-O6E>@.3P+R/<5 OWNI&'W:0+#2QC7F$$7MII7,,RHB<2/2<MGYH
PI/Y\&JMI+]*KM5"H5PT9B]AH$JZI7/E1S-<Z4H(/SL/;>[3&1VA?HEMA2MIN&17R
P?;TU.C9 .U?R4UR.*B=3*.;S:-+BE'\WD 6C7W*#KK5ZB<Y(*PX?D!F9,RS[7W0?
P4ZC"<Z$JJNHU.$9/KX6GO7E:MX;P?.U5X=VL $(&:+BOY>O2?J ]^4-F77R"1Q][
PJ&0_W ]!I3W!6Z_@X?WAF" RYXN;@%\C'4O\<C9L()L%9=X)%)2(L=J<)/!/@%9"
PJ;#*4!-L+-CP=?7QFQU?80E&?_ "@$4%KLWPMXZ?(+?D#[&57RYD3YVB.FG>P:*&
P3%_)Z,UP'^&R)XW\HHNM,!3%/U2T,(EU?2EO!^!4#BHY"NI;4J"6;__QE+:ORM"G
P;JS:7T[8K9,HD_:D[I K!5RPB]4V1]"T!)!SB7</_!ODH@GD0!A!@Y?2QXM-W'\.
PR7TY2*YS<I"YC@"QU':&KK(BEY)9/3YPI^602%&\^8/RI&N='P, D*E&V4XCI>L)
`endprotected128
endmodule

`endif



//  ------------------------------------------------------------------------
//
//                    (C) COPYRIGHT 2021 - Now, M2 Semiconductor Ltd.
//                            ALL RIGHTS RESERVED
//
//  This software and the associated documentation are confidential and
//  proprietary to M2 Semiconductor Ltd  Your use or disclosure of this
//  software is subject to the terms and conditions of a written
//  license agreement between you, or your company, and M2 Semiconductor Ltd.
//
// The entire notice above must be reproduced on all authorized copies.
//
//  ------------------------------------------------------------------------
//
//  ------------------------------------------------------------------------
// Filename      : CLCI_SPHY1_SL8.v
// Author        : qu.zhang
// Created On    : 2021-12-24 15:33
// Last Modified : 
// -----------------------------------------------------------------
// Description:

// `ifdef SL8_SNPS
//   `define SPHY_MODULE CLCI_SPHY1_SL8
  `define SPHY_MODULE CLCI_SPHY1_S28

// `ifndef __CLCI_SPHY1_SL5__
// `define __CLCI_SPHY1_SL5__

`resetall
`timescale 1ns/1ps

// module CLCI_SPHY1_SL5  #(
module CLCI_SPHY1_S28_NS #(
  parameter CH_NUM = 18,
  parameter DATA_CH_NUM = 16,
  parameter REDUND_CH_NUM = 2,
  parameter DLY = 1,
  parameter DLY_LINE_WIDTH = 8,
  parameter REDUND_TIE = 1'b0,
  parameter PCS_DATA_WIDTH = 20,
  parameter LEVEL = 2
 )
 (
    /*autoarg*/
reset_n,
channel_reset,
prbs_en_ch,

pclk,
presetn,

aclk,
aresetn,

// scan_mode,
test_mode,
scan_en,
// pll_bypass,
// icg_mode,
// mbist_mode,
// scan_clk_aclk,
scan_clk_pclk,
scan_clk_20,
scan_clk_20_tx,
scan_clk_20_rx,
scan_clk_80,
// scan_clk_66,

// irq_n,
clci_st_s_bist_correct_clk,


`ifdef FPGA
aclk_tx,
aclk_rx,
aclk_div4_tx,
aclk_div4_rx,
pmd_rx_data40,
pmd_tx_data40,
`endif

// pmd_tx_clk_20_scan,
// pmd_rx_clk_20_scan,

// from register
update_bit_lock_delay_cfg,
bit_lock_soft_reset,                    // from register : reset bit lock state machine.
bit_lock_ber_soft_reset,

// rx_delay_line_data_config,              // from register : delay setting.
// rx_delay_line_clk_config,               // from register : delay setting.
bit_lock_retry_cnt,
bit_lock_ber_check_en,
bit_lock_ber_slip_manual,
bit_lock_manual_mode,

async_bypass_rx,
async_bypass_tx,
pcs_add_pipe_rd_clk_rx,
tx_lane_map_sel0,
tx_lane_map_sel1,
rx_lane_map_sel0,
rx_lane_map_sel1,

tx_wr_threshold,
tx_rd_threshold,
rx_wr_threshold,
rx_rd_threshold,
pmd_threshold_enable,
mac_pcs_auto_clk_gating_en,

pmd_rx_clk20_sel,
pcs_raw_logic_clk_sel,
pcs_legacy_clk_mode,
pmd_tx_clk20_sel,
pmd_trx_clk_tx_prbs_flag_sel,
pmd_tx_rx_clk20_sel,
raw_pcs_all_lane_fifo_soft_reset,
pmd_tx_lane_mask,
pmd_rx_lane_mask,


rx_slip,
rx_phase,
tx_phase_sel,
pcs_prbs_ber_soft_reset_tx,
pcs_prbs_en_tx,
pcs_prbs_en_rx,
pcs_prbs_mux_sel_rx,

pcs_prbs_en_all_lane_tx,
pcs_prbs_en_all_lane_rx,
pcs_error_inject,

raw_pcs_tx_clk_20_delay_line_code,
raw_pcs_tx_clk_20_delay_line_bypass,
raw_pcs_rx_clk_20_delay_line_code,
raw_pcs_rx_clk_20_delay_line_bypass,
raw_pcs_tx_lane_fifo_pipe_sel_rd,

tx_tune_gap,
tx_tune_start,
tx_tune_gate_bypass,
tx_tune_mgate_bypass,
tx_tune_mvalue,
tx_tune_manual,
tx_lane_clk_deskew_enable,
rx_tune_gap,
rx_tune_start,
rx_tune_gate_bypass,
rx_tune_mgate_bypass,
rx_tune_mvalue,
rx_tune_manual,
rx_lane_clk_deskew_enable,
tx_ck_lane_lock,
tx_ck_dlyline_ctrl,
tx_ck_phase_ctrl,
rx_ck_lane_lock,
rx_ck_dlyline_ctrl,
rx_ck_phase_ctrl,

pass_clk_div,
delay_line_uplimit,
clcis_dma_rstn,
pcs_en,
tx_scramble_bypass,
rx_scramble_bypass,

bit_lock_en,
bit_lock_bypass,
pcs_pmd_switch_manual,
pmd_mac_loop,
bit_lock0_pat0,
bit_lock0_pat1,
bit_lock0_pat2,
bit_lock1_pat0,
bit_lock1_pat1,
bit_lock1_pat2,
blk_lock0_pat0,
blk_lock0_pat1,
blk_lock1_pat0,
blk_lock1_pat1,
pcs_idle_pat0,
pcs_idle_pat1,
bit_lock_repeat_pat_width,
prbs_mode,
prbs_en,
prbs_err_en,
pmd_rx2tx_loop,
prbs_err_bit,
prbs_close_loop_en,
pmd_logic_loop,
bit_lock_wait_cycle,
bit_lock_done_hold_cycle,
bit_lock_pass_pat_num,

pcs_lock,
bit_lock_redund,                        // to register
bit_lock_chk0_done,                     // to register: tell software lock0_chk is finish, software check the status and config a reasonable dly setting value.
bit_lock_state,                         // to register: polling bit lock status.
bit_lock_pat0_stat,
bit_lock_fail0_data,
bit_lock_fail0_clk,
bit_lock_fail1,
bit_lock_retry_cnt_overflow,

update_bit_lock_delay_cfg_sync_ready,

// bit_lock_slip,
bit_lock_ber_cnt_overflow,
bit_lock_ber_cnt1_overflow,
bit_lock_ber_cnt2_overflow,

bit_lock_ber_cnt,
bit_lock_ber_cnt1,
bit_lock_ber_cnt2,


bit_lock_pcs,
pcs_prbs_ber_cnt_tx,
pcs_prbs_ber_cnt_overflow_tx,

pma_rx_clk_20_inv_sel,
pmd_tx_div80_en,
pmd_rx_div80_en,
pmd_div80_sel,
pmd_tx_clk_20_gate_en,
pmd_rx_clk_20_gate_en,



pcs_tx_data20,
pcs_rx_data20,

// BUMP
TX_D,
TX_TRK,
TX_VLD,
TX_CLK_P,
TX_CLK_N,
RX_D,
RX_TRK,
RX_VLD,
RX_CLK_P,
RX_CLK_N,

EXT_CLK_P,
EXT_CLK_N,


// APHY
phy_sst_tx_pe_ct_ck,
phy_sst_tx_pe_ctb_ck,
phy_sst_tx_rterm_ctrl_ck,
phy_sst_tx_rterm_ctrlb_ck,
phy_sst_tx_drv_en_ck,
phy_sst_tx_bitwidth,
// phy_sst_tx_post_div,
phy_tx_div_setn,
phy_en_tx_ckdis,

phy_sst_tx_test_ck,
phy_sst_tx_din_ck,

phy_sarx_trim_vref,
phy_sarx_mdsel_vref,
phy_cmlrx_en_ck,
phy_cmlrx_ctrl_rt_l8_bit4,
phy_cmlrx_dcc_ctrl_dig_lck,
phy_cmlrx_ctrl_rt_lck,
phy_cmlrx_dcc_ctrl_ov_lck,
phy_cmlrx_en_cal_lck,

phy_rx_test_lck,
phy_rx_ck_dout,
phy_rx_bitwidth,
// phy_rx_post_div_sel,
phy_rx_div_setn,
phy_en_rx_ckdis,

phy_ck_receiver_rterm_sel,
phy_ck_receiver_en,
phy_ck_receiver_vcm_sel,
phy_ck_ps_code,

phy_sstcml_top_test,

phy_pll_bs_code_dig,
phy_pll_bs_code_ov,
phy_pll_bs_end_dig,
phy_pll_bs_rstn,
phy_pll_bs_end_ov,
phy_pll_lock,

phy_dcc_sign_bit,
phy_cal_end,
phy_cal_dcc_rb,

phy_flag_tx_dcc_out,

phy_rx_dcc_cal_en,
phy_rx_dcc_cal_start,
phy_rx_dcc_ctrl_ov,

phy_pll_test,
phy_pll_loop_div_first,
phy_ropll_div_sel,
phy_en_pll,
phy_en_ptat,
phy_pll_loop_div_second,

ref_clk,
syn_pll_in,
pll2dig_clk,  // 16GHz.
pmd_div20_clk_out,
pmd_txfifo_wr_afull_pipe2_out,
pmd_rxfifo_rd_aempty_pipe2_out,

// APHY, channel
phy_sst_tx_test,
phy_sst_tx_rterm_ctrl,
phy_sst_tx_rterm_ctrlb,
phy_sst_tx_pe_ct,
phy_sst_tx_drv_en ,
phy_sst_tx_pe_ctb,

phy_tx_prbs_flag,

// APHY, over sample
phy_cmlrx_dline_code_os,
phy_cmlrx_os_early,
phy_cmlrx_os_late,
// phy_cmlrx_os_dl_dn,
// phy_cmlrx_os_dl_dp,


                       
phy_cmlrx_en,
phy_cmlrx_en_sa,
phy_cmlrx_ctrl_rt,
phy_cmlrx_dcc_ctrl,
phy_cmlrx_en_cal,
phy_cmlrx_dcc_ctrl_ov,
phy_cmlrx_dline_code_cfg,
phy_rx_test,
phy_dcc_ctr_rxck,

// tracking related
tracking_overflow_cnt_threshold,
tracking_edge_select,
tracking_lane_select,
tracking_mode_enable,
tracking_clk_enable,
tracking_cnt_clear,
tracking_auto_en,
tracking_auto_rotate_inv, 
rx_delay_line_tracking_readback,                                  

tracking_early_overflow_pclk,
tracking_late_overflow_pclk,


// rx_lane sram related.
rx_lane_sram_sample_trig,
rx_lane_sram_sample_trig_mode,
rx_lane_sram_clk_enable,
rx_lane_sram_reb,
rx_lane_sram_error_pattern_num,
rx_lane_sram_addr_rd_override,
rx_lane_sram_addr_rd_incr,
rx_lane_sram_addr_rd_update,
rx_lane_sram_rd_data,
rx_lane_sram_addr_rd_readback,
rx_lane_sram_addr_wr,
                               
rx_lane_sram_shutdown,
rx_lane_sram_deep_sleep,
rx_lane_sram_deep_sleep_lv,
rx_lane_sram_clk_inv_sel,
rx_lane_sram_sample_done,
rx_lane_sram_sample_ongoing,
pmd_test_clk_start,
pmd_test_clk_start_hs,
pmd_test_pll2dig_div_sel,
pmd_test_pll2dig_gate,
pmd_test_clk_cnt_sel,
pmd_test_clk_cnt,
pcs_tx_clk_scan,
pcs_rx_clk_scan,

//-----------------------------------------

vmon_clci_phy_avdd_st_0,
vmon_clci_phy_avdd_st_ck_0,
vmon_clci_phy_avss_st_0,
vmon_clci_phy_avss_st_ck_0,
vmon_clci_phy_avdd_st_1,
vmon_clci_phy_avdd_st_ck_1,
vmon_clci_phy_avss_st_1,
vmon_clci_phy_avss_st_ck_1

);

input                           reset_n;
input [CH_NUM-1:0]              channel_reset;
input [CH_NUM-1:0]              prbs_en_ch;

input                           pclk;
input                           presetn;

input                           aclk;
input                           aresetn;

// scan_mode
// input                           scan_mode;
input                           test_mode;
input                           scan_en;
// input                           pll_bypass;
// input                           icg_mode;
// input                           mbist_mode;
// input                           scan_clk_aclk;
input                           scan_clk_pclk;
input                           scan_clk_20;
input                           scan_clk_20_tx;
input                           scan_clk_20_rx;
input                           scan_clk_80;
// input                           scan_clk_66;

// output [CH_NUM-1:0]             irq_n;
output [CH_NUM-1:0]             clci_st_s_bist_correct_clk;



`protected128
P>[)?Q ^,75X:K.=$%IM-O..(-/,JQ!H8_O!#>2M]E7],V/>B3P"';NDYAUV=NEF%
P7LA4&%E\A,<93[UPG*QH]MYJP1S3IUIEB#X6YMCSAV5L(\=Y!,MDR),!05O46\CI
`endprotected128
input                       aclk_tx;
input                       aclk_rx;
input                       aclk_div4_tx;
input                       aclk_div4_rx;
input   [CH_NUM*40-1:0]     pmd_rx_data40;
output  [CH_NUM*40-1:0]     pmd_tx_data40;

`protected128
PY#U^#&A5LI.'4 UKSKV _D<-(!%#_%8&H]-]+3EG?JT^C.]KO*JMUMDP'YNZPKK_
PF=]NO=W)158-T\8II!>C_ZEV93HA9=YWY0D<+F2%XA@!YOR;\3&?_V2&/GB<S=D5
PT484ZK<;*=1<\RN"2[N9L/+[."J5LIS+W5=.UM !.Z=&HNTI.^CS5^H,.,NI'2OE
PG4YCY#"*5'3/,IG4MO46MI;:Y/&0@:5N%)4:I6,>EV.<*9WFN2T6@MI%1^A2J! H
PA7="@.2YPC@ZNR7Q/)XP5]H;A5PEEZ9VHX0A>&'<&:^RKO+LR0NY:)-3NP)4XTPR
PC"%PSD43"ZVV-<$HM21]M>O1/.%&6!RD./%<\Q:^'<@<,/XS10IK1. ?&<5Q5/O$
`endprotected128
input [CH_NUM-1:0]                         update_bit_lock_delay_cfg;
input [CH_NUM-1:0]                         bit_lock_soft_reset;                    // from register : reset bit lock state machine.
input [CH_NUM-1:0]                         bit_lock_ber_soft_reset;

// input [CH_NUM*DLY_LINE_WIDTH-1:0]          rx_delay_line_data_config;              // from register : delay setting.
// input [CH_NUM*DLY_LINE_WIDTH-1:0]          rx_delay_line_clk_config;               // from register : delay setting.
input [CH_NUM*8-1:0]                       bit_lock_retry_cnt;
input [CH_NUM-1:0]                         bit_lock_ber_check_en;
input [CH_NUM-1:0]                         bit_lock_ber_slip_manual;
input [CH_NUM-1:0]                         bit_lock_manual_mode;

input [1:0]                                async_bypass_rx;
input [1:0]                                async_bypass_tx;
input                                      pcs_add_pipe_rd_clk_rx;
input [CH_NUM-1:0]                         tx_lane_map_sel0;
input [CH_NUM-1:0]                         tx_lane_map_sel1;
input [CH_NUM-1:0]                         rx_lane_map_sel0;
input [CH_NUM-1:0]                         rx_lane_map_sel1;

input [3:0]                                tx_wr_threshold;
input [3:0]                                tx_rd_threshold;
input [3:0]                                rx_wr_threshold;
input [3:0]                                rx_rd_threshold;
input                                      pmd_threshold_enable;
input                                      mac_pcs_auto_clk_gating_en;

input [4:0]                                pmd_rx_clk20_sel;
input                                      pcs_raw_logic_clk_sel;
input                                      pcs_legacy_clk_mode;
input [4:0]                                pmd_tx_clk20_sel;
input                                      pmd_trx_clk_tx_prbs_flag_sel;
input                                      pmd_tx_rx_clk20_sel;
input                                      raw_pcs_all_lane_fifo_soft_reset;
input [CH_NUM-1:0]                         pmd_tx_lane_mask;
input [CH_NUM-1:0]                         pmd_rx_lane_mask;

input [DATA_CH_NUM-1:0]                    rx_slip;
input [DATA_CH_NUM-1:0]                    rx_phase;
input [CH_NUM*4-1:0]                       tx_phase_sel;
input [CH_NUM-1:0]                         pcs_prbs_ber_soft_reset_tx;
input [CH_NUM-1:0]                         pcs_prbs_en_tx;
input [CH_NUM-1:0]                         pcs_prbs_en_rx;
input [CH_NUM-1:0]                         pcs_prbs_mux_sel_rx;

input                                      pcs_prbs_en_all_lane_tx;
input                                      pcs_prbs_en_all_lane_rx;
input                                      pcs_error_inject;

input [CH_NUM*4-1:0]                       raw_pcs_tx_clk_20_delay_line_code;
input [CH_NUM-1:0]                         raw_pcs_tx_clk_20_delay_line_bypass;
input [CH_NUM*4-1:0]                       raw_pcs_rx_clk_20_delay_line_code;
input [CH_NUM-1:0]                         raw_pcs_rx_clk_20_delay_line_bypass;
input [CH_NUM*2-1:0]                       raw_pcs_tx_lane_fifo_pipe_sel_rd;

input [CH_NUM*8-1:0]                       tx_tune_gap;
input [CH_NUM-1:0]                         tx_tune_start;
input [CH_NUM-1:0]                         tx_tune_gate_bypass;
input [CH_NUM-1:0]                         tx_tune_mgate_bypass;
input [CH_NUM*7-1:0]                       tx_tune_mvalue;
input [CH_NUM-1:0]                         tx_tune_manual;
input [CH_NUM-1:0]                         tx_lane_clk_deskew_enable;
input [CH_NUM*8-1:0]                       rx_tune_gap;
input [CH_NUM-1:0]                         rx_tune_start;
input [CH_NUM-1:0]                         rx_tune_gate_bypass;
input [CH_NUM-1:0]                         rx_tune_mgate_bypass;
input [CH_NUM*7-1:0]                       rx_tune_mvalue;
input [CH_NUM-1:0]                         rx_tune_manual;
input [CH_NUM-1:0]                         rx_lane_clk_deskew_enable;
output [CH_NUM-1:0]                        tx_ck_lane_lock;
output [CH_NUM*4-1:0]                      tx_ck_dlyline_ctrl;
output [CH_NUM*3-1:0]                      tx_ck_phase_ctrl;
output [CH_NUM-1:0]                        rx_ck_lane_lock;
output [CH_NUM*4-1:0]                      rx_ck_dlyline_ctrl;
output [CH_NUM*3-1:0]                      rx_ck_phase_ctrl;
                                                
input [7:0]                                pass_clk_div;
input [3:0]                                delay_line_uplimit;
input                                      clcis_dma_rstn;
input                                      pcs_en;
input                                      tx_scramble_bypass;
input                                      rx_scramble_bypass;

input                                      bit_lock_en;
input                                      bit_lock_bypass;
input                                      pcs_pmd_switch_manual;
input                                      pmd_mac_loop;
input [31:0]                               bit_lock0_pat0;
input [31:0]                               bit_lock0_pat1;
input [31:0]                               bit_lock0_pat2;
input [31:0]                               bit_lock1_pat0;
input [31:0]                               bit_lock1_pat1;
input [31:0]                               bit_lock1_pat2;
input [31:0]                               blk_lock0_pat0;
input [31:0]                               blk_lock0_pat1;
input [31:0]                               blk_lock1_pat0;
input [31:0]                               blk_lock1_pat1;
input [31:0]                               pcs_idle_pat0;
input [31:0]                               pcs_idle_pat1;
input [7:0]                                bit_lock_repeat_pat_width;
input [3:0]                                prbs_mode;
input                                      prbs_en;
input                                      prbs_err_en;
input                                      pmd_rx2tx_loop;
input [6:0]                                prbs_err_bit;
input                                      prbs_close_loop_en;
input                                      pmd_logic_loop;
input [15:0]                               bit_lock_wait_cycle;
input [15:0]                               bit_lock_done_hold_cycle;
input [31:0]                               bit_lock_pass_pat_num;


output [CH_NUM-1:0]                        pcs_lock;
output [CH_NUM-1:0]                        bit_lock_redund;
output [CH_NUM-1:0]                        bit_lock_chk0_done;                     // to register: tell software lock0_chk is finish, software check the status and config a reasonable dly setting value.
output [CH_NUM*4-1:0]                      bit_lock_state;                         // to register: polling bit lock status.

output [CH_NUM*2**DLY_LINE_WIDTH-1:0]      bit_lock_pat0_stat;
output [CH_NUM-1:0]                        bit_lock_fail0_data;
output [CH_NUM-1:0]                        bit_lock_fail0_clk;
output [CH_NUM-1:0]                        bit_lock_fail1;
output [CH_NUM-1:0]                        bit_lock_retry_cnt_overflow;            // to register: to tell sofware bit lock retry counter overflow.

output [CH_NUM-1:0]                        update_bit_lock_delay_cfg_sync_ready;
// output [CH_NUM-1:0]                        bit_lock_slip;
output [CH_NUM-1:0]                        bit_lock_ber_cnt_overflow;
output [CH_NUM-1:0]                        bit_lock_ber_cnt1_overflow;
output [CH_NUM-1:0]                        bit_lock_ber_cnt2_overflow;

output [CH_NUM*32-1:0]                     bit_lock_ber_cnt;
output [CH_NUM*32-1:0]                     bit_lock_ber_cnt1;
output [CH_NUM*32-1:0]                     bit_lock_ber_cnt2;


output [DATA_CH_NUM-1:0]                   bit_lock_pcs;
output [DATA_CH_NUM*16-1:0]                pcs_prbs_ber_cnt_tx;
output [DATA_CH_NUM-1:0]                   pcs_prbs_ber_cnt_overflow_tx;

input  [CH_NUM-1:0]                        pma_rx_clk_20_inv_sel;
input  [CH_NUM-1:0]                        pmd_tx_div80_en;
input  [CH_NUM-1:0]                        pmd_rx_div80_en;
input  [CH_NUM-1:0]                        pmd_div80_sel;
input  [CH_NUM-1:0]                        pmd_tx_clk_20_gate_en;
input  [CH_NUM-1:0]                        pmd_rx_clk_20_gate_en;



// from/to mac_pcs
input  [DATA_CH_NUM*20-1:0]           pcs_tx_data20;
output [DATA_CH_NUM*20-1:0]           pcs_rx_data20;

// BUMP
output [DATA_CH_NUM-1:0]     TX_D;
output                       TX_TRK;
output                       TX_VLD;
output                       TX_CLK_P;
output                       TX_CLK_N;

input [DATA_CH_NUM-1:0]      RX_D;
input                        RX_TRK;
input                        RX_VLD;
input                        RX_CLK_P;
input                        RX_CLK_N;
input                        EXT_CLK_P;
input                        EXT_CLK_N;



// APHY
input [1:0]                     phy_sst_tx_pe_ct_ck;
input [1:0]                     phy_sst_tx_pe_ctb_ck;
input [3:0]                     phy_sst_tx_rterm_ctrl_ck;
input [3:0]                     phy_sst_tx_rterm_ctrlb_ck;
input                           phy_sst_tx_drv_en_ck;
input                           phy_sst_tx_bitwidth;
// input [5:0]                     phy_sst_tx_post_div;
input                           phy_tx_div_setn;
input                           phy_en_tx_ckdis;

input [15:0]                    phy_sst_tx_test_ck;
input [39:0]                    phy_sst_tx_din_ck;

input [15:0]                    phy_sarx_trim_vref;
input [1:0]                     phy_sarx_mdsel_vref;
input                           phy_cmlrx_en_ck;
input                           phy_cmlrx_ctrl_rt_l8_bit4;
input [4:0]                     phy_cmlrx_dcc_ctrl_dig_lck;
input [3:0]                     phy_cmlrx_ctrl_rt_lck;
input                           phy_cmlrx_dcc_ctrl_ov_lck;
input                           phy_cmlrx_en_cal_lck;

input [23:0]                    phy_rx_test_lck;
output [39:0]                   phy_rx_ck_dout;
input [1:0]                     phy_rx_bitwidth;
// input [5:0]                     phy_rx_post_div_sel;
input                           phy_rx_div_setn;
input                           phy_en_rx_ckdis;

input [2:0]                     phy_ck_receiver_rterm_sel;
input                           phy_ck_receiver_en;
input                           phy_ck_receiver_vcm_sel;
input [6:0]                     phy_ck_ps_code;

input [87:0]                    phy_sstcml_top_test;

input [4:0]                     phy_pll_bs_code_dig;
input                           phy_pll_bs_code_ov;
input                           phy_pll_bs_end_dig;
input                           phy_pll_bs_rstn;
input                           phy_pll_bs_end_ov;
output                          phy_pll_lock;


output                          phy_dcc_sign_bit;
output                          phy_cal_end;
output  [4:0]                   phy_cal_dcc_rb;

output                          phy_flag_tx_dcc_out;

input                           phy_rx_dcc_cal_en;
input                           phy_rx_dcc_cal_start;
input                           phy_rx_dcc_ctrl_ov;

input [23:0]                    phy_pll_test;
input [5:0]                     phy_pll_loop_div_first;
input [2:0]                     phy_ropll_div_sel;
input                           phy_en_pll;
input                           phy_en_ptat;
input [5:0]                     phy_pll_loop_div_second;


input                           ref_clk;
input                           syn_pll_in;
output                          pll2dig_clk;  // 12.5GHz.
output                          pmd_div20_clk_out;
output                          pmd_txfifo_wr_afull_pipe2_out;
output                          pmd_rxfifo_rd_aempty_pipe2_out;


// APHY: channel
input [CH_NUM*16-1:0]               phy_sst_tx_test;
input [CH_NUM*4-1:0]                phy_sst_tx_rterm_ctrl;
input [CH_NUM*4-1:0]                phy_sst_tx_rterm_ctrlb;
input [CH_NUM*2-1:0]                phy_sst_tx_pe_ct;
input [CH_NUM*2-1:0]                phy_sst_tx_pe_ctb;
input [CH_NUM-1:0]                  phy_sst_tx_drv_en;

output [CH_NUM-1:0]                 phy_tx_prbs_flag;

// oversampling related.
input [CH_NUM*8-1:0]                phy_cmlrx_dline_code_os;
output [CH_NUM-1:0]                 phy_cmlrx_os_early;
output [CH_NUM-1:0]                 phy_cmlrx_os_late;
// output [CH_NUM-1:0]                 phy_cmlrx_os_dl_dn;
// output [CH_NUM-1:0]                 phy_cmlrx_os_dl_dp;

input [CH_NUM-1:0]                  phy_cmlrx_en;                   
input [CH_NUM-1:0]                  phy_cmlrx_en_sa;                 
input [CH_NUM*4-1:0]                phy_cmlrx_ctrl_rt;
input [CH_NUM*5-1:0]                phy_cmlrx_dcc_ctrl;
input [CH_NUM-1:0]                  phy_cmlrx_en_cal;
input [CH_NUM-1:0]                  phy_cmlrx_dcc_ctrl_ov;

input [CH_NUM*8-1:0]                phy_cmlrx_dline_code_cfg;  // from reg
input [CH_NUM*24-1:0]               phy_rx_test;
input [CH_NUM*4-1:0]                phy_dcc_ctr_rxck;

// tracking related.
input [14:0]                        tracking_overflow_cnt_threshold;
input                               tracking_edge_select;
input                               tracking_lane_select;
input                               tracking_mode_enable;
input                               tracking_clk_enable;
input                               tracking_cnt_clear;
input                               tracking_auto_en;
input                               tracking_auto_rotate_inv;
output [CH_NUM*DLY_LINE_WIDTH-1:0]  rx_delay_line_tracking_readback;

output                              tracking_early_overflow_pclk;
output                              tracking_late_overflow_pclk;


// RX sram readback related.
input                           rx_lane_sram_sample_trig;
input [1:0]                     rx_lane_sram_sample_trig_mode;
input                           rx_lane_sram_clk_enable;
input                           rx_lane_sram_reb;
input [3:0]                     rx_lane_sram_error_pattern_num;
input                           rx_lane_sram_addr_rd_override;
input                           rx_lane_sram_addr_rd_incr;
input  [5:0]                    rx_lane_sram_addr_rd_update;
output [79:0]                   rx_lane_sram_rd_data;
output [5:0]                    rx_lane_sram_addr_rd_readback;
output [5:0]                    rx_lane_sram_addr_wr;

input                           rx_lane_sram_shutdown;
input                           rx_lane_sram_deep_sleep;
input                           rx_lane_sram_deep_sleep_lv;
input                           rx_lane_sram_clk_inv_sel;
output                          rx_lane_sram_sample_done;
output                          rx_lane_sram_sample_ongoing;
input                           pmd_test_clk_start;
input                           pmd_test_clk_start_hs;
input [1:0]                     pmd_test_pll2dig_div_sel;
input                           pmd_test_pll2dig_gate;
input                           pmd_test_clk_cnt_sel;
output [15:0]                   pmd_test_clk_cnt;
output                          pcs_tx_clk_scan;
output                          pcs_rx_clk_scan;


// voltage monitor
inout                           vmon_clci_phy_avdd_st_0;
inout                           vmon_clci_phy_avdd_st_ck_0;
inout                           vmon_clci_phy_avss_st_0;
inout                           vmon_clci_phy_avss_st_ck_0;
inout                           vmon_clci_phy_avdd_st_1;
inout                           vmon_clci_phy_avdd_st_ck_1;
inout                           vmon_clci_phy_avss_st_1;
inout                           vmon_clci_phy_avss_st_ck_1;



//{{{
/*autodef*/
//}}}
  
`protected128
PVZU,"M33UTX\I-K >2AHHY<)*^0BI@$!E>GST)B^'(B<<R75S6-KHA0Q/FO. 39N
PZ\X0%A<;XN_+-J.PM1)8GH^1SG[S!_XMCREMZ#Z%\=<+<D4_(/".JYT=W3_1REAP
P#7CAX5> @/ATTA.28O$"H1#%SD\:;4X]P/K>QOB XH---"12OO_@MG:?PY)&<6RJ
PE&;)!TM5BC <)=CWQ_3\&\"(]I#Y""^22A4Q)*#H8\8G N.RPT>_BF?"X_>BX$&G
P[Q)L7N1AIUXZ[LT"@)7^C\8,ZYC#(_6YK1!)E0"J1(A#1]W%;)0@Y8S*=_HC+".Q
PU=P,F@PL6LO]HM3)VGK[*R?\"W).?>@T^6D%?(6!9O5-VR26^>_1HM(GKD'.96(+
P!6U1H,PGZ'"IP<J,6&2PT:F/U--BI^*%_"Q_SL=2N8X<"F5O5S]#@J0&S9Y&G<$B
PI &MUF:6PJWF>>W*").T0O12$T,D]!^E[R\T"M4W!)V[ZX]A"&/]VU2+$MP'HLF2
P>*,5*[ID)W5(>J#,XD>]8:ALI.O,9CCT-&CJYJ'[3";Y>420<(:;3XJ7_98:F7TT
PV"@:6D61G[\].UVK?SDA^)(KHJ+(MNMA_D ;^3P\Y4*2^E'%&IZR*B19/5%Q\O.D
PU!Q65>IYU_*J&IH\[*<'U*8_>/TH#-S_7DE9;R$)/KQ&2$G]7K1VLF3)Q* R4/.?
P'I("#)H>&Y-FT\('YAG5O:I@9C5IE.^IBUE!&Q;+]%;*'7S%#.E_7$+=]&1:Y3=J
P"XJBQN40G&]_G'*%9^3?.BQ?]%/7\\5;>#67V5.A2%=_M$M>/A^&RSA18)0:R_SB
PY6*BCW>2TS-/)WD(,H4!RL>@\Y!0C1N^<)F@-5#N,8V9^ZZ47N*Q34HGKY<_XB&6
P"JKZ?8UW -!)ZF>+O".NRTF^"Y(-_H4*[[O>^;IFU(_@FMZ;0AA9YKF>UE] ;@VR
P71^+LY'B+%JQ]DYOZ6B0N7?%28]"]M4,+./00R/09Q$XH( 9T^>@$P7T9E!"U#3(
PKB,MB>$V JOR+6V]7RQ ,@NX[;"%ANQ:%Z]2JY2B.,IC3G$8FQ"!Q),U[JW?]SZH
P/NXO1)U220:0&5%RIP(77]OVC4Z@Z!KS!WU*O53:/S\1V[ P6^B@Q(X'/=QC"I$$
P=7^1O3'896ZY_JD43-'SGL:_>QA74TOVG( QJ6MV?5XCC"S>8D++<*M@SBR!YQSD
P':8ULJ1,W&]]]J&H6/7K!$;3OZ:L+N^(!#.J6RMY!<B&)GTCS*GY-TI)R3+ZCK75
P^^ ?YFYR5T@+HU]BAO&LJM;ZP>G/2;:XE3TEKN4Y^'$*!!*1RXSJ@R%ANO56='K9
P9XZRY''H"(.[7J%HF.1*QZE/*>R>B [A1HM-[K)"PU$=A$Z&6*?]U4R::+W92Q+%
P=W@U ?-[-\Z%#:X[:#U9G2:K\'2NR?.=R40V/%1;@*=N88M8,#/CACZF[)P5U&Q#
PP%"A+N&>F)KC&U,P3HR3:RI*LGGUY7ZSP[, 38(&_3"(.>\8:,HIPVIZ25+S62X[
P^F\+>$<_=N*4^RM\X<,[(&C'%RNS1V@8)D\(("1N\%X>1,*T#]W!/6+N=T(:;DG8
PSC^PT5<@^3V0,>ZJ&JZR7"R"MBTJQ2?'<:'D5;:[<\_[HX9;>G[X,Q*K=H7W"+G@
P0MFUK^L\%Q(H#%R5@:NL&D#;^G9>):#X>[TS&[%AF-WN%<X02*CRE<'X:H]U$&9R
P/SM7WIP<@#HUV%8:5*OK>$JXDFQLZ=Q5X@#^1@SJP^OQA('CUEY"(#.&]//*+533
P:)VO8<$V=0O[\J] (._(*1S@#MG01%":4I_#RT),MB%H4019-D6]QTQ#]<0E\8HX
PFY5D40M'?^@457)/GO6)CG[/!A65FV$OI-=[$[46WR'TJ$JC"MV)$D45UQPTOHC/
PU@%YNIF?HOVWFSX<5F:S&H#(XF(KAFDVQBHFE'HX>T8NBF_NM_/*2:)4D>9LEQ7O
PH3JU8=:=]/XWO]G GN@XCXW\,)J!!13N,8<#:RD'Y25?S@W,U0P_W>&O+7 P([']
PQI@K0<2WYUP@\4IT-7TREM[K$SOHZGEL(OF [[GNS<@QQY\3^/B..TOBTPDCE>Q^
PI611E(TBYV\",]N@I\UXQ_( 4Y<<> 8Z4A Y@YRQ:)1\BL:V 6:AGP5W>&<T?,3!
PFFL-T,$>D_?PJ50IV2IYD6<@N_LO-/@OI-;)OSIZ2)1B++[BI_>?4V2TR09"A]C,
P-,_OIQ#,[8;;WI(\^<L[0QFJ=653/@(<??J"G(HY,$ G/+)-5N=#AQYJ^G9C:&G)
P>T&+_Y04_:-9(;&3$0AV_]"B8<M4:MN2EAAL<#BNV"X[DD'>DY5?O0CHL):('/RR
PXC;YM/ $<]#./_.&295&QTKM M<N:>SKA!#\"6%LMX#@(Y+TEWY.3&C53VM188]Y
PZ1;P6=&.G6R' '/'Z+!^Z='^)8VK\4@B S(R- 2)1G5["4,:;Y>Q_??..S6]_I'E
P-J#@W0=*\JOBD+!Y.?'48U_1F';=ZP>(TE+GZ]6Y"CNSKWZ[YJUM;N@UN+:G&/F-
PS/ED9?A,B)9G-<SR9_$I; G(EVKUOP:V!7V; Z9H3X3A2IEL3;U'[IO#P@VE(HND
P?;V^7BHL:*6#J:W%T/L%+D.ZL)T-LB>M>N?5[!VG_Z616OU6*35W^SGJJL%;Q GX
P"&DNKNT_=(,Z?S,W03MJZ8JB*[YT_\/D:=5KBV,;")-)]NV0_'7.13=EVX=4Q_4\
PW&\#!^RBGX#B!8+G?-ACMLU%G7>]Z&_R;T4SDV43GJ7PKP@^Z KFC(DK(($^D$E&
P9GA-Q[++F)RWG/?I+RO\!F(-Z+VNFG%0V^!H6-%GN3@T$BU5!4E:QPQOY<^X"^!^
P:03. U9B'*U(O*ME/S0=FQ3.I+YTUXI8E.VD:R'J4ZT9&J:!M8M%-(WX>\S/J2V=
PVF%M5E@X4.!U[/_UNDM-,:S0I\E0B/3?0589_W\FHP4<OF\T,EY>LD:(\=P5%ON 
P]JR!(2H/J@+,AA-%J\^O6:]&53&D5O*QN V+<U:R\G>0C]&\J"2BBNN(EHXF9?&#
POVHBE:IB1--\4/VM;'+DPPR[S"T%(I+;X4T)LQQ6#^S!;S9A7 ]:WX,PQCW*2_^@
P:_6]CQJ5<N\+*)#^57/J0PM:=)A/R,#'#:+\P?)0FRKDW41-ISK,9EL*7W.[>[Y0
P&FA(%-Z6H&HI*?#G@M+(:- DZ'^I0BF>\9P%R:8(^=);B_&%3<MY<6+=\Z(S&I# 
P:1EA"<X?=+_Z68]RR;6UB>O=]Q0*]$IL.7[XI>KMIYW\\%#EN_;R-^5'2^836>?$
PS(8KRW?;4J/F1\ENV[L:R2S"U9:.\PEM00AJ&[1I4))I3 /-L!KECEN*W,8 TI_'
P?>T^U=5H6CO&UL'2Y@@Q':9;K!M?FW;I.<,!,)RHQ9/1_?@9(0.RGW3C7-8$R-)R
PFL"FB3DKT)>+9>C'W3.X4?*Q$SV\BB\56<,7'?082K.M,[+'O&#P/]5_IL!KRL1)
PRNIB/%'<7*5D;64W.F1@_.(+2Q=:8*Z:WX!X$+5P,IA]&!K.&(10LI:O"_WVV3-Q
P^)&;4RD<!Q8\V^[R2QM'%N-/>36PM5'-:)1JPZ:.EG%G8\]SG>$Q0468,?OC5T&\
P=?Q#V+^1<(Z4V7(<7$;S(YTZ )*4%;  50)XIS7876RJFX+WWW>:A',G&5VBF8Q 
P8IT$0!R\VJJ ED3CA"+P##+2I![4X[G<4/F>!E2RN>-934E#@+380$BV6]XN?S.7
P4AU J5N2[A=R7U!'N_K,AZVH652:$/PST@@N&2AFXEXK+$5JM3^#@6PR\LX@^N$V
P(!?<<\8"6D,]C^RYV[<Z0<"9G\V(P0R>#42F[8]W](=$/<PQV/'+#BZV;M \CN(I
P YKYN'"YJ:AB2WH):$\:Q'J65POL3!].@]9E/:0+<@DFDZUVX3[,_!9H$?2L>46^
PO<TA%^(4^Y&7^'[+L_N5"MO@ Z;RD/W8)5S0%-6-QZ0&5-=^,)J&F_\MW/M/F@5X
PO2[F32AONL:KN324]G/B[;2>=4HMB;[D3^P9U])?*,/'X# 25L1DIA<J5;J@/7-Z
PPUV#"CQ0PF%;WQ_?8'9DVONQLW6=X$W5>K-;V>:$L'8C&%)/16_"8%0=ZN,CQ^1$
P)7J">S])6<XJ.B 3A:$-UF^+.>K)U%W3>=1.]M0B7+'./OGQ?J9H%A;#OSC60\8P
P*,*Y^METPA/6,SUJP(BYV\U7*J[HW#& ,84.JU(0LDER(DBE"O;)\F#J-.Z0+.W 
PY H%N4M5H4C3*GXB%+E/Q9_?FASIIS6[CF/&CM.[C(V=%RMIIN5+O.:M_W:5T),@
PD3SF803:5,>Z5AXU/F_FK!.\SD%!+OZG?JP5*TLB,32Q C/3=S*4V^KV'OJ,;O6S
P&(>3(_[#E\$' V7.,UCVGXEFBMDKXOIGC'ZX3$2WSF5(VWLR5!5!EQ);N3\CJ!?L
P,#C98I?=)#R*2W-96:U-R?G\H!*Y4'Y[-;&D#Y=T%6Q[S;B%>Z5?-UFA87Z^[D/B
PR2 DO_%^L.Y7[MYRM->0K3!QLT$YK%*(L>4]OJD_;$[554[./G0/G_S*YZ'3R(QA
PR*'_YAHJ:?8TS_CS'Z<+ '%0M/RV:1[>.QN=8QMZA1F]UJC:!68<OEP+9Z+YHH+]
PJ^<:V75+(DEST<R(3F/8??\UV<Z"+Q$B'/>HT#E-/P/5OXK1T<#W3HB8,*J):$^8
P=PX/0I6/WAO.I>A(FHT%YM_.JN1&[:\_,JH?8D\J=^-O]/#RFF_?3C]WK]VYBK4 
PWN$3T("Y^_U](<ZH:<>L^G%^E;K=HVD<V8UEV[-(0T:V"&A'%M5P"]VQ)&9.)28;
PU+Z*"*4DS,*GRRO"[+UYAA,[22RD&F^>GQ0E_JHNLNJI8T_(;B3/9I D<Z"B8U5"
P:094,A4P=VG=,JRBBA4YWQM9OK@)/3>#&\"6,&%.PN]V3SU]YAFHK/'BM$A03]84
PPG=S-)\L!7AV1W^O6EHR\VV'&P$,6;9+PWQZF?DLTU@7OG6P_#)=*74U!9"U9K3J
PE3-PS\G[&/<XL#"TZ3.@R$!':!R[X\0^X$32'& *GG\C@*3!XDHOR8F_=H3:E^&0
P"SDXPONE)S,GF,"VF(]@VUT )YBX(!H6J?.!E[7=*(*A._\W?3\ZMWS\UT)Z95$T
PU[1TR!58RT\R36 Y29P,B=[,5?2ON7F-I E@R/3PPZK?PA:E<SY2"[D K7)@HF.&
P-M8P0(/HU*R(03#PJJ9'J,K4?"R+GVG W44OV0I0=)I,&6^@#"=ETJI5#G,'59 X
P5V>!@U0>GZ$I4MN'ZQV;JYX<J9$&TC+ZXL&4;8U/^'C_I'<?4/#8"P9#LII0#BU1
P'%Z]:0X6&6BP+&UGG].I-!T+@M&P2+W]& HTWC<D R*!M$6MHVBJV-V'_?2^ _:^
P+4\J^[^M[("'AWX.=NWX5+)(*R 8W&!"=E%$JM%GF$XO_U@IV=&(4#V'-8#ZZ_CV
PB[)PY/CG3 3[RV %]>*KYJ]YW&@&=V3? 0VB'!+ST3WS<C?[MG>T/8?'_'>.+G+#
P8(Q%9XW>2[A0\)O@6D]%>AE^.MB08"N>3;"HI9HOK>#-8Q+XQ$N" H],M27QUKZ^
P6AAJ,&Y\V"XJI]H^UBM[8^YJN$W&:FG.!K?+?T,3FSE2@RU+7/0%[Z! Y.G;-8+J
PTU-JJ9W[A&2]\U*S+GFF^?:M3R-%L/AP[EL;R<%^N >'D"/)7*1VDN&VR>1+.%!J
PI+<*I_IG;FJT^V.4#1LEOC%F/3 /)LW2W[ '(86*I57:9&_56OFZHEE#XQ$;Z++ 
P-W3"&'G(&_6K"-85:\/_<66S@S,]E\HL*TPC)8\VN&;?T&X1C]PF8_$<)[TN.I;C
PKFX"9K#TEZ,>9P:7KMFW/9I@K7P3Z@27B0 #Y41U/H-Q@:S7=\70E@I_J^5UI"&]
PG74TW]<8$='!9W.QT!XK4$0/,?13SX.?QQ1!@QPE#-**D]#< P-*FN@K_W$4/4#\
PJ-7J@:,/].25QH1]KZ// .J<F=K@U=>%%:^*^&&U[_YL5E([F08#DNI %>NGCF]D
P0IL++;H7Q[+* B0E.L;.EVU&>=DQ%*^Q0TGGLYG_$K;[*'7&DOW7""/ET 0C45C=
PB]+&8#V%PEA-\U'Z374-=M0?H!?:J:RHN-/2I1KR8G_F668DU0?E;/:[.^K;P/5>
P^>Q QZ!&72I\<MO:Y35_9_&&J%XCUA9L:Z5.(LQ\O^#Y//Y:Z-%1M<IY6++ 9;4\
PX>+=D+N><BPE'W( 4A(LIX-N S1APC[NAH;"%<LXIU%#V;N0==2E!OU__([F0WCZ
PB_<L[1.B&Q4X@*:TZ\D.=0=NU]Q6%(]<H-ML?YLLOK[*S/-=9($@!BE6@P\4^;L3
P1@4$JC?K%TY+;/1JTF^QFAH%<NB[T#YY(@,W*75OW4 F4B,XG1VP(D)H!<,1;>\1
PQUXB5_,VS[8\1_/'U^A\#G9!GXBO(\:#R3O]WLV>>^U#*=Y"*^XR!W 3MR:Q_O? 
P&QK+D4D&Q<_RO>@DNZ]NFQYP0X:_V.70(:'!M?.W3FM3C0BEEPV316[@_)&W>7\U
P4D_?P$M-[8!<=-G5,*W;XRUBB.I&W\ZV'YK.'$F=H9TMQ[AU";BVZOWO&X^Y)ZMN
P45Z@;K">@&>1/A-%]2A7B@341F&68GR_O.'6JZE=DDD3?7F,T(&P&YJU?_\0R^XK
PK*.T!I#2:O*C12X36A,5O"=*$63K-4*?]*M'FF:'3H3,LAX4>3\H!BX&G_,Q]!BM
P]-C)X"N=V0[Z_*4([VYBE:(N22;?6.VK)&2@@U!'NAU\X18J>,;$4^8#>]5GJ?%M
P8+$$"!@(2 X3?M<^D ZJ("9%MM)YI;VXL:HTM$*QKWM<BUYX4 8"=I(OE4]5V7 T
P-:T[5!GLN6D#1P.3:H/Y!&>(-,.10Y/KA0.LK'EA]T&I0$I@W>>5F8F<KN!J?\YY
P\4V#!Y.UCLX.X^$CKD6]K$VF-VVWV28NUM3<EY,;9C_$G 4Y=NNP*<[<U%-[$]ZM
P&;U"4.CW1X7^M#$FL.>1R_:#9>ED.%<7;3H<$(X2%O!N/&+OFN<529VW:+ETGWEZ
P* 7JYQS9>EMW+8UUB[!E0.>PRBT CP>AKS-WUNF)^.]DB3[5K)92,@@9:RE920'K
PZ5@4\XF,D'S4%"^19D;6R;')ENG\C3W7*%).'-/#U_;C)"\M1/Q,F1\UGGXF!JRM
PAE)3>^$'V'A/@9#F9ZM6?2U6,<.M4Z-!623]]ZOQ9RQ]'3](I_!A')((:"@90W(=
PA,],S^>[/Y 5C3[XJH-DN>B#<^YJA-<[<C?GY,J[SAG0U&QD671_"SF?LFY<EJ7_
P/+E-N,DNM3?-HAC,U5],D/SIAI1KHA^P7[$TEH)+1^"&R4?V)%>=-.>O4*-N\BXJ
P>$B-VS+C1:6W3AXJEA('.O$JHB"S7HEAH 6.C^!IU3:>]U0]HM59<I*1;BB. N23
P'J5\TJ*@6^&J*<1SPX0@M&O%4:G8FE6$JB1%Y79A*^+@LC/F-K BKNHCKIJES'>6
PM\0_OE(R@BW 3PI/=W(Y@Y]9?%'T"3O)E$'_"_].EU=2.2JRR!@C[ZYUOT\_\C!K
PF$-0GW ^&IOY@NM_.EIQA%J(J/B6NZ;#5=ZJS)X:JS2&L]%;*8(VDBHPZ;FE(-*X
PC9"0N@)_70)E_96I)BV^GG?"Y6IITP!IM+'D1,"2P&22[R:#;G9;"^,5K7+)7O,"
PCT,$Y^/;T\$DDI8K;[T5=]M-R3X9W>?L]Z)X*:-FD4A\ (F86Q8W"D"8ZXS6D%P_
P=N$F8RDRJ0PKOUC_HG;KKM_+_M?S3B73\.\#;DNG_9$&A!E+\I:#NVQA-$QK" $2
P"*\!Z&ARLCWK3_2F>M"R93@N$XY;2P4,0'% 86AC7L^$[0U@UL68.R)O:J[BT2E(
P+V!+]S9A=C_QV_6"T27%YZQN6Q(LK4NDSS=[RB2['.Z.3/AX!F&!K,-MBJG:">HJ
P&[GEX1 YR?L\65G+)!50"O;<\E0C<6B0'>$+2M%<P"KQ7WCZKX \)^YTOT1Q^7WG
P&*\*4E<XG:'#86"W/OTU+M"86[,,L[')$ JJ^K'1C3&KL-3/%>8^O_S4I]X8_-F.
PH2B+WK1.Z245^1QVIBZA9T<-2VDW7HN!E8C3"1';*K]2@=\,J30STA29;U@[ Y:>
P(90'(KFA%LUF8J'-0M",PX]D3/7OK]:P5UZH*\\K527XLZ=60<R*%=&E%3.?*GP5
PJ^G[I%,\+*LB\AW\CV/5-P08Y4A"9<O.H&\UES+/_==&JNV"0$DNW(['(&-B7%\P
PZ^^U;IPT.EJJ#95OU\'?%#:#I4?@3E!??A0#!EH1/8C;@P'W<B?_(;SCF#%J@M8X
P=06*FFI2<.^5/28O62!TGPS9^T\V0R=;P+@S+S_R<4=^TO%@7@&LS@Z$P]P <+6E
P5SP9PDD1G],$H*&L"[GBSO"&G(9"8[5;2&&:] ;HO*E)>I!+3J +>Y0^4"".;F;)
P%\>(R;DP2_$FRFX2XX?EWT+C99CM;2Z=<>%MD\4I@5!UN\-GR$IFK0FDOZ@&. $!
P.6[  ^H+B*O2.J)<'^BA*1>IQ&\J:TI@*4/]NBW4((7$S*X?#F96@O?RC=:]CVD;
P'1G '2^2C_6^!3N,1U0)?X*DWW3VE'*\ B]8KI8\W4$)+.:!1$E56^7B^%<"!K&"
PY _8F\9#3>YI(6@H,B&/J*F;T&22AJ)DH+(V9+-Y^#&E= W8N*,1DS;T"DI(AS@B
P?!66JXNMM8GQRW>WV0=E*20ON(DRK3]#DZ2"2F$-?'^$X#6AHT>G#X,NF_<PVA#6
P?U)J4,-'\POT6B0.<%EOX2P-S-Y<$K1E0A2>Y=T =E6I)LNV2 ',]R\TH58)W"65
PLA]8O&&T +U9I5^G:^Z+A$G\ 7&B"Y;+5,]^.@W,X40B4E2PV/TN3,RX_*Z94#+^
P**R7-30SK#DXCO35]?M4KD'4!L3T>'&FXG.E$)VMYYI@F. +F!/Q["9<")R(L??!
PYS#B>(PEMT@')7(12TE?E;?LQ/]Y^[LG()-TD9;&YR8_HOL:?V^Y1[+6C9-@0<*5
P[I=FS*#<4L$@H#1,U[/3-0#S N]6'LL\Q8K^=[!@T3)*O>V=46^_Z6+($V_$ZLJR
P'00:$\?^!C7E O3UORA,\\G)8MCO<1 3)&B3WQ./B33&-/B65?P6-2V5ZKL$Q@_K
PTJG!?1;<FZ:3]1YZWNU(<-6'53U$;(H(/FD*CV:?YN_+OMB<'6X0\!LT^03R57AC
P5L@[!>$NFW&G8WZOW5A I68 0V*/-6.ROJ;S<O6[\3W4GVIXB.8D(;@:J V4@NW,
PNDQ2,BW'M=1LJK<@4OY!VD( $5_"QJ.8C^R-Z<XUOIO&I)^\).P\]ZOZ>; 1[PK\
PCP4_)*][#J23L3_-IENN$O-%L4(4**RFTZU9X\$J3\E67G,/#N*MEW*DLJMOD.4P
P10)J<9=:L;.@-SQ6/1.?>-.14R7FE_)SDT[T3XM]2COBR2#)G"!R+TCT,N,\/H&R
P5N&D3P2CY!>#LQH=EM?V_E%V-N1$RH/J:*5J.W L&3W8."-[;K$GE-$]JE2C12N1
P-GF2*MWCB#X;PM,< D/G[-G(XCX><@4[:-*!&LK/5;\6#2J38HUY-VH5[MMES9Y&
P'):L=Y^BY-#T0GZ9R"F/Q_Z C&*,UHCLU(+GN!U3+.0 $K/\B+L8/,J@CN@56XS8
P5K31W(P&B]N1AD3U]_,)1[N0_UZTJ(O_Y'!N1[[B,V1HA"C_6L3&5G/"IX 7GA@P
P,>FKTY?;>-QJE-:LQ^U-M:B#0D!*U/C40?:#$C(W$S#.GO9M!X>L\]NGP;"];ZY:
P*&>H F832VP)$M-6WOQ&ZQUK!V]0CEXY&2L.>F>N;Z>IB%6E+24?3KV\%5Q@F*4F
P,;OT\ZF:5I_$$6=04#^YB [6YZ^]ZZ"ISQ:C[XZDUE\T?,NYF[A,V!Q.4SD[2FA"
P4FX_&?P,Z^ZXK^0TP(Q:]O-O?Y:#(AP(ME4$$JQ&5VL;<W)/#75GYNA)$=$01\U&
P8(;33P)>ENL0N0;1ME^-NQ0,OL)\%;&K52 7-<@YG0#INSVU\^15'8/VZDE("U-K
P%Y>SQ1\6JHZ N4ZJF+>M 8LV-_"OWXR"7PZQ =[^Z<C&LFH0VTSAPC+VW80-D4J 
P<B9.0<7;-A) 2(G_BFT^ZF!> =!2J5X[4A)I55'QM(WK\J\WKNI7W3I@/?S?:'@*
PP"=?>)/-I:-Q5"T_0V5W=;0WEKF"3/7,1SF@-?]B.T+J^JJ'=I ?0EJY&Y27AB0X
P$9Z! [WFDPG$>37$WD B;,BP#1ULC\;Z<*U:..TRXTNJ]8<XOFH=A9#C+C-Z7(9K
P<L=#(6[%;M2=?#B:PZJZRFM"XSP5TL%U1*M+4!'85TK%A]%MVO^I>?(G!.\G$VF'
PX OO0(&A]S-%*QAYY1QX%>XQR3XP?:E=HL-)H<NN'UWDCRX1"N["^>3VN#\S4$$0
PO/?*AASYZ/2I[)"G;B?E@Q@KMUK;"YXE_]<%Y-@O9SKKO#R$ I'R]NO 4'[(FO29
P2:B(&H* >]--T3'37LEU/LKS6C8V"3*91B<Q/:U?/ QC$B/^&= IAJ_Q4VF,0!@?
P.@^HCN\P(I<;PG;5$]^:DH+F!"U'[6[0[$+62 IXP"C&EP4YAZF7]VN<0_D8LR5<
PI!;_&*>,\F!97/^G@YPZVS$,19WB?)%CAU*.=OXYO=  H4GYBW*PL/$%"R<02+81
PX2" D\-4?.N3-)@.9RI:F/)& OSZPS%IT (B" [+"O>__GM'3P9#7:4TG>L-6.#_
P9AMZ*1PWF!)I*IG1A%]U(?P$Y#E+XA]S1$_!EU$TH*),\"7_9 3V00UH8?#-M -K
P]=*[&628L0L#I7@:?V:[^(E^7ER&-I\ZLW?&A!T%RNL':6]1AS*EG>.&"06Q)!_;
PE5)N!D70_2>7ZMG 2HGWQE31\$*CH=OY9QRZ3[7LLB<2)-Z&#?BL(TO%K KFCGB3
P6P.$Q]>TI!4U&Q3(OW4_V6/?SYBESI(@^P[LDIOA&JSP6;Y5C1N:<6H@K<9XQ)0A
P$LC!AD?_Z*S76D*+'"5T[8YR5Y$XS)JY 941MB;H 8[/HX][ 6T%UGUO:U<9US[C
P_)&Y6@0'HA04=?Q="5M^R,X"FDIL*!=A/#9C5BL [)F5B9N8LC-!QLR9]$36^4V-
P4=E>%]8O0H/.4@!WMBEHL&N?IV7R,O&W$?%)-$FU635;<,@OIB@EI]X); ZAE#?"
PO-S1B3UN,=,3.OSI$A;4E@O"'8PH%1!87G&3T#QIN-C6,F*2X-"S(C_7GV<U =3K
P2'"7D+ F;D"P"YUU@QX6RRZI)WT2^_YU6!W36K^6\7TE-EC9+N"76)#[S]\^;U-^
P?-\X-<P%M TLY=V4&5FUMIGX?([8P1O'GGMU7@+ ,'O_GCOGQV]CR%4U]4&W$I8V
P*P/:)NC 77#D1GCM],@FP04_=,E.]I>;4PE2O;1[22LA_[UQ?]8EQL+]R!2XUEY6
PO_/4@AJZ"!CF'>1>$[6R.]<$0LL:CN!-H6=9*0!U$.&)3N>-%83P[0*\)<>P*V';
PRDC0P*?Q$>1!'.0;%Z_RL],OJMW2V6E+1@[ $(T=I7X0;T3QMR/C/_J='H(7#%C7
PD6%2B9NZ VW$=!+X _S"Z.NT;TFZ6=?!>UREWI=ZUYO_;[>&^)Y"F8<[DF[\IS&^
PKGVK+UVMB/'135Q5SP78B +,5%J12>LJ:I1%WGC/O^/]OUGYYP9W+\L5E-+YVZ-6
P!I<KSX:M2[[]=:B[]D7W:W8G]Y5ZQXH?#B/4(Q5,9TVN;M_%VC*0>$"<KXJ5K)ME
P569W2TOR]7H@\O]*)<T)::\RA>F!)>/S7N#FI(=24N*O!@@V0)8=*L/!L)D;Z@.S
P8HN+K]8R$A!&2CP&]$N^%G<.-,1$#?+<K;*BNQZ6,LQ/GOL><LJE]5PI5Z_T'@&U
P%7-M<7AKO-5XR&DV=CT[M ECD,HEO4DI<7)8^Q?,-;YWF@H+':OE5)"S%?(BS>Q\
P[^YKW%9GH0T_VGTT-JM L5"]ME2571+;XI^'"2\94J+ATK7)%UJQUL#,\$((8B&U
P*.%^ICI2@8F"_FK  _1\?_QG^#/&VI&R6PRWEMJC-/A=@:F3N1*6Z*UO;V8S,V]O
PHW#_]U?*60;<U GC/J7\2D%,O(H;UT$2;H@A\#<TFL>5DZ%P8KCA*B@A'NWP,)-=
PG=&PS-M0;8679AJE$5T;'41D^D3EP\9UEUW)R9:K_JJC@#[P7[LCUPF_L?R*R>8J
P6BN_@S! :LEIU?^$M*UKSIV#:U8[['GOA9=<]-O;E_'GR-O8%&Y9H2&BHC;-(?(R
P;6O/Z3E%9=VF1>U3:<]@*EK4FR5[W<W&/=A4YA4@WO%%VLY7H(R2+#RV>/IZ#$9I
P( ZFDLS(0BI31*# ].F0.0O@K#QI[Y);\C003!K7@5NM'*@GT(Z2=*OB)#12BRV2
P?,*MJP<9K$-3X1M]:BZ4+]G=U6N J8L/^76=-\K_-5T-N5&UY(M96!CT##AU7/1P
P.[QKR$_U)]R06R67E)_ *XH/35U5UQ1/#B><";\JE:;SS_7(=EIL;F0R@6*$V\/#
PV\40D6< 1C:VSX1[H71ME<H5.$WYN;7(A#;<Y8Y9@1E^?'UV?PNO #5#>XEH2GJT
P?J.*:)2<,+]@7( NB8II>^ .JY^[5%8[!C1Y5-OQT9VQ;WJ<RP>I07#GG>>QOA9Y
P@B:[$3R5L-2:V/HY Q\J:K^*GN::JIJJV(5N_0)!_#<S2X-.8Q+MWO'&80F[4%WK
P--:QM7U*DI-&W^>J7?7 >;XT)TD?2N%VMF9.M\7\;YB4,WURZI8*A^BJZ0=(8&V:
P))C^/)$4'+ZV]0<%W;-6['??&/U"(X4+92I5O6ARFNOMCVL$BC$?G(J,D2M<G9:6
P$F>O'.NCMT=FX2Q$G?>&:H-NA1AK[F1K@D>K(AO_.9[='\Y4N@N5=^C#!00,8N68
P1=9(2G%,A&C]QU'EG(/N>PKE$WX3%8Z[N<DH;,/7F(,#M\,5I_J@P\GG+5)>W;4T
PJ->$KAKUFM3.OTBBF@O!Y;OO\O^^;"969$&9YJ9RSB1TXBU@7X'9ANKHEU6X_SF1
P;A)M@)S;;T2- !M^2\S^Y)A)ZJ0:U@U"PQV>'@B%<Y%GW'!&R3TNVO8M5FNK'8Y#
P.;&U2,Y3-HN[6\_O-[.4YXARG]WZC)0JVA75'BC9(.BX^RW]R@-+%+@7V29&+3=#
P/&I=C(DJ!:*V<$#-XU3]-]Z\4-U"!C6)\$BAP4^?"L9.[WET6_RTK\[W^VE?/6IC
PM-.!U%EE^4-JZN48N_I&KOSO4=:&;2YM#I#-\;*6$;L&^VU<'GSPA-0_S0MM7C^(
P"> ?A*8HU^L&'^IO#M!6<#D>^1%H\'6]X@4F 49%^I$^==?/3] XFY.S^6IY"02R
P*:H/6*/(82DN+YK,$+]32BWL =.'6X4@[)@20\Z$"$$%$=YMI9&%'Q"<XU$\=2QV
PS+B#W3[4?IWL_D\*Y#%LAV6=B6EQT--[V8]@\;,$Y%R>PZ30T\&4Y?!8$]CBJF7;
PP>VT*O<$.2I5ZNAQKZ*"O;7CVL?J1U<^!,)YF.SOU:-N4?>R1V3\3,61A'M^G3#5
P^\2#<*[$RUHS4W,OTTU!2<.\+=6R.]&0YA4 I7,Y6;Z O+'CZA!=6_36IPS-W)Q/
P!3#'5#$L94@]!T 2LDX?RN$FE)-[NAA9 _=SP+!]7YGN:]*Z<;^-SE!,\Z1*UI?4
P/@PC#90R4_@H47LMD4R;H<R)Z2=DEMXH0#<8B,G!JHL60R&P9E$N"G3@K(!O4R'-
P50M7I5?D\KHXU/>P.,L'S-F9L6)5CW(2PWB ^UE,VGDQ+R5&R-8JR->$KM(,R]#\
P<\PKM7,DARUQ=P4.T5B%/$!,D4&NN#PQD,V4Q?!J5+[$6)(4;?Z >EZSQ::HRQ[V
P;Z/LRGTQU%:^MX^Q[\Z7 :D&"J3IO+F_8<:8KVY8G-H/]2(^RG&/VJS>ABAS?[D!
P'RH!60(,1"\"[(GB56D"+-_19$!-*CC5'HA4FP)AN08R(KQFO#OKF/R29U EY.\J
P6(4W*<@!Y&GZY VJ$*LU047+G418W:ENL(N"'-PR/#FX<Y/JH$^RFO/Z\#-FB24\
PA:AYW+]5N;1!;B2SC.CD@_*G95*?VL9D)SXZ,Q<L(2)A1RW+6%]PD/+20MC8.+Z3
P.+Y)53BLZOU20<V$L=B;KHH5G=MX$6'!TPSAGY\?&_U=)1ENW/0J;09>SB4&',FO
P7CJOG/:ZA").%D5X![EXB=I'D_N$D":0)!RN28?+IU:VNRT4F;C6>\KA'R.<"MEQ
P>JI3RE93NPGK:_Q>[*2JJU/9L(J#"N>42DL\N,$XYB2'S^OZGH ".F>67/HLKH6Z
PNXG .^E,+7F,;0L12R@$E:NOW ?7;6_ETLGP\U2V/.A 7M5DVIZJY^"(LUG@]J.%
P*]Q2,H0G,!4B>KLPJ5BF^N(-)G)6W_/RP)A"M2A'.' A.G1IE-TDV',^Q%IE^2=\
P2U)510K'CGHH _G3%)Y./XK>J:@N03S6Z0?40!H3&HWDL%#0^MSR']7F.#)OH@.>
PT=VL1(&0^&2XQ<E3F@JI1CL=>// J'_;I'N8>[2 F;WS0H;'P:6:J[\'="=]P]?9
PH&/>ZY<HOIWBJ-%B>VL6<VMZ/X^3;O'_GP0:F@HI\9RVB-,:^,KT._0"*+=E9$;O
PK1M$?JB/SY@*0"!6BUG@_;[TI,!P)D9HC(9@!-9#81=,\/@G4^KU1<9H6%Q1-AI(
PU-#L:0TKS@BF=&-#RA-1DC*W#>V)35]"OJ?V:< @YC0Q0BDF[&52:E3C*;&5-'S"
P*=9H2,J(B67+T1T_XJ>[&PQX,Z="6V<=_?^"9749D,Z^\;>\?R/4%P2EN3G !P_K
PU9B5X<T(\L:[(IB,A&QNI>_$P<O"D6;@2XHNQR)M H/N93[XO!B@"]3%(YN8FN9S
PG;5A)0J QD&WPT8NLV;["$#Y,69#4>RKBEO+ES[;.DD%C9\LAD$7OUA;%4TC5#_&
PB;8O?Z K]B918/"X!/&.Z6G?:2EMJ_-.F0N._P3,EL->$S=6"3GH.GB%)!/G' SM
PTNG5I,)Y^-1'#Z_LK-6EFU%L3YUYI=ZJ[G2W,Z\/:AVH-HMJNVRNO:_EU#M_C!K6
P&K5&VZ6S/Z&B33>P;I8O$DRFUY=RLA64'&NY_L+H@#.*OR1JMFA?VS9&*#JYW;N@
P/U R-25/VAV"GVN.RXWT.E1<XX63MN4%-_$!_9ECFAR\>N/4_]6RKES(!@*]R=L<
PR/2](,Z,1"8S$7H?;*W+*>6HC .E%'E,9=^SAAD N-%-]6,M9?Z?9T] C)76K/6*
P%"#39B$&Y(2)Z<Z5L]V_\A91W6<:+2'):Y\60%H2QU \_&.[0'CE+84CQEQPNKP?
PY*1<D=9["M$Q,/"U/ML*34C).M8O0.)A/WPZ^Z/88\1JFJKHL?$EH V*.U^5\8L6
P'*6QRXOC.V_')3.6G$E(&R*,>E5C\+%RFR<NK:5!@BY-K=8#D>[\[Y68N YGE?<;
PO+N\Y-^-X=B2FIJQ8?*Y<G0[SW%W-3@*+8L5S$<B,$7B*O,!AGL_:5+1+YV83RTQ
PH:D7#U>9$"%3%B6XP*/R?'$"1RH-YE=TI[O9M7ETU'ST[>PID'#6:Q>.*R<4\?HR
P'55-A/Q$^R=#N\J=M>#LI$H/+72ZZ_;]A;5@;G6YUSY*7='S_QO("6S<$?D)"?2F
P9/:;17(PVS9@6QOU4D\G>Z @^I1*?9 I'CVA+,;,10Y1A/LF3V]]YEMJDC>&$VO*
P[9$28+D/%'A156,E=WZ[-Z-F11NT-_@E-<QO ^M=2Q>F$N"^2DL\KI-<&-)A1L)1
PLDJW*FY-E1D/1JM3I,FS=N)\1SD$(DR7F5Q8X]"K;2L&WQC8;!/8YXC_TQ_))>,8
P%C;#=>3T8)Z2S+Z8,U\(SR#<LY$F_I[3X+E]PA$?43-P5[4$N/6R\6B\,SH[,4/K
P)K@6]Y3<*]/G@S(1N#I?$'KFP51=A=U=]8'-+S/,J\W%'SM]]SJ8=A*'CKJUV<!C
P/M,H!K[(D(-NJ(\?%GO:/ZCN0QFNVIXLO#&)!"OV3KKCDL(/(A4TO/?>IZ,^_WH=
PQ/7VH0:$*1PV=($201>AK$PM;'',IT7ZX(D"4LFTJI+*?M9ZG9@+6'E5C<IX(I-E
P59CH=#RHN)2_,#+=C-^*:=RZ4"!HPGDSM4Q%,E'0@=T$T8 GGAFT^,T*R.31P9<I
PJQ/HHWPK']RW23UAN-J&LL_\VIN5$4"W#/"SKT<D@P#D_+M^S:&S-@^?&6]?1/:I
P45FNO:R(=6JU@T!JO1$_T,MI*KFEH.&6C0D:5F&[AICE0H%PF(;E!-VWDYJ-<[O6
P<QS875Q1* AO&<00+TM"Y84BF92XXT*F_DJ>:7R%G&'J@=3LTB.L$?#7AGL0RJDU
P5>1'<:*PYC=@#H/AO1H2&*F+IZC1B'>V"/-29D;RBX60Z']6@S^%W*JQ958L,Q1;
PR\6*1=<+K_F<JK?^RM./'^.XSO/'T]-4)@L1P3U'O:0.'J%FC&?#J(=NPSPJO]@8
P)DE/H4MQN@L9@%M)ROMMTB+3>"H](1R*V/D)N%EUM;N*&+V?YFZQN4<,YC B;^9H
P&"<LU$ZK63!JMU>4DBQ;U(*"A#%%TMW_Y^\()%T2CGJY6J7G\7:^XS;CPF[%N'TY
PTQK'-ODFMV>MD:\L K%V[C33Q(];PXD[/\>HW"F2$A]%E((X.74!3V&5J(3TWQ39
P4Y%9\0UVQ2E&%. Z+!"?>Z'B7PLU=X&3E3*\8:IKE*N6Q#67NM8@"^UYJ"/4@B2&
PRVITS*KMV/A2HWYA$ BN&$Y//23!L$Q^!^!(IGXOWV9/XN@RV^^K4"@OT66=!I_*
PGM]!:\T^A@,.N5\!I9%K0Y&9=T+G!]D)%C:(]R*(MMS@%=&GI?*(\J&4M#[UD;$C
P1A.F15RGT7O0T>3XP0G:!;4N88>"85?TZ4KP"XJ^%_,AWAJ^DL1'TGPA7C/P"P$K
PJ)74T*>$S5>JFURH^9.J J),+\9W"[=B?DW=5J7/(B-EGW>E AW;A=O&1WH(S@7S
PK5WT"#H@XF4D:3MJ/4B^JDSW;WD#40-1?C?D =CECX"4N=X-<@Q_R(#*25TD-=\C
P2XB@[<-6/(7\T6,78)2)L. ?)@YO7ST?&R)">=KL/29=@<7^?ZB_2+SC$$33OZ)D
P-C+XPG9-.,-5BE 3AV)[?N6AUMDO[PQR/2PM\5U=//??MSK%SV;L393/QN7=^]:S
P_KBJ=.8>JZ.L3+1)=B"OTQ[)R5KIJ1>U[)<";5[=SW=X/M\R5+/4O['HD6I);Y V
P>]M%MJH&.Q!CX.61MW"I7:/ULPNU-!%"#(%0B4Q2@@@E^H$N1W4#7/2$ZB-#X6:^
P8O^ O_M$HT[0\>B?KH;9GNK[<,)89=(%"SDB]9G+^6)W0%H**#*[VL43/U/;)_4R
P[6:$&Z0O-5U<]D=T\'4H$&E[^&.3MW)[H<S3D_!,^XAM(VQ#QY:]JB7M*JM.PEUC
PK*])@KXN5SG3R3%]JQ>4CREA\XWSY(X#$N'[%5M%@C"$4>M X./F&YJC\\WS0"$,
PK)XL$6V(;N]+KBUV48L4_:*L>7Q<J3JV=I@#A[S1S@,!#_H)9ZN#\E^\CSCH&PR/
P6!X5<$S&JI"2GI!EP5I25?R&0W.ZJ[2])LKNC1AB\<LBWR^J]I6AL6("YL9:$=N$
P1L1$%,F;049A8WPZU:^I_E);2O094]D@=\MEM]D'.^IK_OG@"<B3[:=B:)ON%63R
P964>E!JI!,CAKMJ_V&(!J%7L+V]K'8[>2PZG+XZQ&TA=VZSW5",/02),\<?ZFM/,
PA?M9B'RDY4:".S-$4\IG^-U&GT\A)ZE%XH#<E] D[I[1JK/IL@X3HUZ9G_I#D<N%
P5,!<13%JUK1S)BO%3,S6C^@I.]5<7ES+#1-_].6@/X @=$?6%TG;$K6/^N&*V#UI
P1Y!AC0 ;QBY31QLN^KG%4,K9B0&I\2X:#M]J-F7G'NXB8_/V40^L^.V(+T.(,K:3
P%]3QY3N"(+L"0+SDKM\*YUJVM97 QD'Q"F6P<3B>.<S0%6"$0UU?$G;PX;M1#DJN
PU52U1R-QUY;RKB.^/,9B%86V8L"MH+B/3]09@P'/BL"CMU+I3+-3@Q%>=\"6N3+_
P1&-G068AL;O1$J-VR:L@L>U48I%R,24!CANUH1EAVBO-3AK,UV=+5^Q2=E+.?NU/
P\1!.GWO2^K"],=2,'K\G<5DA!MU:0QX6W#HYB1:J75$./^H+QF! H.@:43''Z9ML
P==>*XD+!48S2NM*J9=FA[A 8)]AV[J",^)@I@KCAR?EA"@/=[_UZL/*>CJ2@-#[N
PJ)6LP\P%:/)IT%N"0SU5H#@3\,CU11UD.ISZ5^-M$2QGM.^0QQ*A<]/V&&8+]U)A
P $&'59P=(PE DSY1M5/20#W"<0;"[FLCBQ.\)5Y/CO_ Z</@"_DS<:6LI096.3U4
PR>PZM TJ1R].HSA CPU67QL?.XBH DV.9!^Z(PD^+XV5.4CT)#C1X.9 6H"X3J8U
PRFQ:XURF^6 W43%B]*9Y:CW9@:I,_-CPKD(L;&O8M]NY[OQ:&!<-$GH'U2T9'O;K
P";^3FIPBF>?4]H.#O,B;^9'HG*<L$Y32 [ Z::1CY*WQ++S-K-#I%^,S[%NQ*S7!
P<*A+,@*NXOR+]NH52] DC/8I*2]^+-5UY=(GYG=-;.!HRABTCCY5/B2<S6Q^.Z6S
P,B:4]/D?WDL$??LN)B\T8IVXQM,Q[<>05KPE+V&,R<$ ((8?BJY,AU4<$W=D2ZAC
PV0L5P]6<ER)>JW'C?4+&J>K@\JU-A^W^74H#D!GO'^B!_AMQ90!>,0AN#7?S<M8[
P*1NEDE<SKP#@'T)L:T[>)D3G#"/\SX5GM)GO!-D9,9 _BASVGQ8+OGO,*%BV:H&1
P]AWV"\9A:50%=_\[Y[E.SN+9&)2./I4$I=T"JO 2_G[!45+G#GO'8+SPT9IJBW^1
P@&.3DF(/E6_C>A;>(K/[Y>\+G;H#RO">8H%$*ZG0PJ#^S(X3R&#C=:,FB9QT))KR
P4;>>95\Z.IED\I89Z@NX9#L"7[G8-X#<[;;=P#L" OQ9;BB -M3MBYW^)F0M#+)+
P]8A:ORWV1/ T4HDF:0[EZ8=1HBH/4;<JJV-?"$GR K-7T<A+U2##OJCQ97%J#8+O
PJB#7X+/_,RSNP^/6T'H#SRZ%S;W)CN"@'=/2=+IP/A=FH@8-O* OX%;T P7@ONTK
P>"88(/2?!L$C4CD2,TOT QR'Q?,HU=4/^1$0_,UN6+:]N62!]^+5,P)MOJ "&U^(
PJ$ZAPL4SB1JHK"(/W["<TQM=<W+@+D$R</&M^"1UQ*9KZ>PD$"2*,#<DM=P1P3$\
P" %WUO& :^'A<9&_P"%JK1?!_')/7?^T(AC%:= <Z]["B@5T3B0+T[-4N:6Z_Z70
P8%*KI0@3E,87;'3].6 ,=7TW[QK;#O4[9I<>-)GF+4;ZUMJ5_9NSW4>.$8*1^6N>
PAX\ %A][WY-$NO$P39S'.6V/0\PCM2YF+<A-J2!^/DUT+"!J!0?+-I*ZC5MY:0!Z
PX TUMT%W6A*@1O[)TX7%&PPY&+^7%4\:@EU6XF\>*\@=62X:/I:.,\8UO>:\IU2<
P%6[U7$1?/)K%,0;8\+I#A0(D8Q@ M-S4W"7Q?7<OU2 Z_R1<N>Y1;/ZF#BF<?U?"
P%8&LF&S#8HJ UM31)EG%]>'$.A: RX[F_ L:,7U(L6F)E#1VZB7(^(,_C<K4\51)
P**)$%:ATIITD$<<<:%J'D''/K;#3S_M>RB?YM" D.US3( SL@(ZZ!"FS"B9-LX$5
PDF9=X8J3W+U 36&II,#4!QSK?0MOY.?/UTWL+K6U:GNLD7YO7KH]]O4HC^YX&<3 
P0H,E^+"JY@^N7*EPTD'F]2<A=H7=4U'EQ*2@22"NV)PI3]3<V4Q?4,1(0NJ/9'S4
P;P9+#!&;J?8B!%="F*/>6@,+"GS# PZZ^W]MQ<02&M=)8N9:SI07T%B[^\,C(W9N
P .=45W7?.G.4/>^89;$3'*><>B9)#%UXUR.+E579$\4Y0:?91J^MJRP^$5=X9]+U
P#9CRN$&9%#Z]8)6CP%',:XGEYZ  2%6:$%*C>UZOVYR+2@TVFTV8DQG:.\<\,EGY
PQ'0@]VX[+<U!P.AD#1/9V3,>$6EXP]@5G$ 1>W,)V][J_+BQ_+,M@.;J <'B^&/'
P.3X3GDNY^./^IQ)8#4@3EY&IOB^9**,+^82]@A[[%%SL+1-CD&=-4A0JE.,S+(RM
P/FY H5>Q#]1L0PO0<FZAT)/2YHMSJ=GC=)^3M_8J\$S/$)LN<\ZE[$SR]@/!#A&J
P5=1R*5-O_5K]6AVC**TW.71MULHU.Q$[?/9.)($B 6B"5L,-2<I(M5OPT3UI(281
P>+?;:6X0UAEJD\*'>D_JF^<-5[;LA"ZB4EME%*M.$&A?/K#!(DL;5?0M<"'H@\)*
PV?XNBF" LQIITW/T=*\QX=[;DEJ_<X)9%>69.VI MN#8/'S,4[9MVW#%.- K![>&
PZ, 2Z%2X60>5&,T200U7,Z)BI:)[/<F(YF&DK6TB/*&+?P3UO5/TZ:8Z.-2)%TG(
P]7/*_E2:RE 0&&EZ%T*UGUM9UT]"T><^=(12,!NK$6V)Y<H,.L+R6. 4CIT(3@3A
P?*&AULBTI>='8M'Z(@D X_^W>8?<2O]D$?M0X='[9=^*&D5E=%99$A(J=_=MX<5P
P*LR_6KA(*(CUK2=#D^WX4P&A/C0@^__CN5P W5JK>M3QM[73YVH]/G9UM!?=?KKW
P2@]J\/25P(%P+A"-!T,7IYV.4]0\JZ( NC\JC3X]:CXB#[K,*B)-^Q3T[&&30S3)
P\<B">6/MXJ'[8)GT&75]ZE&FS,D<Z-)XQ8ZO\,W9"BM#C;5E2X&<7DKKSX#:1)M3
PEV7S20:E"J&LIYWVPWU5ZP_B<<:">GB-&<\MX/#,:5F1E.7O455%T\RE*+M+WEE_
PIVIP2K;/,#QW-JXMW%Y VRAZ,Z&F$:23-J4G-*,LB"PDZ5<Y-!=3#S^Y8WUBB++U
P*Q[4CK4NX]W"X<I#PM).2T7*@94W-')\D>'Z&NQP5$Y'/EC49=X%N;B);B4;V+IM
P&4V"Z*R/0D(IJR \'M8^<<(8?US38/V#[Y;\YN7,;W.^-PUJ4."&MKT %5NNW7SV
P>=&9ZC:"F4 ^$%A"$&'$$;FM(LI;DLTYH]2J +:7#4 M._AQC ,H[4.\F?VD=<";
P^-".XR>)H\*,JS'Z3:,#IO@\L;+<6L&Z9CN5;VU@UD>V&D/U[06UF(8<\1<!SK7G
PM[A$VO\YVF5Y\,2J$1U#"8(2N68#( U$2B'_"\"5QXW\TBS9(E_3Q8M3<>V-^&5X
PD5Q.A.(@/XII'X+4(@%<3WS:<QR:5BND;!BGE)74XS5GM+3'";+%08 ?8[0.+-.S
P2/A,S-FN\SN*4C!_V)$_'V(9,C0<2>M!QIB$N_8C]RA=\ZVZ,8D0K^MFNF7P+?\;
P^>=LR@CIM:Q05QPZ*K[L)M5-4'0_[54&/5>R*U9]E2LG6B1?WK>*RO! (TR[^U1)
PT5463)?/\JBT6/QUZ\3^:E*V3;26;$3!YBN3^:[SO7E6B\'\TXJS]27C#(/*3'QG
P@#_VL76+VRGK-$")GXC)U'4 8H@!E(%'& RPS3;C @C,IP-.@D= .VN26<=2I]/=
P6([ED]@_:.\R@3'"YEANZ''#1Q@<J:SJZ"HK\S&_ M):[>UP4 ;+F%D@'O$1-S+ 
P4T;7:&G_5R640#*F5^"1P4FB&E3>:[ 0-.4RI<P_/&?$V>KK5.R1%?:<CH]D-9T+
P&0&ZRHU%:C+-UX_@\#HTAJD3? "66(N68<X0RT^MSA!8'^U9WXG[SS>A,&2JR8TO
P)DZ>BWY1 ?W/ ZK!EM3><>3E<X?YY%F'-C7X[[."5J[)6UE=9N#JZ9K(("U95SKS
P?\)WN++3D7-5YU2B\*RX'OC/_#SCYK+:G'M(\:>41]J8GZY,M7;F_K8#["[:R@I-
P"7U:957DN!MQV=\UQ'7[RW ('<Y6Y7LD.#.$QF<,;8>Y%-^&K1>^=]7VN!*Z85_O
P"Y/,<%(=6N.W9?<C('PI)B;OK_%ZEOQ4"/0]2+KS$)- C)-4OLBT^<<S:IT^[P$D
P5?]AZ'C[S]=0\3*.JY$M.O@,>+IZ+QQANZ)@TTGMQ;QN_X%!GNAJ<>?J5(IX54FO
PVI%PO%%/P>Q)V/[QMW]UE4I@?3(\><]JQJI_0.:O5G$#"R#$'X)KH8CO +=?HH2P
P()QY?E\<XNL_'2U 3[W[8^:WX*%&.S41F'M#Z(3R27)M:1H[$))@Z5!<@.YS<QX:
P_V[J"1'V&N1/-6GY,%6)"34.XY*,&'9=>N--!_"=EC9XG7I+Y8IS6"O#"!V3PY=Y
P&<"X&.;ACH%C 8'!2DMFM$C;3=F<RT"OE$A@7@B"?\4-V\AD&Q9,^HV<5DK_*WM&
P=O/U0A.DY8;=Y&0BKXS7D$S K#&SF4O"+J*L01=>\KH?KO<@KJ+S#MZ24:3Y'"O)
P0X1U/:6#*Y*T8!XBWO;,ONZT^1>=LEH1;\33N5# ,V? HN+V<'-N&.3I'[^(U&U%
PXV)_Q1=4R>N2BOCX<[XF!//@B00WY]B@I2<;7.G>OZH]/='U(5.[#5V6W.#8/=7N
PXQ<9"+$_,5>L4UA+W4/-RXATS=.+RB>^>.+]^D$07FC(*$0"[16S$J_.*8CQ.X33
P4(HK-. 87[R^)V38A*/V,5**RR2.@B-;[EU*Q_KQG5CS "S3.1CD!^XAVIS/B-"O
P!"BQ"*,K^6DBEB:Q9"8BJQD)S:%[M@Y<;\<5]6F7!K_QGS@S;81%C20#>F,7Y.1M
PFALA;@>J.=0FN<$57TS8R#_+PW,I(U>L/6";Q8;==RLM-F,7-;M90NXYQU[?,*F[
PR?3!@Z0OC%>8L]]W^,I"FF@SU>RI_2W5W<-\;M([8".H&R<)L!A3L@:X*?S(>KD!
P,\YU3]]4DFN$]40Z9<,N0\T(7A9BOW]49<^G+@[?MRTCF*.[:)MRO748E#9_"#(8
PW0 ZPX[7$EC].&Q"WLL1@?]]R)#E&O-^EW<O^=QV/,0_-%,O2\G4K6[E"*PF8MRN
PH/XL1C$O$7,WL<R0TB?T>"N+LCX"\VLZ2(2(>*:V@F/VB#! 3T8D]G,L2=ZI7C*2
P*,B7S@HJ==QS"+[E <+_VS$2_^;YX&D(8(4S49U7_?5[:K6F4ODREVP;B_LDWRHJ
PN&2W2P_&;^_U*/H[F8287+Z=+V2@\6R\*.;]!Y^S7_BL8IQ+?1OC02BX3*R ,C#&
P(8UG[G+\-VRS?(0K-ZU_]!Y"];6\1+@O9PM2*_MNGG;C4YY^[^8!KY3*!D=XZZ$9
PM3Q6<+&EA/W#M[,EL4/A>\CC+9"!]*?,'>ZFV6I9A:86A?L$4T&@'X':&VEX&NRX
P-FGATB=FR7)$4@M4-N?B3I;=6UY=VNP(S)-"KZE0"V=4AH-(^#9_#!VO;Z=F]4WE
P;;X_M(?.0V<N8D/YH,$#,E6/$^Z31&UC6H$ RNU.B[G=6(>33[?6Q_ -&SC\1-Z<
P^\(YDZE,?Y @Y\(NG4\FSU2=%OVPO1GGZ\[BI*VR\J9UO;6B)06XCB2XP[\$%E';
P#]^,&)&RP3M5X3]J<S1GR>LX34*YBT_PSCC.R5E*T64$FXD3TR^!S*[ >=*6G&%F
P5'$DDIIX-#.W'D<[L L0_>R%5.FTG)O]%S/M]Z<1>JVX=MSQZ$JG^>VX=R_9LK2,
P8YD_C'E\ML@0J.7=&*!A@/C*PQ#PL\ O1D XW&<?Y-;FBY9Q'3SR?SM!*<%^71CN
PND. _X]*CZY?T>[MY%M\1<JRQ0WBS<8/J@TFBM8=TB?EX2$#><:)0]C<8NG:,1G5
PF9FM/5@WP6!HERQ"I5_"1]"NUX%SZ*Z(^Y7_F\OW0;S+;?;^\Q%)\#(\-2YFJ<OD
P@LF<JGFE +)0]1];E[#5<P49!.FKH!VU@<XJ,9=8<',#,18XMV8 U^O*Q2;? *.?
PH$D!O5J],4N'6LW;B]$44-OYX\RMY.%>49/8U"$/N8\QXC=4+?PS[PVU_R:'R9Q+
PR0T# T$IY;Y@DVR-6.K_Y)M5-12^>*%:GW^IC59@:!_10E3E"&3M5'NT'X2+K8=P
P\EOGR(?IX'P/&<(;DG7 8,6;#<7>!Y)?.FY3.@XD-NZ\06J*J*""1WI79*N06H;B
P>],AWXZQ9G3"*CB#P6:E)%Z3B)UJ+M3)X8#_.[-3.U5KYY&'T[;Q=A^G5Z4I_\71
P$]Z^B?X'OGTQ"T@DKD@HE.>C)!QG@OZ.28%DZ\X9Y#)S7^*!%TUT_C.PTO47E5T.
P4U7%!5%Z;[WQ\;K0N$XIIZ)RT/&VJX^@;E3)!K9//)ESTT=O?D/H#]/4>4*I_P\7
P9=6K=J@TIWSA!YV"\335N_O%%$5'5TR6(A4R)TK&N<2H]M(#ZSAS[&VR(FOQG,K<
P-V :B9WYLK)V?ZFK#;^-/L)(CGYV+2,Q(: 1NG8SC5'TS$V#B)BB(:KH9'!\_1K1
PBHXC_V1KS'_$I$X7M1%GP0Y=/MA<2_GP@F1GL=+_M$\$'"@'F%7"9R@>V]KQV8,:
P<]RRR74WCA)18P%<+JDW JU4RL$UQASZ<]E;+>U?!^A69BT8VL^F5S:6K-061;TT
PXZ5O,Z QZ>-=YRJB%UE:6$DSP!K]&6P3]SS-S7D%52>K5$NN29J;KJET5<G]SD85
P_S$D:;.V'QXSU#SW"51AKF4VJ;(J/6I->'5I/=5<SKAJRSM#TEK9-WO<9HFQ6'L=
P2W12+HF20<]Q[% A9G,/NA<.)?H?&7T3O<(!S0\26A04&1*UU<4MUT_@<ZLXYS%3
PR+!?CJXK U>? KA$U@8-ELOB$6MX3UX4[,,<UL_[X0$L!<6R+[U<JP2-+5#"?F)>
PZ-Q#QS?TW^-HY,W-7S#[\E_5)4!WG4(1+&:KKC>Q4V%I1R%1:>!7@K&^0X(9;VN?
P7Q[O1+LZJ+:PJ,ME=I6(SIDYD6D=BY@50M\93[=)(9L"VGMU&/V=#;5I=5W:QWI0
PID8GOKI&91&V+@N6E(3V!NL'!@- :@HVC,]Q?F)=#?=^SX0 *-)GC4J!U'4_^(EJ
PZ"#JXJS/[15=(M'MB+:H$Q!> 4/>F1D^W$[FX+V]P00#":T?2#&3U!XV+#9E"?Y!
P-<-U&N21 29\\@&77OEBX;9!NPV<TP;QC6#T_R3VY/X.X[ )G#_KT!:$0+8)@0V;
PX4>TOB*3/CT"29?5,KPLX^>4\'"R3P),++U>&"420_+-/%(B 9P>F\C7^UV!QS#\
P;)N>&?Y2S"15M,F4CV]Q;K6>>J>(,K_(=LIN3$(5)([[N3>367.Y^Z+B+#BJL61+
P%L4N>1L]@G@CPOOW(261-U\#Z/&$!:'YC7>O+UAS[C0BD,13F)OI[!= [4."JQQ[
P==L84<O!52$2PNPJ1W;:C=0-87'9#K'F)KIP]$N7]<'Z; #(4ZNB&(-06LHZUA6T
P)#EA:_7P&?<S[4+.KVC<__6A2I]]4+F^A.=YI#[#Q*\Y-7<7:V1 IZPJP"NVCH]V
PS:1T&1:/61-L_R(U> >&1Y1#E-#_)P)U >Z*(#S-?+!9<PR?'EH+DMUK /12=)\Z
P<Z(Q^HLU,);5Y M*= 0M[*=/Z"J !N3 D3_%T1^K>6Q<<9HM>-#_JMD(RY*J&\(-
PF9*.Z\<:(C@WIDI\KEI=42 R>=U#"H^D<MP)O!4,8/TD=6H>2&"B4^*.XSJLCHN#
P>4@,-QQ-=W6V EV$L3"#XK)O)G0VI9<59GN$C*[)#-KEIEC)1+(U;A3(> QEJ3%0
P9B[_LA[-0JD?H73,4%-L )]98!NYVTDNJ;UP6U/'M3ZFRV$.I<7B)7G"Y(P/1Z.8
P?6IK8OJK:SNC9=#M7\^ZV^?T.0FY\)O#U-,HS<GG'WZ<01WY_JG!+.?;$X)D:Z<\
P/6=-U-)EN,@'Z(KNX>;853HWGH EVT68NXX"8WH3@++ "\I4'@F*2>FH1GHWR:0H
P*FV?@WCE?+8QAS:GHB0*2F3ZZ%H:,$]@-Y1BK[:((0@$"!FOL5'V5SVD]SIHX"LH
P@1/Q7[F#8%X7-OTU)ZK<=K<3X' :11RC59?[%1N4.BR?59?Q#5A/DU)B'3D%*WN5
P[&9OSMSZ@.6TIQ7POC_F6GWY?_*=S^=2E&X:/[-_.]U"8B,X\D4QXL";6$DT[0Y.
PDF7RGV?C&,! VO!0(M))+SN8_:1F?H3]MO?WP?42V^-T-IVV=% RIUDA<>) 49[3
P1A,Z\:A#+RRT#-T1-16Y&"IJS7SN&7(3+*ZY8TD^<PIBW:DW I<L'[>=I-KVR,((
PB18SZ82 1+A?^YL$U%!/^<:,VCBQC)=.Z _$,@,^)X()3"[ ;VW4B_G&>.T+N 7>
PS>W7YS,%7EER2>W.5X&$D=J8%LR#!P2)'U,Q\'SHS_^JX-(7]M_5!=CJ!16J%G!8
PZ7PGP12]Z86]M,KDL>A<CNPXX0(Z;R=7AK3<4175C<M$WXM6A4(/P4_T6JGMM,C\
P?82YX20MEZX462&"^>CT>7@8^5KH_&&;46@N'"!SJ0EMUOA0<HFCN^I)XW1X8]$^
P]K8\3K:H5>TD(%-4._"7HGR:/)N>FQ#NQ;.HP U;V\_>U0@?%4))\7/OF*,BPO4X
PLN;2XJAI1T2*F1=J[^;?$7^GX#<F"1Y7VH70?-T$^/X&*,:\"B_12^5GN=&L<UGB
P.'%"35G#M075[7D<9E [PE$%[<U8L6]5JLX#5VU @P'JHV(L_^&AXXYD-H>5^;[S
P(^R3DU]M*0C_#()R(J<$G?Q]2/&+)/L0\2MF6B-+8$$R0>[C@JZ+!.URR&,Y"4)W
P8I[)Q)^8^ E%1%C85T9M]=@S[+>V6V3*F^'[OEE>QW#V^L*X_6#8@Q8T+S]LU:Z7
PRBVY*%HH)$!^)1(TG8%Z:7I;H18H!\-_*=8**^.=@ )E4GQ_W+1/05V5I@)F;&^Z
PO[T:C3V'OEM%!=>8%2N:-YB144$#^]H@%;@Q/0H>+&W.[RBODRZ7'%84&UFFPKP,
PARSQJEC.HP*X92$B ?-@;$ )NA8(9=\/.\KAX\+TA3HKGQ1CC.S3Z>7@A0!;CJ+3
P 9628V)23^41& M<*%3-46N+F.79<U]Q$!M7)WL?Y.6V5LF;*"X8I@?T_F&R9 J;
P^115>(N&>7[Y6:+2)3(Q[>,!4TP>:V8/?$O8;Y5G)8QPN;MY'$H?P$%CW73?4[CD
P6OUO5Q3U;%J2U7U+#',H6;1_B"M8,K-RY=AK>5VG]DW]ZOYNB]J:$VV*,UKP3/(W
PV-AG%GD]N;= @LVK6S)SA9/.(7#C>)J\3G,LRO.$L(Z5Q7Y?^^,!&$51NUD[(@JF
P5&/G%).,FH/0':TG I:0;["_;Y79[23$2/8J_F:K*ZKKM8PXJ?B::QQG<*&]8>X 
P4%9-<7F@R6:='<RU<"J2?Z U;ER.R(=58;OVAI]WDFXFQ+"%F]-J4LFV?I( Q!W_
P/S?I_L7_O\*O[I+<TWZ[$,21X(!/K-W;_!?X6@;W2JOSQXPLMA7D9,51EE];A1_F
P+UQTAW*U1>''F/0(%!ECDS;X<GEEXZ$)UCCEZQ.X.X?OQ;4M1YGK2<;I-MU2L S+
P1$^5[9NL& Y6$M%\'$J-!2.JYEI.VOZ%YME>EX2Z%R*2-K5'TH_3-8B.M6'DX:6G
PPC:[V2^T;H$Z)KN_35@JJE]]UZ.]>UDD7V_3,GL</ZQHWR*ZWV_6*E50WV@Y@(4[
P+K?9ROL,NP#T4Y@-?K[9KF-.34&Y4+F('"F<*08;)V0!_[+I1N"WQ]J ZL(L;92^
P= #/0WTTFO\+D^KQ3ILE(,S&IY \<95=CO,A%7*KM5R8B1(*A^!.L<(4/FA2@)I!
P2"BKNH/KDO%/$ZJFVT1KPWU=N@NS1UAS<]M-S%<_XV&>.F/XGH3@[2 -0N[5JC74
P 2)7*8G-&!TL6;$0@#)4.A%6CPM!S0M?P(IS<$_ZLZ9AOQ4*[?@C;+"R=DQ=W:L0
P@.CFV/!N/G23]0 G?'3LX!7N3:PB<]!__7(%W:-*R@W< !-%(LC@%8>5<C6T-R"^
PWS!]]@>/<PM!2C21SV,=GO,K-M]5=:C_'_00HY,*UNE)O!1B?3Y(MZ/U:2@%$X^M
PTYAB"@A6%+QI4,G5G8HOZ(0V1?-1$OV+LIS+ @1,:FPU0CL;K-*4Z2XP,B06V[XB
PU\]5P9/3$T.>NBMS]$,/E:ERG9?QKNK)YQ$RZ.3LZ+F@42LY>3W806D9/^DIZPZ1
PM2"TH,(O&D_+QV)$QM/;D G=P]VU'@ \50/HK]G? -=DVY;!A>W>67E2[9M];0R9
PF@VH.L]FRS.]:79 -A)+JW=/(T?24GW7;S <$^B05EB=Y;4>_6KE>* 2K+CWBOKL
P8AF^ =Y2U3 SPQ7(7O)E H0I&\N/_>F!7V6)#;%+8-%;787/>3S"383!M[DT< :Y
PJL1*DB9 PZI!LE&]H4@(*+R&G:+)@93=KT=]4E#,F-SPC)B*XM&J0^]$-%MI-*#\
P"F;_S6_VL'>O6>&,<+S[WYWVBT](339?&8M-#411)DA\KKIB*]"*$%#)K9[@X[H(
P_4(00G)U/UZ3QJ'T^RL?VZ;J$MKMO,%&95C[0D3N,JNMS^ZD\/ULCG*KWOZ/^R19
P,4%X=(*I,;=)+5"/@%:IF&<>M$T%\U4K=CCA$M'4 EA5 !\"H/,?%XWFWSNQ!7V*
PRRT$?'A47#@8A"Z:/9 J.,%O.IP'B14.+=7"N,!@M>K@W8+,!S7C:;#/D$5QA&.8
P9=J]A,6#@#]]JV^"W9FZSMN9='0J^UVEY3,=+T/D VM7">8GQNFD+">B@3P3!4[L
P6LG5ZOXQ 8RI(3'0G8+G<PXEH\QH[9H-^P@(A9D#@U< \=__M,N[Q@G&GWL+/^)[
P_Y>E'L3-T#P[5PG3KRAH28TW7.O0P>5PW4)Y-G@S5X-)1GB<$](/2-!(9HRIZ WD
P+XJC:$)ZF?;'R'(MO\H0SUG[Z\/R9PN@\[O&0"(-O"@S0G<>GJ!R#D7L&)NU0Y$I
P*3?H"QJ*]W/:6F(KJ/P]9=+!906,(S;0S?\'8;3<_8>$SG *%DQ /W*]5\4O.@Q&
PKN"QHIZILP+T@J;/;4A92AB)1S@1$\XIX![,'W;"(DLT15R5VS,::)O$9G<%W>:+
P;3 J*!PP5^])*')\7AN 07T%#UW2Z@?D"FQI)JV%C(N;7L.VQX#HF^L)[O/B@Q@4
P=;MOAN[495-UDS=X^\2>NN6R=2BU<_LF33BW&HO 3B%#O^0N_S1[ZJV]!\L3OG\N
P.[B??S5AHN[/M%\C6@?F3=S<W#K\.ZT63O-XX5A)[5LC6$NY*$&(6W-4B(3,WW M
P2;8\&DZ UV3:BTQH4A$^8SKC02SCOE%V\(W,@]$W+P7XG96',=/\X_Q1AS[N6QP2
P?+"Q:DP>H)[66CY1^(A$]F7&M1APQBP?Z+W>.TAM([BZ7)<;82%&V[2=-#]WQ?R*
PX59D:AE,4&CJ2H+%>2VT<'\#IC&*.T\"L8.\JKR[%B,TX^Q_59.A.0+:UG?=)*<&
P*>DTH]/H_(?[)ZG!+W-["SS?&_\%U8)9R^1S>;MAU)NBQ.T"9F.0S-U6=6IRG=P,
P37V7V;#T"HA^-E_$?W0:2>KY+3F?^+//$X3^8<QK 6<<HV:E#1AY+"AJG5WS(!7H
PN^ %0SN4MM\""'[BR &Y*^(,$-3^,YN:(#G;ZZZP#<'$K"M-/S%E?'&P_;I#T/,B
PA)GO+_2>C#)I.@,-A0%J[29C6-:/1+"<1$TIG%(<,;*O!:,:*K\1O\+^"W[70_/O
PI(TKRY;N<'@5ENJ1!99:7FY:+6LU62%.UV"W5?QH4!:<5W!JSM^639>?19OSSFK!
PY=);JS%XQF!D0HK"YTV3JNNF6/6587==?T7QIT$0FL@&9$7<K+7!K>X)R3IY/YE=
PBA0P569="LQ]=_/9[,SD:[3$M!OYR@IZFM_U!80AEU 3M7N^D:ZDA58Z#YDS3 C*
P;<VM1@G7 >2CS^D[>$[:RZ)XT6TET(4O/-)^.+43Y")QS7/&K<)9_;F:('^V7LMT
P.CL7T,MZIFZTGG?#1,VE2GYYCGLW0! <?WW5\AB:'\_] 53@>P:["*>RZB:?"KV]
PJ'E$+:@6-N8)7$P^.';F%B%VLVR<(2L:#+9;R69WR$5'<3@C(Y(>-K;L"H$K,WX:
PI-R<AC^>Y4[LWTQ5CV@[:=F]:,' ^^Q\!(I%4GVW-1KH67*E+U;)K^1Q-[2H*NT5
P5XZ845O1$#]7GB7@_JCGG]ZZQ+)98@'1#EAE#A%Y2&T9XBL@C%_(<F5(N(/-X-(<
P=C+6M2L1A#-?Y ;N%EX7S#1,2+TZ;O(;>YA.^!CLM3<_NA:;1/@<W"E(Z2P.N\5)
P:9EY*'MMJ4K^:$F@ /KD,@>&T27K04,HK?]Z. 21=\F?K_ Q_SV4/!?Z4=LFT_'(
P9?URB->A3'_BZXREBQ@KSB&W&*IM "[''</C \LQ5O%C<E$0)C;4(&ZR\Y>H4J7Z
P&B0Y:-/_SB(Z#^J9>7N-D <]JF'NLQ!BDPC$QV$+S*,NSW1AN[TEYO+:6+W.9V#(
PBXQV$E$3$[YDEHT*3;5^Z[=VB.+CT]#T,16Z&H=)?S3!GU8BL[ EP['G,,_4R,#=
P6[ZE\=I(L,'$ +5?IIKP:886!@*[3HHB,Q$.C?'12]./L3T1ED*'<1,$#_AJ?Q,G
PF-6[!3A]%3H)T>(RQEF_C:X.,HSO@P,KA1P5S#&+#D?\W;PM2KKBUN;8-,EP!L8^
P51@NN_W%.[4'66KPJ2<OP J0%Y6TBU4#&O5BJPG<:@SD+.F)?%'OA@*D-U<L!KRV
P22-QL70+CUX3ML"537[<$#1E;/5& 1/1<0ZL *4W##B/_;&?FNOOF6<T+/EJ:(<A
P];MHZ8K'0K[BR=,.A9^DZINGC;!D-S0#]-3U"+N[T"41"+4OK2ZI@M%YD?2UV8_F
P+8KO8#,LMC>Z,3'L(5+L!%>0&IH,'_0P]2"B.0JL*U^LV^=,OQ3>>,-O(M+S \[A
PFPF@M@-G@<1,]3)=^8-FD3(: !&"^HM&TO+V#VPL,D2VRBYKH!W0\-!I$B9X]O>&
PM<X%#\*D?'R:[9_7S26;V?"I,>V:XK#8@!ZJ0<Q,95DK,[JS"I=!9\=L%,9?5282
PPJMY"D<K_&:XF$6R/-QAP8+5,,M!#9N>S_?IY>WVR99R\&#'?(LR\YKLX]E@F;<S
P3%,[OR-!9+T#F0MP1(3<4:$J3U+Y3_RC_!%<^(AG02/M9!2E#B5B#"XP[%D3T.T>
P5-N54KQROL7(X /BZN$1<C"(5WKQ!$8R=]K8J2*,619"N0@(DE9?$S:[+#I!91FP
P3('[%6,[?Y;:2&N# ,U!6,HO+U2G1E$QU9GISN?$G>824B($6>&#EEH[3FAGFFS7
P>CZ89'XMX#5CWZ",'#3-?E_N2QZF9$L3JB8^K17IJJC92Z;W\Z 1..P73]$]=_D=
P%V:)"O.UB@RB8%9K>^V?;Y1'SVHBR.7KY)G+[I[> HR+-O=D"\"B!FF$]NF9[F[5
PT)R3\LN58"PDP[R/BVY&L-R,FLFFJX2D$'&-%-)XKA_;.PQFK4<SA^*_#URFI8G_
PTK>NYA^376O^X0:F+2=$M; F3!)_@(3"MPB-*">=S=:/4*\E?EFM3ABX 98JN%!D
P_<A)F_#B%9F2T8&_4%!@U@+AJ\H,7.#M)8C;.G@?ERNLC/ +X.T_NQ ;PF8YW;"(
PO-3LXQX_96*> ]&_L=U*QCRE])]QK$O#3<$R"$ @'2]JPLV;M]]1EN6%,0<[>+^#
PJ&/$AY+35"143AMTUF75S?O[MQ79!-2X)A^[4(#VK#*;/!VD>A:*@2NMW;<;5QMK
PVO,#T1IXY T6YT<E6HY5:46W[0@K#? = E_E8NGHYU:IT/8P\C29M7*V#N#D]N,+
P=( (SW25NK1_+15!0P=J?D<06TRL7JMT#;+(Z^CTV-#TV$J__+]A0V)UD_-#SAGS
PCKWO[;* LV3&G!,[L7B5O8!L-'YFU+1U R%.M6KG8-R+'VS9*_P16F)2C$"]*86X
P#Z'X+EVFMF1E2KLRF\\VU*#2XDT-6&K;J%$2FI6^@:V6!6-:F.<R\%P=<"KM([B5
P!K]2^@[ZG_XV;H+M3!PM!<@<@[T(LR*2PG5&37/C&; $*)RPB$[QNU[?7Y/+EY:C
P/^@E2RGC3*]MX+.#$#D66:B!T(NEBFZ4!-.9VA^,63 .DHDS5)1*20@RK33%Y</.
P1GHP&E=$<M9UEE5E%WT4NTYQO,/8Y ,\S.YWF$0!ZDV*$$_D55"\\)"3#)(;1FTW
P5(+H:<7>$?1 YIV\KQHV@_+SFE;%"@DR8'T!29W<H3UQ_&/6#H*U<1?'0(P7A*- 
P'<*U>Z:^2__4(^/<\8X<%$WPOJ?+]Z?J?>D8\NI-)X(69H]&91 "7H\*UM2G30LR
PR6LGW7$3K,IJ.2&G@0L1 #][3%.VL0SSA&LS6/=%T?5%EA(1U;]SD[;*TLW4U5D0
PZ>J()L'^4T:I*4#\,["@\7GW6-R;6)+&J6%+M(T[G>UI=.T\AD;(^K<_^:3Y^"[J
P TK>9(/E)SW X9NUPA-U<;.+$E]2_(U\"2O7UM*LCHC=5Y+TJ>=2IU@WMEEJJT5$
P8OUFY3U N2!J<L%XM$%9K3XECJ2YON1JSJ!S"S&7RG6QO74JIC\R-ZK%TR%#\B.(
P&CP1_",M%_3I33#ORZ?S$EDVQM2/#U77\6O )+#%*WIAGTG0X?] 5'B1M9>9&C(A
PD0A=TLC?F6Y)0Q/Q;T@NZ1L7GBWR,JAL-G!.@_IIMC4GERDLEP?.GQ(N33F"#ITU
P3CY4<V@%7M- @V9FM1Z.!YS7Z#8!MQ9X.*B:7 C%%JM QA U%'<>Q$(_W@5 >ZO4
P)*452PC3&7-79'JME:UHX#8*(JJMMCJ*':MS<W_/BRR6-?H# ^BURDBLJ:'C/MN/
PQU-%EEA-"M>NFRDBA698N$5I-&'%5BBTF*AD"*1.DVGA.MA>/D WWW K+NI@-]6I
P..^]GYHV$D$IZF+3^?+:N;>9]WJ*<@A+8PH'I>)R5&*N1Z>BB..J]*3\F,:,+-0>
PU"_YEY=.=%R",&-"L)$Z,\VS Q;Z8_2*%H])&G__$V.6"ZBVT2& />[*YDT:$%4 
P,_0U"I])3*#1Z.9%A.2JS2YU]A%>I/S]=3;//5DJ83-FB,FYF6EUE:[LA)4?%#HD
PF\?X[G93_PGNO+8H3D/=C_F TR'[Q"^H= IFP2&_NB:N%S6#$E/\BV3!$3YNII*8
P2GP<1O9P>+M-TR5MW/'7)[D5&L+JP]>G?Y;0-7<T)5Q&6Q+I<;F"TD'=4H:4)ACR
P/!X#\@''%P,!:$*!$5OG>$PFCRDEW7I_;$/>\>-"P;R5R_7"*G)6_[."\5C(Q;:#
P*,I%?869:"IB4U<HX>IZGWH?*GHS&XL91\"U("\L]2#<_$W(Q@&H*2'7(ZB_EYI>
P/;:M33J#0;K0@>,QK\3_M>GXZX*+X\/*\3S),>ABM[ [\08-#A4KT3#(I'X[\:4"
P&:96\Q^*W^H*20J& GX6'B:VJ$I@2:K>4I,/_#]"4G+AK)74F*)3_F".V+XO0=C3
PB@IFVCJHL[*"%,3-A)B\OMH,LG&  <IN+H,25U=R2Z])[DIQ3S+71+:^$'MQ\9_X
PX,?H442^&X2/#/K1;FOU[D[1K9&<BI[&[6JYIN,24!18$.LXU^S5,S.R'%<5O]@Y
P(KAE97=P[S@DJ]S,'TH4]X"M%$NS$W1?NF2%C)DTG"'PLDHF(-F+<V3DL7&AT&OJ
P$S<LK29:-J& BK#;HFFI2(:[LGC@7)D7I7^/('.['Y74+K<R<Q6LY#M&CVZJ<@6O
P2TH/>>E>TKG7JPDA&Y(H\2BXA72"[>O30&;!DN"'T*T<%45Y_;<"$%DN=%@1%-@"
P+=]37_3EWV13V3VRN17-\W55A@45L8Q(A87D@^;Y!L*<0B^D9L_11Y/4!:D7A="B
PPJ5&_<<D/9BUPC6-XZU;P\U?K*[*DDP+4/@+6]RH_*T'>!SFPN^6]\5.^F0O/T>G
P41D^*QZH;3DQI @7)\?M-EXZC\69U@<!@,&X<C_K)/A7M]E21:-;"S1&A<,?DG7:
P>P0W"=!.O$3W*G#"IS&@P3M_8/\QZZN<98LP%:A(.;?,P<>R4?,PF8.A2';(UG8S
P7_#?ST/.IL+A.>^PKHO0,Y5PQY'WRTK H/V$)ZK\,S8H4IH&1,F,S'>WN'WU6#:_
PVGE%NPL6I*2'"0U&<HT[\N%W_I-#:G^>G('B-^84MSX?S3#TI/D"!JXN8SKC(. =
P1"C7[UXP_\_W:6IU9-G."N4_5(=\2HC0/,(F2F50;2+Q[Z_DZ?IO>X.'[U%\1;Q!
PA7$M_]ILQ-CB,<7J#,*67,KE)@80AS7UF72;S/C[QS!YDI)U+ ^\_0$Y)&%6[NJ@
P'CPM:;2"@&B"0"@%3^_^ZPR.(O"P93W7(OW>/!XP(.;KZ"]WKKV2:VI*I6HBC^CJ
PG)/'7RZ'UT(GBXF_;8_:X3)^XK$[@*GX.1@<70VT8W-:FG"LV:"8_OTF&Q7Q9P@)
PACO\?F74CW!,*3)5*3I0!G_&);I/_"%A0T +>E=H6@[8GC=!)>2*C:.M%7B5Q,_-
P2-:?S,>G(Z1!M=G717SH*X#Y;L_>)>J1^X>0%,4H7=1-+\;))F30FV&] #'4#,K$
PIQ7IPH62$;RLI"&JF3;##UD%EO2(ZG3#1Z,SFF:TT1%+&H(G.I]J*.[!603TTOA7
P&DG*$1-$J5G(1%01RV;<<FHS"Z'8/V%1XA9P:(E]\?PR;UO/A$XV37="R;=_*MH#
P#8JF,]=4DZY15STT]1HIUA '%<RUE(QK9P?1M===QAH@CS7]L7&BJ]$ 1TSH9-=X
POI/_P:=>MF<['0FCG%7K6//Q3<UH8CRTK38E_%::1=![#%MZ=$/4[RU>-7_HN=,9
P'NP7YU(T+FU-:.M:VGZ+EP6P9D I:$D:P 3U0V+S4;7"/&M1'?8FUW;R8?5+6$63
PQ5YH,K 6:0C+<Y?1_^1)=VD0XG=),D>MFG<:CL#P,_<@*X\E')=10C-1V<XAF+!V
P1[B5')41U=.1%$&-]HQ/$VP28A5#Q.DEIC1</!X?S!%F];I$A<5W+*[#]Q3%5,OX
P5IM./5DK9V2ZFXC-HXL2S].%B.<2ZZ.9T#??B0 A'U5T*_.RZ$_^Y;)+/33Q4H<3
P*!I!.3\'%L7XG:JOX(\([B')ETMES) !O<UVF">Z3("HJC)AT_WX6[D%'PRLXM9U
PY;-9 !T^_]F'B TRN^/)\G*>^1R)'-6Q(Y-1&6O%SZV+IJVXJU[?^J8G/0O&4(YG
P%>A0*G8E%,L?BK-@FM5B0BR0>:$:]K#@)%(3L>G8+KWF>4^B<\?3*7,$M;:1T"*V
P1-".M[@+X!I_;Y1W(N*?U:M"3'\GK[!DM$(B!RY?9*<"DSQ,+]H.PI8BHQ2SRQP;
PUO[F^;:\[K$O[?3XO.,3MC#0DR1_101/3J:P8?^=^ELTY:Q=*KR^C/H!QHH?5T\(
PH&9G E+=^6[)83S]>1--]1)(6_NMO1CR0J>9?:NF8-RX#":-ZD+9_UI4#."#[L60
PD,32A;'H*?8SLX1Y!-#<BHA&F*AP5]F=ZYJ'IZ.F(W"1XGHY$@G?E?VWW,_=D]+8
P(V&31NPBF*QLV Q\6N$NH3'GV@L'H-*2M O#<B=X4_:?UN9,#@+HPS]F.F?AH2C 
PW:'8##P_3&4MCX.SVHRC0 4KWDQ24,3L1[."' 7VU, O3-MO<T_;O"\PF",\K_J8
P,W6>+FX'M6/U/X:O3[PL<Q0?8E!0)$%X-&M#<:MP70J>\5?7G,F-,I&A['%B,;<W
P1A+]/\\UO=U%1F]4W=T.L&8^.=??PZ!N&SUBB8[VKDB\E:Z0F!=4 Z]3CT1QGP$C
P-;_<<EYU.NK])C-R;A!B5_N!,+T<*(:W+^=0.?F9#S9,>V$_$/1)BQIJ<\C"O, !
P=:?JZ<8 Q8;J:J*LZ:PV;ERS$AF$T)6"X.%>&G5"AZ;VG._51OUC:YY#Q@>_5AX$
P5;' EMV)0_BYT][8=H&'8&HX6?V)IR*9;'?L9[^M\77Y+7)T8#B@A;-W0IFQ9(V%
P^0S9U"CSQ<40]2*RK=&=XW(Y!\B42N&#ZF[D3N;K\8(.'S6/2#=2DV/+2/E5<PXV
P4F$RW7.:?+MWKFJ*AZ!999L;M #TAYAZC-Z_(F^UV98#@N:/+MBX3^8IMO!<]!K<
PG8.5VIF+QV"9+-!D8:V$UQ>A87L /BF3G51-KJPVM2=8Y$2*4MTV3^;3KST5@E O
P+3^BNWD&.GWAQ)3TD IO+UR0"#B&;Z2HGBJG\?P5EK*@@?:[U<;APL_2LF<1G75\
PXA\'5_U0M'+*X_:<Q=':72/*H=\#J-8YY('V[^\RW-\K+E^7J[D\(.F.XT7@R2B/
P8Z1?O]5593T2/4UIZ,/71;R>84$4VS02D:D+\'M@$0BJ"-77J)#\R8=!!(W7<#J#
PX]9IU&YB-Z4"XN5G.#XEVXKM=P:KO--79 :>%TB1X7^FZ*PZH#?Q;C_,"7^, 9!.
P_DG!Y"[)]J<%,%7>%@DWD8U-6,4\%K'+$MM[+D0]./<CM: -0JW"OPI8%:TL^GWB
PU8PELVMZ;B\RJ4; I"L%]>&^/$:! D6IX<M# ;V(; 0[:&=&VB 6[ZBO#J< $6PD
PYPMP<4LH;Y1C.O.9"951ITN=$(O&165=N!;R7I1CK2VVC9-ZO:IM)V5A\3L$,XY]
P%O,Z0O"=2_D]5?>#CZ#N7!:0S?RNE,20@XTLIDO4O&MN)5GY^:TABZALVBY12ST&
P-+'%P%\U6E[>I[(>DDK*/:^[[%[GZ+6P4%U!L7GOU>?_E&H?H-EOBO,V6Q6?@3I]
P,*)L7NB'<8TI2)%X3M?=+@16"\FC_H!\12-[$M&M TXJ'%H19U*HR*K^]2F%X?8Y
PX.@=JS;VIWK5@G;*#;< [.,\5WT$@"K ^_O]FX$/[A7F4:]/RUBV&5K4_]&,V/UH
PM_U.H>.NC-GBDD$4@R>+@[TP/G91#+WU7IN!LJ.*V"0>J[&CTI("T6!1CJ?Q76+3
P,R]]T6/[9V0[6%4AGA5KE!5^R@\_VRUKG<!_K+\7@A'H;P"E08&,3(MD5VVN\+WU
PBD PP(7=W$>)<&8%VE?X#Q13^<#$=SPJMX,96VGV 766:+11YSQWU'D&Z(0DH-HO
P?1OM]M,&K3UK?YZ'30U=VV+(]SU\>DEAMOIR?,8RFM^&_I/MY#"<GDG;8J)QJUS0
PMY_'TX,W-)-Y>_E)B@EFUEU"$[A=5CWK3GS[.<F1I_9[MD1 PE['QFM! SNZ[/UP
P/6L1%(&4<R:76>9]8&0B1&46P9B&DH(JYO=A=3R.766NA>8,=\[)Z ,H.T%8RNK 
PO8*B,K[\'PG)@RQ"ET1?&"8S%64Q""A;<'\76(5]V=@IX7A*G@%:&&<J;B?DE$T%
PC_SQV<FTZ$50).HWJGT01]!O/&/EN@,DMN:Y>EH@7<)*IZ1%CX5O!%OY"O_R*('O
P>5OP\!HP4%[3756I\G5$K0HVQ>E.Z"A+]!HE/%?E> UV/9BJ\]W3A?H'9V#?/8]3
P56S)ME95AY$<S'3W=OH[ 0$CY?A;_2R)BD6)H*AUZE<,EY!!V-)W TP$*%.BU,.F
PN3<AU38R5M[/-[FSOXSPZ"VWN$G!4?$XT7?YZ;YSS&V6/JK)*H&_-DY-U'7A]G8Q
PWFA"BQ3*BOXC=[SC*K<Q"MN?6KEVY?H7I]<OJ1B^;19*"7FS]#+@1,+I3??E]6?G
P#D+@NO!.R4?,1;K0)!O0ZFFE@4&OZ+A,XV'WJ#QD&.$,QA7$4DE5 ?9N^PM*LQ+<
P4#L-!C?;NFF,NE$J!QP5:?$QA=#_S0LNZ0GXX589*S&VNJSL/<V31LUX\+J](U!Z
PQ&+3 22$V.2RD>7Z7YUU:'1A58.CLLK\1+KWU"TR^+O9B!!K?/C._$TN*"HBY:-Y
P]=7M-QE\->3IE_((' :P@.!1-5WR#^(E>/KN@5;([ZI@'O_876IR#U#RSLD?%YOY
P 10?U7._K'O*$8!",Y<6CWN9AZG$XBM\W#8%\&+7=OM0ZI^D==$L!GC]F;,.'-7D
PD6GC0O^!WM8#;5,8[[U[>9PE/Z2\\^\:3H+3>!U_Y?-%BB)SVG:A&E@QQ?#S*&0J
PGKR1TX.(1'\N(N'L<-XH^C((K-0+V\_HO64G4[:H0W'$?>=' 4^)W<VLF;L%)[9T
P.Y[WO28'"*OLS@65 73"OX)</T<-2EE[J-BSLK)J'?.J%BAO0%[/$F#KK4IKQL48
P]@(M]# : -5@X$K2#9,($<?=PR6:$.5=9W&5460%AQ[,@&A;O66\A$T;EB-N[5#V
PW36A3ZJ*E 981/LN!&_*PT&YF#YG+E<$]<B21D5E/KA@;C_ \>/<6\#I^72M691@
P!&,?HG,.7XIU<V'XQ *\HA\X^3(-L44!%.ZLL.C>8+:O<?AQU90PHJ0;"&?K,7Y&
P<R^N&T]R'+P79*UN?3-6OKT.X*K&M;-M:7*@?D=WN930K0FLG]!.D+5.QA%)G[E=
PXF>*@-B5[+@EH1S$*EK.\+7$^G$[H2/([AT"U4F%D4E>(;^PIC"$[\Y%YP>\O($C
PMP(&E$B[- KH]T>G8=SU09*H*=4(G?-/37D6.#9QH[[T,OG(H)D*7BF;4*/].BJN
P%0(^S4]-"GPZ>&4I#TWC?P_8VV@JO.2TO_%T,_[ZCS[8NB QF)I1YQ7H(F<_&<",
PJ+6-W?.%OSAO?=%4;=(I&4I6C)6)<>3S7--;49^]=-;ZKD"QV!#7__VB//ZWWB)4
PITC,0N?@"7I6$[3N\PO.%V=#B9BHE5&OREMU>&)#T4D5&HOM'6N*SX=<Z:")Y]20
PX,&)]3V2=V?1CQSP,%]NJV&0Y[Y81'7_B(].8$^N\K]#LK51?:[RYB3NUVW(@41?
P4"4RVYD"/OE^ACZ4!^KO*1/G>^PD#:M0P4)N_NTT_\A3^F[_(BW:DX3SVR414$VK
PWAN F!T$>!-4^*NJ=3M&82;]:5/_M/*B25]R0J/YPLY ;L+^CL\XY9D2$IPQ\F&4
P77QF(B#_Y[M0:/]@$3;Q 57=KP,X$#>%P#+O<XL(AD3P>-H7Y&(E'3ULWG37"29E
P>B[,62F\\R\??^F?&_)Z,PV2R%8^M4O]+#]SM-ZZ&!=FJ8<'33SF!K'F9S)[=[\K
P-+1+62=:\].1O%J5X^>,A)^)S<=(RW4)WGSCX0!&].?(6@0"SCP:MPS/U=V]I9Z2
P$^N@&;N38.&>]0L)$(S'R:[XAD;_/%1*.\1/;9YK;*TO)[XHE9<Z>-$U.=&^S2;(
PY:79D >-'@2K\[Q%P_20UB>T3"?Q;2YJE.#@#:#PU\!N^4;,,X2R0QX&)35*\<02
PE1%E9 1W2)!.ZYXRVP2T(B)NH&QO#.G+Q&?VSJ@R?2AM8UG%LN[%>[Y274]KN?@%
P]+>^"-81X/MG($^[A$M"7WKZ2EBKG)]P>>*M':L[&3:E/RC6SPED?]]GQ8/ Z&-8
POUZYP<*&0\>G1K\.^=ER:)I$0NE=U;=5#Z6)8RFF>?J0+#>=H%:LWA1'.8E7#B1F
P+5^LR?P"@C=/>&F]0)SVR?K#7M+-7U)#)J;2I)TS^(0\])4V8'=L>^2)R.:>CK:8
P%J,A-G--"WN+0#[B*45<$8PSWB2FV3II_0:Q78#T[5)+7BY(2 J[ATJ?BP%2$ZT7
P[M;I6-N3LN8_@RON*PP=,8[<L*[>=]>_3K$8Q.K'GM.]>=D:=$I&,:'F6\D)#'R3
PCF25\$2WVY6_+Y'_SF%?ZUI) GH6EZ)!1C1EC"):F:"A_$7J'2QVWN<*+EMQGB*J
P$I;.E+:3X_'AQZ=QN5J>8Y0A_'??"7D3EX1[7BSQ<-\B_NZ&S>PX+:7+ZT.I(FB4
PH^.7+*.6Y0IC=29P!,&O*-P@M[DK0E.RDGG#N-W9Q+@/%NS1#W2V00,H/IHV,<R]
P3;\B@S#&N1@1JAJUAUTT(3'_)S8<6TP8Q3.],-QKBQ"_6!5%F],/I_C@52?2<OJ]
P[%8ZXY\VK2:>YGN>/NOT4@/0*_=$HB7X70#\/PU8"!>MKR3RDHKSB08L5(01LIPE
P<C3FA!!!U4]&ZZ;)Y(]ZIGWF_7W 5%[+:X72W>#G(?]:*N^@Y"D]M^[TX <LN[A.
PKK++W\Z%O?K&A]-PBFPLGBN,!,#KE4]C*XHPP,63M8E',YR[;FGHY]FHPU4.#4BA
PD!G"%(BLPZ\R&2W3K_/<R1@NQI"-V%DV7<@"$>W^N++W(.4PQD5S2 -;*CI:496]
PTIV3![8&A:BA/OK_ZC3\*+XZ".,%L^I%;M)],SA<'U0?!R%HV-6LSXYI?V _CD7L
PL@U+#"@R/8M5+!>Y]]O"0N]4U.AWBXYYW'!Z.2R15+.W0\5!^"+HX"DNJ,F8MYEB
P88#54=[$O QL=!T%2AOQ:]-6=^8F@ L)!@YL66I\RS2:OF3FJQB1:]F6.$32;=*L
P-5F$*R7P=ZJ"0+ !N].?OY>T@<8.J:*@#J8YLCO=LS9VD:3MC?'9?LOV_D;7[Z#\
P2;F?JJK3 1"_?LN.\57E #V>4.$"ZNM>II>]CHDPI:1R^H^O@!#S KQ5_#MJQ)1-
P+6.F5'6EWH)T<!228*&A&(B4](MP#QH%#'*.@>87QQ8[HY4H0;@?4K;V9PU,Z?XO
PQ>:V01FHU\.<(E=CRDB/OJU?'3S^;@)Y8SD%^6][4=/\9-!Q+8,(I:YF ZP]3SI4
P8<[0(S2XD%Y,UFB8TT1(PH\#U1SA#L97643=4_-KBAGC5])%%_L<SE(]=XF<EX[B
P_HR)D(WFA&RCS<+NUL?+E'&X!+>$GWH]\\UO+1?[%LSV,<F\;N]]5O*!_;#/",=*
P_P(AH"!E[JMJQ;R0=3^\3K>,<ZN%!ZP0PS?,6RF4+/(KM;9HM:1W=GH@:ZYUF/3$
P%/X-7?)YN:Z= ^QGCHWG#GB.FTYDT;$)Q 2 4;KHR?'TWG6:1 XK[TK.G9/U?KAL
P^A]X^6M%>*F8J+,@V&R>$@(A^[HD8AV=_MBR06JF\UO.D#N@KAK9KP76NQQM3LY&
P-R.. /&?^O<JV44 NJ(.3."/5=2EH+T3SZ:C*PGCX]%/YA;7PA;^F\*3IIHDYE>V
P^+)=J!%.V(V#"&8%SZOX:ZPH'\P]H32%D3]F*.L(QQ8'L%&II2>:]-P&(W>ML/KT
P2!7D>(I^1QU4#B%>D0*4M/[-DR-Y?_?KD4G'A'OT09WM_[<0_(Z!,BS0-I!X%F$8
PY/@&(:JD3DH^8W3Z:3H;%3H9@CF))&QG*+CR/;-(FHY9:_+/"\(\"\*W.3($N(@-
PN[2_*<Z0AR8WXXQE2Q(6XXCI@+3. %!O5/<%'(54_M-C#2M!L..P^#"7YZH2=WK0
P*8F .]3_6?&C0LH!RZ/YRO<6N%?_XGB2J=5E95UF,#XNNEFH/MY=AD/:K/J@Q]T7
P'B)Q;.E (4++4%HIY<<Z&I&XH^-BFF+@G7M81SU1&>/^<RM&'UO]L*)3UV<L(JB2
PYL #?9L.^A&\ F.,I.BY.@V0,3N5^_]-O! K+2H[4!H9&C;@8R9O_)OPPE2H8*=@
PC8>]^E W>8,M!%MIQBXN-Q?Q5KLDV(J>%>2J72_"YFVU*K!"^JT\JD@"9#%O=2CO
P7;9L)H8RW.QH1!56\&&N:@_FQ]N.[.!@%SA7Q+V@W9I</'VO&[?9I=)_P\E'QI!V
PT;AZ;0M\I?K1K =S;]@U4I=64S<]HN]]JOBP*JV;SA6XZ_ X_L_?;0S[D5+'G P5
P<-98W%V\VXBT+6WJ#^-)I''_PHQYRKB,N<3GSH0+SK$CIE$TI M0QMF2%*JA'<O&
PG@EH2GM"ON35 UA JQ0%O[K]P?69]W?I:;G?E3%/HCV"<32#4E%3C+CR"M63VZ)>
P=$OU%6+;9*7M;]12L -0? ZY Z#=FP!Y,*]*J@N9A)*1C3=BTB1RG<;63'XVR0Z0
P<'*C'KV.B>R\95"@F_^X*V5Z"$D?X&<?=%DK$GH> @GQ,$;DU!TG_X&"$ L7MMK]
P-V'YV1](</MY]9IF-[]<FA\4M.]ZJO0W[E)[Y=3" .L-0P"FZJ;NVZ)$)VT-(0)'
PR[0(Q2RZ?S_A-J9K,_1CD</7QCZ)6!G+(>[I\X7-8;UL,=J=#G^G^-[2JK/!K](U
PMNL16J\/'_YMM1RU\@_7%BH[.S^I;Y MX@TB5A[P23_Z;=SF:9(LPPPN"3 ?Y*WC
P<FCJFFB:E \66YIF6V1W-4>;+8JLU!4F]+87PI[$&:[,-TV)"RI7B1CW93+T:Q,J
PDUR%1%[H*Q]";^@>)[LHBO]#45?U( 7E9$P7@'KDM3+GCS"S");F4<6U="!MR)L#
PHSG65/*/LF:1[K4W%CD-\B8JM99[%MI@B +7C\XY/]\7;3)YHPO>461G4^V):FW^
PLC2T/P3*Z2SA"%."$>YW91I? ^T+)D1H_:[]OH*AKH:;OI"B])HJEH-N12W_ADWK
PL \6/*"B@W@\2FZI@-G4%Y]%[>A-+SAS(-Y^GRAD]=>3;!?@$UKZULB:=51<*=%]
P&^6RH\R],?K^83HR[<./.L,Z-&G'ZL#)1H09(WEL2:.?!;Q:C./L;P ^2.DE7AW)
P:]&LG%8V55E6FE74-&)5>ZX**K+NHZ8ATE*M!*UH:W<P8UE.J7?-^AZUS#K:OH7<
P)TS2YQ4!TJNCF9<D&MI\.*_!>)E+?<X/SUE)JU0&0(423N,)&+%.AS''H]I<:NY%
PSE"*$:SJ7JUNVV4_TR)GR+^B?DPF" '1H^E19FW:1!8Z]$WA8[*A5E,3!_^G>SR^
P*'GN;$O!>" )Z3*<'4DT**$R$5M/S5V;POIFL0:M:MB#E:&Y87B29VPO?#+J,H\T
PV7@^]),G:OWE$!2W]5+4[S_2DP':9;'[:73/3QI[0M;2AN/$A__(!1;#!1_X<T5!
PTX4WE@A2?:)'U4*U^9BFF:EBB'7NO7>9%\-$_2?I>!60+(A5^ *IN[O(BG!9;VTZ
P$DDP:M'P-]!$ J[K87TL3VMSS"CF/!:,H#694HD1]('S."4IM4U\2P,LQY:R-EAB
PL[NP[]9&B\W,>*TR\+5P8/DD+^!LOB(7B?*BQQH:I%]4F<C4?N2!J9*-[<+O@7&6
P=RCPJQ<]. -W$#C+T5Z,G*R.R<XD;4])N"/].E;@Q($&.<EM- D'/G2D.A\XVC-C
PM]2=MO)+&IMG8WT)"=39+<#PK#78@B.SO.P$AE8?H$PK8O-R Y1/<S;FE$_VN>V7
PYJI<.\@:^O[;4Q!%FDN.+1YQF2AWMPA\0]%PPT5PI,8)=?NX\V64_0XI:>':.Z-R
PR/XLS+]1^/=".<60Z,XU?0[?LH7'G4+BDA/8Q)O:Q(SLN3MOR<J,#R!] )5IC028
PAFW^M5U/CI##V5Q6X%OP(Q^1DNWJ7=,I4W56I_UY[B(Y'!4$Y@0ZSM%(AR#+U&!R
P(U7R.P#)O9!Z!7WV-P+53&(80=B V5A42((NYQHJA:)HJ[Z\XSFK/D+Q,8>5:CC3
PIO;#\P0V$M^+54@Z>@\R9O1E(6=\//_9\EL9_3[06=D=^($$D*8TK,YXGEC)'/MT
P5O='J+$W W/>2T;WUCJY, [5)<YR25I4L@OG>+D$E&CGI0$4#!\6/\GB8U;(DZ =
P9_I*2O MY\LG?#C6D9,-5ZI IS12Y[,DN4'%A'EAIM7<U?FILX4.5(EJ<6(Y%.A-
P ;&./NSCL.S:&N?NM0;79CHWX-8T]L/R''\>]+)M2:C*GY[Q_T4H)<\@F\:"_O0%
P2^)<-Z^Q4$!5PJOM]VN:@UC1*Z *)%4]:RF<]#>5YE<8' 6"OA_ZDZ/>F>H.,\T 
P;UT=G@P9S2Q!"OHO,CUH&WWX1X O2(-U,=++;& _]YE9>%79!$SBNYJ(W9UNHD7:
P6&&#T7! GQ>+Q'T[UK1LVNHI+>^^,<FV[J)""@P7*:U+2HL$F=*I'.EE4?=&USS@
PGAM2F]\6AY,:GX<J9$#OHPC#+!761-CY_D6_:=2?80H$)*5)&R1Q2'X7NNQ_.0.-
P6U'JX9;IB% CV=)E!ZNWHS7)QXLP1U5I#30"/]10N/4SS6ODM6=#]Q4\0@.'EJ0?
P6C(3*>A-"P^7:F#GG:?R3G.9,/.ULU%[7'K[MT<:C>Z]X]<\!6[K^\^2SQ0I04 3
P.SJ&2=WCTOH:&HAL%94>*U]=(PD!?]AT%-$')=C4H_UVXR"L1.?!>U)J]]B>BQRA
P&/1-5=M4O['IT6A1 SC.AHPRX+8:SH_6TRQ##G&F4%<G'_E+_UWS9LN8Z;;>EY(N
PBR8D1LF\WJ-;>4@(EI>#>:_'G=^ED[Z2?8E%-_1RA"SU/B7"IC(Q?,K4)B'%&X$R
P#[EJU9+93X>.0+VLC?)QQ3#?A(,MT4V5[:'W[1<&, SL'L<N) X0#V]JQ$5!KR)!
P=\](1.NLWR6#,!FF 0+>V2@_XX?0R+SU"3>EZ&3?/)H.N+Z#O0#E&$A=%<$-E5*_
P!7\/GM3)\],:('ATWG> S_TSHN,A:<7%,CFI,>&T='0<PD[P7$9Q<#0&>>*T,5(2
P%4-\H:+()I3X[B*"Y"< <:11B]QF^B2YP326WRY"7OJ&GJ-L J+2\G)B2]9?LN.\
P=ST]".H7U,(Z&Q6TY5*@CA;#SV=>FK97+15/#$8C&;M"/:Y:-5A!_ 5FC*2[R=NS
PH')UB%3&#DD8']KMCN7T(V*9YE+L%V87/;R&8:WB$%)7*+_.^P;;BK3KN<U,!7X9
P%CZ82DL6SCPW;XQ\&V/B$%04*F.\--)"](*#H+Z)[COFG/5$^K:7</A'_*;?5B[4
PBS;I?6W(K H"(-11L^V%3=A>O2@[T=$QL*RM8IUYY(59DB W9T;4KL#%6G''7')I
PV;>CJW9"L0NKDB/-E9^L[4L.!YXY[%0E377R77A1B-B>K[E(61#IS)3 +IL^=F^K
P_/-F.-S>1BM,EVV #K#5>K,]&SIG3\"#<*:LAYW>6T!^8I>CX^:H)#G]:;=HW0%U
P7AJ:5478%^GB T$$X33Y-FB1FV$WL\6/I'V;%MU<DW@%=KUQ21M>X[H.JL*!)X]V
P?A;43A?X1 SR%.1*@Z".M6 KV8)\_K9(3A@:6H2=ZGN'5,B6I&,/_5@D;.]F([P(
P3!?J!I1BG^_@$++Q!&YC,&;5OS? ,>MKO_1'&,LO$TQ91[I:-+!8]^/G@W8,X;W?
P-'/"[470RT)#)H3GT3?_']W]S,D)SB^ NK4'<F:4S]?8(6SO?NP<QKHS?\6G2>_E
POJ:M^5 NGX%^U@D[F2XK#'FB1LD(G;?=,?$0ARX *>C//,"ZW<,O/GD2M?%0V$+H
P>Y?+'SQ7\Y"!_Q(#B0@D]^UYJQW /6$J%G2  ZPTN#_G<GX.I$4C3>T<G\.;K_4Z
P)K.6:E )"UQ=6"#;I?/QM<!RHIE1]87!D76M!%\M&(!WO2P ?,J; -I"&SYN=CJE
PD2=++,PQMECG/6MZS!D,%6R(GNY(N/5'8'KCTH)Z#S6A.0)B?(+[P4<)<Y"L##$[
PNDF!]#VDE;K3?1&4WOYY2>:= ":K\MJ\IA-E(#GDQXX3S?=J]:*F0><>A0<NICJ!
PCBAY,QHO+[Q],#)K')(" >:2[6OJO^+4 T,8D/)FL7 &E05:1L-]83AXFO]Y_--4
P>WG,542ZP$VIM*LE>$N/93PKK(8K43S)S/EH.&@?:NG>_A:Z,+>A00MGBQF-RROX
P[5;Q$6@S5=W\F8-A-'S/=&K7=OZ%/>=-),9K"HR<4UY:S8!TT?A5ERK2L6U@L',<
P =>VSG3QB^)Z199ZKG^&JD,W0$CYF/'S79#%!7$/0-\ M[)->=T40;&TWA;>NEYO
PE54B'HY]O8>+B3P"@UHOIOZDM"/<EY!E@T=I].XO;&>;!NQ"2-94:96L49;C54/#
PO"&HC&_-7R&$JKB"/O=R$9/K!]*VZ%9P<.Y4@X8/93C-,] PQU' F1AKE]?\!2[Z
PK+&5R[\3NJB<:T9<@K6N"HHE7<C+Q0>+)J%2[B\E(D03$XRY=.P+(N\*3'V\!\Q=
P9V<"*(%#A<L?1L7 2H8E(>\O:V)H,7Z(.=$>8>]PWAI^D\&)HJ?Z"4*1I";F94TQ
PR&0V<\*DVZ9]_[58L(VM0GM#Z JMT#%RY530T+(CU(801@]X3#*18(JVI?R4J-<Y
PK&1'[R<*V[LTF4**69S'L9=V=M_;G3;GR\UP76C>%VP>8:_[D+W1*_1MZRA2W%9'
P\)Q[I>UWY?!/D'O2OI3:-^4($/+D9*"?GF^SH#T[05S9)XT'+YCW,N9U-^IYIY-P
P4FX1VDZQ<2+KN;=&ORKJ;'%PR](D",Q(-9_J-T4B+;)MD$.WM5BM*_^51(=JGR,.
P90">$%GCTA,1+;T-XQ0F!<#PA6[QK:.CQ 5BD'(MDI>&^R8/<'8X:<4EAMA@":'2
PN^@:(WFTQ';BNF?'VN&HEIZ[%+\CTZ9Z: O%>;KD0@E"L_""7$@[([C0&Q['3_(X
P453:G2/2C\N)>2\:5:&$+X>\I7)O* +TK\5&'QF:*A?H<UUG$DK6#PQA_'T1'/*1
PSH2#-FK!7[A!AF_A'VA%0MSN3HA:ZF_L"$"C"/7$%=L*<A^QPTQE9#O!7 OHK)KJ
PNMD*5)#(;DD%'C0 1HMV+L&PS'Z0$<G3U0VC@5:?^<D0D3.R'J!T* 2MU;W(8\$J
P*R;E*D7 4"Q:H=9EY\OFD$@'E)-;M&"+40#,V3,LGN2/9HHH1!$IU#;GO#IVR, 2
P&CQM189AB.%=!-&O^$Q,>\2?Y, GF4\(23M+7!O:,V!QB9J: GNF4O'#GOL'7UJP
PV6]J^[A9E8B+IB;ZWN@H4!ZCP2MBB.TO8:OHW7U'9:%AFF#0/>7++-&"-A"4Q\M2
P57Y\:;J,(%UKC$0,F'X4G:H$P/!(V^D9NK%[QM>/^WQFZ=PQ78P6!YEIRTVLU>%3
P1Q+5)6XGQR@OG4:.@"7^0:135S<= N (P85&^[.G!,GK9+F3C!G^:TF)?Q5)3565
PZ_34Q:+\NB"W1]^5Y[HGSF!A*WH%S:KT;RM>_32@*Y:@[L,-_?$W1V!^M,^^3SA\
PO6+7)8'XXR5V[*\=-M<U$?^;SFV">2[#KL%-9LJ.XDR?X&N_@<=4E.3*S+K[$=VC
P0+D3,RNJ'_O]*ER.;*!%XT%N-MM//.V8*\)R;-65&=4Z1HS1D<_'9J_]PL":59ES
PSCB(=&9JB)3ECJ6UM@P$\@=%^2J@9W1">FGBX@>VG(VMV8'+^S!\+T/\U;=I,8GN
PT2FXX!MM&P$J.?-V(\B0YLZK?I@IQ?8K<"O>W.K3$THI_MD$'ENR:[:91<K?X_2?
P(N3%2UF65J=&*#.,%-6P]JS.''!)42YZK;E?\T46']]S%5E >N_N&BWK?_57JPU%
PQLC@?DU"21@<%1>E+50IXBEFVG,O19 58V9C<<OQLE8.-&*H(=OWSFUP8D>FZD9F
PQY&!#E5IRK#Q,4M\LUBV/Z![!W+OS]8(]W;<WY.0;$R^]T--E;F(65BHV;:M] U)
P$&D493A":=838-,+@Q2[071"LP.@'1;>P(;\M)@^+9( SD*_<_7VSP__GL6X\BPG
PL-Y=>?/(LFPSK.4LS=91QB0Y0K_E/;:<L"%C5'_ YG005&!8/#4MY'V$1E9MG#/[
PU"+-J$P!T/)"M&D6BT5=_EN%_[4:M2U?X>D,*\E\;W,S5G&>"+^B7_*O3['T,#9$
P;R:O&IRMLE5VQ)L;48;LX55VQBL1"AU#VNC8QEZ;1[Q >@$R/B,9,7OK93BH%O%/
P-."I4QF1&;2QB.;!:^Z''DO$T:T:#B"NC4:5]FY]ZRH&#7/:E]QJ$^6E)96]8/*8
PP92ID=VWG[I@;,R<G/ -#'>V(46H<=.%03/_>TH26$_I=EN[8,;5R(V>^4$Y;;P]
P%R<W*DJ1QRD!P4[Z#)\BS,> \/:NP*CJ'P*RZ( $6$\-4YB 4_"!?@F'D-OFA+5^
P30[ 8,SE9>&24K8&ORQ>K;>JXE,%3$;3W6/,9[7WR$P)#X#M@\,B6L?/;;5:=?*S
P]>6T#Q9O&9D#RH_%YWQQM_0AZ$JBQN./#5'KM_C,+(.LE]P2[RLPMQX]W.%K+47'
PU=<&/6E\:I76K\O 52DHHGG(-JO.C^=R#1-_BA>=>_2 #'TH6@3+#-<VZ\?.H]?4
PX7F;=P1*JCOA[0X3#I3[2  .G7DW^,#463@+JL_M*X6T5=<%HF$,G6WD$ZDJ*![J
P:ER*R1 6=)LS^,./@U,;ET+R3J+@&D:D!%!P)LO$+; MOD7=N7FBPL9L&/@?NXM;
PP*_FK:)UN-V'JIK:=/OIDU]8&I>WM#T7K^&9S^5MUB2TD(GT%MG!?M!DJINMQ%:[
PX$=ERQ]\V=F%_X<2Z!KFZX-T2H;0'B9G0RP1E%2O0>5.L!OI_(@S7G&2M4LK><U,
P^]OB(?3R?,UVE:.A4X;,L\)<-?QG-&<C_)!R3M48A_M4<]0?/@#N$IU.'/\VHW\9
P.#;4_WP/',?A\8T0(WCHHW:N!.9F'RG<AB.P7?."7HZO$B:O0U8O.PR/?1$^/REJ
PO],X&ND(D+3YTT=4+V:.!5;:\^%6 )-+#A0N Q:J_-6G>?Y^$Q#RE9C$HW_^-;BZ
P*8[W+@NQ.LBS:)9\>N]B<W3]]TG3DF_3GWE9&^;UFW[9I#O!NJ6;T4#^\F.Q,\(:
P-"5!?M"8_!UD(H]E-TRDIV\/ -M$^GXX=[2S*ISMW,]LE",ND&XFM"R 4L$4]CQA
P98?H6HQ\A_.,S4(!,*"TZ&J"?3PG[ )3M]7^*K8:P&;++5C)_$H0H$T#"%% S4$ 
P '%6C.)?YB"0&5&7&_2Q35I4-6 7X6H/P3DRSIFHAZ<+>^+9G+,GP&M^:82B#R 8
PG,_6*)/R-5DTS>.ZD2!&=+8]A4358@MHRXF3=WAS:901EX@!840M>)'HV$P(C3Z>
P? *:VJ,)Z.<=4.,FLZ+2",PQ'@8%WP UT<D33S?RXV[L=:[:* D"4UREY,H6[XBZ
POZEGUHP!49A<Y1".)1A+HBQ-SSC&T]F%I61CXI866M3@]/-29_/7DU3!,IMF#;=%
P&I7XI.DRVR357UDVUV$#6HTQZGJ$T6>)G[W[#BV+,4(?I+Z-QGD)1T$)_(])9D'>
PNFTUD @_D ?/HK2+GD;M?^(%$>XDN7[0&";&T$K1LM3-'.\B[]DJJ]ICX*3Z&)E7
PAU8SXUB;8CT+AB66DH)3E'>L5=KW\XOK,VAECU*EH'*_&F"B#1G#>8S0?J)>8%W8
P?<H%= 9_O5V/_V"-%,-/&43>D!68PDHD;E@?LM;I;7:#:&/9^OX<?W LXS!(0*D1
PP*@[RBY #Y*XFWDM32QWTBVT<YP%(.!2>1,38X)HK95KH.C4(Y^$ -U","("EH_M
PV7Z$,BJ<NCQYL44I?@:7$=%=WX]]8<,)P3*+Q"QC!G)-.U4*=LXM "2;,&,B)H<Y
P])+CC^ 8F&?<U_W5%G^*!E>AD[H@!77!_10$Y.-@<RJL9CZ0!;4"5Z48'#O?5H+P
P4<7_FLJI]L"SF7"TK<I'+"/X-"'G(1"QO=2B%+IATOO=#: +**I?O:5G++?$$)!;
PNCPSK@XKJ$P_;"-4(G@"+[HTF4%24P6-48M%(E V;/G^VPZ)/J, IL5PSED?29BU
PW9-^/4O6*SK./B'B6=6CCGM210TKV-9& 1%@K_MVZ[%5X1N\R\(GCZBR5O0_0>X]
P(* -*Y%M@RD2BD2S;2E+1'JL4")9.8W;Y;K)!U=PAHDLB3R;I(D)B<3".#.U#SZU
P&%F780;A.LUUU5M84)GB*"/.:?S0@ND:<PQ02"=RI71!P*5+@'XLL^!?[3\P'?>.
P$2)M. TAXM@_V"E579^+(.@V #_!+\"'8:]$3[!W'!Q-Y>X.5VP0RJH3!&^C)SMQ
PEBO!+3!3?U(FEV6M!#\[NBUM\^&/2)5$2,3O(>;>:$#ZGVW]J)-:V_@48[D</DC)
PT45[H); B:1^<[J>M Y%QR99IBM5_%(B?I,Z2=@E:F[BE(>#?A^-L(.:GF%[Y#>8
P6D8T)_19<>5Z^ <2X#3Q;:_<8:^JC/S:=Z\?7]4*X/D;&)-09OR_49 R/ 4Z7O!T
PZ"OXM3Z:)46Q_**ITOP0DA4>)BD_-ZMEN'[7,*XH16XB_EZK6G,@M783LD$+_&/ 
P_;1+V^51_,X[GN$)<FPA2REFEOA;"V]4D,F$$9N-#Y:Z>?P#.'^EI.'S(8K<?D2D
PF!H @=ADPL_Z-&N+K[C=B5F;GX,3($);S0*TB#Z]6'/?_JP8AIOJ*9@G87U  N*F
PM!?'@5:<GL<$U#FL,<BURBIR3E].)TMT6/V3BMLGG^M[R"-WWM1>W!1)J*L!/EK9
P-@AM 2\7H,JJ"J<.4( :]0.X]DHG)8O)*7"0,4H[T[%ZK?1==\/L0TGY)RX#.O0F
P!"?@PC&ND!FEDU!SHTB:ZX);F.#+-R'PY&M-(/ K;42J"D"[*NJB,.+1GSPA14A.
PH JW Q%NE"R&[W.*<3I-@]^RV5R>#HN 0)/4=8+H8'=#:_67-9CB+.K6;@IF\Z#:
P+=Y0>0M"O)Z 1U$Q0BE38+'U ^?7:_M2R'K_K,:-8 /6<?$^.$PETOOW7V,IHW<^
P]QZVPA.DHE[2S9*N&9E/JTIA3)R$IK+Y7G9_65&X=*3;>KC<YM4?OAU_Z@:>I^#0
P2_X 4^*HIF,SD5,FBRY)LJ66@)Y3DE_+%$8 T:N2C!?8-XI&VO/?U'+&&%BBN&K,
P?VRT"%_=D^Q3W<UV..HS:."OF4296:0/U3[$&RTKZ4L<FIS['B#6EM[V7\1*U,<N
P\?N(KQBK01*'1G769%F82?!E2 J>;P2]^:[)P,\GC.@X!W"2G_'6\F\C3^Q*0P4Q
PL6_O(_BMC<71(+F&^,7=T-K^[0Y_UWWZ6K_R$\UQXHKS*G^J;WVL/L\4>56 T!S+
P1VFNB-M +(M0@*1'+^[9&^.3[$.5#R%#;_"%U=CGBILZY <4'U+W+"H&/OIA9 =,
P/1?X7"SF>PE$5K@04FGHQJWF=[!%@/U^S45']E2_"85K"<]/3TW. VX/D+(R"G$:
PVDK:"*S&NIFLA1MRDXW.!2-0Z]JTN]8>!8W!9VL!*G(UP3L8U"W_)$+<:M]_K':X
P-;!T'R9MFGGE$T[4K;&H\/']!1[(/Z)AFA3MV(GL0^QQW#2RHD)XMQX9'1_U9*8#
P=!J)UM$87S^VNHIQG]5]"+_:@Q!(\6,?\=&H?C++Y]R@PQF4WN!\Z"Z#OVE4M05D
PL]N['S=9W>R"V5LFCU"QXA "&ING5PGWMRS>&^LY,(DMG0X;I!Q(3>N&_@SA%NB0
P;PK^+@;FQ,KQ9_YE!K.M\<#<N_$MJM_'%OUZ5-O5$4]1<F35L&E?6D3?O!]H 8IE
P;51K9PN0WA$/U?98&%\[)[J_/G3];9$!UL!4!T0IFVU7TU1J*9C7B-,^/)'Z@K,K
PZT9N3NW?EDEP+LF<*'076%+_AP""8"Z8/4BLZFY_B1IUG3M"K/@IE,Z,@'7P :"U
P%FQ,=)2]4.T@,' 5J5257G>EKP@I$KYC2C;OSZL*W*"M'%S!A:S5B8]J <>C_O=#
P+=&6Z0$#>"N*:X;1!)Y_QX&4'_(F,O@UV,]_EMXM4!NO#FJ#V3D&LBVE<$O<5(IX
P$2>A8/Z3IEB"+  KE:7PH7[OYNO:U19$LBZT\.C: !;&8$_2D/ ^L%)3 9 \+Z:$
P*$6(DIU0J50&T^O&N1,$9&]&/XLNE9&3M;98N6A#WM[DK\NZ&=I:8]!C(N\0XH:O
P6T/-=/2X$$?U49?S#@-([$[U#!01S3[YZD6 #S3IC\=U"<U+8>=B?Y;!KF>BU@K?
P10(DR9!C!Y5HCKA=#*^G>+B^PLDO^GIW+86=GO0//LL)$JK19(.R)'U>G"ND[I [
P[>QB_&L7C65QZI*TT$(C1$ON<P>Y!Q03.U,7@Y^N O%X)SLB='"F[TG>OHMP0X,E
PM']V=+YS3 P[226=:VLO_W^$V,8GOWDL<<CFJGF6Z6/+$+2LU&DEY<&T!E2JV%U,
P3!K+H;>?FL38=_)AEE%Y_U^>^O:4E8C$@\RF/$#''3H#_3.!"5X=1_46%Z68@8(@
PXFDA6%K[-I6@Y,=Y"[+(T>E\AFJ%]GLA_'MCMP;S]MJ_R?LS##JTVS_EZLINSX>U
P=^G#![:,\D"?!=!R#3=:0^<W[*H@*96CL[C'W'6L7G_?Y3V3+>G'+"_4S.^P,@8I
PS30A$?SC/6H>XD\:FP H4R>^,QU_3 (V_J?NPR"6V["@SEH9TU(B#RO_E!("5G"V
PP4<Z)E!^ZA%QFE$G!U]L!%8(B:3F01P&," ^*@ M),CN9^.WGY<]97D%5-F\IA'A
P[W'??5O0&@J=P)*T\IIB.<M^\I X5\9!K#=D$!3]5@*:_ 0(U#;0,I-_K<(&.A:T
P XV&\,94C1TZ3UYM*LA 7EA!.SZ:_*;&=@;=Z/%"*07JHM!-$N/)T]FD30@ "38I
P>.R7(S%!AD8C5>/F\W8\W7Z=Y LOS<+8E*$S+^>/#["9(Q>[(.2\ZN?89<<X1F=$
P%UU*P,A_XX$&QEZ5O$2;XU:EG[9.;Z@?D'K:_?T5@(2>&U@N3NRQGS^5-QKO]*%Q
P0I\X2Q)/V;3M+$.<$XEVU VGX3V'ND$GVK'9BHX"&@3B?E*/$/I'4@#,YTR,N0W<
PA[_Y>^MK\,F>9&R^#2!,1W3>/%%/']'V<$F 0*;O$4-@C39,8%.!*#(2S[KS"*1M
P<WT?=S33'8V&3)_DPH8P6S8;5H_XSYV7M!(+WS6#0<,:<4]F^.QZ!2; C2P6R.^ 
PBM "QYY,CL8U%-G.N*</*S1ECQ@"OO)MS8F5,WW35<Q8PTB![[[JS\\VT.PV4D7Y
PD:7- 9*.O5W@8B2!EE6!3=!WM6&_.U9%X"WWT;6.%A_T9(3.=E1CB/V59A<8BLP0
P:J]7<0W=665MX \;1#G>&\?M-3XJD_P81ZQ/4<./#HL8Z&O!!6(R7Y%N9/(UT3$H
PC;-?6=S,UBPZ,68M+ 0T'_<JK7$4 (.<9,BK?G7MS'0.O\X$77XQ[:LIP7<6MVLW
P@8!VF^=HLAL!C:U6^9-TJ;.&,C!&E78:_?(7N?-"F]E^*D&9!G5AM- #2G3<J YX
P#X'6&ZP0-A"EF7^3V@/2I$X:]VW:G4=DL3Z"3N_M@3)NWEC'JJ8B5PH[/NOC8O)[
P0K:,JRN:*2):$F.HZ_P(\[TG/A:ZSF?M/V"1SC]]@>_RV28)[?(]KWXJ+Y[AFZ2?
P<'G(VM]+6%";U$<U]1M'^"7>G/!&4DO[]M)#>L5M'GWR=3ZA^E68@*D7@ I+OJ)7
P4UEHR;$E46@ /',7X2[W.5S#/'4N>E?L8OGV1R_FK3QR)X&C&_(9D4M= B$B>T;>
P.XN.ZEF;316-CTN?H'Q)9P5.VVQK>+C?3_+K0  ^>Q8X^/A-2TQ!O*N=<AH'-;E>
P"N@+&D=<AO_)=;W5OQO#QPE6'W.K7_5_S!L843PAH^89@2QP85EXEL2YKA!,3X^<
P0AI)6,>W$*Q\J+<MQU)^VDT!VFG,#SM6O3%4H]D8%/AI+S;JA9-)!Z N7&-?&JE_
P06R*!9M&*Y=R1/*3J>3HGPW5*3=O7WA&E54:CW$3B7Q/'6/:W4?ZAMJ3-=ZVMGW.
P'"1";@]?SJX<%X"9[!C&Z:<@S-(%QVU&SR=G<!/N-T\I<K'%I<9/7GO(M-S_JYN3
P46LSK@B:L<T+13<<GL3GT%3&RSJP7Q0>E0)63='Z*U/P-JZ2?G.XHPJ89>?#"TD1
P8=8(>U3!1E:2?LJNKJ,RO->N4#X8:KEPM1L1T:R.TJVS-:S "5+1G=$=,UP=1[?.
P%4^L)IE1Q.6;V^BKC NS/=;2(\SF2),>0Q9BX#9U#N3<88M;47GXD?-4_4B3*Z?(
PS5E+P*7L#T_G>1U(QE1)__(Q\WW<!]*QB7T#>W4$T<<:(+G=* ,N%;$C7SH_(^0]
P/91,9:H50QOB>;JYB_&JYHC!NV/$94B)B7C1J_]G@QLDJXJ&Y1;GXC RT+U_1;NP
PRL0@[ZF@KJJZ+F;.@NSMB*6DX=UX)Q3S?A7JSYPOR/T(<+O&A77OG'BRDNG^*W#@
P#>\3):Y-,.&[LL>%)<*@BC>1@3JZO!IDLX#ESO.!_")8QM&1"TH(2F1T2RI0]+CU
P $=W^L(D,I\"GEY"%;]@$FHXC10G-K$O!%3;I(=O>&8D^]T@?IHY[2I1%7E4I49^
PON^G,N;+QUSHR"?T(C_GW?J9=U .%K^9BBMY"X<-  [P%58%%LS)?,BDQT0Z[<9A
PV_Y7_HQQ@!YW;<=N2B8^,?I_ =4H-,*]>S7CX_ O]&E 2269+K.X_[H[@-/F\=X9
P(F?ZMYY,'(3$Q4/;O &FE9;1NO=4Z/M][=W5)D4<1A^=Z1'?KZ?K@XJ5R;\OS[\Y
P'GMKS6Z>TO[W,P5\O)FE)L3B1NQH1\=+(0;G)L;CL6>IRJ4!IU7-^-C>6M')X$?<
PH*HA3JUQJC&J3:@5#:C*U#XV8+UDM18\0*@]G$F7)M8OJY.;5VM#-Q8?1Q4J_+(A
PN1R%E'\&]!I?9JROEKZUV1H,JU@R)Y0Y=&:HU!48>POO1 .0,&>EK7&'V-L>=$TU
PB3Z#H  YX+K&PB=47,!8'JO.F_=(+Y-FGY-]K2525J"*VF.BAW]')QRJSOJ^6,,,
PPQCSM%AGWF>;=Q):.M007&%?YF85I9/PAUY^QJ0U[C$"W8>'@W3AJDY-#1/-%J'L
PKSQP-PX'<V31I(R5\1W$3T%CG)$J%;S>FZGVLN>T=:6\7SD<R@-<,V'F%TGOKYI;
PK\6C<-%L:Q#?(\,EX-QW$2:6V,@(O>1YD6AD"WL +B8''#S.T6&IA&,PZ0J L'AF
P7< )-3]KDYW5ZM$CY:Y0^T<!)^4W&MO;'H'1F_>+X1Q<Z*X)8 K1A_"09:M>,47.
PKOT]Q21.MBCK'L+9.]9K!JALL/I*1?8SA]1"O^Z]\?U#=\IE],].HA_3&F[,A!$N
P7FU#>&WC7CUAR<0:A!)+ 6*%'$?T>?).@EG24>"G<?X!K=$\3!(43%$2''>QP2O?
PDZ_Q%18&JU&\,#*&5MT1D9M, 2+_OY9ZO8(+WG?^@=@+WM<*#.^9Y@G @"@%8V)E
P;U"U<K%XQN/WFS7K?]5E64;J$$G?E-M&73,[-ZL76?9KL/7\&A9P.BPGAPG<!S!>
PI66X3'LETN<*C[9D(#=C;3<\3NJ E[_. H X"F?#E'E/Q <G.?(S;^3(VZ>M=?XD
P]?MF*WV\NPKK5=8MRIQ4?839V%4Q^(.S6XM(O"M-;H6"CCU5;V4=_78XI]#\ K;#
PGT'N91*"H$$7M%==8^EH/Q!LH]590;I5O\WH;K"J74X!WL#\Y 5ARX/OKD:@+QY<
P*; #*^FAD"Z BP,.4HHZ3-9_B4IC0*[3/*?#'[5? OQ9^C%&U49.>-,W=ZYLYUKI
PF8/EDMK>91KEYNESZEQN![_C?H-K+6MBY&2RI;/1YE&N,'UT:Y)*K5X619Q1#]TA
P,$+AW ]L>S+#>E%UFI]'8F8==@ 1EQG4?H9N/1N*6G2'BE/RZ;GI&AP;,#4>3*B1
P*DT/!?3 ()9TPE,0_I]/*%D)O";F0.Q-DV2T5(:?<T 14A2]H_^*#74O[ 9&*0#M
P:R^E5^%^FL*8&8M%U;8[LN(<J&;96)B<=.X0!,[$L]80Z\J%T#2N_J%RZ-?I47IO
P> -PC)QA_NSW[)25US7@'MQHE,/UTCADN(4]4*7#7+&>'P7<[Y.F]PP8(_WIWZ2Y
P$7$T^E[)!3^>H0+@=SXWT=$H%>=SG=*4F^^/+L8[+(S94$;U+3Z+4H58/_Z1]%8#
PX3E=:KD')9*M.XLF"W4P6N_4BX9L(Y:#S6^_J_>2X'60AK1Z+\!S5;Y*_V!DPG(-
P?<3.JUL9D\AO]Q\<\/4'B&-?Q83FO9J4L0D'MWN:40[G60(D4*V-M$@VJ[R&8G4:
PGJ?3DE+\GQFD;#> 2O$%3 EHVY11X$3._IZ7U*0P2RI'7!+"RA"BGDJ6VW11BTBW
P54\YT2Q*1ML(OM/#F_4VO]3DLUJ%#W6"<2"XO=C%'<N0Q(G(JG/H,9(H(X=_/:U\
PJ0TY#DH$C<HG97;>XQF%NA^2^.'"6&YX"H?]N70I&HIA4?/#9R_010#Z^*W34;;U
P #H)]&F8&ERD4#Y6:!0'-F*JTAF6WA[>AC,'*=G_VE:  &6@XR2MWIL[C]@RY36Q
P9]X\\,),43KI5&Z>PKCE=?2;^RGAZ8;#;3XI:5.$WE0QVHN&+@U9Y[;QV57=[/-!
P[%K)\&O[QN&ID=81,PM<.'#1@IVL1XIG.T4>JQLKN=-R6RRBJ<1R8/KO78)8M--D
P<6"2=>^>-(Q?C6#V3BX5G0;@?).DDI([\]5]APIQ%(Y:YD[_5=^;KZO?,QK!SML0
P]:/&:]8M&,C/OC >4U0S(-.@A'\5QZY0SKKR4&+$%@H?AA],U04QLXVG1QM@SPP&
P"Z688L6T@./HK'(.*7/B   5T\O\@:4S&<\_244_Z_/B$GY=L,:6O\QY@VVK^.!O
PRKJTH3F'6BG E!$ROZOF"4&LID._.F$D+>N#<A69Z&P_])<<7L;2I.<?ELYE@H^L
P@O2?7GB "?&R[M;>9.>EE7SY7W0;[]GD5T_90C? ]6/(7]K*4H"H:VUH2UPEL3O\
PKTBX1T(%-+O"LRD^1=(BO*!T-XJ&1!IE2'Q4 ^MPP---N(+\)H("WS(LD!T1'%N<
PYCNRK$=;9G6>K'#>"]-W@YEE+ZSS[L-0"K?- R=#H=@DO]4;X->%@3F<9OBE\>M1
PNAC8;T/4<B_?)^2?D;* (\+STPOWG8[.RY[^.?<A'<\0P<*F3A98+_F2*?7F7SU:
PKZ/-Q/!'?(H_TC407I*<PEDAS1!L+HE#79OW!Z;@0F 4FE0.B$QBD>U(L3%XO1 G
P&]L^ZX+JZJ*<$DN)([C'Z/*U_(;=$RNP[GO9!A<FE'M6CX[_.8R(/34*NCP3MNCE
P4X4-J*%.J>B/<,8=!I X;U\PX@MH@4$W^&O _2_5M-%%;YFP,D [\1.T$\I71_=7
PP8ZJ)W.N8RAJT/I#!U74!#!Q\ZE*)WA5)YQA7+C@EU"<4FU; 2U!AU>O3:)9$?FY
PRT+F!_41;*';V.,@'J\%M. YX$\;$_[39,ZH/,G]EJZ=1TK?I0TL.8"5_#F^3;+>
PPT5]/K0%11,-/9)WL?1(EL?ORQQSC[(> \I#Y,]D<< 6T+EHE31XSMFY;IA3X4K7
P3BA1.LA8?;ZLYC>*-7J<GR$3@UF-U]"X-'./N]M8H(##8/UY5';T8!PQK'-8HS\R
P-OD)K$L!FUT:V]=N6>'4HV+T^9PJDLP?"O!-3J>*_VDS>(3CET(HQ\%,-U*JBEN3
P!MHG\H 5ZH"B9IO(O:.NB/GA=^'YB*['U8!_Q=93[LZP9^=I8\20>:&:],9@9:OA
PH>W6B Y&* "#OU'3<PET_'U1-B1T-S 4T"2)X$_7$1SIN3_KN<WBEKB.VM\6LEI=
PVC%7E+W-M;,L%F[%*;XO<(Z.QXR?G(K0EO^2!0..#MMN,[?' 7?DS" BZ4QSKQVS
PZL],5]Q0!"EG7MRR^93C#ABJPEWZRT7U?^%VUZ.*[/ET(;YJ^_%-3ZV$"Y+-#2,>
P8@HJPN-LPY?>DS51D(!FO5*@!^"U_+H/1R1UA["6B/I!H""#R^(CC2I1GR_W@1:Z
P!>,&L,,X*''2PC:+P!Y/%DX,CT^5A?@7PH.F@8,6 P"9N5J9M&8$ GNQ*@J[*RF7
P3W]OP,&YBLS?7=,DV)BF[\_C2I21$"$(;_Z!^\-;:9+";8;S]C>&"#@?H!C)$TZQ
P1?^BK0*4.OQ]T 3=?9D./_#]5-!%4=B/X)'B&]<R/P 6K*ZVCR//$'LC3^8(]'70
P-AEHS<\DX#NVHYIU%!,BJ"-?C&F<_C258MUF9&G\'?,+0[Y^2VGWM/]B':8K+)$"
P_K--@(X.NRO<.K,S(0GKW@(+^KK('D2  3T\=\Q+O(#]R%+N!NJ/ ??*S%+^L@:^
P>PO_UW*7._M7_W(WJ1<&G;O*]EDPII"R4UNM8$9!->:[8>AKDMK<_\!EI(288$X.
P^&DU9[2@=<<V^H%(; S4$-K@&!)R 7DY[I5]'WWV"WJGFX6-0P(D:F^\C38@$;NP
P"('MT#P#)PG[\A^<.GHCV&Y0/]JV#CQ*;W !<[7'?8#,I19@RLP)AC3P_(EF:CEZ
P^_;V'V?0=N*UG4]P?YT%2)3&?#-Q'L2F<(,EK;^^RMY]R;N$M4T/H9G>V3*?HC"&
P[!PUH.F?.6&&^]ZC<<@E+MN:Z$]8'%^Y!%#;T$Z?@S9+9GH@YVGPK67H#0\@TX'^
P68#PD5/@ARN%(#R<_%XTKS$/2;'K\.C)<H^NF&EK7%5'3>"5/"\YHO,R,]3,\!N$
PA+@.+YIV3%6F$9F#;=ZFB@ ND#>%O/@);ON;C<D;-@:PZQ*0"$G665]UI?)V?[BP
PKY* ZVRH; B^E]O1U7>TF,]1*WAV"(SB4-VB]!DDFI;R^:9F@[V"4&2$SV<67^&8
P*P?(X(YH+H7T*PC(XT.T[^%;@VS9-_63L?@D)JM["'@? Y$B!X[NGT)B9^;0N-ZL
P\/MZK! @9EF/>DQ[[XP$KO0&,*Z/7US)4AM]\1?,DYB.+W)V6(&TNJIIS.TRBJ3=
P'O5/,FT9_?9I#>W<^(8@YG,=K3CZ[<LQY3E-=S+@(!,(/QAF&MI(VC[IGP5!4,O@
PTX=G@513R2_-6SX'=(A4'K%\.BJ8L!0/[WD]NW.Z-7,F1;-463>1^WF8/@8W@A:"
PND9<I,21ONYU81X\KO%+C?ST5M);L.%.@7.&\7O3>#^KJ_'?K#S/\#QFKX3U!5B.
P +W:IA8D(A'=(L]=O/D8.Q9"VPD;#M%7R&-:U>TKJF#:4+M>;AFW2><'MK6X W(3
PMB-<X;KA-HY@ZV-=64O44RD**/J@IFN!A3YM"=U>?,),;X_6J3?^[!1IQ^TV62I8
P%YD:V[$\ J>+/WC.&9W9<T0LI):EVH1:95)6SPB*R#>QP18_@^]_%:7A]19/)@) 
P.@SU=E"K:K)M5YNYG.?U1_#2A;'NG-;Y3"AV_<A/>#?47WD\(\;;:_9^\LELZ3.0
PW:9TZ$A=Q3#4+;A=-X(C7]0X&)2[@DB^5GM\Q8#TADE\8K^L;?*KJG+[TO]656UF
P)VRS&>2K!_E[C_^ON<71^9L66B].>9]_*BRFNB9[1.#.,+:P_->8>%:.&,+.M-9"
P6@:U?33(]Y-5G+E],O^1@J$YG _:+XG\SLW,CA35K(?]I_LY9\#$;L!V["LBZTL[
PZ>273K>M1;M(/N&"DYK]&R^5:8*_&Q;>[^F*W7BV&F03EKZL'Z>0CR4?<[";3HJZ
PIB$FN@L:"8[AYLB7\6Z!XA*7F\A1R0^\[?F"NNN3P<+1C5E%]W_GWP0^[*V";<1.
P+-GE3FCUTLL2XVI)T*U]#M*GS!:^]\.R?]OQN:99C"+YB:QWG81W^Q;25LJPX1U 
P;LGH!.O;,$P0=FH[QBV=:O 0PA-]Y:1K084P-RV)S&D6@ A-U51$/T.LZ.',<<3$
P'"2GG#@:MQD"B5]T46*=*PNU6OLM5H%- )/BSM%514-EYF<#)'1H0R[PI8'JL57V
P)2'CPT:%C+05P/)@,YN<SP.+*BD*4C%,^8>[6?=B?SBD]Q*Z!HIZ]EW<H],TO4 R
PJH\.7?$Y!^UQ3% Z&SL.V\)[/SMM1N>T85+RA/7,B 6>-8[1^ZV[]&\7B)65O,.[
P5_H$"=!VGN447%"SI0)@NB.82^GL;\=*^%2IFGI@@A)*HMKV:PR,S2IN:E?RJ:E]
PSD;'/-S1>9J,%QHKTWZN%W5#("]J6\-)1\AC_-NAWX;6=;)MO_ U?OYQP]7CLC=-
P4@V:#I ^AZX_.%S'O<WYJJ3,K(2/\H#S"$4ZM8>X<B<W.(W][DN8'W8C0X2SWL7 
PI1D"O=&<-O:^AT#:QS>6$NH1,\]^/5>7Q -9R?6 ;I-2Q,BHLK>W#0#KL[[<E,Q#
P3ZTMD=I1'?\6?J%YS'+)HUZ ^6/!CMXQYZYN_V5> ,#9O]/AFM8*]DNT>BVFW0 J
P[LLK,OPNT,&J]!=V3__$P]6.>]401V)KH5K5$K1:YMLQ6K2MX""6.-AC^Q[&*1F^
P](6DI)?+X>"4+;Q:KD!0&#/P?:9<(A*:A5-X\Z4C+%3YD&3[B3,MPIZ3TXRFE'/F
P*O:G/-D^L5>'L7TG2.L+'B$P6,7]?U&@>>HY&Z;TBHYM[!I8(<11B#B:(++!*S8A
P?B5*<$4@B3CMM);"7*CT[T9C<XD<7KM\8O35+5DN5(I[N \HKV7NQC<+^<.W*LLE
PBZ/\/,0+\E23;(U]&:%ORR"8Z4^&K#H0026WP!&6T5%<T8Y>PIP\,2GAL,C;'5JL
PCR@"[Z K!M?'!;BX6@CLZB6_%NI7/%%A^BY57VQQ(XH[VNK]T"D1/Z5(]JE**7O7
P/K1#=TC.\F!>MLA<P)W35<6K,0RD(FSI)R? O:L._Y:EA@UNA\(C>X78DET.]E45
PBTK\10;X^DTD<8*4>[9U_8M#-*'BGU/@X4A]%5E.:%; ^&]0;>,'T;BDBH/*4>%(
P<_+6_#=#P5VH:O_Q,*I-S=;_$4+F[>%HI_8 05^K%BP?]^CGM*LT>(#.A?C5R5+3
P,JXK*)Q%=P*"@C.U%QK?VQR554^O*(1P(<T/Y4='Z3D*HD<74MVH6U5K!AK#=X[#
PX"QQ#4Q+_M>U-55X-;D^B<H397VPZWG+L?<1(8B_[#=:IM<,CNPLD/,U@7]%(5*V
PX=UHJO$ 6GIDCX3O/T#BGI=BD+Q,55ZU[KI&-V"RD&<*&W[C'$F&%0=D<@HD0%F!
PJ@N(PS326\-*4;J"\P-1D ^_Y93';VB^3T /Q5/T7@EO(I$YD41K]88.,^EFH[R3
P4;=US JF]7?1_T5]2ZAJ\MFT2L<1 'L(J@CM1O?9RB,=Y%'".\($?XCH."GHHV[1
P:C5]#B"CWW".\CJNT%JJB"_K7>/>Z0#SK?.31T%J G!"<!L684<M)#;U3]_WNS31
PCY['Z@T"@/XJ/UK8'X;K*T@WW-E!3%GI4)D2]XK14$K_*443^[+H*%NABC-3#=0;
PO>-+=MT?'S8SNUK76U@$M(V<:U.@88578B8X).XV"IMNM9%%H- R/$:R* C2WO7<
P1:9>(/Z1]\O&)V[K+!^<-D!2'L!Y]IS/]AZ@(CZ'\ (/Z<3] 8FQ+\(OH#;]6@8)
P(T\PIBFQYUIAS#4$'4SJC=?0"ZQ^8 ]:@H#!J H>)L_%J,18K[LI#P?ME-44M0QR
PD7 =VG))X&[QR<:=U^Q0L(@.UHZ:]FCW> [28_JF8B>06_)!XDJ?;(]:51-$IQT3
P].^Y]1T)[34),6Q:2]"-]&4-B0L;S,)2T,H-GT:0&C>LKJW,5"LS3:Y@#EJ7W;2@
PVKRC+]=KPEK!3 X3N^UP8:'@/<>WBA*+[%+-\;:_@ /^*MD=_J\@S_OE03&F>>9:
PP]4"=L93X?"1!^UJ(/SNRO]9>Z*"LJ**7NO;%*T=*W-HX>K^RJ:)["A2GB1#SZRF
P\8X*JB3YY51F18^A7XHAQ(=3#DB["7:_])@EP)E*52$"J''MAYA>29^D3=S7QC]H
P,3+XPB%Q-B9L)2+OC]C"R%Y'YR8YA;X=V;])J91TU:>-J.GH D_26]W&K-Y8UF\$
PV$! [:'3[H$1/\M=&$PI >MU -.UE2<X)Q2QG;_S'*FR+]#Y/5M_?ZW5/FJDDI%-
P;J%7Q/<_(T/IZIUM(9]4A-$F(><G'"PX26F&#"6N&5L! 6$<EASJ0 *C1XWQR_#K
P4H>5,DKSW K'D"KD;E#'8K*:SYBI&BE9GWT.!AD6CMJ/OB7'W.@BR@[,LZ=^1):'
PC<K$ILN';+8QM3 ];4"W$.<MRIV[)&1C@WGPWLP_/8\#PPP@N3Q;OU[F"](& 2,2
P2G7U0(#>E(Z)MJ2B,*3\ L5DF[C("D2T58->QX].W>DV&[STD(KRDOUEM/"-4XJ<
P LSJ('! <XA!]FA_#*$D9!-V>M&PG<!3X'/VW D\)01<A7P@S;92UE"?L($P5A$=
PBV>]5GR9Q+;!E<@I>T1J6;EW2\U<;?5[Y##K4K+,&Q9K+0QR-N?5-:^,)\N+6HK7
PYV# :D=_@\G@+-M67QQD(%.&)7?V\*JWJ([]7;_CK)7HO /#T_S&P+=_4:97!4UX
P/:F'A6\92O+E/B <7T]W'\&7.,"971P,O=QN#59-+BD(PJBE@)B@.9^A1ALL*N)K
PC.=1M.GOH-B4KU<.<(H%+Z!JQUB,:J2D&$*>%A$_#R. ^PD!X-L7@"+?TD67G8$=
P3@2,-\] #GP=:;% R+>N31HA#!3&800)<XMZ_'F>] D.LU;4N.CE,,9@PD"1Q3U3
PP0T ;,&?W[.[+/0V]UEIWSA'%!Q?\R%R&=8^SP9,2@_+;@+&64O_)W-%GXQ\YJ#-
P_2689! !4,"UU>9M@SQRO>[:A)>:XBFMZVU4?*TWZ4%+2OJE6."(1RU@D:KVF'^5
P/+KO7\:;2TP284Z]AQ;7A"R\X]XRW=58U(2$&,'1/P4<"K4@*=Y]E31C%!?P >QT
P#EXH3T0.)F+2,+/XM6D8D&%H5AESNYG5K"N,WXZ&UL?;(Y*%!!.P4<MUW0!%T#'W
PNF98)E)I8:G*R\9#S[E(Z<W.$)M)1##M!=M:^')[-?#D&TO$9E:E(=G?P4GC-09Z
PG\J+*FNA*_^SL7]J $&J=3;#32NF_-]4=E&OZ?OLO+O'OHQFN.J:#J247,ZWO[T;
PG)-&AI#2< 3./-CH&1CS\9M+XWAQ4)@8VTOV'PC=NX,@#?O59K&1&,0'7[N'"ZY6
P5$P#312B9W2ATI"-*IN?V,NR@)./Y<PB:ZJ;M7^91*&25>LB6[>06;T!($U.!\^Q
PBM<QT36M-F!X_@8!;NVS<[/6X]RBG(2T%I)D(]9;2Z5Z0PC33MNUX+3;KL.=E\RQ
P/M'Y0#SS.[5)C9#$.:T^;\:G-O"'APM[G:C.1:@K5YGM<MW+W^>*I$_,S32W@9OO
PN#>5%YIH_ #7S@T+;%CL&&]YDW2$CV0<QTU^+7@>W_!M#=L)UU<C+07&98'P:Z-2
P*7JQKEN0T7/BK7V,L*UP?G_ZP43[.2=K1O!I/A6'@<A7GK/^O$WUK9HH/=FF/87^
P;%,^SE8SYCX'M.0/M11MJ"9\I\\:4L1$8M)K"43>;F8L!AX$%F<G70KY]?%1@82D
P_$ZB[EIBO/3?'HMPAB2 G2?V[_!\G4*)?VU2$@K\1H<G2VDC('QYOX/$7H*%8M!0
PD/YJ'_^[UENAC[>B&40CJ\1<FOJ';B>?];L:+NRQ-JG7!B%G?ZA$VA]#=T7CW##2
PJ'$GQG;]7'3KR3:"%2/&@H<A;],-BT94.Q)\\^A:,:YG# \2ORV%6VF5A8/1 7;(
PIGD@H 4VKT>8O'F"%LU.A22G@_ ULI]'GU^K(M$NHOWV!+A?/-03EG8%+/PJ1HYX
P+>MKDH(R6."I:3IX=<])Z ;&U]@AQ.FXB;V7&U3!-9!W3I&NQII1;!JN*&&UMG5;
P0H:0@^E?9&DH#-=(XXL>R'/1GS"L"-8EK% '\&GGS^R)/+R=Y$4SS?4=VL/_46%7
PYNX6:UBSE5WWN]C]X2!7_UJ2VQNZE2@QRODLYZPLG%NS[&^EI=X,99L!"RG)$7,.
PWU&+AI*U9:]%JQW$N))!?IO&GN=7VY/#L[$"^Z5P9_I[%R3WZ4+%0RSD'LB'7=$D
P&P*5VA&0KY$SLI0XF>9O4-/[DW>"]#MS(8BV<% 1WPY8F 0(P417WZBCGPA5!U P
PN$Z CE9I@$!V%/+<%[(U0NHODF_K;*9$]O5Z^('TO"8?P[V?ZSC4?@T(1V?2VZ?Z
P1Q.W*=B\2!5$QA;"ZKX?'YYU(;,A#S9T65!.0KM&XA\U#]/)?.1+YZ(J#.F9ICX@
P3->;+C[JWS1)2,N']!Q]06<6JU/CKCQ[>6W:TNQJ2V@QNJ9%6ZHGG.;>%'F>+3=M
PQO2OS7M=/&#XLQZY,9=$-8\R[1&7:^]QSUC-+S^&%53'FR=&7I&X$4CM'-7$YF*O
P=BWY=A&#3NKY\9^0 8,)JD.9CQ\QD@G$&[3K7-@0XO65_!.[G307)^.8P-VR9)DS
P,K9' NB&/,ETOU6*@%@98&RO++30GK7<1%!,?ESN3EA[*6&D&4*"8;"#DC^KM:K[
PS(_)FA!4PZZV%>O"!=<W+FS$:)U@<=/[9=:]W(?L3)6#9TYC82'545>LX%A;!Z);
P5\WK9O]!;<R[*FJ2<J+_8,V/AK:K_RK-]$I!\#-??@C<^0>M6/A.2EV-I^;O]$+C
P/!PW)]>M _4==THB"Y$._5Y/9O4C,++H"Z#2%/Y7.%9+0SW; #10.(>8&#G9ZDH<
PH1NCQD8;R[O7Y6>,)Q>YVC?0"?OFZ%+A/JGXEL8R,3OR[ZI-;Y8<=.M&<&)OGP-Q
PF$(G!$A +(47OP;S'PUGSU,=3*INS!?]:&==.>#4Q5B&&*(HMC5@>'8?6_.D>CRU
PSQC+*9H:6HGJY:J[](?K-J/>]$2 <8@68T[)C+X5;-KJR99:GU)0MEK!'15D76E0
PW)GZ:T=!:_CFZJSF0E81"12RU7@7.@,C$C<"HM%P+VJ*RWUC2FNV5ZL@\@0F;:7)
P PF#=!];B&XN44^N8%EE6]BAOBWY\X*QANI)!SM/@A^N4OF'%2>W$E>O+H%$=,LJ
P_6 ,1,1! 0;:J@>B3C3Z,E1'0I3#RFMO8:"[M=TI.U_Y#%#_S@T^93?VFGLP!ET-
P?%Z6=VE[_J?SE%FO-U _-U1$7Q^N7)]?JR]O/PN^:O4GDJ;2 +]MJACF(!4A!5>S
PCY#!JT_%$J)H55[$7RL8-TXO]^:5@O'<"9.V+:(>"X&:2P>S^DI&DX()S2[Y3_%T
P&^'\6HD,]X?8,.4LUXF@L&LLXJPCS^*7/C<: 3B!6F@Q,"IHHR>'+704CO">]ZMV
PU%*TSG0Z-9D(TM_N$C<SA,8B/.:7LJO#3QJ1"5:[O .A60.\>FJ[#<388+W^!&WC
P O6:" 5+32$P:EVYT*_.$<(*AY\OV@?WS#WEX)]X)0D,H<"KCCNFL,7T?RF>\P-3
P%"F:N2@7?&ZR>J07NI1O9W%V8$8XB<@>]>UG)@B2-!4/AB[3)+>_E?](Z=^-"RC#
P<XP#!BDXA/=3_H<ELSFPB(M^N[_5PA= [.FL#F@0ETMQL[$LR=SUQ(U>!106D:IC
P<K#*#U)DM[,B7V@SFLS"FN/\>\]N<L8B@&)Q=*\Z#"?]I'5F!7NS1%;A4[!XC7H;
P!!:TKL<:0+E56Y ;H5C<KL%7?]FB_X!,*<3A+Y(75.I"TDA85S9_"[T56!?Z54T]
P0E+L1+O&.RMR.HX4"5H4FK4Z7W#N^'7G?N:$&K7R>A\<37\L_Z>JUR5-^*Q2^G@'
P$5DLK?*7ZYA-MZCD\SWJ,<J+F8V'SF%HQ-$SRUCD]PO4- 3<YM#YDA8$$CT4S_62
PU/]U4;F4D"=-[LC=!0C2P@O5U:W$:*G%EFF[MU5\06;(1G4AX9HC5A5V8(G+L5)"
PNQFWHE^&NOMHZI4FGT]?$NX/BA/,?CQ8&H[&#]/MV#L^U'A"">82?3BM:#  I=A_
P^'ADVZWS12@$^(P[E,@*]A4..QX!"BTT57)H]PM1];*<FSVN)FXI"6')&A:HE<&8
PP 5C*.17-/M3U#"ZFM9 4=!O#VT/S#Q4.5^UN+V2ZVTV7!2R,W@4/:VPZVR[3&2;
PN!'L2JO2N3E5GB'BG*_S(]TJX"F3I>0O!!S4\1[<NP+\HUY\VPL3%U5@P3C.=XR=
P+[D 8'Q)NDUN)/"T+\["GJBI'9X/SR\XD_LCHW^U!>AH/N=0_3Z, -"1U?G5KY@#
PD.!_K4^R9H793FZ/0'74]4=<'N)D8(YET_+TLK31+R2)N8@R2K1)BRO7V+K6K[?>
P/5@U3B#TF''H0_6!IKFR53 93)_(WM/)I'[B#0TOQ!)(1C)4E%1<TW9P1H1>HY D
P29K,R44=@6U34^/,$O*:J97(A.?C+H 7_=?+4&$I:;P;,S&KI/MVV=HA"LKP-;=F
P3A<;>&W:Q:[HJG@*ERX3>]#@\LD@&;67O \=G[0=KL%3&99]:"KM?XN4E!@!94BG
PMMS0W_#C=ACSA2[D"&%7IK<QEC((\S<$4J+$%JE&'@ZRHEBXNGJMPI \E<X(TYM4
P'J'OT#$K.,WEN?S655"AT[98BS8#CHTR:^\^TOGR "U>K0N[RY!\06-Q*,._L_7]
P@ 8;7UIITFSCV\^.+AL7O+WG )[T1 49*399?A&E'[1_F_$>SLO-H?M*=,IQX<FW
P0 _X"UIE-%E3\A_WG[D. P)V!H;*%.C+^06 L<?,Y"R=L(CEVW2[AQ[]2,F"FFH<
PZ9QV:%Q2LA6H8YX;FOA,)J%L]0 /WZY .&S OTT$8'0\7CNW!K4\3?6\)3,_>.S0
PY=WSE?$"IUB7\SA"'&3Y_EU0L0*RZE]UB+?[&GD\2Z!-\F9(H<Q:$%2 .^(4(C%Y
PH?*[H*%5S'3/ZS0]P.-X)0K"'X72YUVFNV5T6B=^EAGV 1D_HTQ8A177[Z_]0-7:
PH587-!M*Q>*W[HW:KN^*+V?NM6>]Z+4L[ >X >K(T$!;NF9ZD4C9,=V;Z<7IVAQ3
P;N+M$!\R7L!R?R/]"B(^NWJW$!M>MK_:OCX3!U=%.]X((,055A5%UCAMK)7LFB$A
P \38Y;%K7I9)[9 .)$_N(4L%^@/#\!*M8215B^_4;:APTG$;,Y%LWP!:.)*AE.VL
P_-%UXJLV*7@=L=G\_[3PT5I=I?CLJ_8/UK\NSB>(2S5;.?G8DU;_;_'P[*#7*]AA
PI.(&U#TR=)$U+;W)NM]RDY&0 $H]%\=;X51(#UHZ;01S%.'>VQE?AN[MPFSF:92B
P=G"1N*8&X#$A4P^XBNR?JS?K;>GH/)W'3,2^YQM5+Z6)128HK[.3%=2IX#$_#E*[
P3NM\?SQ',W<)R"DC)3.RN\0=5I"Z<>1R'3+F)Z? %__WMGC&4',E9IC%HE<Z?#T<
PA3S\OU\/(Y<(]P57;P4K"7:B.Z2,-].R)>%=UI:NA ^+T($CNZ79\\X_N:CBFPQ)
PD'-1K02'#BU-)((.70 F[7M-%P#=/@>"Q5_J&D<&:9A H^%NMRDL=895NL'^_S/6
P^4A[Z%'I@+\(Q8M8RZ'EIV@'#MN6BP,'NPZ1.@^V$'VU?W&_.-OV\))B*&4"8EQU
PIO(%5RJSM 4;(/<2W#HN# 9D=@**(>%%6S.F+,0[F04 G_79O.;D$A@+WWQ7ZC^^
PZBQLN,+7P15G!(8C=35(.(F&ZOMI:>4.+I9!Q3?4%J( +6!M.FI.S&5--*V3($4Q
P:!7K5]E9'N-/)>/EJGB<*Y*N_P9L%7#O5?ZH_N)/E?C]6U!Y,4?VU#OQ5)"]#4 >
P4F?0?#8:WSB=]FG\;PXG1\9WW@)4BYVJ4M;Q;\^RK@=-@;P5%"0UW1IWA^.8]6RD
PH_:L3?S_8>/^(E'1JS5QM>G?R=!OBGPY/: >^+]7DNSZH2TMCLZZG9 02;*C1.EZ
P"E<8KS7%\*=%^<(\/VF)B(]34,W&)9FI3[S+HY'S^-VP3!K:GO5<;=7M!S/0^;)D
P:":RY]WV\P3S:0R:9*AXLNI*T8G@A@6T'@_7*^J+C8\$H3YRY%)2H]G6\@/EH$TW
P_V3X]>NW2J]\+Y-QA>1.)"!P-Q&;)VU9D/"VRQ SB27W2./<#=8*O>Y)WC(;1G_9
PR1?H;95K2^N[IK+18:][=&G _:P'_^88V@]%(=D(@DD9BP_G:TY"LIZ @)K,[&'"
P$N(;UW*D+[&C^$\89%0KZ+-BF.Z+'#'EKBKAS#=GY#I*GSQT/W7_"T ^U=7U[*X3
PB6#N1_3 ',H_ZJ,#>$]N^^D\M@5L=!EJ9G8%407\SC9IC(FXBI5>A=#"I$.:(2\0
P25 L4-GQW])XE@-O3W:;G\FG2K_&]BFU=&:<<$<Q8D]B/QZ/KHFZUB70D2X\IN.I
PDI:+?>KX2@O^.. ,TOBSBE44WU-N?9N.]S+3,GN<3"VBGASDW1T/(]-U/+,45[.N
PX4.";#X3BM^(?JM/M2+GC >YI!@-9%/@'"_H^A/;6I[+"D_6DM>5=#K'L-P9AH;$
PT5$1\A[&RAUND*'!;I?EVQ>:%[S\./UR1'_\1F0E37V<UIM/=7"G@_#[XM>"+%C2
P=)THU%QY5>.86=VX9?DRW!O=H\BL^U1W$<,Y!#0EC8\\5.%3%-8B7K@0;_M_EFP1
P"0XCYL]L'Q@+>SM,L&7WKQ!PN5;#J+R&8!TA8+JGM"-"V=QYGMM@ !E"<$#7I1$,
P>$YO!J(*6X:#@.W50_;SH4Q, P/"?HVSV4R4\LO=@]G8,3JS4D;@3#.[MN,R9U95
P072/AW=^'T8:;@ 1?)LD,HF81((5<ORS-5BW%PVI.FV*HQ&)7?=?8V>,AS5(,6H^
P 83.B<1ZLJS7(!5S_.@8"M<'I/KT9!"OM+I6L?K:E>%5D?YO[C@^-S;B0IA2)@'[
P8=2PQ+&.X+ ;&4H='-X,XWHP)8:>9:_/C1S4AQ,&&@V O/H.ID ""7B<7,TZ O$*
P]@UP_5:=K%FY(EM=46_Z3!<^N_;R4ZA;6A)![.+:<QX3BC)?<>;RXCI5$L#LWM__
POD5ZE!/506L20 C!D_XGD%\=)_.B )9R1R2(5E9=0WW5J;1A"B1_DNOPRBT&-R+H
P#,@X3]5?/\IL=^6_6_Z(A7W'Q-$K2HT$8S .$ Y) BV*F*YFFH.)K<#>(]*OZT[E
P#-U(A"A%DAUC2[%3]! $F>.H+Q[0?YUV$7]*LSA_+$(JI)T(<-2(]VN_-,)DJC@,
P2E;Y3D7EG?KEPR),E@ B68I6:F%)7VQ=YSIFH"CE9"(($>,G!*S7EIL7[\AX.6"^
PJBF-3:(_73?R6:<!36S?W A@5(^50W&Y)H!</Q7(7LQIS@I\;85J2*N5=68E,; P
P@0;271J0!E%BB_/^V[7M,/;YK+3=QB8/5)!>0%"L//KR(<<E 3Y9U=G=3K9?,=,I
PB5-8FL8'-H'ZB+!@]$NUK!& &V ,'-I;I>3N$Q,"&3(VU\TXO6T@OU\B985>%F$1
P$?!K$T1PR0A#%9B=U)U0\Z[I]G2R=/>)$&-WY9)$ II<^\'2IWEQ&;8F@RI?Q,U\
P+2D\>;JJ+MG3#9#2KO[BN7 7B"_)<ZK-?C:K<\'T5R!C[3:, FY"G51#LM-"TU3A
PR71A[A)RX;U[<$&>3%'FM-*:22&!3_R)AD0<V:1J5C.[:VS71[%/:HRKM&K\[E&&
P_PDNXWYC2Q6*)XVBD$T9"$D>*H?4W5N]A.6"!3A6!%Y=O\9B?.XE1C-+(H/6474.
P(HU!*8MJUXFRSUMJT1]>/@;6<,W(R#$LJ2.UF6?<^S&Q"AI6)YKAK_=X_:(ZVW3C
P1X.@Y^CN!_TW$\<.K9Z1Y$I9G$@A:65^FJAALNVI6LZ1P WZ=\-+*$84]F845'-_
PV]5%F,5B@<#1"8_;U%X?!8*9L3FB_EX4]%3A;GW!QVTD@U)_B2PWF(YL#XKMAUY!
P"[29^_BE2)_S [4!H+<JH%$O)XG%;O39W*CBWBE6(#?^#^91_9X*?8^(D-I<KV^ 
P'@T0\O5?_PH27FH0 @,9_ D?J<; _J7QN0>5GGV94>$/#KN[7AZ,[E YZM=([<Z8
P^=WO@+HR#='](&=6RD_@+L/+-Q]?YK_/E+L@HGYWO98H?]Q:;D2HT#QN CY,"IL[
P;IY9PKAH@07P&K1U"('5Z#R8NA!!,V'5SKWR=B%S2*1C?Y^. @M>A).B=$AA3L9@
P=J1NB"0\:V="EZRVZ:S']_Q60*W4).#_@.9GF-G._/.B?ML+%&G17ZLT,\./7"^I
P414(10WDLLCNTL0U?PL:H'=$Z"K!F%^]D%MR* +[87'KE0[1&;L0\!>,R5$4G4\3
P-:AF_N]2!/D<'[VV<3T"XXDT>WT^*/!['+110R&8+^Z3V05I[AT7*B-4T&+F7E0'
P#2<&0<5._^X8!%T*C'MHEZK)/3G$/G5IT[FB?U;"Y:#A:*H?^U7T!\ &VA?_?CR?
PBM&KQ3D+.13!Z&S;GN@O#)7S#F!:/EC!)A@4GS'I.SVN?-_:MWKXNOY6#<"[;R"Y
P_).'Y;L\XZ3 U;TE"X(2!E"/^_+HJ@)'K=0AYVJRLDU0!3VLCR.&#SRNS:([UM^J
P=%4P;E7G%#U5>3)J=L>A*-EF3_>* :)7GI=$__PU_R>:FUWOG(L8V?PB'E13YJ,C
P7.<U459/0M&/!9_;59U].%"9<B&A;Z]<VI<\A;*RD'LV/:@'"HEM3)%#6[MY[@D'
PV93?02UQ.5?3MUE+J;..T+[C8&0KRI&# K3,$S-HKZ20MF</8!&)0?!?K;]<MNG!
P3*- 9I\IP&>-.D$9_HI@&SI.5133(Y)9\6W3NSB$5#!3SNA"A&UO,,LH:2_P%'NN
PP^"M,"J]DL\53,NNR!!0&]&S)Z/ 8I ##QDTV,*PP_;//^0]AU3:5L1Y(!&;$\G)
P.K-Z'D\N.%.O5.XC3.VBJZ=DOF7P5HK1@YX9+TD_:J&A :A'73"6_HEN437$<CA"
P7D5Q=],WPIZU>G<6CJ0PXV+N*FKD;C5B;?(?AF[VA<FKB]7KU-=N[H2^MT;F_O+'
P-+L1UIO20ZNU,V!L2(8?,@*7G?$VE:Z/C\G^7JL&)I4.X[*'=-:,S??2_32CS_N%
P-@4&99)0BERX$\2%O\7E)UE;6^5]N/Z[",\C8=.YM>I3K=-YSN-K6!Q3WBGE2U+C
P5DRY-Y26H20ZTX$I8D%#MG\O[H]7W5P)&HX7&BKJQI(J;;16Q'/?*L8#IB9<S>\(
P<C"*Q/2]!F-K#07ZEAF>>E^$!C7UO5RE#X2,E75HR%$<3*,#:WC.^K?*(V2=S)T,
P/*>RVBS3C"[3MVG[B*:U]]4[@!2M)F,$O;9W)P!))W\<:UEN#*&I)198H^T,FB.M
PJP%7>Z]68S<FM/QJ&3 =E3)-A6Z7+V%<II3B[YE*&(2;@NF+',V4?4EP&14@BW$2
P2FH+=Y=&VUK@4IPR6.H.W^9Z'JTS5F0(UPTGJCOO91U, -#<>?<'J:0!$2X6LA?9
PQ<P# 4N/S686LHMTU>"#IR_<W:-1/%@$-*%:;:&;DG">AF:8:3%4T$G)<155,0V[
P0='(X[T.?J2L.?-/XWE:D:LOJ=D*'OTHCMJ)AZ6_C <%6!\CBC'T\X#]GL( IQT-
P'],NO%.U>ATQS:Z<T65&R>% .D&I4MPN5\3)3QG4?3+AK"?R<GU'9T-[E*,?EH(=
P 'F,V^=UY0S3RX$JPQ<&IHK/M4V:5^]KW5:A'ZZ<BKFN'Y4V,+NPA6JNM+_[T0"+
PR,9";_@Z/F1)(QX:Q[]3U7[;92FTH&ND)(H)B41D6:NC6_ZUC=6%<HDAS?>(>NK7
PCN:SS]8O0?F%GN"L*))@<FGGX&7.$=>L9'L@32?%53L!13=A<QXM"*18RL*CY@9J
P@%8X:R-;[;TY0X]L(F"L;-MQ+),:>H%N>O6E5%(%V=]0RDVJY,@EA,A"[.!\0:H1
P5E-#B%Z;14]852/5JC>1!)=Z63;=\\>$$R@GJMW]TD1X_+KLZ,6_POX1QO5^1=>5
P.GRZ<7I)OD4#MH6+2P*>O1;.R=]?ZW>,9 0WT7>T<JQ.#M&C%! E,0T36JK,?I@"
PS*K>)L%GQO5I;B =]B*,*-1"U;5Q+:#A\,GIRYKQO^H6FNI-P85")M?-\=F(K6@.
P(&4H7&5%YR1GL9:R#K@]$735-_97<WD8;JA2[7*)%RND6CVGTN 4&? 956L<8$=D
P5!UJ?: 2SYBC;="C&H>\4UONP0\XRA'5(*ORGJG%K<N4:/H+LT^_1,,%ZKOOFJ\ 
PKXD^.BYL4YA-F[C FS,/@D#HD#WO-1PLLV/%J@PB!*WN:_PK4P<>HHPX($%?U<72
P#OZ#)C7,TBSI1"FK:3;%,(&D742F1L^)Y70/40'YO85V!4GV=P.4W^8OSX6Y/*>K
PD<D(66TU]=5RU]/(FPPPUBE/S D!\U))NPP BY9J,8[^F\@\IX_*N")6%Z2=IB(=
P:$[PCG3N1:\K*6PCHBU_3FD>(/K($_"W%5UZ00 ZP"4!J&7>8 S/S0T&#^O^CY("
P]U[L8L*@]OB5-\[WRO)4J+R%7^(#\VHB/?&,S(@>+2,=UD\D1E#1_GRF"6ORNHW*
PW%C?RH%FBOIA6UP:8[=,02OJW7DSL3W?-.F5(6V>(O> C!8!@]V[3PYW!2/?I!$0
P+QQ<TEXJ3)L)M,K" \<NZ@>2?XP@PB:XXZZ5KUV!,BZ-UB6NJ2-9$+3-6+N/1[46
PRW,.**[K550WC[K)5KYCUYDZL^7<IR5O#]$Y/]+S9HDDWO?,)HL9V]13<7!@POFL
PN[!F<60#LMT$#&"4QJ"[F!#CW023@^O7R9%T"[)1:>Q],F@"M&Q;Q'_D4,/HHM2&
PM;,NT<"T>!*%6L]G^-;"--N#<!9^X>GV#:,L<8R!M&E5-\;SC*"1K#I-R>.WJPN-
PT[@:J=3$/N?M<<OKSX]3'&7+D20$)2+^_&[256\3*J^=RD]9336K](.#S9"$4TDK
P8-Z;1&8;<J7,/"!&GX0XCE->AT;N !!.";_G D7;KJ%I.]SBM9O^*YD^1407&T]Q
P"X)(O?9LDM.*HD+?U_.V\>\I""F+&E_NB%YL[^5+D[6%I"[D5[[N;?5&L\++J)J*
P8D787M9B%EL"OC?OH7F7R O7]43S<VI$AG,>]*]9AL]!\<M">7]9)ZF\9HS*#">E
PLBZ>(GEV2:?8#CJ>D3"X7X"\X @\/1#G+;89=*BS/;ODZ];I"V&- %%*A% ZY8_(
P<=SHQ5/R"QDF@DQ)E8:'C+[3S=#CH&J\R9+*W207>M^A5+M=@[. N;K2]F29 8OZ
PGTJED>1C:?@"()$1"P41) 1I;S;9Q'8(_C.\9/'C>:J;#Y+_=L(\-%K7'L#1=^2 
P)ARM7,95=CT_?!5@HSP;>WTV2[9 P^&2D(ORLR47^\Y'_(3 /#  >.%/EDV['V4N
PUWRV8'J]T<Z]&4ELAW"EN&-110J8##5>1KWCV^+RQFTRB#@&J_Y7 Y/JVL50W(\2
P*86K(&K.?/T?6WQQL<9(Q,*T"N58:G<X 2(U8&N6+Y:B'A#D)VJHF*2CJ^7:Q#+"
P:__M+H$C]@(R(A)7>)8Q5=)#J2GYX'ASKI>G*/#3T)D%I=>NYF)R&9 !93>%$4RM
PU3*^L&+SZU%6?X^J" Q_92.-;J"K WNV#VR$<$FM:4L>K&R]=&(03*6.38I6D:4J
PS5P%1*/\ID!I5@5^\3M%)U*65MV7HD;*8S1M\6$5\S'%;79,+)2-P[(_^XY(H7D 
P8T1B8"E]$8$4@?\1UU%\AU@4TY9W<6V^1(#0MH/?-+A[77@ '65FQP^[(0FCM#,P
PY8[X$"38$73] 8-)4^.[):":D"-SX:#KL)%!#49XP><ZZE8C4/<'<V8-1P66[X.K
POUF1Z<G/1SBLS+^>\6$/R?(I_=BPU@U=]27R^4.Y:C6>B&ZU%67*Y@>H;!9;H_DJ
P$4[A*DMT,OD*'A\HR,2=?&R3KFROGY+0H-]M;2=%,R#%TDWLE8? MI93*6E'*AQ;
P!-72MD,3EC]WB$3S SOD6>+(K39;Q-%\]S,B0X@\"JMD*:\<D#065!\##0\#.M+,
PZNOK9H@2.=7R3RLP9NA7-BK!3.<6N0?'[P][!',V 8F+DL".YY(3PXC@R&QLUS"H
P \D[3XW_<'9+/X!F0JKQ#%-A,#\QG62#(CT=DJ4W (^2"/?_J0"TEALEOSP6\;MO
PT$T?)VK)\WSJ;)2/O6ZDO=QA54 7XJ_TT2O'']GD_!:1*?['U\LJ$N7*5?BO&:3F
P+*=B/2!/231-1V)<E$4FC5/S4=[60!A%&<B,MIH9_:6PCKC4PJ1!-(<_0T7\TSVW
PBSBM\B-O;-H(*^2]1ILQCD*<]0T].2J1.H\?ZV]]1)RFA[5B;>VR-='G- )SLV:?
P.,2-3IG[EJ1@K&BW1?O*%-I6MHTE6-$KMD;.5A65%J0;"M2+JN3#8E:4+H^>'4LB
P4XR=^[J!.$ZGI'D>T*7'NPX>5E<%E0.K!0D9_1QU":_.UT;\)6["FTGDM=R0O1OM
PD%#ABPB_$V#FH"<6L*G14&D:?M#3[UU5;V+O-Q?(X6K72TP@#P\QG#C6(J^BQ^*7
P\#_]GN^31&//4E_!C 9B><A(%V5E&I LE T(B2,*,0I3HX@2/60@_3.S/8(PR(,]
PHO@SY&D!Q[:^(66K.=I>/1_MA65FI/]D680%94J6Z5DIR@:'>7*ZL9<JK>J6 =/M
PQF]7TIJ(.Q5.>WY+X-!)^*7O,%=A%GFX4@!%P0'+ (.CYJ[BM1ZQO;NRI=_<,TP_
PE\\E2MP>6\,N;'9Y>Y1699%DFRDQREU3#A (+I$PUA*SV\_MMZ2 BOAPP9A=A!J=
PD;AZV55'.ULHUFSDZ!I-$76!$$=/"E%SF\# 9D6(A'U>.IB]/IV0MHY?$X>00@41
P8VP#XKWB9A 4[V&(3%=,MQ,=E]7L.L\W9]J=DA"3_51\H+^[YP0>Z-7KP676IQPO
P/"#?G'+Q:3+N!:9"J!(QU^\G6T5R<FJ_>\Q/*%VU>K=UMP>2\(SKOM3/KB9$I:G,
P,H!AV-:4A^K<MRQ!B4<"7C]<"LI:ILXP]R/F;X<!KH-BEL)"26Q%^=U\WE75VLKG
P=K"R$&+@P\,GB$MVV23T*^V-"-XV B%4V4K6#[7(--*B.NK CY0YA;E'4DEQ \9Z
P;P$HE';?$-T:IH(#> J5!__&8C5\.6+J_3=^R)\8GB4()&M2S6&&V<0]W<:!UYQQ
P;I3N<0YR3=YK/"F(,@N2[M,P-#KL3"NN*CR$R;X_,0P<F04!,O+Z]22CH=.=0]-9
PJGCO:60UB1]9B%O(J*=BT:EJY/WTQ8LR<\@[GG1N"XN6J)\ 5J>FC(E+3/6=+OQI
P(C2+*1/2$<J;RAL'@M[VHLLXIC(L/5$I0%^AMQ5")2B&;JS_P+BXD]BVD,;_#G8 
P[BAI-,4OSP*)TT8F6!E2M+>RKP7/HC+"3NV)Q&M$J-'R@C@;1]T9^+Z(W?B''A[:
P)!:*I=NN%V1ZZ=!/#QF<S=DN@BP<K,^<L*S1([IE/_P$J%J.[H$%!B6Q9@!GDSWD
PPW7<FA*]K_OY>Z]P59ZCC6 K_35^PXJ&0_0&O\ )55L=TQ^C^-,@>H',7;J?Q&P?
P%V[$.X!M!9J"_7(-OY;M).MV^-$)QA)W1<>Q.W6P=YB+TSG&/W9C=^7"03:_$1@/
P,I9F K)..8L3F:_E<4R?\E5VMB @NME.:M5-**OS/4;KX)V[42@E=X?"0SQS+15>
P5)!I1NB8 MQ"(Y([S!( 54G]X,B)E52H,$1#Z@V5M +QQVH[R*ODR-8TKYMED)Y8
P&6(F.W7HM8*6<L/M*%6O@<CWIX3(>SW*;;:OU: "T"V#'L3^8S$'9"R?8*3$QEF2
PK40_5U;X,$V& G@A,J7ODJ8T(8%D5(>*PFP% 8>O>U@>+G5]2E+G]H;6LMNAX;KH
PA*!%O!C>5%9FQ59=+%)]<E -/,J2=K%\DV"(!NN&I(.JX./M.SZRA=A Y5R,V4@G
PG!^UA#3TSW R<Q-#[8#7>37>0(Z)DAV.K8S$?\^*]*Z9BR[(*(<7)(SR!%!"O$VU
PH-F3_'9:L]N)Z%JO ,0$8BLT$-XUW1LQB,F"45O<EGMX7P_(1/+>,$]'G*5.9TO-
P8]0X@NIB"@ -)3,@/"Z!7FM- (C\UG)ZEAY_/E08 ;3QM,(,GHW<P<5&-"YBBB4/
P$_5Z0PFG<=#6SO\(IWO0)N0-*W3Z7*+BUZ#.(\:'@?4&\GKT$@7@M?L4ANOGQN,%
PI@!;IJ49"A_ODPK'0'K![XGD6W+N6^#S2WOT#(MQG($[&X7R(2C 'B7$66E_J-'P
PW:9*FAO0@NX&R'*([+M&3.W69I$V<L!WQEJ?L7B9Q--E,# S4*0VPL<I9HQ>+,EC
PD8XN2<-X9VCT\[9.4)V\+U_CKG ^*Y4-+]>3;HHO&= V]D*FJ4!/7#%#?=AJXK#\
P:6O.N/W=H]BMVY#V#^;2UQW%CCPV$?2QO=@UV0\Y*-<+(^O\;?!-%14E$&%H!+MQ
PK-58<:K!1UC&X+>+>!#"J(PT1E8OK>B9:]5]=CJ,R8Q\?^/)I?!7J$/H#"BCD^M+
P0Q(*P3/A$E A@N:C0 J&956 0K(F6>R\B+#!UHC!P_'@F7FN$5/&2>FMY!$<] M]
PF%M\H23P*D,(OIO@K$& @Q\?Y5H0GMXCV.A+6.0: =Q^2?'2$[-'V F<2<^3W8O,
P^P?8DE[#%?IR5=Z^%E][,0W?@P8+7M7?>F>!1P,0![+]?&MFHI*H>4,;TQ2V..DM
PL_ M/V7QN#;L<KT_ZSA86[A6"YF_!;(WMRD<U$_AW$]1-:F&Y-,H@NMT)?IG\GYO
PTPL^"[QW0?TYQ+\AU7Q6UNC6X.EY'9V"C+7BOOU18>U@KIF-]Z]J?U65O79M1@72
P=-U\Q"PHA/%)/3+ I7' 8DN.3_20QR:E6O2W(0.LE3S4?@JJIH1.1=P&Q#4%:Q-5
P&@JIX,4V#KN4&2M]N5<]CD(PW,J6%4IDXZ*50^=S^""N!(@S;(GNS?DHZ;OD'CM"
P#)(RJM@O6P7N;%W?ZW_Z $W11(HS!KPENCJHI>4.9RT .P?B)R>@X58>/O7-=JJ%
PEF0__5.] <R&0Q@I\ZD3^R>@=J.0O7*<,52.7TU(C]ISGW8\'YK&>;VVL?\I%!7-
P5T#@5S7'5BA\P&/ :L'ZEF#4Z/6"&V8K@@S" "F(#\;%Q4+.V;&"WLCR"3L9M%8$
PAKUVE+BKM9DUW]=1Z@3G5(Q[N(.%O2]=_(M;^25Q!:S\Y)W-LW$1*#5#L_Q/J<K!
P5=8]<QTG6-[C=^>-T$8!0(DVE@%FYMM<)XU'4HE"^<,N7HPZXH'JSYMZ@_*YJ)R'
PO@78M-'WD:_.:X[@BESNN>D^D%-<^SZ)D:>B65JR^V;4IU,#@*V!UGSUJ(KG 3LG
PI-OL<^ECBV^M7/.X":B>V,61RXL+"[J5IY(:,]M>SXC_%J,ALQ0=%F<%I80Z?P+)
P2X"6TE\9UMDPYQ[IC^LWU8UOO?Q[V$"!%;%]E>GMHT)!XFPI="DXJ*-A7Y8H;J,C
PWSQSV;@X.0ZI.GOS;7T';>W8TT,.89T:_[<],*LV*]&:^"AJ2K*.>_I]%HH/5;O6
P&&+7)5KK=*H(GSL-%\(TF=0E@%EFKR8.6F]>]7:^G*Z#;89AJE;:1X&&,A1R/+ E
P&[8<FDM7]'IW1;4'\Q[$ 9#T>W?NY+2;<\4*TD5)A_66GS=W4>'CRSD5.CPBU,($
P/K6)OE_UP&4'GH]"J8Z,0+;8451\1&;-\QGGSS^.C8/R2IK'9?<>H/N,5H0+0^*=
P>BJ[1R="9Y9OOF'- 6?&U=_*V6%X7:&02"8A*)^6=$9,VX6"B*'_=2)JGA9J+F>@
P"S,\\L:,P HZGE"C<5*WFS5S7G'KYI_;EI<S1+UI1E@B^FK7.S2T#8(O/,SOT0RH
P&'G#S/!!__8<^"//H]2]]7Q8-4(S"(7=>M],?:=D>1Y$,GC/=H!VG[,SRCBN-6</
P:] EQMNI-('IJ>(8J#(4?@+;W:?8Q;/6(O-O@(GU .,)5:W@;WF*Y2<ES0HY]R_B
P6&]<NL'>C!/J@>Q7!H,V*@9A4'S6@:12?</,E2UZ<ZS"<H[<<Z):$J*J5A7:0:0<
P0PMG5-(=YH7E%)B[3-XGCPC)3"Y?_E?9Z;65/HS0_+$YS]MNAGL/)7T?;ZJM(5V\
P=2HUQ%J?%3W&3KKX-:%>!'?5@@ZG^7%2;<2_)_J^),9'BU29 66:F0J^.Y,ABLIH
P0B]T>77D\O+#S5ZM<]'EJ;JZ0A\8&X3 BFI$V*MW-A"8C/$TN)3 :*<U2FD5M;)S
P-2@$I$3DE2 A1$;973[<V&'K\^/6XW\S,LADK#NT5C(^ORP':_7.$&\CR)14,;N]
P;Y9PX=ZEMT0^1%,NB66;XP,IX;$"M,R#D_ $YCIX]@8(I8)2.BBKORY'#3W0*4G0
PEE \RZLSW]>.J<Z%I?FO'\YUY.)^@K<L#I\66J<]$N0A8#,.UPZ;JM+B/G1$W*:K
P@:1A<3_79A&-B/XW2GZ[&@QT( (4P =?^G#@SGZ5T,6?>*1+2G[4C<>!T-?Y*Q!0
P;#-]"*<1U;3B6N6!.0<MDO183K:E'R*$".P(L,2$9'H(%#RRT?KV@(@!6PS0!D0V
P.9!7\0\;:.[5(2,E+@</:CZ6OVMD865)EI""2+7PI5 S$4/-//(!7=Y1@ A^%)-5
P6HH+D45"5$7<1,'B,074O7/?S]Y0(\W?NT?">;:R(#[&QUL(6VSE2*HQAT6%S@Y-
P%U'Z5F%Z+.TYDT'6O>DWS)F58^/%>H@^L=//>23XQ=]Z/*7,2U7A@NM^L_+0J02^
P9E.O3"4,<J%F>S>X!,/L76V("JF\#JD'["#)\NN%I_,^'Z P^%9EBTF7 X;)%$WS
PSZ["A3+BXX#=S'*082Q#_%[JR.B5J^_A]^6D^CS-BS$=IV&:ATM"U#IELK+:>MY_
P;-(1H^W8Y.,>,88R#V:!'!_LGGD$*V=-\6SHN?2Q7G4!6+-5X*G5TI$33\0.,&==
P9@2-&4.:%1JZ,;6@A+"H7CIQ0R =PE92EAKU%Y/U>S@(U3"G;*L-OVEKKY%XC>(K
PE*WY*M5)>>-VP\P)%Q5C9 /N>QALFC"?5L^Z K=*[_&"J-A0/M(&Q@;2_"-P4GI-
PHT$K%R_&SU+N,6823\=,V^S=H4DGL*H.<WP5!6#B@RA8Y]PQ]B*MQ#J723JL2[DM
P(:R"G]F5T^0 YG8ZDZ>);QFDGM*.D5'MU@49ANLIO$F>E]\SF>79HI+BM-+3PZ&4
PY)4B!9-U73[\46E1R W,:O&[[_)6PS*]'[H:*XMR"1[;JF8%GEJ"I7F87X_2ZSZ6
PB9#=J)[H*V) 50>690"=':(A[[(2;) ^HO)3-"V$H=14/@+]W>P1G"-/\(K,BZ1[
PMW0*"<S^](AUQ?H0JMS +#9Y:N)O %;R1(Y+1*N#E5T>T7FQAM^>UN6?O:DM(6YX
P7K2>W[E6]?US &<'_G3"4,8'74" "Z0=Q#@_GS:4AO;6.H)._#L+B14%781Z4  -
P %]L[:B>SZ8F%98;FR,)I&(]@US#X'V);];\^O%2H0GC7^8@V=C_] 0.!)4!E-8,
PROIU]V_^O60/<*1B)LR9LT4<@UGASF96CT-+!1_TW.S\_G;K@/1!M:13TFZ([B_K
PYFOB)H? #DFJIZ3[6TIIWY#D<);?4*-9Y;9'MYB&Y!-(74TZ2..)QY%6+73*0^[\
P45+Z&\&T%?8I_*VG<.C+EZ_"M^8Z"UKM"^'"QHY"CTVSQU$S29>J?7N_]C=ZE&QM
P5.M.%L"_"/,?"JP-,^G=V&D[*80#^W@4J=W::3P5_R);X!W//94?OE80394UZ;0/
PD!$D:SF9ARS03(1<@-N@-<!8F8# [R8-!;_"L;!*Z+?SBH==O;-B^:L"8^"=2Q]8
P&\S*D5C40?OATRO>,YH\UG3# 'X80)Z6M@ .10,24_K0(9+W(.[!(BR8:?EOAMB$
P<%3X#^\2<F'?C2]8PG(7+46TI",L;R"\C;<X!W)@2L,R<WM3:A< WG4:]:^';KHV
P2(!:(!FDKDI<=W8]+O$XQP>0^4P$JT!U2,_4]A_?&EC)X^W3R!+/S)#RA18I:0<1
PW#<9WZR_=HZZ**A0;&F(1<2-DL\0J6DJOI3 BLYKJ\4M^CEKTG[2#.2V6JXSOKBY
PI';/\]$?\5YZ1/OIRG9?UPL# 5W5UNH$NCW<714OBPRBANVO%21H&B?^\U>W@(37
PC2SKU S78P*_Y8>"S#SS.+.I()2<898Z)V2V;_=UG!);;<PH!4@M4FIRG,MMO:!)
PCSI9Y@KQI\43-.H',G0ZXX\T& 9E;2L?$DJ=92KLGZ1S,U]VV.%RM.D4N0U"8@9E
PV.?7IK*>REQTFA*@Y97P3P!EY3[6@B@G,R=>BH;$KHI4,VO;H2I\U#"LL=^3!QQP
P##)>,GE\Q=B/>I7H-?WM]2>@B*F-$VD;'E+S'*UL+B1-<GW'(^?]Z#H/6HDL0I8W
P<FL1EA0=Z5C&F9.Z_\#\4*BM"M. -Q5]Y%?-6Y9GGQ!;$Y[9[,D$')@[=+Z$?5T(
PUMHJ!Z#.P;;I+9)I[BX12Z?1;A1*A.D?W6]&:_16?&;YD%U.\\):8F3=N_DLZ=$$
PQ]L F,2,5B<4E!C8N4GSJ(^<TWA5%)&>\/D!K;!B3MQ@#JRGP#%FQ#,;-?\_GEQ%
P&/AL_,"@>(RQ)PGKY< '=-=G>ZAS!%T/^>/W][1T/8)>/)0"Z';=F[?.9R\F]&N_
PBF4T2[_$J()%(MI;P 3=CI]J![855_R0;&\J)XTK=HGK!L&%LF>C)%2"E&R6C>!1
P;S$%YP>5F%\X51GIR5(_&0:$.V)*%!W1+9GXK$#S0JZ2DRA$*VDH>Z4;<2F(%,E2
P-NK@76)F%B^>6R1+U#P]K\4N+L%FQH'\,5>6?AR &YX.*1 ?NM&\, 4%K>>Q3L* 
PN2@)<PT5,U#5FGZ9=#[FN -%U\KK25+M:_M !EMQXJ<X(&"A&1]A_8O%^9Q0@1T>
P!VLGO97#=1:;&5RQT_RI:SB"NLAIV[=NVAOXSSD7J[Y8CL8MA1.BL#*N@2F2DOKL
P?REU6!.]DM"A6L+HR"XVDHE<^08<+(V$9020,XJT%XJA*HUMMHL !K8#R,,W*8%'
PGH>=Y]D+I74IWX;5P;;I(%*\[SBO+9=B>#4STY&LV-9JJ6_^3"9P\*X 'ZH2U,35
P.[1CW"4-G3&V_RO5LZKE1O*@8FN!S"^[WC<9RP)V2>OEP>^ 0;-2S5J6P4+Q4.LX
PM&X?&1*,6M5$.W3MO=:=O,J)!H:B'28+S-4LF(!E8J\GCU6"(#W_1BM+/:B+@6&-
PD2!Z6T\._TR@4=WPBE8_Z33<-@4[^%V\4:)]YEM)?TPE2"YU'5'1; @Q&!I0*>H?
P3&S(C90$6Z[Q(R#7O&/B!]<N*Y:>M6<U*:I;-SM*2X$+,-@!@^3!O-Y\>J#55T,@
P!L!CL[<4D^"QZ$9$@D?PY3:_S^!)B>36OE)Y+^JH'-%>DSA$95!Y4:J)7^/08/A=
PC1J\M@C.GGRN]D#5Z+DFU7O"^MT<Z]3BE.R$J+44MRK2E\<PVU:@L%,T0NTW/[%/
P8^K!33(Y/0>HEWM'JX/;HH#3<,I:'@>]I_DR)!^344X">4D\PSWW.ES$98#8?XQ/
PTGE5AP)%'SH$ 0Z'W,1]!7O!JNB>M_J"E&'UPU\:R:@,R%<#-Q"70TUL.V$ PVJE
P$VG %],,D2%ATVNY;6IGI7@!/G-.S%.$BD8'*\0#H<I2D6=S)=41IPXP)*B\<P5>
PG?'JBA=(9"3EU_C=_,MQW52&$^PS7:Z/CWN6M?C?M/6OR^ 31A5I\)+D@E1<?[FD
P4*6T(M&$ -1= <:I;.P_TE'JG'I2[A*EE?GE1?(\;[79)L<@.IHN2_YT&5M7=!Y'
PJ^EQ?,/Z)I=8S.Y(*G/=M*/<&'UVL %O2,*?Z:7V8$TJQ3=+Y?UJ6GO60.T2(Z[.
PAANLM>S[>ZGB-C^85<9R6&B%WDQ&[KT>?Z9KXV62S,,,760!U=1--%S3=D]K.=VV
P$[%>Y _2W'9+IZUD!6%;)DL_)<O6H+K&-Z1(KZA@=S3-/5U(<)+_\TL==OTE"9K[
P/!>7/VF3_N+,Q$R_27'E F/%4[+SO@/O&08P=*AEN,(,)4)<?^)!T6[\2*5!Q:"]
P559-T)LO@4?.70*/H\[X/-RD ZAU/\;Y0M11LOL?'8V)9NH(%66BT-+EBJ20ET#7
P+P0=B^%K1JE_J4;B4#'%%1#A@#R /S^UH02%ZH@@J>CW0H+>W<_@+(PN\<ER.1#$
PM&'WM%[A6$A^\?AA&]I.K*-H^24.?"82%/R2\.GJ9%1:-EGJFW#BKI*^ZGI9ONQ-
P6W!B<<E21X8)+:7W6:$C4\Q9H-5P\"PZ[EBS6QM,UG!SJMJ344013MJ;U_T<9N&O
P64Q5PH\D.*T&#;E,^3AL!459IGL45[''AT\I1! ;B7_N55+BF2FB82-L!MGC44'Z
PU-B'M93PAF[?8DC&,#5,G;CH70L"B: -:KGD5?D2NZ_L+(W-4@YPT@!CI8)ISSM-
POLYD=NL%]H23&A4B41CD%SRUDG2N@;I*Z131&%)RN2I::^%GA<HNH?G'=?P,T-A$
PEE "^>\!T\7]JG%"H_\VHOYQL&UY6[.25@V#%M\4?.#5)8YY X3F.!:9:'2M0X@@
P=:N'CAJB3G(I-'V*,Y5TPJS.G/</)DD'V:1=\R1] ^*?I</#IPUH41Z#ILLW$C<@
PYE-,Q,  _-"%T.FW@0Y!D2K$DS>GQE[0"$"67PLQ,5 K8VD8>Q?6S%YZ.?Z?&<CV
PB=VC,_!<".Z0S-+"512?. 4M@_>C7WDM$09>4S@_2_/E8>>G;L0A=$]1I%$ IPQ&
PFO++M]9@DH22;P3"N#9O%R>[E#SSUO+2_>_+/NP:->T\3OWX15+(0=V*[.R@>5 [
P6FV9SIS%@=5LL83O*X>E[O$T-68EZTW2$$-]+H/$>N2ZM RL"I7)/4+<\^)D *10
PPK"^8X3 N!MK#A4/2<9G=+,F.1J<<'55LC+/.7!>?U,*S?3R.B>]G_O&,<ZRF.2M
PM,<@%=:TBNA*9S%-\1[..[B)PJ2>A*-Q,4:4<8:@BY5N !G;YEL 2IZ:]))V]BD/
PAYJ0[YKM*Z;<C0Z>$=FGIGKI2SZ]L4&RZEQ,3<]S'3-%"[LXL[,?2Y\>4;(B/E +
PCD-/^ON$<+X:@43%?BSD6S$]T!C3><&0QK.WS2EHWB@M==N_8!TLM*$8Q%JWP+$Y
PIX)<[(=B' ;$F%BA' ]O%?Z:7HZ+>V$UA?0"X"+)/I)"V'8/-GT$=!CJ6U+'ZG]+
PXXHG@DDB8CQ.8+(66R5Q?+]ENE6LT</CX0F3)QI%: 7O]$/6F-%>!;!E?GBCMQ4V
P 6NNZ>OW%,>Q6M,#@*5Z2("?771XVFMSX3[J6CIEJ7,@BMD/NLZ1&@T*7>C:J4X+
PAU!# X8'[DYBM:EP/%>**K#%'@6\TJ#7/EM3M(<-I7D[1?%B@ *3@/(8F.%"=%IS
P\<;5H5'RIE-*=PC]$?^$CHU9]LZX6%(A:O/>8K&PZT*\:R5<<"FW^AL3BL?0[I2=
P4 'Y_O_A=')WZD42620_!YHZ,-"E9IDIF(_7+</+J[82T^.N#A[E@\X'*3- 7PD.
P@8@HQ@'RDK$Y&C<"6::RHO5*5VI7Y.Q2W;!H^[ZC8OB0:Y#YJ>;$UK?$L;[Q19D:
P#F0_SI"3?:5"BY.U-[+TMJ8?A9/0&1N7LH3,[")NC+/;L(2PW=4\7SY4A3AEZ18:
PE)IKN>&3+R@?Q-:0"_H$895&_C^U3Y0;(E9CG*:7U[/5H_QUV;G5J#L]GFRT2TZI
PY/+)TC('<MA.BHCN:RD'Y[S]_Q2P*AA7"X<N/XB/N'<W)<NSA(Z!P3W9<(<2&Z'/
PU*5%-<'W^=K!+!3,8G.B$KW^8E%L^+G:I.TL#3+AF4':01:R*>KD*>9T)=R18-SB
P,MQ1I5C>/N;4-A22*[GY0@KRZ%ST3)P?$?)J5LC=F2;9D7C<:G:L7)\<K<Y!@RUF
P#@VXF]1=NX18#<1>L@W;:+/R0&LWH*J&81W7 Q:M362*O[TA>KZ@)6\^03[J"GYV
PQ/2/RK,;J;G2MB)G!A*DI<IKEUS6?#<8XOVU5.)N'YII&;%FLP+*CF:-BX7L!G.N
P2Q$/\$Q@62R45CE'\)\)0<KLKCK!A@.OO4N=5-V1F6*4G>$(%'B8]N*M&2(XBU]8
P)BK@.:(%N*L\W!G:S@. VCRUN40@ !HM#<@Y.\OF]FEC(1?N:$2+W*P5[>15B3+6
P7:&[S2BX&G2P;68)P;'.N-C?@YNA&L1[(&R#1A$A;;+!YU^8JJL=JE*.91XQGBUI
P%(;YS.E_Y@UF +0KU*PNE+V^)T!AV=672-V-%+%OA<NO?57/* 4I-#GG\!1<?V:%
PA+=T&*W9T G/XF<)R]=\?_(&0A0,@CX6)AL#&R5/I=GN$> I/=MP@]Y5Y[2 45[-
PV?1;3]&0%R?]X)AQQIF36/%FN!PG/G?])K9I4LN:X!R, O(1^1?];)8CICJ@-LUX
P_)@?LQ[A"NGKYSI[8MH:72E@]_ GL3)LOJ16D^3M3":9IXD@S[<,)LKL&A+<=IWH
P]4"&K%49$R"_-'1.(2>F2*R[*@,J@\..*G#2LT&'X))CQ5XZXV=+;"DHTK#(P,65
P2 $SEGT(ZLI@BEWL#_PN];F&_E+],GVWX]L4IDUB?Y1]9U!DUMS"1L/!1!6<$5XO
P&$C!4.@\=+W'QA?:RR3"M4 -S85@M^20W)-4$L)'.\ / UT'9]/(3A8CBK^;UUG_
PWLH\KUA.IL<F?(SBT0K2QULQ#!_\O1:C\]N@GDR^>965W&[YHR>Z\6LBV(=JJ)V5
PGR.\LCGB69>H.G!00F 3#VG(^+)?/ FG9<;!1EH8:&_-3>7U&39V.]YMG3OKSDW8
P;(B=O4JV!^$-Z+*/6G!*J69CJ))J\2U=4SG2S)U9.L+:X_$J02%L CA)E@/ /(GZ
PY$. &5G+[1IT\"FV.21YU74 7AJ<R(B(<EF./YH!/+ L0P)4Y:R"E=ZK>XR1E:5E
PZP(K/N(2Q^3&3BC<VYL5G[2#1/IB\I>GM0LF+\P]!R@L/"D)O)>M?1>>HY.4W &R
PH"O1\DMW489K],C L%M,Q_Q08IBULH(<I+OAA#E!D+_![OE?]6>?O$'FKDTT[SG]
PE-)\M\ A;)G7<WX</M5(><LXD5N$[OU&M< V.";,.-V%U2:OW74P0>&.BLJC\+=#
PRA\7>8NY,Q[R/]Q'.=7$3$Q1!;VZ](G9B7A!/VEO\TF#A-9>O,Y_:SCP)1=>OQEP
PW(WH8ZEQ713MRAOG;^Q',-:7=.O/"K@OY<=C79<4WU^Z67,T5#_9B_!!RCB2H?U+
PBBD(?HP>^TDWOVO^=R2F@;A,'>M0@+#X8HIC&B(_\AT(3X/K+>,<$V].^>O!O$<?
PMTPZJ.S,0Z<H^8<6)XL$BY252&G;:M_(3,*:-_0GT7()-\EWVFY\GOS>V]8[C@%"
PV][H*CKNEG;YN=VDY=0BX_$"+ V4FX3JZM_[*5LN[Z,6;0S)L1GQ)H _&*HR8RO'
P]>S8W#]ZF;^#]6!G'%_$%-&N7#T!*5]T]^,3AWGQ 0L]M510&&(M&]'_]O]@X/>]
P6VV7^VD54.)2L2L[Q;MX%)SEK?\TX&:>W?_%*#5\""$&*376_P7FW^WY5S&("*F4
PY\Q-&/[X->-37;@!XVA8F@&S$S9! *LSMD:#_9\5S$Q<J!/=G\?B]DMYD<YLT[G-
PUFX2A+'L-\(425+%O/ZDN*8Z9)Q(3Z.KHX%'M2BQO;?^2>.,=U\+TG0)RR\9O,#^
PI.7M,.7LS.HZ0EXA(S>^:DS"C2-IW&WL;JVQ6IF7J3E; ^4\WE.:6]B:_EE/5-?<
PI1!Q:K<_3IC][:K<9Q"?U"3_#A4+3/73CO83SH73,;;C6 2\X-V93?A#BCLRHQ@R
P?\* Q#NP,7M89S%.A4)]BLE,90CN]@0S9[-*;VYQR*CS#4]#5/-@PDR\?.<39R%!
PF^Z>16W4;<L91BYIU"15,9 VW:N(-QT5$J!9U/B )3IM2TM\DT1S^G;8:?H?Y+K6
P*,4\;.\!+JLI>*MW^&4]HI=C?<%HITLH*KY5# L]R2<W%OD8^7^Y8 W]A5#&C1.6
P-YY,J6R10Y/H]ZW<TH X@1E)QL2)7C2#)X[;WN+,.\:ZZ+V.&7TNK>/=D40V7FP9
P,2TI#$;W"$D.^"OBRA=,??TEU%I<ELKK,GA7=K82I.X>3PD,-;SVC?'2VY6BM@/'
P9BDJXDDY?0X4&/= R9]EIQ]$!%\MJ$)<4Z5F] PFJS,J3KE%CNPMOW:DL5XG6!Y&
P'<)@/1A=1$Q-TRBYQ4[7'5)_)Q**5Q'(G$&/P.?^09R%PR$LB \36(/XLFSH;5==
PJ5R'I--LE"4(0(0G!#!&32-2;0QS@EO)@*<B?"U'XLX?6'+I@_QYADS:ZQ'_"[W2
P4^J_$(@Q.EB--$T.[=669[4IC)R9K$&QTS2?S@<*_9%SALDN:T$S .]%E6DY."M4
P. ".=F2 S_M-IDK$J/7.M"Q4V-1]]VLT*GV)<AXHBG -03R T3AC^ZZ.W8Y46FR[
PO<3I:,56+B[[,FAT-5);(TEOCDC*K(^K/%T#O<-5K::$8DA]JL8X\W4:@0[.A2*\
PZ\C[K'293(2\3!T!LR,)_ET4BBEWMNU[][3#.6>GC[=KP(FNI^P71VR<"R,Y2G9*
PO*:(Q^.7G^QDAGS5*Q=X8ZSZAY0&+_>9D1@5].=:L@"GS$V?.\LC$?GG@FE?&0_^
P)->Q:3WV)J-V,RS^T);F!66?J PP7E:X3U9@!:$Q<?7= FCU$,YK#5[Y>3"H99;8
P_6-FPIR*3-? _Z]FZ366&!>3(FW1,"U[-D04#II8@_!7"P0HW I%4!WU)3"[5Z^A
PSN6=/7@X)H'_A(Y/;4!9*Q?^UN@6ULN[@6/TF)$#(@?QFEH\^>FMB<BG61P9%*'3
P4(%-[C_C%ULL2SR?>:@@!!R44$/;U)+&$A?ST/T:O:;^C[-8I5K$_,&82/1I"]J/
P<'"L>D3\>&J:R2[Z0O 9ODUA)#MEP#) B)B$8JPDP1A1 /J(H)N@@+-%J]\2#![5
P.&EEZSX\G@Q)*58E#4-U'%Z0(^*Z2,_,DQ8+K7.$\:@DVDG%T8&/H[@9OORIWH^^
PBCLSX^G#Q?I.5J*0(X@AK/1(^>V__C 3%YFS-3SH;[381>/S=Z4Q ^H:'C9U9,D9
P2R_)(Q=ARJVZ,#,_:;ML:W3$LDHW#';"5%>!A9#C=5)D%MQ6C8G:R&H.15HG2T.:
P]3>J:=I(D@&?O6(*W;)(/=\=PU(]*%MO.^R0[[,G&O-%E19: S:_5&1XS+"QP#A@
POC=T_U>,;XL0O(9A2<NJ"0)876;2S7:^_\L Q-G/=$CLC<BNIW3<_:GCS<,4MKPH
P,)T<_*&'(>FM<_-Y&.\#PT_2:KD4(AXWOK*HU]DJO/-1V5=L\+G)WJ0K!$)KMW:@
P6ZMV2< (O:[GGR%->,EMVQ=]!-M3F\C!ZY*T/7^ALFLP;/]5P!PJ:%% 3MXN"5+/
P1T7J8E+O-!UR*7F([QB-]&+[\QMR+PAS G3T%Y%YKU1U\T6)[ZN3OT(/WFUN]-'G
P+!1?1OH3RWSSN&\AQEH1\ZFK!-E?;6?-9Z7(D6O,UFAHGDT <.KF2"SZ[.T2P37%
P<8=OA8DO//H 64#?![N\Z2.17[A]137X=1N)G[[T:=.)W5FB$SJ:42'?!$)\(=P#
P8>]6N<7*G58F525;1L7$75X#%NTER]ZGZ23.&?=5=:KSM=*'@*1S)7">D'B3()"J
PC,7=!B;!6N/R+"8++VKMGO%F';96ESK2T<DB#;O@+>$=KC7>HS(WTV4.\YXH+DDY
PDXU'2@;LV)$M:KZVY6""?S .8S3@CDQJ[#Z[!]!+MURU,K?X.9K> KGTXAI8*46 
PZOM@2A2Z]>D@7?$)WTH7FE)!EBR'GJ0(,_;;3.I[@../1=#\M:F-N%;35,&S-7.7
P'Q_',JV+7W[Z2H5VM"8J7<:!89(07QE\B%'\S .<9+4F*B<F@A#7? -YRAEN!X1-
P;'M/ZQ^7_%1AS0HF<:!?<-<Z #YR@DEPKDG<RRK/$;RU LYBB2:\K(G0!9_WJ=_S
PVDYIB*T&N37DW6.3 %)YNJN5LIFZZ]:-8=\:TQ[1+/EB&V 9W6"4 .\<7.?@R\/>
PK3UGL4\Y;$LS40>P.12T'DLD?CB?W9Q5GYIBIM'O [#W)Y7K =R6<>#DFNY8ORWB
P+)81#1J-Q3JBRPH"X@%$G\.KBF'$Z(\<I%NF?@E?\Q13>Q>)CG?#GQ^MH^*-##_1
P[N;?JH.REY.C#N.*2DBB>KP&@0'RY'W3&D&;]L)#I1.;)O(])1/4BYP"LQ2*OHX@
P?X/MLI9=="_SSPA"=M]AT\M-JO>]9Y??YA"H1H2UD;-'_2W#V0A'OM2,1A,(*QJ,
P56CLL&;$>P''&9S 6M"2#+PM_@Z#/=NP_0"%AOZ&!'H[9GAE<F]>]>MFBP#@R.^M
P!;&J_E CMW0AZ>?*9"(+?A) N?3NKYW$1I<&RP/I/9AYURU^>_'7)Z#ZWOD<]%K"
P\<7;SE_J0GM.1[(&D/H:G&",2\>F]$1L=T$6LC@ 4Q;0)B!+>P0C9$Q+$)9J^)"[
P?.?^_A0NSZL8:V(NCXDND-?6$)>L.>G6QGEQHK<7%? "ZF .!L6MS<NM)S>J1/<B
P3G.R>^W,EI"L='HSD7B09T.6SMKP8M$HBN>8#F6)F5##>VN+"@?7=DHA;&X&X-^O
PS(_++B(I;\R^*6R.!@5*@JI_M%6F<J9"N??0N]I^3_6B6(*HTY\<K.-JE)]L;0.B
PE]?[_:3G'S!D.V;:E.>$W]M9I> UJJN*D(2&)HOC26>N$,8_=\T+;DNRF9*X94@K
PFM:0P(O(?2L41A8M+2Y]%,>%B4CS:,(#>.J6C,#N)'."7$;K8>IS<ZK\XOE8U^V'
P>#G01*)F6:E15LZ?U+V=9:@#-:UK4*$;T14CCX+/JP+5C.)P4N@_VRW&2,S:F'/R
PDA+K/&$:#8%PJ>'G=$6(,,<.):H[^(R^]12NA6-(W8D#8/4I8L@Y#A)_)9J9730"
PV(/E6LBBH62*36WQKH.J(".V3QGBQ#P-;&FO-JCWZKK:A)8!%_@,;99:/4 4L[EP
PLH=_+&+EUPM[-A)G/41L;8Z?<S\:U1S/=H6103W.J_?QYZ</@C 8O79.7/]((@7W
P4/.!095E-MT<TY&J!QP>>*R0@EI!8I^;Y/I'S)#[QF'/>>%=XFZ$:)4-UP-TJX1X
P%)V*>8X(BI%\I;F.=#]4B2@H/$<7<"'^I!-7,:EO29.$;-.+3SN=,U+Z^.A5(\V0
P[.VT[&,U4FQXS>\PT7CZ;H#UCZK W>3XGFD7?>S@6POO$'T*M:X3,8/'>S294 \L
PF=4+EZ;!;',8S-[,$UPW8%@'"ZV8DU]+6WB3NZ2'&.VZ^(1>6P=?^=%LQ+$WHC$,
PH:P_LD]"QA[[-KD0HF(K6U"1O 4N9M&J>$$O##*5O"-T[*QP#&>R\!7@\0SJ_0/H
P$5]3@J8ZP*Y0EA:&7'U/+4X01ELG=<</K,HM(R&UX566EW;O'J\52_+) $.O&6(A
P0(?F:=G5RIH%3*9>C%@31+?J^EGQCT;A_C[<'J]28/@T!R2HV#^((,E_82]D&^8#
PU<G/V[]M;@,5V@J@?OV,50:CC<-)Y.E>*S/DJSX!N&2X]XP7;Y20"PD^$-EAB#3B
P_A1%?1^V5:7*'%4;PK6G>=V3A*^Z@X\H*A?_SF=L=%[0\0P_Q(G_.?J)P)0,0,?M
P:]G!= F)9"8]'^;,-T6\S398^!K;%.$@D64+%1X\Y,SECJM]\LZAG.]ZLV#<A#0X
P4[/T.-*(#<7M5F( ##KS!=V;\9&0.:P?:U*9]=Q.X0!**;)M( N"NST1A .@H$-%
PES31+.,KS"KA&6]KP"@AG+)P[3G]KA<)^ ?Q)WOFFJ1#-0G1G=O[=J]E8;&CA XP
P% +EED9RL!5::*X_ISR*9CMEC=--,B8)9F)R\U[)/S*R/BAJQY3L>4W<KYWZOB,F
PZ8-.R>Q_;3PVXI6W/WY1=?$&W>O!-C)J4:*'*PDBW:&G$Y8G3J1$Y.:!,TI]BC7,
PDIXFJUCFNS#"A:* "25C":S7P&^*Y\$NA7U5.[1'C)Z'Y;$6Q(%AG'0UD?&WJWPG
PY&1JS3*X5FO9XV;#(OG5,8[!MVSY/V'U<BB]-6_;*[_(N?1E6 =OFZ(W2\3P/'KI
PV1MYB_9]]7@W*U1LW,9HH8E% +@AFH]=MW'M;U'N>;@*GKDXC/6F3]"LR@])M2><
PEC8G?\+K&CC!D]Z%!NZ635%%CFTH6:$_?^#:U[U?OSNLY_)$X\O\ P\H,RM7]5&%
PYC[[6P3].NH(4="^C1MDJS6 (-)L$CW;_J\MH00]$-/Y_9>95]-DL%_;D&*I<7/'
PF5JZ@9>(\,DUGN;A9.FE0(FR2@Y."QUF.EZP4"*?;#!31^X??%?+@A?B@(%VU3C^
P;7F;2V/=X%VA<&<Z2L);V5:FS#HN.WN$Q#U?F\JI'U?L4;UGIC+U0-X8$S<MX9I4
PHRR>Z9M'Y"+=1U[_3%C2J>)U]YX*)5__U]<.7P8,1\5#YJPB<TK-1-F&V\&J2DMD
P:"<&R/B^F5J10A&5F=GA//GDW$;AW%,VZ%@3W(7!UYB,]$G^G#:^QTY$7HWY4Y&_
P]K=RK<?4"5SR&T>[\.2UJR3#3A3FE:=-:EX'7 4,A2$L F,M9$JBZYX_QWI[\#./
P+W_?/M%*GSL9O/'#;7FPUZJXB\D9Q=#:1R]DU>5#47!$<-L<^KFM[5RH3ZF6.G\B
P4[2[D0)W;:]!3T7^9&?$9\<\02GE8%ZVB."#\5\C0%PUC$8+/S;XL?9H@&D\L0R^
P&LA-MSJ!;27 QT8I[D!__-] T0""-+KDPRQXPN(J5-5:S*5P#RO'Q6DZ5K"(W<6C
PT*Q<;X7Z.82E?>E$;SP<3?9B+P#]SBHXRPJ*RDKL(RV>:<3S4<V]9C*IF=]O[V?*
PK<*.+^%0OK_CMCI@@7WE=5=?9V].3"[!W42!(6$SU+8+6&<-08$="M$1XZNQO^3S
PSDVT_Q0*B%@B[P0,.#<E!NY=4>G@"1HRF)I2IMB&OZ4%:WCWKR_CR 0U/5P+VN/Q
PW,P#'DMV:9_;R57C!5D>*]Z@],.R)0?.'N%E;[-#U+E1U#(PLP2LXA,_[AQZN%I.
PC,A!7*=-SR.!/'<5U^>//MK4RH)"=*(^[ZS1@"#6V//\&"0'$[OA1TE#?Z\>0#.Y
P,#3&[2&&>D#B3O<1V .<31<$T:ZA-@%#/1:?2;+[IUWD_3%MLHH4?JKOI["Y,;DJ
PV]P$;L!P;\AA#@G\4D5P7N88X2GG9Z'%@42YXOQHI5S+!*7P).2/U.+/$5E1_2O*
PW2&K;N810!2AEAX !RVT\H.'X9XU)CZYF.V^336^V>D%!.-H]]][*,+K1TNBV-!4
P?W]<@RXH=DE5Q$YM"+U9)2]XW*"I%5\?J*,+,H#\Z>_V25IPO4Y'%7A\\([;!/.8
P._3D=:EZE_L9DT=U MP/15JL.3W,8O">)Z?K*/LNFV FCBX.^LQLSRO=-!I\;$>0
P)5^.Y'0"LP7]2-;==)SR3OMI%$2EL8IH49_9X%H54. ]JB'%.:3]F[6;_O:&/.(4
PQ=UFPJDY.+EDAPEQ8M&:B;<+*MVQID:%LWWWEM2<=?*&"Z7Z->LLZ.Z0F[*X^]4_
PF7_R<I!QJ@8%Q<M^XD'Z-0 $97DV&_S#?F'#]3,I#JRKCK6)*<6Z_?*P%2+B=;M-
P$P,&V)!LB^_'HPXM<.M< XK_G134Q.WJMR&.(5@M+U^$&4#EX])04,]/*\>9M79D
PGRQ/6R?\M"%B:W.-U?$LJ7DB5%<U-9EW_VX)B;T!(&L<R4(+PP[=:P?3R9WM,2!"
P9N"8..O*DBQPCY!&W)DDA#,:\:-_:P:W>%B*6O*5?2.3NZAQ"3CI1RXNJ6&HY+:T
PZZ[]SUA&4Z3_5$9WV^+76+ O+7L,<#^[Q2D:3IE)V8N/W,O*&DH5XAV\$)=V#Z#'
PO</3NDKP-QEYA-[(D/"Q-GKK$..8\L)6\46V !Y]//L/+SZ7U<4%P<G.DYLLK\29
P4WZ$ZT%-F->EJK4AI6LA1Q?\JXX+6E8@$>$$TIX26 ?J%K699B+D+CVT4-PB7U,3
P/DA*1NKZG_AL-Y9/[L/AR1E"<:KX3+Y(.W;X7CZ%M#7ZQ]::,#NG$ET',E7L'BV]
P./:PSJ.YC$J(/T,V\:SS4;KFCERHY03V<6TN@2RI"PC7I#69I+V@Y%WRGO;(#:I6
PL;5H!9$2.'K5Z)_5444O@;5I16$T;ODVE15PP%U<NMANA@1%&!^+WXR! '+'.G\A
P-$S8E)YV";H60D17;/:NFO ;7K]CT2SV>)Z,L'>LMH"\'>0Q#T:DPN<S%+7!,BW?
P(M291GG!;I7A6WR^;JEN@]Z6S#1P[AK098=,7)W4Q_6*#$,>?CI-PT'"^( XN(%>
P%9^8T'/3-[^P"KN9)XAH$3@)DL!TT&48 ,;FA2'KZXH&1Q;)@-0#LQ-^RCZ]ZB_2
P_UF 6)>N+9$98%VG[M)1RQ++F4LN?V(M"G7+IH0)5,%5T(2Q[^&-3X#H ^VZ=IQ)
PT1)3UR;3]-">='^;OZ%FU!=/T<O%9OMAH@2FC!?^3M_KY9P8II"RH@F.V&AQ#WLW
P0\2?N XG55?#]^0? *,W.-A7<H=Q/P!ZLR]UBQ>SMP\.<=1?#?+V3YN'_S?_?[4G
PO_N"W"C=?*D/-T/X5(R&T5BFAV\@OW3'97_2(.NJ#P!MT3L5VIFKKF3+4#!;C#&7
PM@Z9B2QHT!I@N+U8*2U[_^_8(F0KQ+-:6R%S^JO2*&AB>XPTO2WK7PMQ%%%"[X"5
P4V>;/O 2\CNRP-"GD_74NJ#&@$"GG%2Z4";'/XQ?-34NR8PP^\H/]D>BK%S0%B$L
P/%1_QS)Y(:U]Z$YC.=B)MIID2J@[DUGWK+/XZ\+<E)D+HVW"!8]^5+@N Y+"K!+,
P+=O?Q@ZQM#X#B]=@9>/VCTG<F[NZ(Q]"E!O9^+%B?M>-2L7%@TL,2%=&)DC*J@..
P"V2:"G-6@1+"24\[GTY-K[8*X$+K5X=55V 4XT%[O%&8#J<&,%A;72:0&+-?WIM-
P_)[@=_[#X"2,A*V5NN(;AJV4IW)9(PN@94<6A.GNCM=K/#%L]W;6\LO?/Z(5-RB*
PF TVP##\AB5.V2@F V*^ZV9_TY$4Q=SL]J-YS/K:U,R],N?&XX4/>_-FTH;I!.(7
P1M1W[6=9/?G@MMN-/+<>&XF,(#="B- _<>7N5LRU:<-:+RY]A)S;[3Q5&,X,A&\D
P[:NI$H)G;%"=7Z,$5TUR;#F)7]M2K(?FE IT=S6G1$%C2]G'(/\/0#'^R_:.=]K6
PM*TZ/#QO0R-LTO*I-/?GU^8*%&K>C%AZ<_A%65']YTRG.SI)3\0;O[7Y")A[565,
PX'3'\%H)7%CI3]V;Y-8\,.PJU(4:-2..0J_!4*/4R_+F^<FO%3?,DK+J'_5Q&EI-
PJTRR;';-ZOXXPL$>2$$/+J=C%5)!_$F"[(][3W=JGQ;^'N/4G[*BYG=+<JM69^./
P4'KHLYPL_!0-A?XV7F1_7KN7?+18?">"HY /EH4^+8IC8!'%^&'/G%LA>,E_  G6
P&FNO3&(V[S'NTK_*E83JP>K<.I:/$KL"+!3I'U _\I/N:+/_S"!I$ET?"4]78X;<
P<H5FKYL\/K O!@T<2ONR"K\271QF[F7K\/C4B+)IH>^/Z=?.,W4/1>Q:F$/9Z\@A
PI5J*>.B&3M1CP&YU-A69Z$NKA&V_))WN%-EBU<T+2_R$RY]H08T:S4ECVR!$.9'<
P /&50RLY)PRN9!U<CH#I;\:+AVK5I"&_" C]R+^G6>"TNH;_>WOU1F;&F#?6VR9A
P]NT4C.QS+$BO*'"\9_EO@BXD[--W+QV4=>T83.A-GJ'T7XO?$G:FC#T<%8_5UN'<
P6V#"S.$]GS+UHGP1&"4.<=44!\>%PXV?YIKJ82?H%0;=#/J&F(<S8>QXPUCJ<WY,
P)/J),N/58V; !HONO11$BE/.R24$"O;$XEX4"1T.)"MF\ PCD;=4%)T) .?:I6X;
P0I*7@A[$7V(N&8_N+E)]:Y2X2G/FTPM&*Z"KO'@5JCOW/V[,7BMM&,MD$8SPD*]V
P7G93(ZF+*V<MVZ\6'C1U^[L33H@=;TZOD'LP7*S],':.HKV^$N#F,8R:MGPIJ0%2
PX3W1&E5T5'\&U\!6O#MOL=Y \V,J+ND%J,T>[UT^\S&>ZTOV[^P.&[>.NZ/"(A>K
P3U6%!"&)PPJY/'<Y9R:(S7 UL!8P(<&<I>5X2FZW8_#;;9W9 .$ [U^P\$VOML_;
PB?G14NC?)5+T6%O@\-6!,*;\J4@B_5;F$MW]*/51.HM%)1'Q3TS!A.VZKC7='JJ=
P#_6VKY 2""-*Z,CNM(33S09Z?)7]M_ 2>K*$'6&+KZ,WH^&]A(4N2,,-2<OU)+)C
P<V(O_5LW89"(+W=X1SCO-WFN_:4$%<S7#ASSS#DY-J7\K$^!*&@\I&>7S%>0!T#8
P!VO?:X6+)HW:%V % NO<:=%?91%P2JE\O[B3Y>IV*2-_HA^5J,V5Y_J(W&8V/770
P8<'EGB6[8GMLTF8ES6'>K<*"\B#5N\W69ET=1T,55$T0KN8]L,(.Q85\4VV# LFD
PU\"%MM4U&@E*LYOX98\N-"4(C@TC1ZX'.DRUP.C_/&J^2%I=-_4[V=IY#N@Z%QB(
P#J=(+.]Q&%,>1*))MJN>*.481!0(@IYT!ODN(MKA7L*7W4\OA8$W##SM2Q5I]/"1
P2;@P:J"B$AQLB&0MB>N6.8/H8?^!K>8G+ ?^\V)A>Y&K@61+GI2_RQ-2$#P+A99@
P=V)"(( \^!2ANH(WQ^\[ZBHQ%1C>R>_Q5[-X6:G5-UM8=8FJIA+(,S'E!@"DQ.>5
PP5?D,/[C2W_8O1A!XLVVPON'Z2@_13X3:7A]XE&\I+?2Q/TY>T 05:ZY$)2_U^O]
P)I#4VNI1>TY!,K8U V(1Q8VX=@1JJ^?E"<_<RC+AZV$,^%0G71O_>5ZAE;=6X5#G
P_^R#9LWLS7(TKQT&+'@>-P,8N%JK=]>XNLY [ZQNS*0&KH:+*2-=?^_M82,J,+GX
P'_J&:FTNK&&' =>PV,>.AGWT%:X8NH*!7>(PI-5\;PI>C6B/ED)PG0BK/V#F=L%4
PY*/BDGP.J\:8R:/R(@P8<K6W<%E!,J]0G#(D89*O)M0E:?677I2A^[,P"YBJ//,?
P32Z*6:[Y$.E[JW?VB/]QKTFPW@3RAQ\0G;N%D[:IT-2SD#KMSQYD7F!QU<L4(NRU
P1>42F5@6S\\L6W1H+"@4YY>@1%0@5+IM^H+E>&#VR]86<PMXG,XBS[/WXB#HFC"?
PF*[HW;\CXNZA\G6167()].\(8$_^7+'73^UIP$J$-7F7[C?^? (5-[ !8,S0KXLS
P[D3XL<*_OU6@@M$V>-?GY@"R.XLLWM;=TX <O7BGD!FK^3\[XZE'?V].9TKL !YM
P413CC#K7\'!26N+&"&IP->"B%KO-;D!Z(5:"RP%*CD\5;^HTWW +C:!P_YQOG[Q!
PT;4IB6-U ()GZB*F.?KI@&?TZ2E?-PU"& 3%CWFS@;]NL>+U;/$C@H<\;U,EC8^C
P8.2X12F6,/LA:QPX@G#$O)7)DUG96U8]B#VT3MJ!F[8-@8)0@?NKVE"-,8-C+4CZ
PO:%G#S^@13,Q%%-%AP>1$K'>$IFI]G>-D]6FD.C>'2% E C6291#WPX1V",3+T&R
P5MA=LN6MQ7&8QD';KQ#_7BQ/T4+9X]_YZ"()O%+_.U&_Z::N"E0;Y]Z:0_D$=B0&
PH,?F4+/YOV'PHT.XQIR?:#.-/P7LH*>[IMCNQB;B$W!V0P\Z&,\+_)O< O)PXQ;%
PX@PH=?ONBSQKVF]3G0(/.^F!8PU24D(EHK+:_(5#3:UQXN9MU)N[;&.<JTBBHNDB
PS/&TQ&.ISWXO! <:[#(I7:>NGNK6S9F,J/H9%-$660?)67B%, @.QB$"N)VA8AM&
P7OST\DVSIG;"%: (8/RJ7NA.4EX53E@%7D?$53A:>&>UQ#>YTU=&%5R_%XA)H9D5
PR?%R=A(C2+F//#'@ 7 &>$,0^WIC:5[\970K!]Q;TONK6RF**%A)2=B1[?$63*7_
P%IM'8H*M&;)LE(@"EZXZ(IN9.;8CDH=*+>K0^':=\\&Q!/^$^>3J/'*M8QRI@-"1
PFQ5NVA.<;3PXWI] EA>"#6OVWN$LH,>?G>5';"!.:A7.GNX"G89,T(H9@K39G_(/
PRDY#"GH9_JBM<N'?J?Q% ^-,&%N=%=K\,03IJ1E-AV(O_FD0]>[*X&?S:%MEVOY-
P[J3;_8A[R<<]\6"$V3^[]AO]N5#X+LN#4@V, _X:'7SH/7M%Y"L(-F:$XL+SCX>R
P8Z*/P_@QXPKD),X&/DXME[*D!X,#.2:<D#?*ON/!O]ZHF-D" 8V G&;FMQCZ'92'
P"M+$S_6+4#?.I3&YUC>=AV)LS$H63@<@:PT=AT6QM)I1IMRHPB8YR8X19(K?<>8A
PR#+W!D4KXA4<^HI[_O+2G".G3;J*2HW"A3@SH&KDE<;!*_S3IXDOL?$+C=VAH3B7
PFB!?0=>E-J?#)JMKUKY"76TQ&A=0O3@S'5CTVX6&7"HO]-7%JOEOB^M\,#-\>6G#
P@$]%9[2A%, %)>23*(DK*^8+V6J:*T,[]CL3;+=I22O,?3N&D8;4PU+>BN+*%C/I
PT@IKTY3)T^$M1:D!-5$Q>:^=IX&,7 $V0]C&E@/O+S2#%</5EF^"5(Z]T@L<TP5H
PH917!%W2I;'.%)E]*PUJY)Q3KGH!W3>B#F_0R5XD"?26_Q@6]ZD$:B#OJ?OKS=T=
P6D'WB5<V!8<A).]@\?7WBHO-!/%]F:,33&_MB5?[EGUC=U9%BC_>R<,!=V_AFRY 
PYKR=HV]I'01>FKNM]]P31S$)?*?9_7(L>DEP^=D2VT/_[$-G-5N*''Q3<MR[.$BO
PB X"EU1._QG)Z_TRG*M5;.Y*2$=C%CBNV[D+H_5G>E\>'/3:;]1<-^/,DGWZ:BFM
P8"V;UYV<]S3[H]E89U2Z=FGQC,N#@.XFX9/WY),7/:;"<? !YXPJQ85HFZ0_HDZ*
P44:PJ0MF5EK95/$@+8+V_W^L>PD+;P9TB/5#: X^0KQNGK<35"P60>$3*.#G01_E
P( (8NN,/G9^;,[3T3/=^8YQ4#>>&J3!7>],I__0D('>#4=9[7L%@E.Q76U.8H" "
PIRR%I)IQ4I'_4-P+^RH7<M2S A*AFBZFA/'0;NSW-?[*1ZB^BT=</GE053?MTH$G
PH+USV!I=G1^S)>A>,*4:;4E61H!/VY +NRE5P[F$Q8Z\&J/HZW'DE7O@IK&4 WJG
PZ];R[&QN-,F1OLH#AZT1'9[6.]:PULX*T\#VL]G1#&T4,X#[&LE-F5MG)%:)_A? 
P4:GVQ=-P+'\QW3(BLDSVJ?VS ?@H8<;B00WM#BJ8E=$/I\?"^D]Z(C)8\1[F9:PQ
P/553FF=I'E_R%<7@X>T[>'@@M'Q2#$8JQ056=F0KP' F@4/)O@ZSC0B_@G(!/J]%
PE!\/5\T7)@C?Q%T$G\J3N!1>5_5*WW@_H'AKA<Q>4),[^VIW9@8 =1>;4.^4ZT*N
P(L<7$NZ$>3TGG3],]#+L)FF(WJ%^M:#C>?$8Y)BM9,X0B=^.=- ED>ES6)DC]V]R
P\<E0%!@AV;+T=&[Y('VX!AE4#6=>3"N9[7D*=C(&6S==%4[>0]>EA&A/5)_(IK\-
POQI2<1%4PPY ,NH"72=G!3OX&2.\M3QR)9G*W $OLGD]B.;*SCWH:QI\?4?5UR G
PM^ .5"8P 1_\'[F??NM&%C5\.?7TWA,E)9(C'UAB?#+,$ 88 .$RL1E8<$F\7*:X
PMG%3O5 3W^_$0@$M)PI?RN@DJFO%?G?C M%O=\"S!$IP\:]P7T>!M>+P9?';'1E;
PR)>3C?4WNF""0BF.C^?R\JJ/^H\N<Z<<E:?,N_JU"Y\SS_/=J $0FZV,QQQ7F#T*
P)YH="._2]^0@DSL,(:=8RP+_"W]<>?U!US6\F7>'5"4VX $D8E%Q*\99TE4N) $6
P).RM>0/&=T1I17,=#:8U6(CE*?ZWN5)12_%MO-[G!^^04FY?&9#&1 B3 ;%$42+G
PGL46@%G<Z99VD$,54S[1W%* NNV2*"+:O;R*^Z,>>('2@XB"Y[7_J(@!>IW_EI9U
PG.2%FE:=1D">"2/C;PU-\]-GE4AO;J^H8YVKVI(:<:MK$G6?UKLJ<LD[AA%K_4JI
PG34&1?7+]! A BT=RN4;I\D#UU)BY2<-=ITJ (B1PR*-//U2SY%92?P/>7_+8Y23
PI25J:!U,+YL<NAJ5GN2CB?]"RV'UD=-: @Z'#HEA4(_+UYCZD7HQ3/!7D!L <(P2
PABGN@D8Y0HT+.YX-TR!K6V7#6"M.#C WLH,'&WWZI8X7!T;-+>,2IJGVD6\29LUL
P401(_;,</--K.<Q*?V6@B&W0]='].U>W$=#_CTY4/K(I_R&^@4R)1G\#FKCFA:)>
PB7-G+^SDN.=7\I&>0;B@NEMGC419+BS]>A?;_*J ?@(*)Z72WE9V1;GZ]5AF3UBK
PM6XXJD(Z'*R\3=\=SN%^&3PY;OXO>:D-AY$5I41>J5)L"WKY 02@>S1[MF;YO!<:
P[![/R@CG3DKH>Z?&$,8!QEAK/M'Y;@O'=>RMS*5S8''#YCQ:CTD@(F]5TM=6G&5@
P$L>^,QKIG2**4PWLJ;O=M&^LK)&)L?5"'S\XB[7.U1.10)'8^'9M2SP_E<-@0RS4
P[T"48A#9I#83Q%H5CQ4QN97UZXP:L::JFX"*@R)>GZT?^6H9@E)S/L<0[VIE*($E
P^M3XAX5-[(#-O",_(WM4PJ6TH)N*G9_AT7:E,^A&5M>E&"6[8DMU(EXP3>WT9VY&
PC8>T//E1%3T>>%U";#PB^4V/!N5X0/4/[!98$']HJ7?1'XMM!$70@//(=\O0]*,0
P4$T7V"/PQI'/98P8-Q4EU7OD&DR]]M]B>(;<:8Y<ZX(Q!9DBU"'ML$]DS)G1S]LS
P$&X>P1%)?MQ/*6)DVM1<LO^A:FV7))M<[4=X#_%CW(O"S>/ MC7D+:B^>7X2@!OT
P %9EY 9*&D$4D;636,[G%Z;],'GDFOT4\3NV;1J  B/4F"DMZJ(^CLZULX\S)(/%
P0RJNV0I,J6.]P(*T/KY*+Q4DKJL7E?._.\C-NHZZVD_I^/2UCJ'M+M(!,B*G1QH>
PXP.ESS+3>7&NC&I=&V\/4:U]Y&<M1G6WZ019W*/]PZHF^A8@+7F^C5A'$H0$?$Z<
PE0:.,WAU3T7TXU/T8.\LR!EL%("W'.@NW.0T@!T.@ 9F!::.!!H;,\=(#9K(]U#8
P8;11;QK=4(?SN5B;K@#YZE,H7FP7Y# U]5ONZRI:>PJ1E;J?U'9:K'O>L R@6[8^
PO1M]/-RJKTV?;KVG%-WG=T*@UYRCE 6#&!,N9(XYP* -/PD5O=];CYKI);7<BN/$
P+H IZ!C8<J]9HTBEX'F.B*G/TF1;_,K@N720ACV/:E:YPKX3%NBX[^!_QL]_ERLA
P:5=$%_/X5*0="7(3QQI&Z5#8;EEN==Y%UPUO*?N#VD[NP;7?@'3(K9/+HC59Y!8!
P^<(Y-DW@PK3BM#)"K<5SQBYK9U>V79]:J\(UE?B_=.&)ZD,AI@@FX4O7E'1H__%Q
PG<D1R?^C],91*KD:'0[]C%XH7 "C IL/.H^<-/5QP4#$)H(_-WICNLIGS@SNM(?H
P X_8AO6]D+CIYSO"'(=$<6@Q[<C##$YQ]]4 <3D%]W>BJG\NBY=E=J,6NLK\]E87
P"5%HK08I8-HG&>9\NO?WN9_:-K3:DO^%@1M0?K3\3OUW%BH<A)+2GYR03YSKB(,R
PEK]T%2 2L5N-N1A'>/%D^K/X]-\FA/N0^FX_2=RPM2!QE=+@O$J+)@Q12 '0BFFO
PJ'*ZAN]ANQP<JD^K V_5U$SU+V1M$0$/:\",HFUK<C51(W_DRH-98*@'W]WR[Q11
PZ5T<"KX)36$$58&3XG1!Q\IWS4ZPHS&V8<83UN=]&N5J-^(OH50\7N*_+GK\DH,J
PZZJJ^LN]&ZW$'R^N8TMW:".TOTLY^K=IUBY@@L] )7%FF^#&@G3IRD*^+[<*^_^K
PL;A9HF+'Z;,N;4O8LSQ)J@J2!;9WFF7- Q*5(C.F>F),*P$2V%+TRUVL4P^HW03M
PAD"K[L\E'?70EM*'Y>ZL2Z5J^?,14 9WA9!%.B[&NQHC0R*A3=..B00A]*W7X6%/
P"9_,@43\7AH_IG/:[54A1FR#GPG^F,$A+0#M@IOZNTM#!;Y;IFF87@'M )<(C)"'
PVM+/)S_#MW=86-!*D#DS3QX_R5P_*:BI)K:3?#QTAE.+BHB-*8"H=1-6>00(-B1'
P3_QS:>"B@E,9EX/[.%V;Y=BEF,/(E]+/WH &+8ZD %,0SQR;'XUC"SV:?QKMX.[6
P.E"PJ-\EG<_))JLK.6X8E14K%Y=DYMJG) %Q/=(I3OU5[[,UH$=_M+;9+4C69PAN
PA-ATQG[K+ 9V*8"NO+JW]/+_SP-$1->+JI)O26W#3^F-"K(WL!<Y;M9:54!F>12<
PAUM'*0[X3A!OX/);FV^FQ:I#,ZG/%$.?(:N)A5 Q-WY*[SZ#?5>Y4L'+-P.DM36\
PKH/]B\T,<PVB)EN&I0;-,1W=5?!"N?,GTBG@3X%A@"Y?64;+:9/2=+[E<,?(3445
P##>X;TCUMZ)2+QH8J[)TF6X3U,>+%&Y;I1X+A:LY+G_)^E(&_O9<G'SVZ'] <!'R
PPP@E[SL?_FDU1LW:&'%_WI$2YYGAQ6Y)E3:4OFR#FMX?R%Y-,=HME5%O+'JO*QL5
P VXP Y(**P7,4+T4KH+P765='F/7%N!JC@IY]"YBWEIZ]H_'HZWE0T,A*1YI7D1+
PF_N85Z0!.30:+O$RG1.$?3A%043A$M6 T(O!"S+^4]'3VE@-3(5=TK'UIU78F9#,
PT?E3XZR67*Y($63%ML1LFFN@/OZ'U&$U__\*3BNGM'^\A>ZJ''!4>QP";QONRC/$
PQSHK-G[8<HE*.5R)O0K3^'4OR"&@P6?*[.UY,!9D;JS\"[6/_$B9-&X_XN<7:]P)
P[IZ^W^PL R*NUL/OU*X5-2U^/"AHT0I7%I\&Y32Z;E"!]/(Y54A>\7(1[-)Y@J ,
P3Q*,Q&E3 ;<B$(0?*N8MG_"Y%- >2G.TT&5.ID! :-245&JT*U!38O@CM8XSH(N?
P,_YIS8JR9B9M*F%;;I;K%E(&QZ_S*P9D2DQE_+?I[V&N-T$4:$D6( +!3:^,+_"7
PTJ2X=I/]@C?@R=?DL1;N"<[UH\O(RNAC#!@,Z-9BH',R30&_0\MYW27]0;(.A)GX
P8'"">!?IN8V*U&"1G=G%1_AT+<7E!U-0'7GY/T)-+7/TF!A$7[OZT#YT1[;JB?LQ
PDDX4QZ#["/F/-@[=YH\A5.*;AQX4[+]?1TS.MH?,]P+U*!:7-S U]3<+0;SI4&TB
P>(\GOV@D0N^R,W\.Y"UR3#QXBW/1"3B8DH+;W? ?\)Z5XG".4>I(>FXQ;S(':NG[
PFE+FR<*=Z@=P]&TGSF/NN0OWI1<>';<)DN>H20EW6&7\S,1]O[=9;C) 9\[)O(EU
P5%:)9'4,1?)&_X9KQ>4![T/_30"%9?'=$IYCLK+6QYF:ORWI;([!IYO%G/3-KVBG
P=QOC(QRY-#K(,L%FEYS,,JL#!.EI*CC!U0#$.KD"]WFK@C:"X6XL]];0B)>'N\=^
P-[MN0G@VUY7@]A##(I>M.VQSW(8B2I^& %E3W,B*DSY*&:&GQ_PU*=/=8PYZ,W#D
PL$[LI24ORE6OS0Q $1;-D/M25/:L.8G(?J0F^>59.I"%;^D]-^\,P2X P4?8\M;_
P3.H(JO7LE%XE>=L;]IT<@H"7/B/_-J&7LPO5]O;L7X*U7@I*:'0G&D]6/R53;F))
PA6P6KCMDDHNBU'=3;V4/[QT8W,(__TY?X/TC;GP,E&7JUF-/<)0REY-#>Z0&K_J1
PAM/E^!CC5"O:Y+@ZQ 46V\]O=HDO7+9=!7="9 R\U1V^U>CF;ET):K4&RVS>O"J;
P]"KINU-YF<6;<5R:^^P(V4,"9G':L3T>327X0G#B*X$5+%CI& 0"U,&+VHAV(H.$
P76K(_6J43NC2P/\"AYM>%&5)M70$;-G*6LL7V#A6'7$TH2TUSW(33L1A_3HX$&/+
P05=I 8(DGN2I"<-*-)F*&^/D<.9'!K4"GBVZ;U)U&=J6Q !E*[R?4#R[(B.5$%6K
PKT3V)!IA/5J.KJW;CJ^_&?Y)&T7/6U/<=R_69S26V: >/<?\R%MT9"027:T/V2]/
PH?E+M'M3^!>G3Q<@89 [<OI)-J])>R!S-NV0Z>-L1P[;,1JL$B\<([8Y$\DT&,5 
PJ8/53!TL/3!K:?'0+]+:F[95&'JHYX] -?WXXAU A4PG=2I;+.(1@A>O49,H=B"%
P?5NQ0!)]_K0B1%:3JJ]KFX<]3TGHO0GY%,4,/LNMDU;YNN3ZI!M.[?'H3Y#(6F';
P!T_0S[+HUY%%D;VUF>!ERV$BQ"EMB-D9W<2DC #=9K>$(?O2T?XH@:K<.48J+BEI
P[_TQ2!0(R024WB8PB4)1]],M# >EC!FE9M='_DS*RP # @VB".PM^NH.?63K?=&^
PX2<,!R1F%[@YP!=<SD.P"LI\>/K7=BZJ>IW:YU/<H0^(_NY_Y4R]IPH@8Y1::1-0
P40L6C\-9FL;E2411W24$"MUN%Y%"_L>W/=,CRZ:S;#L2(RV]1N91:-NO2W!/M,2X
P4(81C%$_<'I570@%*TWB%3 9-G*M31:9/?/X@BKVO[]25RN0(OZGE.*B>!D>;=<J
PU29M86T.[G$D0"F&[TK2&Q&ESO+;, T*95$[*Y1WL5&SLV4U]6K(NF7)[\[L3^;'
P[T7'G=1MGY]#RPTJDX(>\98!"]=]:!JU.5;$=YYS1JAZ-J,CP@%IQ$#:1QH8FB_X
PG!3]^XEGX!W*N/F@X3+E/,1*(8<WAR!EC5.QB<-&BH$B%#O;9L#)?M^TI$HI<9>D
P=$2"3F$)\)1P8W]G(8]; !Z,P'3M'B(I22O]<TE8"K'!V)>8BE#S9[%91PVW XJP
P+I34_L J9O7H;7F#]"GT5]F2>PX71WE8M:*P 6^9RLMT+W&<#?[C98KX4:?G@[<=
P(ORX4 D*3D/M*]Y7"XAT3E[->!$7=4?<[O<T7##9EW*Z*>.C[)IE&[H=X3Y^C :I
P^^<1W09 GCN/IS5&5XBAP<N)R?%:GD=06?:V!@=<,M):&9IP4TX?M:-4OXVT.>\B
P:-%+7$GQ<'UI3D1R$-AIMK=D)5JL7=)-Q?_J<_@KYA*HZ',CTY%6HL?<6[!V$#EO
P6WJFWMB,W@M^PO"N)S1: 5Y+0M(@X["H/B-4I!"$P@@[ 7 ^/=F#^HW/&)!:\-9\
P8*M>6:<!^3D3!*H!5-XA-&J'>$'G[*?607DQ(>,98?JL(7I=V!KU@.:UZK#J,P)2
P-Y/4_@@*KT!;&K21;$I!_E[\P/$ZU! *99#%@7.)+KW%BM/BP89SU/C#AE$.OJ"N
PVEZXRC\%9Q)1I$QW[J=1BX_6'08:&@@"(:3&0MM)N4E(1:N?BO!1U4O;&^&S.95Y
P;](>##"953K*5\/1Z_ PN*QMKD3UU!\0V;A/OQ0XBG32&O4TMR^+#ES#O#U[@P\V
P98EUACGU# S?4O?^EZDETN4[T:@.8GH'7W\FIX\+8]R)-+!*DT0,PYG8LW8(N] R
P,QH[2)%52W [384R<JE*OVNP],(FL7";\6UKD666<6@EL]V2#ORD4.,11$%_F(T!
P C.@XXS5WN9),19B5R*HA@ 77E_H?*XDY% #9^I#9&H?RY7/<L&'B=C[4,M]$,KQ
P?][ WFD8_T<=RA0_!,QQK3W\A*Y#!C7C;92A^3M//!B<3:8T.%9VMWB%1H),\N8S
P'[K>H0[I/CD#6#S>!<%R..,<8D)VJX(J_<'7C,E_6T*],E'G$@VRX4#H;<<O"AE6
PV?XTXGJQR*:T#F&3=M8"$30,^(<.]H6*RO3R;[ G-AM/&QKK4CC.QN+\<VJAE2 F
PH)A O*4>@H4S)M4D8N$(MM6SDI=306+5<3BJ$LA,295WP"0NEHS#\%'K>>$^@KTD
PQ<@\VSA%VVP[R5;BTTL,8%*G9+4MQ[V@CA\CKUD^:N04_\U*L"Y=BB ''T4\&)(P
P07YARZEW69"O?)CT)N0_DHA4+05I?E0F!N&_00*&8[.B9DTJWT&?HO3:S8(_?#"Y
PKF3KI$G?&$07>5="5:'F)N/:Q!G\?L$YTB@![J73VTTEN8L9OT'N-%8(2\B?XA%D
PD)'97AIY97/"(BTZ=<:>-H(1"W5-V,["7=86ZU,=?S<!BL<37;%[@H&(LT6,D]3G
P6^<@'<!O:1='L!Y;U@^$2(*PGL$U*_P!E 584>QY4H1U-_571'/=L:3)'Z^EM3ZR
PN@X!TG0WSL%R_HW5O(RSE5;_?XR!;2.^OZR1;"?WW]0J2K](;JURAF[KI[=$[M:U
PJ]C^/A)R+Z[N_[1=?<'<7%F4[P82$ QIEW!P<S_5CUK?MEM/%M#^ QSBFFY[!^.L
PSM'>GL:NM W$3AGCFS:\HQ[[VG;M2'*>XS,>[L1(R7_[-4V;0 $OOX=<#.HZ+3L9
PX3%#MRZB_(:2]/6L<R@ )K+.#$P!OF:0%#J!&]<8BA.T'G>J 8J9BT(G>/B"5OK1
P^HNY*J)>\B[D;F$E8^]5>/-UH@\R8)ZDVL9[V>+0&_#NI3MJGBUHJBWI!5Y/=VAG
P)]$V2TB4>%F4#:0&;>+%2B%^01F[X"HYZ+_CNC4)8/%!Y"/FA_,(T@=UZ[EWVH48
P%B><P$(:!WV9"/[>27BDEG'EO K4.NS5*X?5XE:\^JP:T =5+N/A]X,$6H!_';5-
P^?;@-4"*X^#3^WY%.O2>L' E(SIX-U?.KV0J*[4Y;J8M5,Y)/OJOI+[GH=BRKVS^
P6O# >M9*H)3A[SP\E16T7@9LGZ#]=K5W= BU'SKW+W$3!0&J'@;(*G0@-_NW>EK.
PU$U"+&*/SCQI'4%*=TYN1'PD4O#@.!>O;@;9<0\YW8%99IIY)$7X$R3*) .4N!E:
P7=\6EY<=_EN8'Y/#(,\8G7GQL\4F+ M=)&^Y.?G\S%P8>_9QV[%LSFTW3 &\!I,<
PFAZMQ3.&?CHQ;.]^9^%V2SG>":8:LM7AO5?]T#Q^"7>1YZ:T&S/6G"&D#>TLN]4W
P_5<:Y]D;9+R)BKO>)"REJFTM4TTH^MR=8W8F7J8IBH[M.?RM/9:#%13B,C+[ BO(
P7F^*&A_?6J994&[S>@4@G.06+T-R8HEN6,K&<<SP,X24=)S_N^)(R.15*,_3EW#A
PKD?M=+%H\<Y$$\5<>OO@[GEB'"]($8[^X;&OD53";9#Q3,)E:O]@B'C9=8:@]!LC
PJ+KL7,^$5\G1FUH X"1C][)]1Y<E<P0VU\L-#K%)6\Z-)XA?4@$RGO5"SM+_+G?:
P,!/13B?N6E]69T"(@2R:CFPO_4BHVV/B>AK V @! -P=!)9AC-&3!,RT*:6Q?@$ 
P @.PH[O.*4OM,ZS"(0R=4,4K!/(2Z_%"3F1PK61Y#E05:%0B%X_"(1QL@;_>Z382
PCM:G?=8S%*8=0$[V6]46NC?&H9SUN=27:G4>1JG=4RL&648(TBVN*$,NTTN%%:XD
P#3AUPV[B"0U&-1FF$/Z7$7HD%14WG][")W;L#.::-OGXM@MIW+,1>G*<7A*'S1VO
PE, YJ.(K!6SOLNFCWU7N!$XTMV&-J;:L.I6B2.IH.S:U(^9(0_$1)$3NBH 68+-G
PLLEOD8(8FW&:;8,UF%+ F:]BB)!:[X4[T*NLE+ZT"&#LK!M]<5?YO8J#W"DY.'>2
P<'2F7: [\+A7@)(?X@YQ/D=#GRR!0;^+738W>5[[[628[._^2V05)CPCD?<>(\O>
P%=:<NGV/! ,TFI*PB-/:X![:IDBPE5$NRZ_I#%?;CUQ9N>I?$'J""#QJB<-+_]A_
P5WI\7L=9?7JI;)U.S!)H;L##YT+4R]B9^?"DE\97ZU[PBN@1'F4A* YEPT^UPS'#
P"Y0!A&%M[3L%C@\8-A:>"3IZHSU2@VK8G^#]OWC] 3H Y@U%619KP/D8.K\;A_<;
P13\@Y,>?&5V7>WNIG_\],V-(4.?@Y6 ORK5] ^#&:1X_G$%_7>][-TZ!"47T8SGE
P;%K9'C0%>%CT%)AYG<5F9XIJU^TY FVS*6M?24J$J75$5)9I)H\I3N 5XR$CH;Q:
P?3-+G56;6]9/D F-"B!*_*<.V/@KF)/C(%78"2\-,5[(*30WHM5R?N?R'?A@L.&A
P[+"Q3YC95_Z C1):;B#=7'SOI?O5R@>QP^&XS<[6%E1E&($AW)89SY(_3\EA(_-(
PIBC-^=AUW8%'?J&A+O3!F66=MU ]@4S401D5+!?@ON Y@8^1K48FU)X!(1SYVL:U
PYI$B&D'5?\TIM"6FGEP]L)XI]>W/KA;&16M%_UAY)*AKJG)^S$/&U_ID(*;;:UV_
P4HM>8(NR77! YQ^ICD/RV#&=8!5?$7<SVK3VXF%Y!KQHKG;D SB29A>8\#+3A-*Z
P C=]=E-7%%+*5V4.WFZGUPQ<O0]NZE]NWL_3B=*]S*/12!/,!V'*8-2F)D52U/6^
P DFJ<:<UV2./,(,U*Y$N</_D+\2ZB[.RY; _#C)OA@UU*$??MUV8W9I:!,;T'Y]T
P@>'=XC6"!JT\V!S!Z[K%X&MBOO[+M,/=P"<F+^@JY#T*AQ>C*J*DD&4-&9/&7ZE:
P5Z-GS2RQ)JN1.$.,*LIGJ:B3B:3(OP##_KX&N>TB3[+Z"3JD]]37:WRWMI[Q;);"
P$;@_UB=@15Z$Y2\@9(-#40LRHGW#)ZH@^1<YM@U3<0*Y**66,_I1)W=92SH;(/Y%
P@&67NZ*K.:(1PSK]/ 0I,E&9[/&4'_K=%>ITL0H3>^6J*EMJ!P)1:5[ ZA[_%G+=
P S6INS7SBS;(Q4YL% UVI-F6AE&NQAY2,@@%M_!F@+T:G\SBSYA0.XDW-27J8<H3
P4>&(4N.)C<G%)$?=RWV%3\9+I)]![^<0S>R'0E+U&?&H:/SS_W.>+)5@RY^7S;7]
P)I"*]E!UMV9!#!'G_@@=M5KDQ_Y]"<=B(7!-2]03E&77KE;_WTRW]6?T3[6MV9^2
PA1/+5; :-.C!:4/,!*=H#M^WLYQ,GR"L61_1Y0>F8Q%ZDO8QY,,(V#"@$W/Z;0J!
P9K[O\ZJ)BOB22!XKJ/<9) MBJ\?$IG;C'9-_$+T.A/0[,Z"(#@+->Z &?7_15\>K
P.P&4T2:V67" G1</53O?;@:?4&4AK63Y0=HRM>X:.MHT(R[?_M_K>B1!E>2WRO*Y
P1T?%(2@PPDI:#/#N%?.* NL!H]%T;SW+IR5 7NHDJCG3W13%7W5IUR,EC<_YQH1$
PK= !DQ%C9&&%0S!A?S]E1C/C _UEE@9CPS3(!V:!WE4="A;8M/NS>*7(ZN.BTG'I
PRPV>V,PAJ6Y@MSZ<CMQ?7V)"_ZOS8Y">%*1RZQ\^PA _05?-:[A&CZK'2\XZ7FD5
P6(45C%;;/:#M01LGM[PGT;7RZ>L0]5<[=Y!@[+*Z!.:0[]4 ?2_A ^PH$'H/G,*$
P%Y@%X855.??N^]VOP6-?T2S1;HEL]$9IRJSJYQ*/M^'H@F7W-C[F0S1U!N67:MI)
P/W),I;OKZ"WR[#VH,9\Y]XHY!\B/]9.OL[_S.)043L2LS)H?E>CTPN =OJG)7I\H
PZ Q"!WTB]8YUB)YOWNVC5\4D8B$Q)< WP(I]<WQXE,"'_)3Y_D]D;ETYM$;D1O'Q
P3SE=A#!LF_9%NN")M4I\</GS94E[^T&,E4&(F9D#Z?PC)$$;MS8SXYSI4(OWX1ID
PIK'>H!RZ(A#N Q<RG/D;-8$H!9\?KF')K*6E!U')U(H0A-!$R=8G/M5D/"P -_QN
PH[%,K:L,:FK5 LMHN&*O$B\4*XB>$E^"8U =T<Z\+Y_TO*H9:D;Q1ZWQR5JR88YR
P 772[_K<09%I;X)<X$"^ANDNY-EX-M-\]B;0)U@_;G$8B0<V=EPWF0ZFHX=)(ZOG
PX4OET>_*5<KB-!O,GZ\Y9EGJ*->=)DKLZM+9&<C[^5P<KAN)OW00E*+-ARP_JY?1
P-&!:$DM[[UNPA3T1A$VZR7VE[\>4=3((N?.;7! 5/?(ONG@>.QFRR!%Q.;LD2HN]
PX+UC]LG@!/!39OUQWD@OT>/D\=$T:'H\HV:\]WCO,_+-'+O)IEE*.(BI(8 [\H5B
P0<KF,DALGOI'00$DZWZ5'G?QTC,@^_-2I]IDJX-VOT"Z);=4=\T#([=_,YRXN*9]
P*(2G;['TT6V1;?[!!7"%P?4CR>6JRV1C,YP=!KM5V -+OL%:F*<"-78+EUYTB[;V
P*A8X)H,,D2URRLPKG+6V"VN0Q]Q;M7P!N[<UK>9$.C=4L]U*$WM#JQQ1.@H-D48U
PYXW%K"AS++!]&5>J@S%95XOF6=[)"NMVX 2-BBB8[1]=P%-+/>:@]=@?OT<:* GG
P%;JQ.J.$;<[65K%2>W*<CE&,:?"0 + O(L)C2XD2VGL*#S7??CJ@S3*<[XY>T).^
P[/.H1XW^J N4"!#O)AI(45L+*#51IP9IZ2(Y\&N%I@RG($%#+FO6^&R(MPS_;%@Y
P;?]Q-[)O^>")A>H-@Q>5EJ7#'U73$LNS^W=@7TRXC_)&OIO2JKR()5MM5V K85O!
PN]%URO><7/_<AH_T)39JCL&6''M@%R+12<LRS)%VMH2.Y8QJX94BJ?(I (M4;SU4
P.L*AQB+VP4E7662E^W:6LYR'%$->T"A9E/W(5_FM3M?^D$JY@![T-*K<-<]2> ?=
P&WB:YZNOI_KUO9<VXEY?I&>+ZF_!78=O.P52&X5DV>57-B/:*A'??J\[FYI)@-BH
P8>W3/*C)=<[PF^*3*65B!*-)G4))2K&.3\=B58(.7;*<348UG^NYP:L$6WOF,<57
PN'=&SV6,$3>$A/RU@KXH^WQ.;BI87<FX[G07;+FCZYYJU%!,8JP#,"XEL9XW_:TX
PPCIME?7_2S+77==DZ:/*_ X&I,$Q"7ORM;5&47Q9!L'ZU[CI&)]1XW\X/9DFO%7S
P<\5XAXMB=V>"2_/*HM]/P(]#1JO5M)?5*29/-AYP"Y,I?!GX+I8T2#/9# H -+V2
PAYEPY"65)9]X"2J(!LY*"U$#V3 0-^H+!-,<AFDM-.L01+.;4%]M#1WDT@_>,$ \
PIT^>J8@11V$*FX$PND$AG,O9QRF@V="U8KCK'2/1=<U@7OAM+/9@= 09LC\7V-@G
P#<];_E69P?FXQX(\FQCFF\3JJ!I%X8-E#=&#?.UP!FG3_.^:GG.XZXF40M!1B&2R
P73'E&<6UY.]D^T:^;\':<\[F O&+!^ ,P"N"CVXJ:^(]<:^!>C:CSLS;>*MY3Z+J
P#D"4A3HFCR^T&T0 N%2Q5QXI^8*?3=,_P[!)ISM<GRNA&WI[?\K/D17.J !SWX67
P%R1&KWW;&\P]NITXR7%C'K/#2;&1;=<&%&KGCE<JR1#63R++B=%D]Z7Y]YC0&)DS
PL$!4[/=A+QI(DAO5RG$%=_>U#5V87_#$\2\+\5=6<.F3F<1;CXS(4Z"4_:UR#2O_
PK^7@3YZ99/(\[&<"V!3Z>^YIBE0,*OWEKLWK?F<[AYL7P_ >K,)YYNL7IH#?5]#>
P]$30"S.E,I1U:;E+^\>OQ?L)AU-5<703S.-^5)0]2X4G>EZ]&11MZ0>\V-?/*K("
P^_;98:^SQZ0P.MOTH$0_=;ET1/25._K_$$YRU!U/HJG["3A[U%545N&$DKC9>3#6
P*1VJ=3Y+>A4P(E6\H&Y5YF72A[1HK>\G]ZA$@>0#/R(=*Z%(TJP6KNQGA#&Q7+&*
P5=B[L\.]XQU;^+Y$X0!O@7Y.;$+.Z/XV+WYW?*)?.71"/)6U>P(JM+0H-1+=VC.I
P\EAAS)+Z)"O7R ;/-B6@#LKGLU:.FU5*08?(Y3DOPQJ8*$CN4U1Y"WE=V1KW!MU>
P^WK5 ;,L13%>-ZZ*!/WH K3(C+I\,3@ULC,'%0:L!7?..U.X[>DYM:.!RFNH47;U
PLTXT,(9"$:O F4#>3 LQ2\L3B,7@;MMKM,B@0;,S];H6SSQ#.:B$5Y/&GM+NC[$S
PYH9.TV@"904_2:LA%MM4R'5\<P%DZ]E48'JB,Q?S7001IN??9X:NN7EMJ ^%*TH8
P[L2^B>Y\RVY=,GL?3S/A/S(X7<3EPW\+T]#C;V4J=]W1]6H\KBZPQL3<%0? ?@YB
P$QC(+',>$C9F8H.=\FSD1L<9P +;.9XNZQF\T"DR_7O74_%(%?QBI1VFQA'I+<3B
P]7_5O_?W3)LX\ <K):2A#*!8*/<B6F:4?OES<HJC%!!E"6)S2AF31*P3M8@]EV-O
PC):O,RTA(0*0"'2WBZHYH%-1S3"(=5=^:S'!(4*3+%#!&RQ]&GJQJ:^RY4_^E[ME
P(9M-@2%^HTHC?KK_[US.=JSQD]/Q+!^!&EYK_1+T;)^KOAV#E?% [&=+I@8W :KH
P;4)H/9A'TQ0W1]YT)$2>&1.C5+PL\;]_UZK.\8JHD8<_LB6SY_05T_K]6X^G*OP'
PKW1E]U:R-B0)[^$ 0ZYZ44G#YKUI/[NW+L?WXS/VXMUC[EJF0 _ _*7!/8[80[AD
P6[%Q[7PT[;"95B)Y$&</>)]OT7')V>B4K/;MGGM[ ]P4O).09.@:CHDBQ)()/G9;
P6(44><9C)QOF\8FF6 "(KT=P NV4@RZ.5B%;!Z9'0RZ_ ?6*G3?XW:\=MN"56=:O
PG7 +]'&L8G^"E6#=XT+N,;!(7H0$KFAR % %<!U#(CUGQ8[M3U+GT?\31.#XB'Y=
PLE+:BE6Y/,N<H2:_3O2_,$55%D219$(A9_O%XDSLA7(4*11_F!D;6V>'W4,WU^CG
PT=Q/52NDB+QYX<+H>HM:*+TYBX#Y':B:+*RA!*T%9I/42CD# (%>[EXO Y^B137@
P+!^U%RAIS^ZTD!-8F:H > 3T?36J%KZQNYVR/%-[K! _,?]%\3-+;D(1E=UG=TR@
P>$R-Q+K%?^E76.4$P0T[%PK)GFMC5 U*J3M8U* )"E]OH" =B!PZ.3G.^$1H5K81
P'0)33OT\J1UIOV1"BZ.OS4EBD%Z+%W;Q=;UL9L +TI)"P))],0EWV@@A2S\,HEHU
PVV5KS@D\U>[(U6)X0,_Q2-*R-;#'F&L./5BZM!UY@HH'1K8]P%F4O&& (0EO"(">
P440"F184<WTMT"(V@9OOBO36$D, 7] \H#_ FAM50:F(:.TW)8UQ\[\\[PV33:S9
PMB KSXQ@8U)\<K _T;0VJHKU=%U'Y#I2"@R+3D&:''>9:/E@XC7)QILKK+-4V)[&
P\A^W(JZUO;7$HR8GA4(=/PN@[YEOFOS<DO0%!:1/4KBR1V"P:\J\UTXA _-Q*VD4
P++*M:/*_\W!.M=CO,]A1FK5#+RAEUC">25MUD^^.,EG+$S$5V-\JHV+X N"V%;.K
P:'MS+I:NAZ"%=FPNR</(9,B1FV2\Y8N<@&W5CV=ITA+&YB+)K-U$2HC+\.(BZSS,
PNJWFVME<1YKF*@,.\0 @0YX7@0+Q)8(D*-;3*X38H)WL3UB>KWU3B9-L!H%FGX-\
P0SV7[ITUR^XE*M%B5;$ON1YJ^C.B#<2V\&[]DK(3*LA-N*",1=Z4]CID]855.IK 
P=5 KZXUZ)R/PZRCSD?9F^*?V >%)(8D/#F:[_*/_WN,W7(Z=1?+!)$F2?,_W5RLZ
P[;-SL.*2E&+F(JW/,]L=]E%'7?-K\43KZ?7!*G@X@$<VG2"&^=:6,\DO<TF7D<G!
P3.'!+3#==H\LO<SPJSC.)*A ,X<+2LUGH+B_VQZ6O/XG@Q^U'DG0;:+ <7M6+#S$
P0TK0G5/H'CUUXQY5SRWSRW@VC]2L^0Q:O--Z:F)QFE.8);(A51F>CA3>R6O9$S+(
PL-F2V+(-'!FP5?I@. 6@WTO3.-D52 //L%V6+H:3!C2TMBUM?U]!L<V?8=)L^=B:
P502!D3K>":BJ0=[VO*NP>8O^L@BP:LMK7PN0%;T>1AGN>VV/>Y=2)Z1 EE+< ][A
P+H-JD*5U+[>GWN+,I\+ /:^%.&@6-B[A K0O7""5="(2=7OJM^<PTB* ;4LN+L(B
PJ*H7,#,@,01RX@(_*BMCPW\Q=L_BHR%QB PU=B)$^FO*FT31ZL>%.4;,9)F2UG7:
PU(4A*2=8?-1XS _@TM88Y72DV.1'OTNA.O\%1Z8LX+F;V) ALA@4PBJFE\X.% )/
P(G\@V$@WHR(WH9[=%,T$"2!T*A&)4XVF30R8J&7?"X="$FH@,O#O53Q?9'C"R5W]
P$% @AL3Y[((<7C@.H8>CGKJN:8+;.E^7^F\;[GVN ^)'RD%J*:JVW\[07@.*^[J8
PR,]/S#!0*\NR;_0#.H-L&KFC2-REA"J:"Z>&L&^#^^];A,=K)W_[U+2L2A D7CNJ
PNV'C^: M#NDC1NQK<MJ5BS(NV## +[$W?BD#M9Z$+>#]E_B6("J_M[*W!!4A[T&G
PE3 *&U"7:J6L9#+I!<$MGV#W9 J/G+4#PRC+S'0D2R3<R$+]<X:FIX:R?X%<05GW
PE-.VNXZIUR[^^_DG 'L(^#U.>.!"UUHSP[G(6(2+,:A8(MNPAP3ZR?[?A!KSTFP]
PEG<\93YW8&F?!GW$7!"+ XBM@0VQ!<I./U#=JCG/:;$+1=P@SC-M/-X@A#5LYVG^
PB0MOU<E23-+[F[C'[(I%Z8_T';F)3T%]HE-^PLG&=5@]G]4\]7^)(W%_.5/EVW#A
PYGA?CIVDWR)WTC8@2 ;S"<F@F7TU*>2D7.&D_VW+]=ZZ9<%4?\'NH,0G5$*LB+?D
P]BXY9V Q6NP=QWOX^!6<WZFRR&XQ! \Z^IN#&=+O)T0E+@$MZ(H,QL&\$5-+[7R>
P"=^ (JVZDA*>K\-I-^JUJJ.G#&#A,=O^UP-01Z4M$/'TR$G5""_SDO*9[&-X!"B7
PV2>!. T)A4@HQSOFGA-LZGQ?XRJ]Z2QI[Z1/ED6YLK2D9^Q']Y&ICO%]!CL-"G[I
P,IF9 7U!3G<<G:1'&I D"<,=*Q2WI'B1'+X&>F+:.4M1(E52R5?4QA2(]B%X!!I,
P-I>J!-W]Y=U+?G36B"U#3?4]M8Q0Q<0\ZS ![%EC8T,/05;%A^K,?E:@\Y'P42+O
P>8% ?8Y_OT4,S6'5HEYAU4_D@"W\U!5R3IO'#.5%Y,5\K[#@I+8'M 5L,C2?\BXZ
PH^.G>]B&1D;H8@,E1F_OWY0GU1<6JJ%_XG@USG@Q(-07;0J#S4RP5*Z&39EJ< 6"
P2%!A<ZHIA]U\PHH;L!M48)^(,9*HVKOWUE7#7^2Y%US*2:0W3R#7I")O_B$0A^.7
P/N7B&S8WB-[;"  Y 8V99N9(Y"N(5*>'8#XRMHGG]OUPE>^N UX8D*'DYYH!4D.1
PQ5EC+9"N%-IO83NOS*,%EZK_2B%1QWV#G?SB/&RM=R2AED\;S,%Y?J&95_JK< "X
PR6_\HV,%*C-H[6EV6F81#L.G^^C=E$0\<]H*R_Q#.IDF@)?5BM=$KK"7FUKY!R7*
P&AFTW_-DF!WR3FUZA6T>0A0LY9FN&E0_8HE_RM>>(\V_J6./1XOP':=@P3HLX#J,
P"W1K,;&PO>B'.M[Q\E%JR]GSMJ.A+"5B9\^54B TU0'*)I'>U""2F'-F8Y\\KO<Y
P*FJH\KQ>3L9$G[6WUU5G#XUQ2-I0K(ORPG(KSB.#[$<S@Q@)# ^5^M>.G.Q/3-4Z
P-U N,&VT3.+>C!K_KH(F)U>R0+QS)-A8%!W).PVLAE2VZ!5"L@S=*J0[BHWM&O3&
PZ)6X=G=4/\WLW)&K"A3___Z'6N8&O?@*BEMF(ZO]RO1 JII29A2N"[IO;'6IFSTQ
P"3*T-)BB/"2ZMC^WV]H=>7&)TV/]V(T\O=]:+7(<R_*FEN$WF;!@+XY6P+5DGVV*
P?VBJRL/.&RKGX+4[<)@=J13@L(%?,8VM+'".M ;@[<P+A3_8PZK?B;]8 (:3UA5V
P]'R*ZUQ4;WPW,6)0!823#<:R!%%0WNG63[<V(N$DY\_$-.Z&@C1Q=B>[DE@94RO\
PH&'/AF&:BS<^[J!U38=#-J_YS9?Y1IJ.7==$YB5.0H4J^C-Y*NSZD*6(,/D./S+1
PGXK*U(/G#3#6MTS<7@*, A[N*+\=8'PA#@)\QCK_X-8Y.RH:=G_9&MLY-Z;IG_5R
P\/N A(C!Y]\J3#[8=)*?F,LI2]><G@D*<HFE^PG0=Y?>!8F/TXDU/%D;Z+,ARUW<
P'YXD'O "X&:?<QYFIIU%C\]Y1LF2\/O/?N]( 1SF55L^L9\QJRF\2-X[]B]:." 8
PDQ4E$'[A=K>AHKL<KPB;5U,^)NS<@=2/B0(";2[T! +X8A^$9/FY>C$Y9M@*[J[_
P0!0JL3(=4;/'#(Y;8UE-: <]=?$R^]/%:OGU'P97VVU^I-NPYXU/I>/6ICV$QW9D
P'+G?X-:9B$YZV '\T>8J2UV?8<N,;^@JLV?8J!2N,\BR@\>#*J#,DI;"@CY#X]?A
P(YY5*_S\/7]9U 8WV# 4VM;< Z1M? ) GH9!>B: Z%V.-)<"_EUW9N@#$VJVB"&]
P+?<O1B7S)1\9'P^C&K!+-N6:,+@P5$SSP(P'B3RD/)W"36,?%I)VFWMYHN28,04\
PHHU1!XRJQ8E \4(+-ZY/B12'#%=E[_"G9/6#'4!-81Z>HTM0@W43DB6-7E1C!=>I
PF3:*[US.;TL!<VDUJB0#SM.;RDD#^_56+7RJ&7!%)[<)(*/KH-GSXJ1H4Y5>@IN8
P;O/GNU3"&'V):%OHYU8(?K6#0J=23C1]?AN$[XDRRF4$C)<>SE8.7QSIXSH4<J+.
P0*C/7\)"R'-D6GK/=1C"=,_F\8!0U.K(B:*E (_V>];-61>QB]#Q<@U*C@(7?T()
P&K(^P[]\4>'KGT;H3 VM/0)46A%F]$TQ!OZ.XKB#+,GA@Q3.U4D21A( 0&T-5T(?
PD9DU]S; %*+7WC?LWTI3<VC(5I]="I0#F->X_:&A+T@4C8IX9MB?X]NBH;\S8<IN
P)]LD;AK)I-A"E3?LH[(-H8)%O7Y8UT# G"!A_.8E5>",@J=L/S6)S[2"&)WVKOMD
P96Q'-0]X#3&U=]7CM[23DL$1.->+&W<_[ P2T@[L4;=HW&7"8!8#%_\Z /Y3@(5C
P*X#Z,"EZV\+B.Y^X%JVGBNC[Y &_VA&M,V=<RDDT%,&V4.RI;0:#634Q+M,O*W7L
P"CM$#Y -"X4'X-E\ A7-1ZN^7_5ZY;4>8S)@QCC #7]JLU8X0S3Y2N53@:>,,>YT
P=4D)2, N-$?W: -XBL"EXER3*4/<=*,MN^./*F89D%[O:?.2R.OB6[63I190E X 
PY>D4*G;E)J'EM\3OVRI:R!M0PS7_?T=>Q 3E4%3K%3DR?ESC#,]KYE,W_0=X-OT!
POS;?X7>6ARL$/?>>DMY]%V=>%H\G,8%(_OPW>/JK*)4#3E1G)U?GM^+_JJ;/)$JQ
P$&VGV*/V/<WIM/%PK;WU;=Q.2<7D6SQUJ&7^8.']1RYV> #RLQ"C$&DI)I./G3?V
PTAQ_\_<TA2Q'B'$#'2Y!D'-59K(G8_%CS!N Q<Z@(^_$4N+'KYW)W9:RY*& &&#D
P@ (&">\U9'Y^^M@92-T0"MME#;R+?GKFN"!!5E,Y/S6#C06)*FOSHH@*VUP$PM9N
P2Y:.1(!)5T7HD*^,3S+.EKZXIE806?42,2[79IM;Q;:6;Z6=!]$_6WJ(P8]S9\7-
PC,IMHN\9/W"]!%J A )5TNURX<NVR\4*Y:,X\RJ) &+B-HMG0.]O2(0"TX&-P\N6
P,LKQ^HV/16"L<RL(+B0<5!3M1S)>@,R!6\S&RJ/;PIX-#82"H G0&7GR13!VA'V*
P)R K?\0.>$X!<4 J=\&R/PY-Q(H%],]%$P-63N-$Y6CS>^1 (\:%^]5]__"SZ&I/
P;A!Y59.GQ,!2$^"O3J5<C#_KF#*J>']+OG<=611!09Y;B]^ZQO3Z^U(,@B7TIZ.K
PJM4+=L3$GT]YZ-K%Z')LQX:"FPDCM_WF0#:&*8@]4+I6,I!C%3</&QDH!T39*5*M
P;,:RP\!0J[U"XU[*(VP2<IV'[:QJ>]H5=^U9#^_"LQ);X9KP!V!/,N::N:ZC>]HV
P&(>#I=5015-L,B/"5I]CL/A!,4\P+_R(5E._H-5;<7A";K@J] 5*(%A#^7@+)?@1
PU/C6PYB&,E>=,.IQ_L64N=OK[)QRJ*0,?&:!$EZNXYNB'<.G2:! W.&@[J+2"U!3
PH'VO=GMMMGOU[,C$OD72U,_/-L\XEC9 VJV,-]4632XRO+)O\D[C?#?E@KL_E?(J
P2&UZ"-<,4X3;568<Z0%EA*9SOY""ST;/KP#SY.Y2543!T4YBX9T,3&[1Z1G:P.?'
P_//ZB#0:=BEYBC2KKB!C5=<=\LB4J2<A<T0@!#]>9XI=]OR6Y8L?UZ5:J,L*JZ+#
P.JO$_1YFJO>IHAE57 2%*7!/P&K6/LK2R1?1U$6)"(2",$;%7_%J9HB6  3AS*7F
P6X;]_DW;LP7AQ1@IZ4NYVYYFG&F GCKI0&=>%<,)Y;SO0T1G2]5ULJ&:%N$'5^_Y
P<M<GD!X@-*$,O&PZ/RHB,:M;7P(HY4*-<0G5E54$G;/TFUW:&QB#;'X$/ +59*1G
PH ?@WOQ0)>UW:82)MH$W9.]M_:WVBL(U(0A>SK1K/K5UR:LX_\_]8V@H"T-B..3Y
PU/_"ZK^FF)R[*FA2^[6$RKWEB?=HI_5!K=8K0R448I&S?AGH/E50-66ZS !Z70U\
P!R"CI__:LMS*+Q9<2L=^,:L4%IT/-*0YMMZ+%%V#3"R%C6&8QHYP_^D %ECJT?6>
PD$21]<FN!"H$E+3A?5FX7V(?,S=:8=,WC_DL;#HY-( 8FON&BV7=WY,3B)>8:\HI
PB+Y-Z9C?Q4[A0_^%%+869M<UW7[S*1S%IGGK4CY;L+1M/ ,:0GA28._P+OO<BR+3
P6P\;*#:?VF2Y0'84(I[ *U[3C8.N0S^A07AGSE!F9)$@L;0I"6DT+-8@Q*^)F"=J
PW$WAC9.02^NI\'&JL"U'XXQ7#,&L/E=M3".]0-*\ +MUV0'G<WS@#0G6RRMNKD?*
PNO4ENW])5=N(+_\=2CON#VP@X1RA:00O[$YO^#66]G"HV[YL =DJN(+W(=&#L!@Q
P1!Y Z7>( ?&^*[!+;LY[^/J7]HV2L@8C$3?Q_V#'M#PU3\BD<28? 9SC&"B#L6)-
PL,9F1-(B)^[K.)U47G ]_2R!&W#"3-T-U3L*.OF/)'4RT@J#E4+5D/,=616OIR\(
P_R>?9K:TE5O!/RMW5]FHX\[H?2OCNB+XSU!ZN6U[B]M/T/!DPJ,VEB.P%)!@?Q$(
PFB5GQ<VH@%DO;H&-'4''1#FB -@X)8T$UR:4O3.&@_V1 H@V6HD(5ZAY#XT QAL#
P:> $#!2;.?XB[= 0=;6U%S^G&=(_!TJL=JKK$1*ON$@5>JH\4;/-./]P:*V2]%\ 
P2]XN58(\HWX@M/_8+M (940VZ@5=6!)YM<H-*/(D!6>!NNT!_E.6P<5>.59/Y@";
P2)5;67OO7L#^OH[?BU98]AFGB,P3[BD][,9[I/^[N3@:_(/Y _ \G<B!SA[2+:Q(
PG-P(I1*JI%45)&.8IX_8$F(?PWAZC&[*Q%K',D&O@.2@4<9_!_=9PS%ILV.;8O4Y
P>"/,PN[@+=(3@#+;[]'P=222.Y!5E^6,5VCX%!_^XLR)[U0->@B^1N(!_1.8,U*\
PLDYT$%<E)3+5Z+(2H%&UR^0P_8L1\(1O6T?O"9N!37A2\AZQ-_'9;7XEPB4-LU;3
PY8&3Q3DGP*#[2)%#\ )_)T,]!#/=P[?!E*E]I2T53;BA6S4RE#C@Z@W=!C7G^,A5
P5H1D^ &(# S@K=/.QRP@ 'ES%$X CU<4>O= !*S7**:J58 XKIER9H!V$_87Z2E^
P2#* (Y2=YZ>".^O,DPRN %-0#_%0JYB^AFIRX4N@.=3@;; #_0!=%Z!B,D!H.TMJ
P%K=^>OP7)(S@Q$S/QA!!,\9N[O.! G>K=^H](\+ZIB-IEV:X4&NL-,W@_HX[]S*R
PT*EYAE,81:R>NQ4GC,1;F;?]2O*T1PFD:^"TS^E6WM:U-KJ="IRWZ/!TRF4WS:<R
PRV]6C$<'1KLF/Q%+EDZO-MQ6;F_W,H=5B6KE5!OY8<GP:)H3.QF#X#\'W=G^)(O.
PO_[Q--.";0>VYD[:[1//."8"%/3$8@Z><.4+*4XZ95"YQ W6O,Y:H3?P.,Y6_UV_
P>6<^0&<1PTFNQ?R':3"E'4<I'D($9*$\,S^L=6?_9_&5VG7T-W#,&KRA1O&Z6MU*
PYFHM#3ZJ\!4&:JOD6,,T:;KU3$3_=VWV>6FF"I!K"$8K%+Y5R!=([$]J-V#/] +I
P4A.5<TBF>082OEOI.W)_8(%;I^Q1*NO2%@6""+-&5;U/CE4%+-EOP^$R;4D=,VX7
P@*&>.N#HJA8HBH6R67#3];7Z7=)-0K3S'.; @[_V>^@WL![[)PNVY;XIU'*F-8:6
P;I#23Y"*T0U2"BIQ AM>/T_(QH^GU<'FI-:"=RD7GB<'F!MG/>IHRVEI0R$6[B\L
PQ0 "Q"NUL%ZW4Q-O;BVX@/J$!516HH_4X'LCYZ%#9LCMVD.Z;@;\I]DI]ENQ\;[3
P*-3@!-%OE&T:M;[GB]NC7^-]_K!B8E'@XMAM=4#"X ;KQ??=%7_;PB4RVL9HE<CJ
P\5C%8?O4RPP0T 6%!"-RE8=VG_#BY [7!PU*"V8/"@7^CR:LNY'O#?TT67$E1?RA
P*V.&E<%KIJ^J&K*>X;S8Q%Z!2ZBSZ/:^=0RQ,\;EBB2$G%VD>_'*8Z(9LN3,ZTZJ
P4V,%9]UT3Y= W]A74G]! GKE.S[1'9I,_]3G?PBMP/DND$,UO%0;74&X07RURFD?
PR)W["U$%T$M0F82D/_!))VZ&8%V)AIT"#(]VZ(V&JXW&V&7$^Y55DV[5^CH7!+I-
P8/9Q9IPQ(G3X$&Y;.S+R._N SJRZ00W3*D(_S*EI;D.OJK:/$Z!Q+<,W3Z(0(N^C
P)A@/#XG"!G=*5&GK)'D;;G::6>PA$K0'C!L^)9.L_%''SMI,!BK6L41[:HJ@X^7C
PS=[RJZ_.0 X66]AD\3)^16'JYP=H<P#VQ9R@%Z*V<K<5*5U&6? R%-[8:Q>6-6I)
P?*85B]DIHD$<P"A/Z:4D3*^)[$OX6TR/B*Y>R?DN$@]FUO9_,/4A>Q%'*XXM"B?!
PK]L9R^G#KA$5]'A[6Z>HR12C=1)"Q>UH1"[GWFXL+O2=7/##=2+O25VOO&!S[^4G
P0)<8IT<Z?,:[2Y ,^J@KQM$6@:\66&QUVDWP+V2;L3>-5OP6_.]=OI%<C'O:A\J<
P,BY?F;?TMA']T;H4+J%4^>^RVI8MM/JS*J.*^(M'SK-OW ;V,^]-4L$[ZRUF56.[
P+D>E$'#,N6@2?6^,^&HO.0\2Y?,?"@ ,?NO?[J!Z.FM5S/_P\B2AT?ZM#E=WQQ^9
P]Q!IU.ET $G1BX@BT<D9>,@"WQ%[ !%/YTODIED\+6^9NKZY.JGA]:OD/[.M0<Q8
P@M[1]T+C.W*#&-LV!UEQC ];X!2Q^%!QUZ;A>0U.P_!W.KS<YN99T2K5-&ZM,CV4
P/C0 H/G!2FANWG\@/,6EYJI1<BD/KC+<(G_@"_=%\/F)%*(O=R40C[0VW.CI6-M(
P0,-^F5Q]P);)._<S6R3-1AK^MU3W+B[;TPACW_,<29]YWMGH*A$ $FDCHREAP'10
P'-1V9=.FLTM9A\TXY+>6GS$^9%8<TRX&Y"\!8I@L-8]4@MV->?_%'"R+O<%>,NNB
PR7T3H</N? 34T<N>9-C>\ANZ4ZG@7F,D%%EW-61R)^*X5HDB\BI3A3WXY.TO8Q- 
P[U0A:\;2AD;B,2L:@:AGFTUAON0KKSQ,9J^)5C@S(4X<Y@84<L<VL-=U!_I*91L_
P2L,F,X5PK!PA4F.;,9R*;(QV!]+-R(]CCBYW0?$^T.57W\&(%'/OPX' 6CWA3#DP
P]N=70!9DI?%!F_J+KG^+IKG@0'?4+;:*>2A_S(#FSAHS_XV7!VM76@?4]]$S*$==
PWBL_4(O=A,JA< R^NCWAJ"J00;GX,^-3?GP[JL_;I+S>FGS;(!K,$G)T8YT<HEI[
PK\6<M8[C0T5  &E<8]D(MFI^ICD_C8$^C,HH7G=TIAHR !^Q0T%0A8."/0#!"S[V
PV<]]94I-XF($B>N)DNY6;)RTH<!$I&1;IW-9&;UC$/\*IIMX\=H0]WOV;<C+L#:X
P4\.L7=UIH]*6@/5WT[)=W3!DJR&T*77HDG\5V-E>74DXF\6'*0O/?-90&PW3NF!E
P42O<ETD2O,X XN[\30#B__;FCXK@3PU4!5"<_T+4H:(QEE%Y4?0[7:(D!%?*KNNJ
P4CL-7X<JO75Y:MG6D=+Z'>VHP&Y4?%W6%YU.@C+QHB2P;08R\R;6-6;%E#VMO1;U
P&@Q]*.^\D^(:I];\!=)R.W]33"F+W+MZV>N%B:C;7S^)!AN&L,_Q93/[U=8=\NH-
P=$-^.JU$B>6TZ>5Q\8\)'<">&C(%^ =,OI(%_>M6-X"BJV[#5X*;-> UN.G5/5[:
PYJU+:@;V%D&HUS1NG%:*K/!02 9:@$?X*HV,8N,8&TE%IG7S)B\/F;+B++>AS6ET
P''_"AAK=DX\'R=81>&7( !EH\,%AZB;2-6D4(1ZS)^5S%_W'9_UK5"U?VIW]NJ. 
P@NB=CV#Q]^ZOZRB=+>2;T359)$@Y$[G+XGH295ZPK(VW1_F-,:00#'(_[J.KZGF.
P-+0QM&1;N2"@A2MR5<YZ#D:WM"%'W.* W_:!@LV,^(0L N[2&*!#O4@+$8YR?U?$
P-<2+$!V 3##8O?4^"TMOM]1=0]/<IT#@")8(1(FIHA%ZU:BW/<O9(UFE:LFC?*VV
PW S=UH=B7"I7N/CM\0:)@,1#SWW>.Y9"+'A&A5\9MS=W8T$;D!FT3?PQ7Q":],]:
PMY2//L0($&B+NJNX>^Z%4)JP+"H"\WL/+JF5J).A2'"AUP'@.6CBNN7"HN5-)0F+
PFOY64VM\TN";4\XB2VMF<42.5U<8\)(DV ^#)KHL_NL.04K=,"\*W'HBW5JG,3X@
PEJ26EB:N S[*%,(\J:<L@O<AJJD[>BV)R BW>:!^0W?/)%%VKN6F3]QOA]#77''Q
P;[>!M<ACD[D>K&AM-SBK9%ME$4G.H;75/RIX>A@9;=*T0]EK,I]\:V?)Q;<_A(&\
P!.IYZS%V>07=X00Z/GF@HUP)9?:QV>?-!%MH@_$8+&DDSY4_GV0O65(M\XA')>V]
P%F )9XO]AL& 3=Q0>V %T0P@0.G4<BH_'@"7_QN;T*AMDG*.0M'_MZ&,X58(@GZE
P:\%UQ^7QXI6;TY];_Z*K]&C%L U=X)W36QNW>^0#36BA4"+"[[6+/,KY2(-@(2WL
P+:]<:G\#2C75?6P7S="WK<L0Q%+=9EPT.[8M=P/B%EGQWEQ1Q(]'!4LB^P=BN9%@
P8H .KNX8NC%F%]"/%]IUP/"-_&R!3[J;@3R8C9/:G5GDN ;+L!M9:>"9:90ZM!\(
P*0USUA_RS'?%;?'^S>P:3_W;LM0Z9+/_\A C)7OIP%MPCHRM)K]4R_;M=]ZOMXC[
PZ>%1#7%A?H$B>=!Q&'<IP@2+"<"<7MZU6'"(A$3GU@JT3N,#R)-D*P#X*,U(E&3_
P.^L;T%F[60AJ(,57,_8[BI&]@K!5^9"%FL-D:7SA^G(0[0VP3U_AW6\""!6XR'RM
P2Z;@4L(L5!BM!I=#/'WS B%E9L %2%%A-7Q@_]R/EQF8Q&YVB"I#M]B OHB/YWQ6
P-O_<\D6#K$^P+?W+3A/@&F OT9_%9:JQ-D(.9@E8C08S/(V^ JYJ$'P]H@*9) G%
P;Z(NP,@S):[X$_W8[EE6"\THM02E"]/_WB3R?+<;M^?PX;N4S1B(.XV%A6)D(4X'
P,<AG\]T1I?<Y/LJ;$A +W$XV#NT69 ^*6*\OCP:C:\-4MWY*\G?KI_=VJX5M94S 
PL=5%5**,Q.31[K.JE1\FHYTIGYA;W(MG.H)S@\&&D (%:Z$A>]&&].%@G((*T \&
P+I6HGL%)=5"2D"*'$EDPU8DM5:$"D?(^L?L6F86QV6 $1X#Y]4L7MX=?YE7G;&&'
P1,,C]\ C0,7.88,N[NSS:ZD(I0)Z#.IP7F#C2^ 6:U/*("3<Z6%=7L[%@9I3$>GQ
P^-E:C2C"*C&#9;CE*)>8.VP5T1!%O7&:D7KD' B9795F.>K U7[.;^.OK,SC%ID*
PXV3ZOE\I>1GQWWF73< <C\3BV])O0KI8'+BL%&:PF0H=5PV?<AF_-5K_7O,1%$)T
P+$^Z&@1I7L@J9(!6(^<J+N53((%K9.)=\;4\?.%ARC-<HJ,-.O6S?&H30G';O^MB
P=N'?$35=L/I<9SC6O(PZ$PASQ400X.A1%,H&=S.R,@.2?!JN7%=SCYPQ>''==_MO
PF;NCSAI[]%=( @B4RG(RGP!:_TR:FN5=7Z#UTO" 7<>"*Y1H6W.AAU4*3_FO-,HP
P8SU3Y7]:HRE(8N#PR0P[JOFTV!2^TF@0!WI-8B15^/KHQ*87P&="UM44YJ,K<N(<
P#>BB, !0S=J*)0-JZ2_7O/V2(B_RP] %K7^VI50(8-!ZQ:]C!8/GI70MR*@M7$'H
P0]6&HJFKB@A-,U4^U3>P?#70:1AE)+&[?!E_.12R*^:ZDF@;QJ5 +6XH>3I*R\)0
PB1AA_GJ&.1K)A'G#I3?S/.'0CO>0< 9^+&6WH[6*RBL"B7CZAJX"ZN[1]?X-36$[
PT,F0&CU0=JI?-0JW %'0HU'/EZXK2OE4,XGOGIXE^]A3;8?T//\;44)3)"H2"$C>
P(@=N!P<031\HA/Y(,RL&_P$$R$A^OS+>8T#M#]DEH4U1IT]&JZ<096'2U2.I\J L
P4^3#1Z8(N8'O#CI/D;J)G9:J5#$A.@HCV?.C)#=H$-9!7))M=D;^PZ4;=.+OQ""6
P[%V@A(:CI,\C!X]@M+!_[RUG2F1$*=C1(UGI\FEO=S:R25K.9 6V30@^5$A;F&ST
P6UL(L/G&U*3_==/K)3)< OJ;9&^EQ20VYG&24W#E'U)RR*1*621:SL6C6[!SH%6\
P1Z9BDI6(S^3H$[CI'/F0R_U;PHM"?;)\JL]>WI/'*054@W2GOBUL!:B\\G9FSE2P
PG!<"LO$8B*M26L-$WZ!TT7&%1RJ2F?@H(=.4F%J?IJ434E<7*]V@W9$ _[KV6C>H
PRNRI[UW%1QE7T#FJWI1I&FA2+QD6S!:P>F[DLJY$79/MKQ]8V[1/07JQ!PXZ;YWY
PG6U^TYBBW-L=>ER=A0EKQ71G7OU@^J9TF1"Z',F[*\:*/U<+_U*.W,9 K*[0#=..
PW1MW8-"G_8W2<U-M0438\T&T(DI*EROC3J+ '1PXL" RN +Q-,V=1 ?]!B'*;CUD
P1UB\$E:Q(";>5^JD":-QOE=8Z//O.T]ELEMHI;=^4C\_J??Y.&DN1@R>70<)X24+
P>\%61\2R:RTT3G/=39OBH[.01I_ZZ--APSRR)]65(-NXY4Z= TH?;5:!][$DOFT)
PI"#&6_E=JWOKXV0!@^^H$7'+8&1?EP7?7O53'F8P9YM=6U*/C^T5\K%-_&O5CEJL
PQP%=ZT$L>)#K7H/O2>;U+L%J6':( ?;1@4(C['321/OSPVZMADA<-[&$";'L-8M$
P6DA3E$O4G"WY,86W6E82B6]2L8<.M(824\+7QOL9JVV\J))ST]S0@G/&=1&9^.]N
PVW[;95F%!AC1(3&7*7(U,WL)FWZU\P7GY_7>SLZ.QCRFEA>6--KAVZ1?V@7L(%EK
P.J:^M0AJ3->Z>@]KG+1C'PD'UTYO68RJ'2^;.2J<*)-Y>B %7E[0-\ 3FXLSW:LO
P9Z]ZX9Y*7L:J$FJCW"W.O3BL8^.9P(@ +! 99,OB(M'/&J[?<^=DNTO2BWR7 ].9
PSB\&.45SBN&3H[Y?SN2W*MN=I2%U(#UG(7R\/?5JJ&>*S]K284CSH$&#G1<;LVDP
P(O7<OY([=ENF/.W)(Y))N;CA]EW(5,RCH:N%\GDHVF;"O6F[HHHS_.H\Y^6P-:&%
P,V5,4&UU+XG>DR928!9712X.S%^.C6M9@X/U#8"CPWI*95;%K0-#43DLAP9FF(7C
P4HY@3I$%O86>[L9"91*04PLV!3YG[2'A_1R!^[EF#@!W/%\O>MV3=J :9;FX3+("
PH R"B/:?*.DG\S@;BMIG&<)GY.'-="K&K=D6[-DH&N]["!E[2A2SGC%@&#L9M<'Y
PZ/R2]X,23J+Q4"7P-+DX8&-/+L+[RCO_*;#A(&B3-_J\^_CPU#OH=3I#<;Q-N?^N
P*B=&LVN?,MCNS#S;=;MC!R^>M_S^S!G;?G\:_=1LY-!\J#M.FPU+/F6MW^,!$W"(
PX%5I1:]*5]*/,(2U9H*UUE)9P/&19U G+.;K(RL].+PM&'=;+8TB4S2 ]\%<&3A2
PDB-<G=XC<XPP0:@F F(HMFAE7)*\/WN )7%C41B8<208G1<_RZY(Y% 4VBXIKN3L
P7<_!6Y/&QI[,PB'T/5<UE3-7^+A7&N>B@]%F+I2^2VVA7VU9R/'/,3BT>^RY9),*
P%G9]^G45R,D>V2^E'ES.6;AU>1V/N #@@)I' [CA1%Y(X>,80(T)6_GX:Q/('-[+
P2=:"+% $7X_BPV6U9(_7ZT .=\JZ=U^J=JX+?6N>77R0]S"MG39JDKZ;C'<\.LM'
PX(/M9FECB 5EH,RI1P'0<;H7\-Q'M8CE)2%'72GI]&,2F5L0 (\(FI#:^K>LVOM5
P[!Z!-K(]-DN":V':KIF*J0>Z.)K?SIF>A8K]4&))<WL\44/CAL7GJE0^__L<VK!/
PX4#N#O<Q3""R/272 8>X>9!:#[[7Z82#)Z1(,HF%^S!!LE#QM.MW.4^(N>FZ**NE
PGA1ZR'M'K*%7D('7;KY'B\:Q8%-L&K+BM28'QE8Y+M&HL1MR-\(+*#<CQH*-CFW<
PQZV^"S%)MY6HBRX!HL=9.=1I*(2^VW:V[[_P -2'S1]:J(V&OU/NL.SYGC^<("U4
P(H!@?32.,[2H!,497*]]25O;AB@;VEVQ@9<M+&!(C[8NKB@RJ;MR]^@.70#4\K19
PBH%N>/N&:#_(J44LZTS]5RYU)D&+'9:PLP)EV @OCVLW*"PJI/4XYD1)(OSN\P7_
P6'/?9Y)>/$#+D7G"7P+;+U@M=<S4*82;'?"13N3,A,MQ?T-;@B*80. *<F.?V9\;
P(2R!=#AU^V(P/[T=B:I]2#P.> U>C)XH88;+!_ 4$4(1,?H56O58_7'8(-KG"% R
P,1F"XID_WA^QFU$RX^";7T!'N]5,[0_MN7(A6S9I=P*7<L =GV):KHZC'X3I?<3/
P2YTU^+0KL0MGML&3H054UJB*U7!6X6)W<:@"^V+ND+Y/23]0#9#NWDC '0KOKR,!
P][U%7 :8HS"NGE0Y(*55$7F@VY:W':JBN"K33!M"(CW#XA+;"S'6>TTQ4=9WV")\
PRO-[WV-FC1RRM'DK3,JBQ(-%."/@)H18M."L[[@VH_O?:\-3Y,S8J<$(8H8D!3W]
P)V^1/F<^Y46^U:*[!74T!O3AKF7^U,8%&2!:I+@U9F@M6GH&)+$A T-*&G',V!P^
P63[$U#P3?_ZF FIDG0*T3./+>:T>6<W^=R]?I0C,5M$?,E/GAAM:;%(.<?D'C:RR
P9T(S,3[8(ES\_$EV\30L[G%HY2[?P,Z@E>'363K6#UK?L9IU.I@$(<US^TB?85Z3
PP%X%U[J& 0?!6B%T ^KEOE:D^(E>$A")P+L-81!P(]CVQ=U *@S* 2MU6ZZW?9\+
P8JD^II\+LL]$Z,SQ)J/&=SI>M&\W)0HE12QS@O=(6>509YAP=G(6EAGFZ!^R\%:;
PJ?*UI.CUT^?T$N/8+4<Y)HJRE0*&:E\%%D\[DEX8>0/Y:28&MFE38T(O_&$()'>7
P\JB"DR)AZH_+:[U^<.#2H,C-Q8EE!Y"'ERZ:NJ=%?<ER<7N&SS<)+R$U&Z<48?2E
P_@'0LD%'Z6JF2PRYW,*+7#/:SQ?B(N7I,$TA6=_"=";D0HD<[?MNQG(0X'(#CPP;
P\R0MQG,K'0TV#Z%?.[6HA$OB MPARIUA=!'P2T3LVM$\\-6T=V[L#!E/^P-/AQ2:
P?1KI(2KT/>E#8PU]2\JZG.7>WRR^W/E:9\IR4 =QLUK7U2Y1RTD@PRW$!,.1"P7.
PQD]Q@ZTONM/TJ2[G*&J%Y+MX(B9TRUS4VVRID<W954EB+-T-&]B6,E$HH.>7\FL+
P;S$(Z3MN^"\%HN,H[!%I#HI@\4>P)S6!.X+L&#=H2EA:V?IC5^0E<]_V#A$1P+MM
PZO>"<89[EDQ/NE;&$9OS>Y,1"W;RP7^4_"[T&C3+(#,M3K<$,(W09O?L'*$>A9S?
PBRY28N!7*//$+U>W1":RG5[&3KXY"-(R;T9EU88O+ K5^U(65!AIXW,55^%1!";]
P#<>47926,L0;LCD2OO9L^.S2E^9K:PA&CI#CF=3+H:ST*%M0!;07,OQO0-; <;U,
P ((IJ/&9568HR>D[V"[U<8H/(L8S>K''!!>(J2S<WZ?##W[2KN^Y\$_"(<IN\I+$
P:3H9S[,ZHRZ7*P+-%PPJ3Y6QM-F='/@7()P_[\9LO08SG4Q;YII#)0X!B:R[MF?)
P^)(&0#KNYOK)40VM+81T98^UJ009IGCV]+R1("X%H7C1T1KZTDI-:38';PWP(4ZZ
PHD!QRG1WV]P>"_LLC"6(SH^SG8]'8Z<G) T)FM$DNFU8O<22?!9^([EMGM*;/K8B
P=LTO(4_]0)AF_UP74*:15!>N1KUDUK=H81X0,+0[?(8[[ZVF<5'^I+517QT7Z^=\
PBX#$)YV!7:@:4W8E6( <IBI]1@*%!W0&)P(@W-NI=+#>6_FF6J!?!&MDK4"RG*,6
PE0L#MHQTST%Y3B>71"^GE5M)3/S/ *VQ$.N9R:PIS"I"@^-+_+@1EO4/^X1P'6*)
PR 5W @ZX(O.C.R\!AF<XQ+&S),M>1V5-JU<EH\^ VX9LQB<QS-ER=?X3A*FE]-:%
PUA=T\T'?*M-?&D2^L +]8UCO7(SX9F.B!I(S<*(M(,'$(,4< +Y[U": V*_]A^S]
P._)[ZLI^F/ S%S]^YLV(+"=>?19D=-Y@A_E$35T<3<E"DA?5]#+1V[WSWV-)0JW8
PJJ(9^-DRXT;-/U(G;DF T1C7_N@&W,YK^S1F=R ^;-S_5K9> C?;W'S@&6'J19^C
P5H=PT-DH+!YY^[^OAID!7<8K[R>[@*X2V%PEXH<BH^\&41+_GNRJ **IU)HU>SP\
PC-JX%P6JKX2AW(:4J\$ZZW7D=5D"[^F6GP]W4=&^)^:R,1:FEO^[_#Q4"8 PD+CN
P[UJ,3V5X^_G B2(^K[/UWEAJ/[=I6:H<&9BK3,N]OZ=>.S5]6]K ZDI$D6UH2"V.
P#XN;\M;PAFW.EG$I/+A25G?I+8D:5A3_^%2+13/3PD0[U,07&#2C]/.HVD\8DNN4
P?ARP:];\?AJRQN:1'>H%21:>4/'. H'ELSSNOLA,&-+U]!J308M7.M_9K"4O4^6*
P5+I5F<AYPK * H@;NE 0TEB0AU*66K_EWUKD^&?,.WB9D?!COEZ>P=%)\5R>L$PD
PMBO)#RIKLI8#/S@X/=UMO=@XB"YO&L]LDUS_66Z;(G&AF89"!;57GANOK9FI@<!$
P[^K)*VLU25, ]AV65F3*])89GWGNWAP>.UNW+ ^:8\H1.>6_R6)#_+BW/>>B5%AT
P0;5Z2#<I546_:I5LQ8'6EDD%;J8A!$\<HH8CSG^(55)-NZO;D=S%_,=&@:]WG1A)
PV9KJKZDU<-XJZ<"R5)_SI@PP;?6D&LFIARD'#7WM,N3JFP7YF.$^>OW&3HZ1R>]Z
PN#0 4KU/)8:S/;37.K'ZF^#LVOXT4D^*"P!Q;0JT=8E>XP/G7R<"ACT$S]>HXZL2
P)5.')RBB8UC3E0ZE@)E7U6DU5XUQ=[J*#';C7WCO0"Z?<'Y9T$Q;Q^WJO%&*L:<?
P*9.9&/PHF*M6(8GT>^0<J8T6036X80WG;&,X5T_,YN,8@LHV-U&8N$PZVW:(I<?'
P/B!+ WMFL(YYEH<0T'--CVSAU=U\!(T S6PHB\/IF>F8L1DV*-MX(1E(O^0&R5HV
P,F90R'KYZB!@+[2'QJ?IV!(0G\]]A R8.(G6B,"2E3& KW^,.MJ-!'SD9(=@P1W'
PMN?J?^TJWUB3L5HG(<Y'O=1JDB'H9(DA 09,*=K+UEBZ5TUIIN!GW38X+*H8#M)^
PI4_06#ZZISQ$I 6-:>\5]75#QV;E$MM#^!V*LQ(CRM/?N&R.)9^FD9&Y!%@)R'GI
P%9KKG.3;A/](!0.2))J9_/&Z^U1N#3(EW=32*' !WYID:ZR+VZ#_>;K5'&-J[AO)
PX5H%$24)T!98C;BW3[0T?(#A@=L0Q=Z52^6YVIS((B3X4?KYP++)2),:4.*@H=$E
PKL^$C=W80&-K1!A=_%5UG;_;_"+M-/+Z9ALJX'<&HACVA;7AR_6 06#&=YWA@>D8
P.@.NH3";;L)I]5C7.+JOA;\^0&"0&+Y@1/FQY1-M]M4<3BIE)S24&L917V"O]],&
PJ6QAS7?M\[S'7$0@L0\K4/XRE@F_,J5YA(">Q/P6;,?OBUUT[SD8L"ZG([F)S;(X
P57FXL]=YVYHUE@WIZ/)Y#=D"X7A_RTNM<;!NZ%/.C6'_)09/C2OE?/V=:SVF,X3T
P]K<)JRZ'UK94&=/WW(,O2QCY3=^4ZUM_SB:$MZ KKK+$Q5^S3G.R[CM>-TA590J8
PRZG#/P6<D8!FMGJL>IITTR"5WFF?2_)[#^F(\7-8H#N1>EG5)R(D+T1:1Z9;G@W0
P> :$*OS[X^B/U_7KV5@#8K#N/0]8Y"&0PI$+72-5Z;)E;5Q[VUV_E%,MR&;^PX0V
P<[V)J%U$RF\^OW87!=&!)$,\Q,!Q&8)&]QG$<Z(\>U<(.?B_5V(2]@_0W]>^LTP,
P\D-ZYH88$_WGSF=8?N[JGE_.+,3\[,B)"&B.@V3[*4E ZT=%>(5721BU:O&!@'X5
P<2Z$3W!C7]BM%X58 X-A#<#"28<D_ZF312(%LU.G"M%*5*$-!#I29) =O)#O<B[E
P?D: E96[-8=!=<3:8B2DSP'.$2#QYLSH?N(2%VKH-Q?&+02VMO9+)77]*]U9M#>/
P1"?.D0Y1MUWP;L=,+7E<X$QT-1.TRD<*!O/P;-VQS-QZ)4L>'[GW#+]$<@,;-\+W
P-L#_PW=X!VOR794!*.VV_1>+/ 5<71J@-(:B?9@0S,J$W,!Y!.*]J70I;!%M1QDF
P#^CJ)LS"$6Z2WFZ='T@]X C=( W_:4T]J2'EY47K!^:_I_9#H]!PH>N\CG)C([,]
PY*:+A8):P*$7E;<G6/+SB5PQ4=?":W<<5'5FI$UH)VQ!S=Y&'@,0 URXA#DH=2C*
P.<:>5U6QW9'KV\U-90!Z:P^(8<J4:P]U_7_K-EE7(]?Y3YG:E,0]\S6^?DOR:X4V
P<]7I$SFWM_8('6MV($$=I-?VTU5Y2X8F?E; ?EEXHG&Q_?H+C0\@*Y9: Z08XA8+
PI-^2DDX0-(Z'RYS5Y\*)=FDD7308\GAO3ZD'G5Q 29PF,Y3!VO8<&YO"T1IBAYU?
P2ROC1CRXPF_BWM8A".'(@U._,H<3_V]YE;Z[Y[4#NR:(!:GMEM70X^=ZGG^J2&5[
PCV%!/]75<TF*F(\YT7;[[>^[3TSO4P@*9MR-@V)<UKB02ZR.SU9)6/(@J"@AI;9Z
PF*J#=!BB@7V:4V*PQZG/K\C:-!R> 45I&%ZWH7!X+1>3!)#?ZA:R]Z@L?M2V]\Y!
P/)>LC.(X8>_(Q/^06)TW7=GT+\EK.+@1Q'BH"M_'0#I9$H40A+6KXGJ-4*EXCJ>Z
P#$A]R9?H*:43?N@E>(69$5!,V^EP^=Y@BN=)CYV.XS"NITS*W+#%N;L30R427I$$
P(#U#A9<C3,9K"CC$V7<H*&"@)K"IN*P"9*QAC!1K*O5=1(T)/XJ6Y9-+T5D2Z3_$
P?2V)(T'H4CF+W/>;M*L"&INT-!B)?.\KW;F^\E4+UL[U8I"]XDI0--C=J9TO<'(]
PA$M4+0 P*.74L0 &-E-=SW!$U</*.SP@04TP4%3I[:YKTV%EF'[!Y H%U<8)>8 X
P4/%1COY %GWNY";UP"=VM4?]]4. _<FA]M&4Z(6&Q>"'=VZ^I;LXUBLD!(B)?#*C
P(Z.CDBS[+3T7\"[KAP6SC$TS2#/+=EH''D+;&6T]JKV=2^7&?[N:]3<B6ET8;9P.
PA(_R+JW:I/3ZLX[D+Z9FN01_21?<_^;J2[_[QW*%N??A6ADQLP<0MRAY]N <4?:T
P8OER#*=A-O $;%48;N((C.8$5=7@XO?NT@8O*IW<A-!>3#]$VAF7^P5*.78BUN=R
P@0=?6EM!Q4J7YUCO%KTE4)^F("SN**<@%'CA8731N0-)N62:*E\YN5C6+-;_+4J;
P"@.3KR89<10>LED.3UGU56$_U5K:/B9Y_?F,7^O4"L!F84BF%:/(SY;LU@\?)[F)
P9E39+?6D*-R*0- "D;0HO33KH7_8UC81<F-]I[<2ID67=#Y#$RD#1MMK6>2.EW?9
PA\#WBT':&PD;; R_["SV.1*&RS9J&(C*&K%K!A'B3&I6)L=@;6]@.6:1/'H.9RRB
P%K;XY7K1 @:4CJG\VRBTGP>0I!::/O]=,GWK4AD5CUI#*^!N31<PVO_S4A[W2P2N
P=N6B>(F.2-4-U_'/K4=.7YGO3-E*VY^/76N(>DZ6VOGV?IDH^%2!)RZVO?)7<260
PB81#Z64*XLD?EC=YY,1RF15B,5'D*!_T)&DT7P/6W#2H8DJFZU#+U;HH,?R%#LJ 
PM_[$4%'V9-W,/AB;+J*X[.5(F<!"RALKP%TD?ZT%OP!("N=JKLH^>,=R'A4S'UW8
P ^7CWL)-Z?+!%/CS1IISJ:3._]N1<G9]R@C/]?C<6K7OSE@2OG%D D\&>A(P]]Q"
PX*<1BTG4!E+)L"KRC*W!Z,3ZE<R+T3""N6!MP-VMYE7-/[G.^8(:3;]?B1!83?C(
P]P,%1G492=LFC^9F^9/#M4_K^J7.0M/3LEAG-'S;GB$1+A@.:^3+*0$PIX"BB'OB
PJ.S;CM<F76D\BR$ZTHS0;4X\Q*"6PP^W  O[CW;PWOMBTX/*(J7PK; Z#I"P%R:Q
P_'>,Q4D\"K]5*8X'EZ6 :389SX9 I:XB,.5J,I?^J:/SU#(\UOOJD 74=_ TI8$0
P>P7AYYLX\0U7>:QH!?..@!K07).R=O\L9U:VFEH2]8+V L5%=5*9IH8+5/AY!CYK
P1:5HN-#I20"J>C31:9N0 ''CQ]*1$VB"B68R3QWDEGMN&O1CSRFPW4,9E28UZ1@E
PJXX/,5JX=RJ/;]SC4Z8026RZV+8(?CA'!-:G%=L@WAZI)>&VV&!H$]+*RTY<'A1$
P+WRNT@4S^C]:]PF3VKH<_>@?!6#47SX3) />?<I!7&C"48Q"N&;*_.$IW 6";A,D
P$MG$;]",K\U/-=6D-^'74O^]Q.P&8(SL!K-!F>-XJ4G08*9O"<>@@=!^J)]*_9<Q
P$[(PJEJ@]!"6F:$\N%FWM_G?]"BL'V^1M;#I>O2-/L$$WE%Y?N];I(\(3DY%M:LT
P^S<1W$8&+%Y*O\];0\XW'"8,N/(:D0PS/!]P=J6A43"M6[_P6'[GSFC!!)C*@=GV
P_,9"2?,=[1I65\=JH9?YZ2_ @EF0"Q^&#>K<W]PY<EN/N4 P1!3TY[RI)494)[SS
P7$?I#"J0LK%,*(R]"A_VQ/A?K,V>N^-<GFJ:*I><"S5//@X_*X2$,8(6$ZIC*QHN
PQ=X[=H1Y/-0(!&ZL%M=6*?AXWY.#F<QVR^9COWHM3K61,_@Z\4A>2Z6+,W12IL+Z
P.)R8*EI%T@XCV7%!8HSA&8(K?T(H&;:35N</82=PKY&@RZ,VT*GC,#G!)C4<%.A]
P@K&=H:%WINSSP-)A=?ZKJCY;YX<*NR$4XPGP\P=W:A^V_KJZQVCP-2?W;]RCRKXR
P)7IR$&@HNA@1T1<1JHN=?1S*X>.'/9=N,T(EC_UMAKI^G-_R;E=</:=RZOJ#"@!3
PF2+\F'()*P_5)*%O*<#,@9?NV?A*(4HXD5&"(N&)F7&CH;]7)T1F\P)%9"49S[P2
P6@,<;Q 3P=5$A/@1KECI?*1O?"9(;LLXJ6*2R2^\&7B(>@10"#6%E_[J8K>P%'>V
P@.G_>2ZNNG<@W?XRB2 @F3?XC6U[NTCZ\9D[UG H*,(""QHHIYFQ_!RRU< *O.;H
P[\[X.G''W7]7W#0[M-JH@BNO$D>P\22&GA>UL'U.L[OYOZ,9MDO8"]1Y$LR$QM\R
P/(M*C$M045#2K]P<R3AC)PY.O%$[O&:!T"CFQH]N4X@&SN(/VKN9$<#52D2&%U6Q
P-] WA'Q\>2LACXAR=$XU4?IS>!\M'=R/'. BV^O]3%7[KCAI@^>37+J("XO&G2NB
P)F?4-[AX >2JYV +IK%LY1'FKG@@^F71Z%;*MK#-U@!:M;I%/>8KE1FBQ=F[A)&[
P*E* *,W,Y)&#OF/,S0H7<)FU+AX VZ8D+"&H)*?#V6J<V:O>RQR\_M!B:Y?43B.+
PM9R5(/Q,513[P!\JD7,2DEVXG,RU5U;.D"9G/WJU566_Y P6K85@_RH;CQ(-,7@(
PE?Z0;#V"?BXWK_'\Y%]M93=3WU"*8*G$=A)"Y-AUNV(D E#T-4$$ 'H-LP$ (YQK
P4R/ _TI!R3QEQN+?OXW:CLC;T J3TC]O>-RB;JEU<-[W4%T6\)SSCIA33@<YRBT)
P6T5!MY:D.Q[0<UIC&<[C5%!#V17(ZT,KU?H)U&FL151;/!!TB,\G!0W>!'W^(B.)
P 9': V#T6,-"N:37Z;%,)DY54PWA<3%^M;V?9S^_G&6YGT^]*"G5"5"!!XIRJ64D
P(=((+2[G&!YC!+B,F0ZES4D 0#Q:;-N-@VO=KG4 M<^$M1KN:W-5J3HX/6F9=,J/
P1QM9$"2?@FG2]G:MP?M78-ICG<K"6JSX=&@%XI\+T 1?"X8=T!64HI_H0NN2_U^N
P*_@/UIB$_HV*TLHJ/X7"VBZC,G9V:ZQ_MU*X@UF%'*ZN_T#G[%(*)G\DL3R,I1Z'
P$3[Z8:YKXY(;T>^_TJ"=BYPCZ68P_"OHRMNBI]/V"ZFBZRU?%4B@30SRT/LG?XHC
P\\3[OIG1U]G >?QLKNB6.'3M-X@T1V/@=UC#R%F:L6I._X[YH<ZIQA,_$>, :VX?
PG6<6(K_MGT919SS$R@+NRUD?4]]P3V:3G+SWVZ6>A)!B<+#38 MQ(&;)N[P--/I(
PC%J*$B^#N!)_N#I&G[+CR\WE12$)4[-71=2S2P;)=\L)"=_QCBD3X/F9O!.[7<,Z
PK#!$TB.X&#_]M9,5 WW0_"KGJ %;NDW2?WZ*/UX4KB>K]M%(7FZATYG]OY;K<M*2
PGD\YLPU'+Y.BX9^,I*M<]S"X1\$,%[AD63E>GZ"E_Y[\?'JKZ:"MGW&]Z6 C;'+I
PS*#V:IH59*7$"[D)=13I-+3\W%9Q80LSUST_6A0[L_%0%0]9 ZVRTA;4+3\Y\2.\
P7XIHH@:HH->J@J"TPO$$V<+#I#:L(/<V<?C#;=Y:X(83(Y-\ ,LGXKIP%$G(-<<V
P)O=*Y.EN6MZXH1Y*(OTOU+';S.QW0LL4Z%' 5A!N\/_\8&]3+6)8_,YY,\04>ZS\
P:A2Z6@ZH*"3H8;^X9+Q:<>R%.,8,B(7$G8(\J;+VM;Q8HE2Y/NF:]%(L:9OO#2Y?
P2(VR3$Q"*VI,<@AX&"D+BVZ;'U(#1.&R*[;"2")[0!L8?A<F%I/YPJ>7_%QS-@W3
P"&4' P<RF=5].6W->P:G]PPJ+.D8^,WBRS,__XG08/E%"=8L.Y6QX:RB 'IF\'<5
P"?=70L<C97)=FKWW'H*+P#H?O8^L5/?T]+I(J;J]8[:9H@#PYY89J6S@0 .9*/!R
PT2A6:]?R\-PY-!=Z?SL^%">QQ9V1#P)-MZGI?(:,JKM.+$^#=CJ'[R!$%F!&#%NI
PG@F*MD3\5W'>G^::Z00J-AMVW:G)^JYFGQ2VB9O@8)%!UEWVCZR[HYA'3*K#H/DZ
P_1GCNO+]Z^:4"M@G+Q82?D$;M@Q?WH%='RRU>.(NW?>>W^$ O6I!E,ZW?U;EFTNS
P$4)RJI4$E$3T0\>AY:%K[C"L()LT_;!.(L74Z#$%S"-3B3"H55HCM]/(:>$'3K)P
P[E$>9BX>3)8@(1D%'6P!GO ^]$0M"9I>P>R=VLTD#?<==MX3\BQSUM+@[U\IWQ2^
P9%9OG]KTLEHQYP/2C"C$TNXO=H3<KL[(;[O7FMA8Z'<4D^SB(NK3H77D VLI:RD2
PUV%[D.B,DQ/=QDZ6_/H2CB;D_*H_R_I+6+I09^S=X#U\/FE231"-31I,8U'P<P[2
P#3CL>Y.ODQ(AZ?2:/ E>[H'663"?^<0Z:1\1AC%P)K4>'=]_6LZKW(A:?>0<?4LZ
P8 U2:]1G> 8W?(S_ZYT"(!]R_:,]OW\IJE./]FR1LCLT>#8]F/FGO8ZE1\WWI^ ]
P2BQB1A]NL*1HEXJ:!Q]Z+OZ54-5T2P.M<=7&>_;/YS+ZEG;/SFU[(/AA0D48[B5 
PDK$?,TN&T.#1W-\*5:;:U*\WH[Y1 F.2Z@RUR54!97N>1?=?\MA6[*(,:!\+C@4C
PI+S]4 S>:>I ]<)H@F(4#1P9CL9>=97F;_B42G2N9J=<WA<C-[$K6;^/*4FY&!3$
P79401=7C2J.#A4$%S(N>9 A&/P/3%9M.Q[IUP0[@[TF/QO);.%D/#:W4BU46Q)P:
PPV26:::L8V/EI(8XG&^D6R(6CJ"V9T%Q8R/0M#P.M@JBMNF:,6$K,&?9J?MF%IP^
P^@ $'6[S:%Y%D0L!TP\>DWYFRHBQW5Q:!. ;-1O@0/DDH;N.HZ<'>C3W'T('ID\/
P*,^@RM-P)\\7YEVNWS)ILL$V:_=I*G/ITI.ER@@ CM;)@>18 3^I3_C&0FU?B+*-
P PN=><^4.=[YMF\/-_$ARJX\3170T#%9^@&O<'?9E/>9KMMB3%&M'=T:*,U50@5I
PW03\=<Z@& *$VK?*IQ% <@*BB@LU$-_PN<3)S(=.M-X2D3L((&:O=C'7Y AO89_G
P8H=,2!\A3V2BE$E^0M JF@8'HMM>_0G_CQ[T ZQ(&G_C$E!/4%Q_C/< P>\XK2)G
P=!TH(.([>SD=/Z6/GZ"F2/SCV(&AX#0K_D4YOD.<.ZO:RTSR*V_3*P$:T:$Z_\W+
PT_$K^LOV8FPD$*K7@3MD'4(UX[1_.^GP' Q$4U"54FS(.+\I<)%(PIS_:=-&2N^A
P+GL85@M7+Z1VJ+7"%=5MYN7 *4Q:0(8V,7I-'(UWW!6@$&XF!=#NS#:G*OQK0A\D
PZ:F=K-SP%"CE(4K1_@YQ3YF'4XQE]*U\3-@N(XE9!36G=TRR5B'1]8<*MG4/@#]!
P.R<9*O UU9?CZ$ @39GT/; [ 663YH;YHH(Y7BB!:3I2-^@K/'9_"SP;U]Z6H#YF
P/@("%]@%,5Q=.1,\?E423"-%+\4Y28K8W?*$3,DG.JPXO\)D'Q36,(2*%/ T5US6
PY1LUUE>6>Y84O58E3Y-G$"W:JD3I,MFV856-MD%\\3@R4-,A7_^$?[V/#Q8?6PVM
P_HCN#& +M(?$ ++1]_4M]L=W.#GZ(BVGDN%E[&IQ9X,:LY_%9A[^93F=:^.@2Q5&
PKM_FHT5H6ZL%?;KKOK'JYEZK1"XO#S#B-I AZ<N_]4V7FD[%*VI*@G@FBISYL_'5
PR/[6%@DVJ="N&0:*ROGZ%EMVO["*IV6:1H[!1+^M919R?.Z5GB;"26;]\K52QP1E
P@U!55^:I(=*.U7AUPQA&-%X.9"VVS(-'+RN.+<.1^U^]QKDI1A5BV)78.%'C$1V\
P;D53=IK!OAX7O3:>'&JI*:.TF,;9D?F6'558 8W0GJ%S@P,)@1;61/T*\,%-:**F
P\1N_,5N'MU2,D[Y]UVZ^FG<QSLX\)A9^L:9XSBH69<K-=6=C)W+B9DWBC76+.?R2
PPQ1F$IV3TWZV:H9<9E1FY/G!E6R.=^"6^%0"M@EI>:\F7BK5E\6QG4GF+*BW<V>6
P3#U(* _JY]#<>#U7+E^,='.Q6%M@*:,8:PR(/,$L^((T;=<RB#VH2=H=JE)^.5*:
P!W[4V7=J=2C_FK8QO6,:3#R2T0Q[Z$UN8ZI)J%0,I6@O5(06\IA_LPS30J6-^^Z[
P][-<2J<AH"8/*36'JK;C%Q]W!TQYIOXXEGW?Y_E>S7\K,T(X[0.]H(F%-YA_T1IC
PW8@VI9(\1Z+VJ"-X$LO/&7=E(1(H'6)*)RD+ CV<%=VUF39TC0\#) C0SE*7B^K2
P9_USN'MM@ 4/DDL1;'J0K',H56.C;?/$JJ:6&0P/(IC-TDC4*MMS-%9B-\5JEUC:
PG]E!RIEY'+,CU)G1!<-5Y&J<!SC[FO?X#MVQ#GJD6 VXM1EIO":\H+&BX2'Q"30^
P3["(L1:Q'_&+:33KM;RX'_@D[U'SV!3<P,1VL[H[+\7?G)(JJ0AN4S&VZ>39Q1KD
P$WP)7K,H&'X3*LA6GL?%?ET@T.T>-LY,]8LC(JZD(Z^RV.'2VH58H;#*/3%N(;ZJ
P.4UICJP4(#WYI0D"XYL""M>)KA>&6[+'08NOECI,,W)3'5$JH=MKT?,A(A0*8+P0
P#MBVP;M8=]-;7A9O3R<W[YN^+?_HT;<C]V(#Q,N7<!0ZNX_Y5<_QS_=<&+;V"W:[
P#?(74[@Z2CV1F*>YAP?9% 7#1#V9SS1\'PYWLJ<*D(34BSSDS\WJO#E=PTH4<"D-
PP08/J19Q @D^SV$#:VF:B+D;S"\JL9TGG&*O*7^.R5*LY9B!LFZ/V%O$_-I_!2Q]
PFT?PX2'51S>"VR.ER;E#K^/'2A4%'W,E$FRI;?*AHZE9TO]%'B*()IDDT&)(=8GM
PUPO1O68F'64E_^3U1<A%)@]5BYD2@!A'Z()B+5M7!;I%8#HZXI;F;VI26AQ1YN?"
P\ZT\%9%H Z)'CGOF\U,N#TDAM$?#ZXJN2*WP^)4]P"\I\>SX-QM5X'%G'U67O.TO
P;$>&][DH%:F'^. Z[44TM+O/STT76$VCW[WVR4#OX7G%[&I[^6YTNTHPX4A-W(_?
PB9X4JD3_X/1%D-59VHK%T-A$K05![,Q-RXN+:>JF[6HJO18?LFF2$,Q5S!H?19^\
PU\.(80SF<LFLK]E ]M12M)8A"[%C!F_19?I3QJ]$$B2\-53J ;\ PDT/4]94QI]I
PT5FA>2X5]]G0:JU&GQ_6Z?W^T\)*CII--1$:NJ80 ZWF(OT7<9ZZ#@0YZ"#3:IM8
P-R>%UX%66+_]>L@+Y@6A@!O3H?I(EXCH47J"=]0'-QNR]@(N]%<Z_BC-67@V"@!5
P)R#O'$I#!7(@B:QN-\>9*ZW6Z]"/D<IJ:A;:X$2%@L?A&)V2*>R50[\<BNFOHZXK
P%;.WW\DP-1,5C$T4]*.F/.)6V3RS1+@H*&(SG2>?=7U;96;]KEFVI7Z(C+E/@W"-
P1/*8%,G#2+6Z!D&_:';^29M&#?-J/-5A8 ZIX*G#_?*M6L>'50.%"WU'SU3"8*&[
P4]B:)0?>P^]W\>KR]Y$S;24A;3\AV>:(PGU/_$Z\0L^U"IUHV7-R>XLJHABE:+NL
PH6H&F][WE;%*@^EL@I0Y 1?WE.0&"PGUFU$@AJXR"<)\SCW51:@/E?9[AY@AE !$
PF]ED,:G""->;O_62/%4I*T#$=Y&.*-FZ[14;6;Y!Y8B?(91>)];2AEQ'D+_Y0IP8
PQ5Q2^;;Z/+?O*28=U.._Y8X959"31>0Z:76%Q"D:5*."?Z_N!>%)CEFW10+!!+PB
P]Y/B>E*<E>="V*C"N4_8!GX\D_#C8R$9Y#&_@Y]2M18\_8$(H'PT&7I06N@SZ(RX
P'+BQL]LF<!!1/* #&+NAJ5 "-$4QSV6M\_^/.ZHOLS_1 N:(:S)+K&2"_,N]3T!:
P:T!;&22&%LRGI1TY8X()ID7H$S(]=305-3G=8R+:GSFG!X2F+6VEPF-R5KUL2C%!
P0=.D&'*[18M=3O%J.OI_'!>J"VIO$L7?[B\RF#6JR"S8VQ?D<O<A8 ;B4WGL:596
P_ZLC9YSX0F 7X2,869%B4B0"QO0"E:=-8;^\'O% .]D*H=5PQKVFY3HCG\B&< 7 
PDK7WFX1W$3/Q Q\\?6Z5^H<UD0'%AH\N14EY$'S2=<];*7[;R+XC/6-%06Z$DV9'
P!.J8D("M<YE@:O0;FRN1_L0HCMJ!+P4THS;H/';)6?0-;7.,0)N$75?RHI7J_N,C
P4 N-E'[%)1$G?L#;E ,(>.HS3@K7:L@0>E<PJ'3'\C ;.<GH _58UF9$+*'+O 6 
PKT*..9I>:P<5E?1%;OL<5UHBOI7\E5L%)B1U9?(EWU(_V_CW]^O]''76LYZVA0!?
P _'L,SV(D%6O.)5YB96J7WNC%G/O>^C[!-:0\<5@80^:AS5$8PU@.7/*5KT?0@-P
P]<)3&,/X4:& R3/5["%F+=9= X-\T=XTJ90L08WM5)O6,#)[&D 1H1FR'H))M7(,
PLSUBH5V4]&/,<?F[(<M[U65%V,&[3M3<A**?4D]QI&X,P'4&DH&WJU/->&C3SK#@
P(2&!,.Q8H$7\F*!3-;TCU>/W,"!Y0$0.KYQ.MHD2G<G^&&PH*(?U ID*G:7X4;[E
P>ML(Y*/[PG_$Q?""C_5VQ+&[P.DO>CD1N>:@KO<5(L97-49S)?#>%..8*=&9UW=I
P",:49IU\049H!8=]I..A-6MQ8KO\P"XVTGCKJ\5_N>.9DWV:Z"SCX\?"LSMDNR*$
PL3<7B3TN9!-(OO*A/V<'#<#T!U<@FX5[0EN(8KJ5;INW5J_7ESKMS<+LU4D6>\\#
P?9U+WWQES?:H)UJU-6)^>G ,5/U^FD]T8\U<OQSO/U#,74A8M306'L<]1T_PB&OG
P187;5P<R+:C#(@/2'+=4Z#YX^\\WBO<CDB:IK.S&;_U_D&%?61/5^$]3QM:><+Z6
P <'H1M\US/DZP<K7X>6SN)_Y\DN/G[#E%H4JOP P,?K<KB@S/G'Q!"M$8Z'D3E>@
P7N',%?$1)+["O[!;8C%S,112.?O4.;-3[Z;@[!UWE6Q:J!8F6V%WRA\&L6(7SS=<
P,5%^V[B>GVJX3>;:@;IH_8VB#O/Y2N_B3-L:=4;3]]YRX;4"]HN1F9#]=;SPR<]Y
P[CG%:$G/#$B[ S)*!4.C8W OU6?*$>.&IK,<HNA?CF3$ZJ\Z[I/J@C8_;WHC(_:;
PKEEA9/FS4UW3IM4]M6"_D*1!]J@#NMI@L$Q>3P7P2L"]N\Y'=E&_O=:IU[%*S^7.
P/8)YTOP)P[P+(=G,*\4=,1ZAI- UNX8>9=LSE#52.7I0OO!B0@=7>&N2Z*PI,4>2
P]&AJ;B*SPQ&:+LY?;#EL+D<"@X=E9ZF\&9Z\LC</7?DXI# (>XVLQ0?I;Q%J0C2K
PM8#+/];E$ZBW"F.[/J],%)M)3D-_QK9;'R 73L*\0V%EA.F-MB)S,GA \1:N>8+_
PS967>";N-#3)?8@!(5?# ::^,Z#<V<9 HD_#?Y][X.A^\$"H-SC] UG)!,5K.V-7
PA))A/D*4)2 9U3H!":@NR&HE25K*73%NB63;*W2!:O] :D'$8_5DY=[B%^UIPY$K
P27V%C],^]64\\8XR-:M4483(&^A 4"XUN[,NQL\RUO@0P,/1'0:V^O-]C@(':Q)]
P4T2?;%:>883@ME%4A\/<%0<>'9O=AL':M6C0COP4+E(I2CD,Z%/!XSW]CLD^1':B
PD6*PI V8=;E/^QI*;;&JEX_%WS%]%'A5$+C_8<3USQ9/=@0F!=.4?Q:!UHG7M^B_
P^ U()D=!P43_J<4<=AYXUA(RK$V+(CO]@K=(2,]I2TX-&K.O",$F&H12FI?90GF_
PAI\M@K0YT?2('-HHG:!Z@W) $92U+)YOAQ=/X73)@:$P>-%S)W&?C1&-BM'5NA&]
P.\J-G7RL(<?VKQ%7&<^)+(*J5KFZ44%2\BTRIW?2<HQ>?'0*X*0VS5PUZS<&8($H
P)7T1ZK51V>6Z;MH/@<T=4NGS(])*1L/92KCS4<8E 'S:*B^!3!44-'I"VQW/>W8(
P+7!@#/F%J&2SZ Z%'9"41G#Z_CN$Y*3IL[SVR:-D188",K#@(*O5O0G@,]W#A%1F
P+KG(!I]^>TW'P=H?,,%<EUL?/]92-8@_6K\Y=B:(;-VR&=]M$]ZFJL@A5<BRTQ7H
PP$?K03TN9=_1.-BXH_OWC]-$P=<3--\DFLPFMK1A>'H27\R2;$-5XM=5=T?=5JR'
PB2$R%;[+]%M3KU#JP0#N!NV6YW>D8V^ Y/MKPV"<.1LB79'28^?O, Z#IZU"SV06
PC>D\SX.<<B?VANEL "#7XU5B?[8NX9W:'D:Q;CP7Q.:<<OY%M=QLJNRB1DNRWJ*T
PJ?1"%/:!V^A,9[,8>/??1!]<LL*L4SJ0A)R.JKI_L#F*5QFZ9(?H-T\[DEM"E5:@
P<L:!X<KPYI"@J>M9>Y=DHI-TZUB*MYA+^IZ+  ]]T9?\Q,FGE0K_7;/$!H6RV^TN
P/$*[#L4S#K4+'G^&^@M,W>'OMY'(FMTJE0B O'"<F8Q>)?N(>'CT6"1)S=:)KU*A
P'IYBJ#/DND\.DI1:>38E"="QI2_0JQ![.3SU>QEA%6D=;'LCJIYW[+BJ!G? #"&R
P2:XE^%.2W\W)/&5EF\C70]+9[NYZT%0"FE<*A/1XR;)(/EM9UG)RDS^*B8Q[]LQ4
PP?5_.C61%;&);^5D\8X_S&M]Y1=4M4+N4&(24D$NSQ]<V7WD*Q;\2CM *-)7DU7"
P;V.N/^DZ:H-V;BUYMN6TM=\M!/*^*3=F[*N;EUKI1AB*RV3UM%2EQQY9_[ZE?]%#
P,7B.$:/9:!.K1]0>7Y_49PJR2#%V.)KD&ZB6U0@4#RJMY$V@7C,\Y,T-6SWJ.9WO
PP%D<^<8$^:-BB"F&#E+ E( LF0?X/Y AU2C?5.<8=SGEESTK+4AAAA>!;RQF7-_+
P3/]^Q"R. 70A)_5)^ 0B6VF;W6'''\9X\2GGF/1H?#1OPU&/;.Y^A_\>.;^W(- 7
P2?F"C;Y!R3:R0"1%R?!H, *VO;=VRC?5=&]DE$ORHDU.3=K&!7CO(P) 9=$JAH*\
P=@<V[W&G+A.<&4>MVM BMTE$]4R>N.=6S]N";>R[3P*N]H,C\/'P5P4/)YLFZ!LA
PYD-')JGB]"M>BX4ISL^KG-EOQ=<5%AG&.*F!W1FJR%4%VXO=U($ZEK9V]0?4GNI:
P<):=#IM-H_.%@'SMRZT(0M!_NVS]VD<<BGY;>?V3F(7&8/@PF=I]O,^J2D0;/,K,
P":K4STXAL+)%TU\.]KV2Q?)X,CRT@PKTA[$LLW_([+^*@5D0+[1C9\80(,7Y%![D
PYJJ5) /'84$*\B>&=J$"7H,4>AX'1_)1KDM2'18R7BA4-=+:O4/)E+$29;0>\]V#
PZAX3_XH T3$T304;#9.G4)J,71IU79=+, V-HZY:L!.O,#?>/^'"LS#L$Y/U4JQ;
P"A#RO"$Z=AC^ZL0IL\ Q(ITJ3BW5F>ZV8NBJ#!B6(JQ*W9T',E+/G+R0T%!N9$,;
PB1)*LS(97=PNU7K-6+;N/E8I08-4[B(IU S3MB[65@M-SE&Q@RD&4"SJ^R=O_J ;
P.L3^9-[WJ/*^FZ&X35^TW%6F4I8/SB$)5\H788$7D5-!GD;VP3$7]W1_Y$=)) O6
P9IG3CE2^4";9Y]2\E95;(+QB6" YV"X3NH5^N=S[PR<14>E$C<0(LY6>4ST[@N3K
PV \[Z93L1 1.5Y+VX[,M88@YYZ!D</EY\<X:^'N^PVIXP&9DGW<,V?>&!^A\US,A
P3]U*=O@7XV;A[<9D$O['*[41C0PA(74Z]#=Q0$/PR8N()X,"K[4-X5I&_>$VRKIU
PRZB]5\BJ9UK;PEES,J-9:=)W!9[5'LMII!MKU$I,:5XS RM$34CP>.WO[>#ZF,P;
P8.5@ZF9]0L+[3Q*6L/9D-(RT!G>Q/]D1*=IWK(H<PC6M%JRNQQ08\1@$CS2908 A
P!#L9"J*'Z2 Y6DSX :]+(@=CZN^H@5ZQ\?+0"])B8,80NYN^R\;Q][:+1WVJB5UB
P?VE[EG9/WUH#T/0Z45P\(OTK>!+0^5/6Q](NZ5>Q)%)!#S<UYO6R-?"SR=SII?#Y
P&EOI&E7NC2)UI/I.V5YD)(?5^>B\)@O(([ LJFI[QH8[L4DI%5O'L<^>UN"U^<<=
P/J\*.FJF+LQUO '?3M\8*C D4S@M]X=9>@;6BDNA& 03PT!2("(S!6GU KI%;/A%
P.6/-F:\N_U0/IK5D;A<%:4E"!R3*E^;P.+OZ,TH,K60=IBB^.RL$DJ5(XBH;"&3/
PG2=)^:WP]\;@>F8?Z@9L%BG^A=YZ4 19"=:?1WNO6(51JWA"'S*BARTBVT7J$A)^
PM!SF?#J,+[P1T>ZL_&>!RJ:'-$V!Z'%E(/2=?H>?4L-X 7)(OBU#^4,43LA$-Z3,
P)54D<+#'4 I$_)G?GVZ\W8$=""[,RA2K28G)Q;I4[8^(\N(S$K3G[7\-9B^</:]]
P,I/C.ZRLL)XY+4B=PH=+$-(7<@F;?NAK6%KH^E(59_MC"<=02CW3<3;F R(&M6]'
PX*^A8<7W1+;--,01LW3NC"5/F,JO0%XVY&ZWC#1U?^>#9XA4[4U.!V?B<N7IM" !
P)+%'=*0[%AF_78OD BQ N'Z2B131?MDPE*WT5OJW/4J G;G5$CH5H0Z$0L>@;G5*
P6&HMMI3C+&45#;%N(D+%F79*2^;X? >GB7@(<I>@A-VVFI\Z#:E01P_[^4-M",XM
PE"-:A''LP?XPCQXRVI!CIZ=L$]477)E.V DJ@*T3!+Z@5TFQ0LQ[.O67&64%1><:
PC*+!*IB!5K9J2=,@:G@KGGPSX7WF)+!KS'XL+_Y=/05(=-"%1'\LX:[$15L=)\YH
P7YE0C8P&+P_8.((08B _$AYNFUC,M9AY)3/[>FR) Q/YRC/R"P*]--O**%776\/5
PV]-6);^DYP<@\2M&,:;&C/OLD<[<HILSY7!F6\=B4H\,I!E(4FM=AV9^"V> K;G)
P0AH#3LG<^H./38,-JNZ!P0A\/5[W(9E<(%]"\:*<!\YCJV11$<8'&V$\9-&GM<1#
PE5].)70">P@,M0!1%O:!2WKZI<ERL-A4/W.U8]NG'9^/Y\U#9QO:K>J>(9%)UC]T
P4A32PN-=5_-0PTVZN^M8OLS$-/&8;AM\O][*OQ\3T 192-3-*-;6$_8^KAMGGA9K
P)(@!C]*G/QX]?0Y6">^T$_ZRX*(O S_<T:8AKKI*4[M@-GE2&853R\YU3R%]'8BN
PN,;)4F_VA?"E(J<44L4%0#%3R9:A)R+%3W@E3WU3S8);#3"8;38!TY?<6 K%"@6-
P.;^'Y;0TTF)XDO\ /LQ^VA[(D[._I6AMAJ^@HJ+CX"9$93"U*2@35_$8>^S'-'KV
P:>\L'KD></!;'FR<-J6SEG -WW.)Z7FDOFAZF\X3T&1U'CCL9 <3R9]O:ZXIP(#@
PHC-J*GCCAF**KMN75Q"%!@\GJO!XSE+D;K;!<(A^(Z[3Z>X)E/ZAD.8AR3G(K_'A
P>4>AJV>=8_S,*WZE)NT8A;LGN0E$CDM[5^3#%Y,?9S!%@7;"GKYYY=J9+2&OA52J
P2XV[-H'EZ7O;AO%6D\GE8^5@IY&U0%I,+NY[5GUAM:7 \M"UA#E$K,DUC8)*V,++
PO\DUA>R;/JJE?2J8'%;2@::.H2#B/19%[!VJV:9%]7 '..CP,'R3?LR6O='$1?,O
PX.)%3%LXCJ'05.75$WG.^N>Q!EBG?V_(<B0CI.GMV'[5Y*>A%$3%U,-N0\<E5>3"
PI[?K/4LR:N&N12K^G%XM/E&WZU\^M#?L"S!@9,Q9[Z>D^4H'X8%S\CV_M.[]"=UM
P$:BJ$,0TLY+!?T>B,]ERYYLUCCW?.J$-C8M*M=LQ;:E&@D$X \EN-ZW;7^^N+%U1
P\ZZZ7W9"(OYARO1=(:;8*GR%2P8F7.L=3O&D:-Z198[S_6KJ0^7_EV8[7Z0\3WOE
PH3=U4YFQ9QX30!+0#"K7LA">9R"2^3:%\(N+<=;4DF%^?,]R-P HCHH??ZL#B+&Y
PI\H%=AA\-[N<Q3_5J!-4E7C/@0.I_=\G4.?;9LSI/TPW\7$178$P$B[\6CC]A:^2
PF0$=:L@5.HC8IH4A((:AW(!)'ZQ@-><296^C>L=*\@OX^+0V ?0:7/X?.:2>=QZ]
PN7WEH#[JN0J#C"JY!8H6J_F_PS7@DPAC]91S4(,!-MVC#6AKLNOGK2.T0H!#A^J*
PU0]3.K[@%_BLBLIB,D*K>T2/WGM)B',(A5OXT6Y0JCX,/#06U<ZYIF-AV/AQW7R?
P2V8X:UHP78QAVS0QU:R!)X?SVFNOW<G3QXW/GNC:_CUF]%?HSBZB8)U9I.RUN]C/
P)>6C.LNE\_M$(*0X-9H;_">!7?-#$8PA_O]'B40E;[I@S9;6B'>G]=A5Y'U/O4C<
P^]D&#027&YPU:+/FWD#TGBW?]HRR$IT'-CAGT\G54(%>&IX/*N<?.W&G \R8-*:\
P%-$X>F\GJOK2":B]#=6;FQ;LCDO]L)H.IQGU())YERU15<0/"0>F4[+9T8N,;>5V
PD]>I+E;>N9FBI4S!>*(#JRJJQ:I(E7YTP-=&#J7WS<BO(E>@=FH-\K,#JX-.HY"=
PB"J3HDW#M@]?Y-^4M:9JMT1M.=1*:K&/C);'KXN)IK4\#&)E>8.M;H[;,64TN+I?
P*'._>@A^/NM^4S0<64#12^CVB1?J%SSQ4FC7FL'$$RUVZVPUJ&[++QW#DFN1:E&#
P3\[@RL?$Q=\U/ #C+9Z'UH9-?&>_K,B-2'^1B;)?QM/:-W2)XQC+EHXO69\Q/RA"
P!%(B_3(FKH?ZJ>U!/6/N*#X?5):XJ\)[<A\70SE*(6ZG2:R(K,8[MTK5([[E?,I!
PR3R6*AW4FW&)U_2(/^(Z% *EA>IC0)1!#0],LV\A!,)V^YK02:^56$0^B-=Q(KLV
P1USP"A4Y5X^-S92%A1 :.=*Z1F?W4M&$H5%#M8.YG']JNU2&3BN%$R]M-=",*CDN
PN^PNWS&>Q_N&6\,I5M$X5L=5E/2JAHSF7# =0K9,CE'-0;209(#!';+FRF#L5@E@
P.)ZQZ+NQS="[OHM_0Z;J"PA@Z69#MV8E8S+M)BW4NO'K)L:5EO,LQKVJ"H%S"YS[
P0^&+Q)I46-([%.'U$8P7^J/S-Q'J@VCZFV<7'(G[+J?BU&3I:EPB224;*P+G)PVP
P@05LW[H#&U,ND-0>4R&QRPN=SVUE:7J3HY'X39XJ*O 37<7K,:9.%>N@/+.J<:QM
P,,<?0QN5-P=70RC#)V,SBD'$WI3R0<;H4TDNDX(!\=^3ZW$*><]A+YI%=D++ ^0Z
PC07K2PN!NA5]T+&KP-%Q3#O8)B)6LY8'&"RT:YGL/W5%L H!S\F;*$U(,]_!_W+-
PH]^VM\)4K#5, I3)V%QY($Q#G'Y %BTFI1P=US:ZYK?AR$P+-6$H!+=;,5"%+[S0
P;O^[PV!II7'FC"[*;(".;OZKE2K/(PKS0LIX+UJ>4$<LVGCU57OZ.E5RJNU2KE:N
P+KFB=B.L-+%S^##!J$ 3_%9#<K8\>9F-R9:6RM0C*2KVXX$1,X]V0[D#R-F<SGSA
PHT7()QG2M3\+<77F?EM0_R;.V$#J4[D(I<7M4M#8(]^+D&ZD?"LY^(%0!IGM8HR?
P@EP;$G/AO\-682J^%I12\<R<Y"+/D9!96^ %>T<!1Z#_CB']P51RYH?:3RFC.I@-
P><'[F#&[@I &VK;Y?P&88$/77G;DS72^4(*%%?<^*'D&%2ZM^P;*, H5,!N,]H?6
PL.DRD:5&)U?;]T]U_6C<BE?S9BE IN>G0VO\:/K\OJ/IF41(B(,I>P\ J^K62<[%
P0YF=^42K)__6Y0Y83 BJLH).=CJ5W59^H].RD'4H>63XLR7NWJL"463]&2I=M]*U
P7CK"QJ)YA0,2K6^?1G6S:L;#%KU"")HC/-JNS&MMC5H=2&4V1,!Z=-(807FQ8XFV
P9O2?.?R"KV2R;)XY7K(99 OW2*M#3FDMR%^L/($6"-. 6X3P0NH6!PWKL. A/Q.S
PNJ7O%&FO.VV@IZ5FOBJUSAQ]-FL-'M;GHK3 GDM'8#J^1LZZ%\!O#>O%AJ?'FG]+
P(:AT8&&'MCZ_'I2,P_%$,O$K0^$*C[YB+2]V]%(IRYF#2NA(=V$/ 97PN3 +]@$3
PG 48G^JYO!03@U1/)N3Z@<AAK9;F/HFW:H.SS+I46QKD'0L+4-AMZ/L.K^B9<VN_
P6,;K,@-6$RR-".\-7S@5%KS[Z$!V$ TI=KWULZ0[9XV1/Q/! GO5I(Q;"6'^)YSQ
P[\='O!</>^NES"1BE/-S-0&#M[6]$B"OV'XLCZY9%W.96&$[WQ8<K\#MI&2O22:M
P<@J]6MEXK.\FQS-+I:N35(]$&O=&Z.WT0UJKM#A@0VCS/?\OVJ+7,ILFJHZ$2,)<
PW.+_D+B--^L+W,@0,X-1WP\?U=IL#]%E,2<ULX.%[F0BKI?B[BHW\9'-!:8UY^G]
P/P!DL?=O"_45)P13C/ZZC"9L;%8I"@YNT2DN\_TL#1L":IW_;=VJ9'A@/SX@M0E(
P^XY(?O.*3\4OD7]O)X-12X/QEK%/;S8-!;&(O<DQ^UN5I7141"2+%!(PQI39<4AC
POX@'2+-O7E6EH:][C?S:*<#+Y8\"=EQ^UD48E%*2=^8=S(/?:X+PC4.B[L,$A1FB
P4+9)URD[V>>^_-(9@T$H ZE6MT4*.Q;_J][A10[+(#484604>LK)%O=^'B)@.?LA
PMY._*QO\'IK?3^^A;$M$N:?<3EBF?>,Z>++M&OQ!.1@YI*]E#YE:(<XI]/9=]60<
P:!2E-2H*\Y'[]-4<V\?[TO06(9XOVW:/M!MNE@*4F:0>B\K.@<10:+*!;(4T(N$)
PU<UQ-^0$>F:".?N,/,=X*Q?8.O58E2U(74X%B'A4AA.C9-.\J1]T$FXY5()N0V8O
P">\D(\&0O \";E65&J7L/'C-,%QJ+X%&E5T+#%H9I+]KO&BJO64<5JD&I\*I*6VP
P9OC/UP 5R9\0I5_8D0#5_C[%I+6?:VC@ZJ]U==;8&M[>0= 0%:KKEGJXV1%[LY[*
PM-:.GFBFG$^?W:7>)B%!_5]TFI"V'QE6J G^_9L!.<E2M:1.9/D+=\I,?:3GLJUU
P8H^[#2K1>K.V2X?M$7JHJH'F#YTX92>H@VT-STI,'^M4E[;;2E>.+H=HO7_/Q6S2
P5AR93A_UL=&$7;A&,B.*& 684PC2S95]F! UH4D7"4G/8R+R!27TH/^%Q5,@RQ%X
P5SRX([&L;SLW8@:B4V2B+34F,6'4!EFJP[Y<R<;X7%HY4\Q\0>.$:-VON") %EI"
P"3'J=('FBBJ<SB8([A7WNQ">836G0<4U\/X!SE&0K/3C+,KJ.IB>*ZKW_\ ?_0AB
P(%5PVSM5185MX,[-.4/\\PNRF8PNX*E>)4_<Z./PR%'\W$OUQA1#>M :)Z"/G?L/
PMN^05ZQ]%>>5.N^*M-"A07:SWFJ"H8>PXBG#T.B+D3A*9G^2Y$@Q:L('!@_ &<'[
PT3_>)H#0>%6^)P'V-4&_2]@X#M!3:RGDCZ41L%5%]8=FR^F2^5A-$R\X6-43VWUL
PLMVU6XZZ&<6=)4&^MS\6_QIN\\"F5W4S&@IQ1^"6-\J\74D@K=F?%2#&""WE4PV[
PTL*H :49ZZ8T\%T4N$TH4')$2 #N?PYN,YI?3D[7A-BZ9J2D%O;#B*#RO5#Q#DIL
P>J(0,^0W6:+"^'LKKLI&TXW<K%YUALJ$']IYVA(W?JQ-E*"KQKF-ERUP:$0-KHW_
P 3"P>>2KXHW_%@G2O]ZD-:Z47457G)18##:0)25F 6=>+'VGT+Q!C#$GOT& V$RB
P-N>)JFL_AX8U\GFDQ&=8X JMZ,XQ4(#&X%#R%0I<];> ^PD+S0N?T.[P!1>C"?? 
P,BY-#8G018-/0QT^864/FM;:DL@9AL@:%S5>O)<I87WX.-IGO[\F7I2F9Y8=T&CL
P.#<."TUIU/JC\KEOU,Z'?;KI"D2';KCV=?H]_(A@5%&_-77I[DJ7UI70;^HPKAT9
PF;5T&46#'G@DPSS:<B,0+:L)L/\((^OH/5&Z$^6MPFA0)!G1MAK^FO$I'L6+5:,0
PX: :#M%OC^'V&3 %N;X,I$\::WBB4^"RCRUG$J%IU$-$[GP&UN2>GI+XYP#9;0B,
PB[W'+"A%*./O9RF@H#<I*Y(]>D!5> 4D%'DG>#S' ;RW2RL_A*;9"^^WT4-D4W,-
P2L4>C7:S/U68L+A,O:=F(IW*/)7-3V&A6DE3P1&1W:168*R$,T[L)@:3A\$6KN]H
P0?9AYG9B1&=](WY9Y(%7".[1S9UV0A< $IDF\WXRZ3^^JXYD++*->BH9;*<Q8B:+
PJV51#YYTUD-!V4\3ZDA\?._8K@#3'<J!RJAM>9#R#-B"^FJ#KN-3@__B_1"I5VNN
P6=S:?(ZHF,45]A/QT6^7=+?#WC-<5U5YF".OG8Y]6V<!,/T&<2A19&G9"8$7)QK$
P$EF18Z]H'R'@Z!@&6>D<K0 ;D^-10MVPN2<"9(+R4"*@^M7(H8_-:%R'B+@[!P+5
P3^+I?/B_C #6O3NPO<<D;!G#Y X4'M/U08BRO"3N<(_(E$0.VT@M$[N0MN<41FX/
P!ROJ,OD'5&H'G.A06/Q[?>PPUKZGBL(@</H#WS#C7A17HY[+$AA%E,=CMG^BU9_/
PXC3*]-_%][]8'\9I2.DT0R#CQU01.,O+837NDM)%^SYKY;900W@C;N0$HV-)PBM\
PZQ5_B74?($@K0/A+NA=9KKQ2 '=XU,_VM'2 ^]MXYS]\.**H":$? *1F3C;R_^O-
P\1*4D4\).G@]57CSF1R^V]C2V@>2P^&VZ@XV?%Z<=8'=5<3OJ7%G4'#GJ*1,L+.*
PE"6;T7__?N>(#]7&7V]X=[NG+M0""C_JFGV2453RI\N%YQKS*CV1[:__P95/@ 4,
PY375*(W^).9'X_H&JDI1N9M/.'_],$=&+E)6S%1NZ[&:;K.1VD; @C72!*$Z(4YD
P:0;I=A6#)\,I99(J?*@@96,J: 3IT!L[%"^^Y42!OD,*J-LW#G9BJ(QP9T])P&Y#
P'(-&Q'NCK8<NC4(#+CDQHNMJ*9<1+L.O,\2':0UDRDHJCRHJ0V^CN!!- IFGR5\0
PPL8[!'UV>?/8J3K^$'W]_$TZV_H:YS1_^U!QE'L3'O+GY:;[NG8F$U80$*-&Y\?V
P/IT1E&$P[7MYPC3VXJ%^@:PFC1"Z8-\TE/C:;I:-4])&]_GT^]&?+YM=AU*9+]%Z
P2>!RDLY9AA[3 O5ZXS4FRN^&GH^*905S+O1!Q9I1O+-WG(?F$O#'1<:E8DV5WF<)
PKVBMB4NR6.QI.<C_/Z]KKDL,?AN+!9FVW8DDB*RE4^(7M?O#"KB,1-B ^V&ECO#6
P0_\\N%9$OG7]2PL2JY7VXG <<?D">.'MA?L#=^$#K;I-':8X.HPB2WKKX;2.!MV$
PR?51F9-JF&ZG1;@2VPYIQC ,DC@U\A3)_J,F3'AZ$2<GXNWNSBJLG0,2VT[;<_%D
P(L,A<9@0K[!+*3>DPK<PIWFQEU=?_55OTYB4D-I%_,"92HAP/CJ*E>E(=L]9/2S 
PE50UKB<N.Z'1N[_.HKP[2,J*#HQ*HP^Q0OZ6HD]-'T=J61$<@R% JM,OPKG"<F3A
P1D9Y ;(O=##@6=J6]*I4X)A(\P-\7*# S#Y3YDG<+P<,>_&P[5\/6<_L)#F@CD:(
P@,;_6RF@+$F9C9YOZ KVL9=&*6D\ B*935>\2]3<, QDE83QTA9" ]7*>E(&+LZG
P3=4;#J#Z4<FBSVV>=AOW_304: 04<$^>*')MJ#?XE+X2L- PX(T0S,G&Q$";:X\V
PHJ_X-:PB[=[_]A:M^>2X^E  AX5&6@2]8Q/50T71=&M6G=C9D.:=4X$#;DRM3_X8
PXG2,I3[,P^FDTW]%AY,:_T: ^['%U=>>ZR%>:L[$HUMM?HA5H5R," G!_@_VXYK)
P;QTE^5I>4W/BJO'**PSGTU;XTS-GC/4" .6\=CE>U?V[9+G_,O3?IU0"&\7?[,G"
PTEN\"+-F04L.Z&"W[T8-8R3+Y:8C?HII:/<%UOO;:,4>XXXIW)0=\7((TY/TVO>$
P&MK550#L?]4Z5%U@\1&]:EG1Q^WT$<1JAAH"&HU?IXQCA>7=3>=?Z#KC$GD?A&3>
P",]ZAQS!J,<HI(F?09[.)E/+ZEYV4%:_CJLY_T'\<+\:DM._%C-#WD[*S;"3JKO=
P!B8"'C&%5&V:P#">U(LK8F@U@79 -*A_N,%6S,5&'9#<2O)W]=&]_\7XK$"['1.G
P-6STV:3:Q#=$.JEQS:5<GGZJX#[ZM'XG!_'Q8UQH[XLLC4=; G@/L<T'L5I$>4!=
P4/@G?]!^_T,#*@$"Y%I@:.\Z,*EK< LD.@+B NZK&0,U:<G]:.39_0.A/FX5[:[^
PK6U7E*U(MM!%3J6C=6$* QK&[?7[E-VB*:"-$ACU*F6<!K<]]H:Z9A5-GB. ,&1-
PA_\=$46V,3Y5!SL8\%;XA_C!M1V.%+;J.(;08%UC'+(BUX<]"R4.A_5.10"GLTP5
P)+A2(&P+$QKHM]\CG=?$_4;+7/".-E @BU1-URY"[C1U,[%%;&8B!M=/@Q^EJ\PE
P\]=IP1OT38?O)HS:'QV(*VHD<A,(D'+Q;_FH=D?I!W,.3QFVHYY7EKLA25)Q6,V-
P=Q#_WV9SYE YDGD,(!A'<K:8XPU;LG]/+I(C3RIM;F.IA"@F1>!OG_3GD>=]F7*[
P7W/\W-[DWI,1_Z2*,/_O;T9'I>,^)M534NX$<.]\L,?^EWZ;0;D-3TIK3+T-:+7/
PY* V&[$6G!>B^6<&8K8Z[B3D3D,(&K\K](Q /P\ -<NX5,@M&ONLB/V9QXK9*MLN
P[]ENA2]"UZ6S_W$M&X<NP\LQE1 D3?DAH4#F&@J)<N*AY'U(;NVH^+#R (WJ+1:X
P,(HI2\!")!*>_J+$\G4:=9^KM>;M:]_77 "9KA)3)NFI>W1 ="?N3<_'WR1/FNU%
PE'U-02_9U]5(:G-I_]4V>/SEQS #AP"(/LQD)P=TZX7]<52,=$=F**#DQQ#B&78@
P)1I).Z_4+?Z*8PCCQ@/>E/D)PR6=![.3>TD(].S=;<Y8[BSI20SY\\#.VI):?V!L
PEWL=I0^RY[;TE;-\<%KMX0.PF6!RY;3O@>SQ]2G$,=.0[]M3B<S'$7C;=?6!ELY:
P#ZDZ"X;(F6DQQ@(0JF'7?I<1Y"1*YU;1=T?O!%_W_&BX$W86F1A^'RD,,&Z[BE<[
P$E%A$QQ5U;+\MJX^$JD^1K,+8IL7?N38 A&CO]^79Q#^+&\%0&":MS4;(KX\V',1
P)5(Y]G6]@!9(;FH1!N^QJM/+5"W#O[W(W4F[/$<8:2'C><^#XT]M,Z^(XO]F7 3:
P<(3L4_<%-!UVP]T\#;1JM2$L\"DSTX$S]S\MTI5'*%"C7'KR\O4V_N>9%<TC>19(
PY+2B4ZL]A82WB&/%MG2P\<<?Z5-\ZH%NL&]?-!!I5HM!T?/KV?U^#S?:[,O%Q3=E
P(+2!T/(?R*.=$:DKU+9ZW"9HM16^*Q<&G%=@W]$[>/^\XQ9+7.?4<=>!+X>%_?] 
P4$O\N;Q*J=I;W/(_Q(W-N_:C:_IG:GDP0LT0KA"!@Z^ UEZ4'1+0#Q\:FW" XE8'
PDS/:\B/"N+98,Z3/B7S'T%(4V G/S.>-R%(8XI5[\0R$).7FL%\,:+ 2K,FZ]WKL
P5]*H=W[<[V_6,<LH10/#*H9LG39<V'E$/9VI/1YFG5^</0U@N6\1%P4)/G1"Z0MS
PE)C3ID^")[S&4!WJ>(.4KFCKKGBV)Y!*(QW%!L:6!"A2K.FFX_:;S+6 ,S[:A-C\
P=N:+7W,,F;E+ 30:*:L@^-*0+G;QCI*4"SQR>5V6[W>J"?1Z220Y_^-9@Y+R3:@/
P)2G]'X5FY9LZ-3M&I"I5\ZBGA_'D=,(BXZ[<%R7BUSOD?%".,?UTZBBY@"\4G6PF
PSKX1(5L(+_5RSV<G2@DDV"H<J#-:]P8>7X$#J&B%A- HNCH''S!IP2X7.#"Q_+([
PM(%!ZKS&+'D<A<*!:V02PZ)>BQ.T"I!7O0IY87G@M<KJK<@<50HL B@\T$PQ5K%U
P4E*-K7^R+1\H)&,Z% JOY16(!YO'H%=ZX*T;0;R(TPIL(37M06PP=$D[;L,I1D_.
PG^*G3X%)G 1Y_R9NG+*CFPYY8**??>_A,FAUR<T_$_+1!D -M+8IM*J\:T&QPN[\
PH'4.@MY=A-UAK$+[XO7>,L!2:JP,.8>^-+.<X,6Q03-#]?\R#SJY-<^X'57TP 41
PB;SG5B[SNG3:H&GK5E['H_MJ-@?78]6FE HIW!?Y6CB9ZP\<R!<VI;;"3 VWIO1@
P_.']IY.1S/\S)DYJ:K#4QF15^;:K_/DR634;46"'*\,,D1R@DZ]E&[8\UA LJ?,*
PIH=&9%-$O7><&J;]>,B%AQM=U$-:O$<SL*#Z^DIC/QGSG8^& W?\$B':!)^##<'3
PPR$>A)^J$TJ43+RZ5 \)(5V&O1+A)?2H),_KDH8Z(X0Z8YVGH'/OD^58,HW:IVLN
P+2.E6Q[Y2U,R9D]R845CS>?PUA5;:8/4FX?VF#R[EG(2%()O+:V,0NUT]VD<6HY+
P@O'YK&I$^R%?W616>X+3/LC==H9:!UWF!K^H7?#J"6G]E@S+&Q#79,2)$@_=&F 2
P?BJ_].'A\5CG]STHXRRK>.A.D25-]_JRK6]H&JB7Q]KQ;HT]F3:HM;,[R?E AC__
P0Q-7>.#*[T7LV9YW@?8#]>"1;A60F,C,>_?G78=M(/>?#-+GA>QC9Z>;.$G'+^EX
P=E7=H;!?W7'V#D[7]=V!\A\'$0 %A39>ZWPN^.?S([!RW:0/X'<85)<%K-G%1,\L
PP![_SN,K[90,'I!BX5^B/(^8K.$6GN\C=W"+VR#"$;6YH2)Y53VYOP+.H,G#<HOU
PO<H0>GM11]IK374<T;>#HLF#9XKL36%&U& M?(, 9I@E'N3)Y.&7%ATS7GR)?ZN+
P EZ#Z0R.6?YVM1M-X7F2X<(>T9%BYU,'[^?TAOI6,V:JG8\Y:19$.]FN*#5Z8WB5
P:])HO2" -</M(,?"\ ).-04R[7;3]CQ4\[KD:/PKXR6("P %=PJ$'J7Y3+_&NF>^
PO_7<+_X,(]*??D='SRJHN-EVJ>9VU#H"7<7^:X8ME1'?D]=5@#%'U^FEV=]E#:\9
PVRN\;]KX>*9>%"$2(?:#+V0X?[_4GV=/\X^^HA(*$ ,/OFQN7L@R+T'T!$[Y:,1Q
P(NP1PX3U@3$_PBI@,D@5=QRZ8X+4@^5"'A6XP=WEP(.D D&,/<0H]U=?.I1;_!;(
P)H5Z';..&,L_KW30]+HM.?+RIO\<+%B4H!]N7E2:"9%,+=_79D5;&".$H&PU\]+W
PG?X-ZSCMI0XX4)\I9<J'YW]$3RLV XGFJGHE*,HERQ3'&N_.VHK$,$ ;_A>JMFQA
P3YRB%]-\RH73S6%'R046+ ,Z].:#ZIR_OYS:(<@&J^<R5T(O&LZ7HS,,:E,7WA.L
P_1+<F0=X\WNW$I^J+D &QU4A]" _&K7'4L5X 'RR*%3L>9NZB"VXJGV===QL<!J-
PJ+XX![>[92B4A5.LF+T $XPI(@G>/#*<JN1(MUY15!7V"F,>VXU-40W6G$-,L#&I
PM08EP 4+YVH6-ZX+0K?S>/;9E<!E2\)VE6* ;W9W KO\!X<,& Z&N26_T@5U6R#,
P;*"YM9CV2_"6HD]KI&J([6^:EH:W>&@QX<F,;][#Z?Y+31D@,_ZS0FG8^6&2?^&M
P9<6'@-,'HX"Z#(%9$[XM]-T+=MOZK 68S[@H5MA>+]L58 OU7[Z;K[MQEL]V.H&Z
P?9!+=-OM6*I0>Z='[2W:2SSIDDJ'^ &<>=&P_5KN/^US.JBP)9]7UJ[=3?A^LGLP
PQ21[Q7G/U6ZUH[;5XH;QI\X9FFUO]W*.K A=?KQL \CW@?N+YY;^>=#_:J^CT<D5
PCJZCC":Q.=J[/I=\SEFI7W/*F@&'MVF"QJ&I==N[ Y_?3)LV0CQ59 B#FS^_)B1X
PM4Z/GG'D!3#19H]/.G\8 8'9,%:T3YZF42FB?!^E)C.6TX4R(0@YV>RH6/ M$50[
PP0?NMGO+/Y1O10^&.M#3$-!D1CI./OG, 7QY,SANZ;L[IWI(X)5CQ7W629_P#$Y*
P\J-FK$(L+ :=6OP'LN"2A3.38]>%5X=</L^=+5FDM69*^6M+U:>:50@WW^ /;NZL
P=Q6_O9>WAYOSLVINJG*[H]&J43UJR$1PDR]0@0! I+WM/@-VBM^L+7P"8/V:G8&G
P)78RXX_>F6<<KJPB5R5B228U89&8Q&F^@T_*#2YC^;E0*77C:+!V*2*;NT[ WX^1
P"I8,)_<?8"#QQZ M+$##H/&-$@A9]R0M$3%HQEES=XJN'S^+EK+,? $HMK/387(3
P8;/P<0^L\Q8#..T+]0!*C8GTH<2QL?E-+TC4L&O)+0X%V$WS>,+?K <=$J-4:&>3
P*CD]S-:A,C//*8$&M\6\[/;\_YK:=^FI=[W">5LSL7WC/488WMD#"DK_^5\\W4W"
P+"ZM^>E<0#7/@NV]&))&-I3;FPZ272"Z-1KYW*\9_\$E%86^1LD"6YOT.J:SG(.U
P;I^BX#@0X?I2=X&> M:^]#*/ Y':5OKE"UQUM'_;K*KJ'J^ BE*@=YP;;:RC_)F.
P'' #*G?"P=19<H Z:^/9$LOF#4&3Y@&C?21P4P^(<?$BJ !0AD8#+CB ]0=9H_)Z
P#//6)\R#*V_IDACX<ITE<H2YF*<NDT. \MDG(+K:>,5N=SY5NRCSNCA4=,KX1HR/
P[@@6%;8,F<4H0[7G9=5:,]?UEW(]^!D1,F?:%?.HI;JJ5(Q7E$!%)$UKI>R%Z@_>
PV[^A[9"VC!",_HHO SRY8S+8]+H<-5431K8]L@?S-&4_9!9?-R](EUQS"()GYF*K
P*\2\>-%_H'L$;F0!;;UH1:$(#'*2N0&T\Y9+GA/!@^NI@.VNDZ2PY-7DR%D/_)7J
P"ID:GP:,4NQ/=BQ8%&V6CIP?/)JCEOA:&8AX3)/T3[$Z2C!"%BVZK/CHB9<Q) _?
P9F:@R8.JC6G\% @O2HKB;, ;UC[00H1P6!HXDSP*DQL-V8SW2$2%]NT/T"7@$;O4
PE5YY9%%P$B)(GD[7/SGIOR$E%&=8=>%D#;9E?GD"D@0YWA[&H#V1$.TSXUTCJ5]_
P1#T@'!?!#TZ$@:+C_1X=BV5ZDC!-G6TVNMUF$SP+3B]^9X\,X>BN7QGSMP[>]-P:
P,'W9<2NUD%LZF!)O[J]0[Y-SOE[2C<]=31@](8;"AK\;.?/F=_,!6K<53JY%G""-
PWI;K5B$ B,(&!ZVJ88WPCD%W+-1%*PI"*:+C\S4,Z!%.8Q#'"!L!B3G2!IZ/45I-
P%,6@V\/T[^!)]R3@([Y*Z *AKV!-[3YY @]+[AL5!@ -9V$O4N>+M FU>(RL[.>O
PP&BE; !*[X[OTTPO61'5K\[ZYAPT)0^('O@Z&W=D4VFQ<^*@CB2<@+RT!A&-6:J%
P5I76AU0PTZ 0-+J 4TK89'2OFR'4TB())D!.** "O6QO6MHAU?B^!G)OM?B-Q.N[
P$\9=T\T%3(1!#78F[LOK3&&!O/#]60MB%V4+6#[K$XSVZ[$.=-Q0E/T+>8B><+I4
P%1I7ZO_(FHT+06%ASGSOYRH0IXJD.&<ZWR5UI'5VFI,*9 KY_U(YP\N-3>Q)Q?;1
P%7<^DA\Y&.6QP230JW(=S*]B 8D0K<'U+?3GU[*]*%<PY /HPCBU@""4N/?Y!^J$
P2QT7W/T[\I:,NOYB'O:SW$Q+GLUR\IAJ"O9XZNW]-BGIRZ*"K?@L-]66I#7ZU#?)
PN*&+$K,@HY@;F;X@6.+>&=68QJ9K6TQ9_[DYJ<GSP>$^!;C-6=/<Z_P#?[6K:DY\
PL\ZS^[N-.0?V1[$FD#1:X2.(4%^,3SO.ORWK9[_M1T9Q>17@O3#8F1^+==,T]F-#
P="\)"[596@@C:3LW6>;VN$ICBN1#4"^Z%D-H/E.)3=0^=@ABTK4A07\)]%[N_P<*
P:R3#5F^-N1;!TUV94,*^FM%4+Z"E13*_!R$X1 0[X^L = G5XA$<'VLVZ:. 74AH
PC;HJ>))DH--B:%@A,(2+!2X-NK50IC>:\*SO016'LP5,0D<E1#!\F,_T!#OB<&. 
PPM@M@J\I/55R!0C")%:>VR#"TUCHV_0+T_VLF;J$:>XJ0X:*B!]R!90.?#7R(]57
PR6@Z#<HKO2:6R#A7;#V:[ZQV*'G&S'YX9?.%E<7=\Z*9\$\"\WSH^2YBP\!FN_]>
PP'!<(<*ZDX,S7WNYI:#U-EZ+.D^*X"PK#ZCXP1@ ^RO,W_H?C7%10XTJ@;%23[MW
P2IV=A#[3RH]BN$1=VXD2\SPL6]Y4$Y-;NT1G^#*! T3X;24(NKX6T.))5!;9@F%O
P=S(<G!'M'?WCU^X!$MP%)8[!I,.?92POZGXQC5/!95WXS88U^3R5:C[<B --KFM[
PP1^Y:LW'TO\'_;IL&>.Y"0ASK%I:RO;O)\;Z]J0\JO7PPJ2)?)Q6QQ*F0LM8E:\M
P*^,($5Y!K5LBS05'9A/6\^4O.CJ?1&><3;7T'IF=+25;=+*0K97%@-0[8D>]!OD-
P@"2)?+ _20$DE%9?/ ^YW+8>Q\!^8#S,**RVM;>OES7A_5DB%@TP:F'P0L:-75D:
PJTBVS;SJ,7=6&;/,Z_COZ.J]6V/8?*\8[3*.JWA0+%!]C9EK)?T$[A*2W:B%6S#$
POEAKWZ&*1'B1J=25A/,7[[QJT6?'*.[I(,YABC=B=C$R$\5Z.@^D4\NM.!6TUDFA
PFD_M&Z55+$70E6_,J52K)EV-/9?W=O1P;P8>'6I$G&+KAV<@*:^/M N 1>BM*F@D
P<6*.A>NI+YO?JBM<B)DOO>%6E+3DWN#<7$3%O"]4NZ;,>)8CEA761Y56A?[1C5,P
PZ? B;Y6:AO^*BNPHL5MZZ2U-]P?"XUX"><NJR#</_BJ(Y<&5XOG?F0?U*A"1<2Q9
P%<1 2)++*'[2V)82M33!D] 9&HGMZ2S2O_>BNLHFH9/VK4@W*H<IAVLAXZ2_B\^>
PA,300!_DOHYKWP\_E[\<<<K:MJ1M]H%V1E:XR3A&:;6(EC9P22!+\)0_&C*JFD.!
P2RU?%V$ES&D]:Z4D@QBA,-I2Q0*Q:!2%X4<UMK1V7GSS2QQC%[7'2TN6%[U*H$BE
P!9U:X82@:?M/8L/=12+_@C>&WSFU7A'3&L'.AEUJ&:>NU3*26=2KE<Q5:2%1=;,%
P[D@6Y,E!+V1I0IFS59/_G)E!P+#E&IF'MMFI(;,63:ZKX3>]^X[0VJG35$HB1FZ,
P**"DJ68=Z>Z=I,]^X'0_]N/7]C96H"JWV$=HWULHH'YJ]Y>($D4^6,?>3">"_E3M
P3340KZFN*^7#<X6Q)VBT$.ZGO]%P:VF2)UE'H7V<F+;=*KDS;SY#*2?<-?=LZ-3O
P1K(OOV%,C-S)"U=\G9ZN$##TR+<_#EG+X8DHK,6+VLP.C ZI4'"00#\1]FS G)[A
P>S[]VVAM)J[JJ@/@ZOQ\J&?/4 A4_I]=\/5:#P8E8>#U%MUE-VC_\1H\/#+LP]GY
P7=GRG;+3'"!:7P53._"( [?FQ:)NE^8@4%L(0:/7.SC$"D_7S(84][\C@_%'T2N1
PD'IY+8@J;U3VQ8,*0UU4%++R(L5.+QHG8D]!LS3%&=Y.3?SB<R)&Y,T<4^QOU,R\
PWV)(@5]&VE#RVNWS:'=T'\*3I!HRG_#.-S6> %<6[L(CSA3$HE _@IZ\IDQ'G7)(
PV=&SS+=KZ(VNXX)"]%LCCD_#Y*54K.I'FP@[1%KZ[R+X 3"40!VI3L/_X5M<:[%)
P&&/&(VKR.QB]I;% 3VX U@M?%%@)7-;;/-4(9O<()%6T3"#R>Q*)83_*=.&&:I$9
P40\MLMS"TS6)(56(;ZE/$(1C<P)\V]L@7O0\G=^U+N5=K5<_P!ENU> -PN#\;.=3
P^.NB('5$0HK&+"E>!TEPV,@-A?HE9=-6:I_S=3@2AW2@]EKFK?A5H<A#LR@@[>U7
P%Q")TNZ>E ( U6:#"MP'OT("1@[,'4UEA/0O$F#4=';KI%S?63-:45C1FKJ,[]P]
PJ#K:2U(SXWVW_> ("%J+>?OXY'UBC7M_W7YNIQQL#>Q!5UPH-UIBM$BHPG6()L)P
P+JJ6_K$"%BZG. A:&X6O1.8V2DM<IY93 ]])J!S"4KF:[!JED(YW97TPO_$BYR=)
P(A@87'[AZS'>>H""EC'6Y.6\BZ0D5CZ)J-!>Y+;Z#J]%+>V;'6S -2&.RHHN9NR=
PPO&8736?[?"!,2<<4++Y<GK]*.^PER5NK>W]4K?Q:3XRP@,39DV 85G]S[.V'1?*
PX*MI:6<+#/V  =JFYQLP#NN3VJG0AF'\%$-&XTEZ3:IK!83)G!T?B?V$D!6_"^]V
P27-0K#\$?@\F8YR<YTNC4#$EQKF]&NA4(5#/*+L" '?&4-[?IL**C%258B0OS\VM
P'\D13+--X:0IYU>Z%6?#GB!F6K*5?<0JQWD(HJVH;C;HH!GEPDT"%>8Z! D'0"$7
PA"X+"/<IGK&E625.E@/JE?7A+-U"P[B#+M1XE3/"J=!+1*8[C;PF(E\QI#X1=&/W
P[F-=XP ?4=Q,(-1H&. J?GFE_R)CM/YYG>1;RZ"!*RIHLRQ^/\J/W-KE"V/K@'V:
P,U!EVB]Y\4,R#Q$NHXGPSG8J9I33P@KJ>4[EY9QKH=@_7'@0S@N5N?Y=*C>M%!*E
PHJ*2Z-4SL"TPWWWJ/+\STO:PKZ,N^-YO,56Q\ZIU$3C=ML*$I &CA>F_9LC/6H5Y
PT/KRWU(6)T WM8 :D^=0=W1SED9O$*)!\\W622-CT,NX(G7<2";[A^ I/QS(P5CN
P]Y]?G4HF57* ^"3_H"\3 <$[!/DP -4[%5Q@+0^XD0B7T-GBOK/?LXH;>1XT3*DV
PVS%;.2YX4HTX@-BQWWQR79Z!K#=\C#&**%"#?V\2F-&" *2F>8 #SO:A_HEQ'-\N
P2Y/U]_]NJ! )^!R78JXNNX$E7*!MTT1AE^5MHW >);/[[Y\9<4*=R$O=.O;_)R8X
PN# [<3HJ!LU^ "Q/Z+U"O+=)8E$:A/?NP**4A TZ/AF3/28@7UEL;>OV/Z*EJS9M
P7:YNR=U6.8HD6S;-M3^=?OM9R1LK3V6V0XHJ?>T80>]V+N(PZN6A)A*#73#VA!?S
P@>DYP#\@)CX9_\<9CZZYY7/@3)+A&XB6@*(14K%,,0GJC>[ $Z C)DH]*YRJB Z:
PR@!VEP0;I)G?NT3B70_HW/#[E>],79F9EN\<[&&1?]Q7Y4KV-NLY7<NT'L\#9'B<
P<NU-D8D^!$X.!*N2?#4?2OAIE@#YN+LZ4+]Q=;4E>3..L5,%T&=BDKG'.]J\Y:QB
PV(\^._F*BX$?@N]KSSC+XGG$X:S+PL&=/1(^/R\7XI-LUMI*(M<<I R+HAB;%?[<
PZ>#%Y$";R%A,400J5W%4,_=2C*/T@6>D,GG+%N+0Y#?Y.@J=0<[>6#N"XIFS5=$>
PO03I(14R4^G[W21"392-TZV(8RH;/+1DN2&*NZ;EQJ6U6^$B\29/C_ L4YYXSP3N
P>46V4R/^!>'3L$2@SD,6&/\:FSO.^#8K/9N9U*#BKC;S[(:>0>=NYI'+NE0&;1I/
PE$QHO@&YAS1NC-#_?0!5KZEXT_*D>YA#1H4JM&[ .65 L>OG9R?+EM',3P_XB"$.
P!2=C@/**YH<4K!'^?EPGU\>\IU5TX)(*^"<5?M+]Y54G)AG$4_G,O#7\QP2/K[C5
P@_+Z!](<!FJP#QIM\_P(,*7SDMM9Q$+DZ["C:IWH.S\ZIBR?=0,DG&=MV&==%8["
P5/S@BL*4SOT74=00>]S\FIM#T2K[V1-[*:\ABCE-)<E1@"@H0#L?L/MHE;'BHR"F
P"Q299)5&)!\PPK6[7*(2,UN1JVD^RDR^/<V8 8!-BHE2EP[0#/H&U%Z8FCEYG,$Y
P4/8\QFF(!I!CPP]C&%JL<#1"7 QBEOHVS;3<VOQ$'A"L^)_,>@[R<6%/]%U/8K&T
P+$U_\N,JOED/3D0XT)=C?*.XVB8LJQ1@3/$N*!MOX-N/. -.=2B>#CTBH"\$ #00
P)"_W ?_P15V,)"<-4%!!51"S7AUZ9NCD[$'!9G<W)*3NTH;J4"A^ A+7HIFBD2YD
P)0:V0V$']UDNX&9Y>*:3I4_GY+R8@%0"LPY':Y1VW88+E95GN[)^%_H4_'!D(=AU
POZG^1P\[T)-\*%*"7QL&L80Z%@P<&^^NA_&Z$-6.1.I.RQG7ZJ.$VJMC-8_M7F,Y
P!()?M5XF^]M!KC.: L.=1;W43'Z;-0*T\]D @8X)?[6.DJ%7DS[PLQK)WD%:4[!.
P-93XM9[N?@#*[XD]?383X9.Z'54$?MZX#;6Z>=)DYB@%T%U.T4SMW]65!DTUIE[C
P^YX=U0,%!TK ^?18THC:.8DY*-YUV6"%9,@9-9_JI2>Q/BW&-X\) 4EAC*AQZ 9>
P+Z2FLG\USH 8B63/W;Q7$^!6IW7QQ LW13G8 _G,.>]4,NZN@%-S0NE3%@*!TP;9
P=I(X!+%&>XU(>B*H>DFU,][K:)MCI12%0*(NX_=[VU/ZISK7X>H.N?0V81TW3G&P
PG#2"X$?\^6:&P1JB1J$6I]<]_TD=BMX?IU[J$G4:C=J<&7J[7%4-Y!+L^TM*+$:V
PG)- O*RS#@%3'KZ%L?)^]?:]MP(;;:U-,<4#EJ&N_EOT/.2==!=H*7,Z.#<D<S_P
P=T[W89L^G> NA'O Z$C+#F=\#:?# :8 F KN>%&HA!329?C2,@6_1?&\U68TLY@B
PN@*/^*E)&'U,8R)H5M^G>E$?T3\RMY6*^BNJ^0)KIX2"[9%<](=/3U6E4C32+![+
PA=HO] 7>5JT@'C">]Z^5YQ_A5^HN4 Z4,Q&\Y2Q3P+="UOR2ZPJ:NO-,ULO^D?9?
PXL5A"NA4TK%$!JR):T1]V9LKM&RQA#HSLWV5.YFAUEM7#QQEW)[:X!UOF2-V!&P)
PO]&J%GVD_SDU0Q6&S2C402@3^Y*<C&=H_"#?Y@&5S[07'HE7"+GWB230GI<6M5#-
PDY8C7:!\^R8?:]K<U;&.LHM'+5TF2?#6[[PAF57E NK81ON&$I]!UC:OIV+='4XI
P[2_Y/O0BZ&,HM);7HJ@RFYW2&U)A'(#F<O("1#$I)](? >VXR4EF,"\3=>+-'EE]
PGD(25'TPL]:NU#$GA0%^Y?27Q"?9$>L]8V'ZMA%WHHCAAR(EDQ,:TJ-SG6S<T3X^
P5^G2B$>-^@[,RUS+<=&=;>L"RIX6X7V:I2I?&YAE"T^K_&U;6&7=KZO9[!7C_&V(
P:NGPP\9"I.W&T/!X-'"@@R8A9IIDMP<14*)8QB:AKRKBF^A52WE!^RHCU"O+!B<L
P1MC:8LZB**YN=P1EMP?JKB5G7?70S/:.JU_\6],6!]FLF.@K[@D'61;596L(\_/3
PIV[KA%46G2;RC_&IF-^H!4ME1F K$],<C:/;$@G8)%=X&'RSQ#\E%-S49YY$]8;6
PU/C'ZV 7?M=>K;/?0Z+<"!)*&6#39BR6+T&:ROV3V.UE'C.9Q" # ZIUJ/Z(QH+$
PAW'DE0GNRK1CU*MTN;VE.4SL_RSMK/ZGK&#W7,@N$Z=PK96D>R=)J%%\\^DA_4O@
P]UM;4^>#!9FVQ?TJ]'$*[SCTQPB<*F7K7&P8!7P4JF/06Z[)?4&%0B4J;+ITDS>.
P[VI[ 6GBRH&C#]FD#A(=?M7;D+;*NCR2ZR7URE6)U35.T,!"X8^L8-,F(E*ZUGU?
PI*1K0]I&GR(%J:G?$L)D,;Z?/9-+W<DWJ>RQY^V^HA(2-*D^B6$1R=" WZ3KX/FG
PA[+\.>/ODES0MKA(HF+WL;5/C+4M4B^>0D,0"KX$%#=';6>"W]@&4]0^W\90DT9E
PP8X_B5)US199XLYII^'C5N/:5!$?K>H?;J%;523T6#4J8I86 XK<^XGDQKJY& R7
PZQ)ZB#M7>;EIJV=-IVZ+Q36OSH:F8,MU_5CEX0?,J5:"#*VE*U5Y <0.Y<GB?["E
PSA::<ZS+A&0IP_O:0H39*>TF=ZW\3^YM]S:=FUV0R;:NHR/Q %,=. H$O&^;VIRA
P$[EIAGL7B!XM-7L'HGM_\<_<E,@3P*DTX6]G.7!9\F9?[@S5QMUT,!&=E0]<;>N]
PAM*W#5$R02ZVE&0U(EM1EG;BDO_%9>IVSH6\_,Q[KEGY<>_CC$.'YL0Y&T@2G'B1
P%H=9T.T<6Q6VX.:<#./\X2G6&)Z!(E^S=31@*?[7N9(RL\W8U\J>\V-EC<_TQT@4
P\.[GT8]DHPH%IG[$%-O3CN0"D9A#7YTQ7S2=A>!96WE!CSL"BA6!U/,QVT\JR&2J
P6[,'[;64M)!MJ3TX.T,T%!*SQ9'F G^_:U/[W#EX5GH5=S I,D$"+.!5KHW.G![>
P^=<, S)[B5]D%&Y<G/XD"GM[FXC<4_YSW]9<,JE_(]]V;S4JR2+58,KG\)"M<O1'
P<^;?TEPI4$)QE=RGD;.I2B,1'G.\<22QI,P$G6Y?,-+RK;4Z7'3Y+PT0Z],DF?&\
P*-%$CYRGDN,VK.5$JM+VO+[X&QX$\] 1C,["MEWZN@8[K<^EH'@8](.;5";X?7R.
PI%*BFC DO JX7AG42LA(O6P@EV#@?$'34D]^^G!2\H[D=V\%<]4(\PI^\+G),C_D
P%UR.-5,N&'A#WP>'!%M+1C'QKQVN]7K06F_ZOS4#=OO;"]O@75?B%$RJUL!;ER]2
PH!O][<=4?5H?*?EK\*.^>QC4=8HS1 4Y'S#"^:H[I\JEODUD<6_N&=FB5<"3(<_-
P;K83^IR\WRE)/4(V#*+B; QY;$]T&[]I'QO%FO8!G2R@M:&J$FFCVPH<2;ZNV.)P
P+KA]]#M=?-22SP<1M"7FG$?+)^L\ZOEL)#>J'M5<V'FK,4>^$U?9<BI9)R4RGH"Q
P4T;(601/\%B:AU%,H18%7$"WAL_'C^VP'*3]?WU-N,7VPJM0WY[Y%A.3T[;2]F@I
PC:5?4E^426Z)W^4?Y,EZ9S&X#DS*X?_[J.PUEDIHV1RH+YH9_J/7EN#3;%+68\7P
P3<*').UM3E,OAWM"'M\#HG5]Y]N7-B'MNCM@M&4^C\Z!-$(!X'$ -RN!.#FR!=,M
P.IRE6>\;UMB#=OKX,!$EKU.\PPA6)MIKA4>O,86FONT]0K;06\"MA'"VG!9":[8&
PK@X7HW^A7UN!MPT%(([J=Z_&J LQ#(,B:TH/[F  !.[7S;LRL)JWFJ@$=Z3!!_ Z
PGXKS4R8![,66O)V(#*;0Q%] @<1Y2.Q;P2J+#')4)\Z;-MBMS$S3Y^[W1%"Z4%'M
P1,F S=REU4!_Q*QVT0OH\2FN"&2C[O9\N&N2@.VEH!E)/9-9#WRL=/--PSR(P;(5
P90(3/8NDTT15-"E+VVH5[$=S#BPEB[[[?\E=-&\F:>5^_O\<WP??^3#;\J*_RTAC
P\R'PEUK@\/!MZ\EM<G#5T9-5YXAT^_1(Y[W)$A)T,.U\U9V*!I"Y)VMEN?RI]AV#
P(=9#RL^U-1@H?!#]\QGA1U;@(]MK6A='');N\=%W)!'=%,*4+L/![8+0%UBLKK42
PL]MJXXY4A\K)^]>.NPY6.O<?R;ZC8UPEF]7[/4#4XG\_WAM(F<RGGB%\YN&IV-1A
P-W^R],$7K+MR+>@S.KO(_N=")1"6-&YV+X.Y^KQ_!<F+\S\NJM>F+%BGW0U^,=%$
PRZ&XTULR\G2&?X8:;D+\O%*?H)7>G=AVHGCL I>?6 LP&CRQT(?8<5)TBP$B-8O2
P6US!9QJRLL],:/P_KQ)X-/.RP$ '!,':6("M*!J_Y4XT'L=H;9HTA_ORB5?(P5&#
PI/HV%H6Y/DFN9G!9?-_]>+ (+4,,W0$7+##K9$U4KCF\1X14<T3I(&C+;?MB@IR8
PI_(JV(AY6*J\#?L;%@5*&&W$@]7+9#^3@2QHVG];<2&U5%N)M @E](VZ2'792E9@
P;6V&9F7Z5,T5#OEB]JIOF\ORO@D_&CT=OSU_3KRAA](]:LSR+"*C,QZ!&Z#7;U84
PD?L%<S(I_;TZ!SCS5R7?*@^;B5I<*%Y2<$UJ\<HGWUA'%8?ZJ0 TD>J,CIMKEKB@
PVNQI]"CT39F_=B:&DFTN$72%H[Y!8R3'J #RU9)5*TR025P+W6N@W<N2#]37%@+.
PTH1)?EVJ0GK 4@K[?^4;YDE9RF()9/7?G1_W-4)[UL+*D]; B_3R=Q\I_<F#9VX$
PT_L;8^_"!R3/RQR_H45/OZI]][1/K5]V.MJ#Q('0WD;0O_,D2O8GOT+;CRQ&G[+ 
P'R$/LPWAJ7RT[70W13-*]%";"4NS_7!=B'-O66[ZC8-0.5,66VM _40&+ ,.R31A
PN%2YC=4%(@LB<O<[,U'!FZ;:JM@7G%<HE5,,-GF2@TU3@Q%5B6FL0$8$W9;:($:-
P51Q(L:/-F6SJY,L#'!BJ>E&H'"/,^#1FA845.;6KY@QC-3W!FC:=K9_E("7/U;@9
P],6G@[/>LAOHP86B+Q/40#S)<!&[,"M"ZU:02FN$.XZ%MWYQ0 -$J$\#Y#*R 0\0
P)_H=1]TZT @3;YR$[O.@G=AZ8A5KK"/)I+6Y@0>U^ZRA:^2)(+#*\)D:;FRE#73M
PKFWZK'X;3%4.M#PJ_T>S"0^9#D:=,9'"8_O\J.*;>CACGD#3[RD6:ZW2#'H5_;6K
P7O75/]F90IV480/BY (>US='3;[$Y0^AS]R==G91(A=XO.9U'@A>WJ[@Z6"C<BP?
P,\RUD6-IZ*7P;&J66J*H9S;0B/?F!O=NZ=% ^+$B3L<#<!V#TS[6?+]N],U:5?_J
P)"?-JY2GKI]/:.-_G -UN:8=]5W,QS;*$;J9BRUHVB0*'!::PLC S#9N_ZQ'^QJC
P,GBHO3I']%JNCW;GT:KWP7H9C/R :_>SROT+2IN0Z>HF -=E-0>VP'NE6MR2*VBQ
PZY_#@:GS>P%9^_WD$Z/H7FHIQCTT_8*,E\.'0/6--T1$%FGW10;S4"VN&!.73KFB
P;R"D*PES^:GZ:D=^O0*E\(6^VZ+%9\&01*YHIDYGL*Q%C:,Y\03(HU!_+A;A@0/O
P_3/&&1X9'MN+L%O@RQ_R.*L\CWGA7D OI/N=@55/<E5%'3T[!<W(QZ=*?:O"J"$!
P WQO\"HX5L(?Q0UXTA*%O4VOW#V&BOLX&*F % \2G;>73CHR9E$JXW)$(?&L1 S 
P/UC1MWB%H8I_ #NGSRD!7=$@C@8V(6I"\R5I50LF+2XOU\=D.[S*O&B:4EUO-[%P
PQ,2?\75DD5X<'[TI$3$2T]90Q3SB_E7V6P/]8BM^\J&I:\P&QBF-I'2U-66()ZSK
P'(Y>2Y.'SQMKP(N!7?!CL0B!37])NX$&2!MF4V+XA\8QB7;$TL_$4W"QXJD-EP[D
P!;OB(=3M("LI/J0)BL*%W2N>D@W.X]D=N,^OY.\>.SKYN0@B)*B*9 ?=J[\2E0OK
PEOA]O^#QJ@KZ1#V]V$AJ4<D>2O$< 3Q[>HW8"M\OX?D=PJJ0@8F#9^2ZE\U@&G3\
P_MT-$NQ#_*67UM,,C-W<;CU+OE+80PIUG0.^3O+V[Z+\ZU*BFLS)LQ8N_@0^3PK^
P/ /''5H.K]PDV3Y[!F+%MY? AF\YGWB_9P7;ITJ6.Y.SD&Q(S;[LA5100'!>V]BE
PML:1[T9"F\.1DA!;_Y)GSY2:(?_^2+W9[,*[#/BD+OHO+VDS;0[,P?P3U.A8O178
PZM9IXN7!:>,K7CE9!]$HY/HPFRF%ZA*L"RCW& &0>QWYSO^E)9VPE$/*68</SWCK
PX-H%H9<R4F@U$FZ,C#[02II(-D^?B$-OBEU>V&56V,*OZ8^TIHGSD*N0Q0Z:X<O 
P,#39D$;A3HV<(AD:YJJT3M/]IL=3)/LW18KDJN&1$=I])\MMST68I9;6L' $T81?
P"4J". 74J&P=X5Z5A/"F<4F0*=R7++PIAFDN(CDS?>S L.U9*QP$5VJ8EQH'KF 3
PTV))4EN3FQ0%<</MO' X?3(J6$"/6D&P+R!SAU>Q-T@*!+-AK*%*3OCH?CU@1TVY
PHD>#$*IT6'^,C,#7TOY%ACT(6>N[=Y%K!EI -,$:Z4"//D(V*4]8!LOX$N3XJ.Y7
PSCX2>CS$D*E,9%$L? )D[+5NCI!MS)GR?X[^6-UF]:!.J!C54=/$>5IG-ONG?#U$
P\G7;13]82<U/(U3S;P;"4B9>C6 5\19BOX@F$,+DP>ZQS0*KX$DW%*W?G#],57"$
PG( GT):2@S>,<L"J8Z9_=(ZU0.7#J3UP\$(@/]XP&,TE';O$43KUS;J.;NFALWR/
P"+#N%1,'OC H T?S1IE'%6,R;A^>7<Q9@CRIIH^&3T<O%9 L*/:8'ZTW($6&>8MM
P6A<^,*94H0N?=#TCGRTC[.]T[_W<*.[72)1L)T#$?XA0]_!H_M70?Q3\B##=F@UA
PK,0*&Q97VJL^"EO58T':I*_;/><<[4/5F8D:8!FV(UP&M[-K6)3)2#T@8YS]L$0R
P?/*'&+FVP6B\&B2@P&9Q-TKA<#@\]L4!EH,NO4.%QG/A.QV$/\QH1Y23]A0R?O)+
P[S:)&!4DLYR0,7B<UGLA &6=/OSW'7$;"IEXM^=G;R^CAHL>( S=\Y$E=1AT1(P)
P]0_M%5TJV) D9,'P9P_PJB/N 1;ITT'/5H_BA(+:L'TG2Q(7O=-RU/)?Q*]VEH6R
P0R B5<A3OY6.'$2A_#S!Q'(_*O5CPI69'E>AXS@X;-&U:GW3=@[FFB+,<-O/K66^
P4D9(MQ&@0&:3GJ>,M!4(:FX%52;6'A"#+'(I5B_J)\=)G$_4M!E4C@ZL>=.T"^L)
P1^1]ZC!MQ^HTXDK0]*CYMC(0YF1?V-9@[[']>DOX]](1WL,LLK8[XNU@EQ'Z3!<W
P>GEA?ZL1)CUI,4&*%T3FAI+,Q*HGXHD!@9Y\"VHIBL.7,I-G;QU)Z!+9ID2ST+*Y
PAKUV#8$S*\'P=2E5Z9Y'/3YU@B1MH.6)?\8"J29H/>,4>@N1B_JD6DO&N]-0IA+1
P6I*\70&A0W^8>5L];"0Q(EU>HF6<F[E#,.$55^]BX[O/R?28VB^KOYE 513><PA7
PY+U C#2,$,=*SW8U3Q3AB&[=>-\^8!^/(_:)]>K!:A7H.,%UDTL.?1MXY^=B.G^P
PVR?L<;3#Y#N.5&_ 6V?;UA#P.5VV;\1BY#>-Y_W5?P18X,UR%YM$2DOZOZ)!2U<1
P8O\H,*XZE,7-1B _W&%*?O+WVW )B:[N4K@:+D&B&-2OK$*+O6M 5@$;=,";,!VJ
PJ#<6-BU\)  G/()VEP.\?ZNU9B]<T1.U#&(*EQ5Z6"$)WN,,R5^&JLUU#5D?!AXY
P#>NPVH*W,K<4GYO!Q8ZKI9S=&#!8/&\E='&W>4KQ+B>Z']WVO<=E+J,X=&><Z[M#
PS)$.)#OA'VLIU(C#QD0<@R^MJ/I2]2:>-273$Q?E#8@FAQ#AW"X+H_:VJ^(T]PR<
P?JV]4K68:*1P3YW1#J OEF&6\YO7'WC.:1' ^@T-XUL:XSVDAW;RUQ#J:3H(L.:K
PB(: )Z[=/,?T5H(4<)]O$;=H8+TE]<&SX?PJ K,PLY&EUN41:8?:NFW)M>0"Q?Z/
P?7V:S_%:X!I 5D017T>@L.3>,<C"G0%5U[@C96RE%)6T9A=4[NU-OZ,>UI*"2ADM
P?_OIYRENAP!C6*?*NPU)=6M*1N8.H@@):C*C2W/>HM<<Q/Q';54QFXH3YC<U()"Z
P7?9S)\(\@=+5V< SR&MZ7G7Q&^BG+(%0'59#2/A298^&6?E( W$_V#EH-+?31]41
P5M_<\TEU (1 7HC&!V1,Z!Z%O[TH7:MZ>9U2,Y(+L<F1&RZ*6/!6"G,P=_3>0L; 
PHVY$V WB.Z8M;>7D5/.*[844*T^&_L0L:AI?A@I4AP8FXSP3?BXVJ7=*D-\[.V&*
PJ1U]M@1:_3K\K5&60.1*IC^>VW;K;R6:;_=R>BJ:OL_M2+-Y( Q.U%8<!'K/WI,U
P)9!"9<(A)7L&IB!U <<GAPK9VQ[ YH#H\N"6.;,%@]YC<N2F9D(Z-T3-Z5GOA_? 
P=5,!9?$R*"94^@NX$NGW0)?UHC[ T0YVE,*)R5+8Q,K% DGW,1]2$:T.#C'52_G_
P2)KC$L4G;#9=S_X^O[+K;-^P[&QV^GQ2GWWH!_JEU#&F)L?9.X=2,YSP]2YRA.&;
P?2,5,NA>A!BWV#,O3J_!WI?.$"/ L*'!HH+I-05?9^[]#!BRBU/2<)PH%8MU$\#(
P"6HL?]_-/]6]_"_E(7-YA9N./C*1?_-6!_TFP&]/'4%S*>J>N=D& AJ*P[/F.R\!
PPW0DH ,0/8[YKIN,:6NP/DZIIN%]%2&C=:_'F]IS^NS&0GX.\=>>821,U$^-"&TZ
P#[X]TY%,(.3%@5HR\G2.-/!,<N(L:O!:39689A=KN%;IUD#5I7^Z4K6XX2=;G5W#
P_=R4.D=/MH+C*^EW17:?:.29".HH1)YB6(\]D.QRI)9BF%=9<Q0%1T@4HZ,P+NDK
PM1,983=RJZ%L$!CB$!0/K>.,8E,H;6TT%[4P'UK4P@O29F9&9UQGL)%JH<S%<BTA
PU=5=)8+3O \D?4!^+; D+DC;%HB@_8&2RR4=TG\'B=C 54+D@2>\]S*Q5ZG@?C>+
P>GX1#=IH(D,'7C1K"=@&_![5W&/JU:DKVX-> 31+5+6RGR0T3V!/;Q94ZX.D-CLO
PZUYN$62OE7I^+O]G*BT)GXKG^^+>.+[;Q1&4)6J&'\"<OT^3?AX=#.KQVY(!"67B
P2A"RVUYAU!!E<W>M6Q?!OT"M+F_(;?>25-07ME/4[ J0XR@I>K>&T:1$"+JUW]P)
P!UUH3RL;1GF)1O<LK_]DX[>B:A2%U89^99 _$92(*U)JQA(QC+_XP)KHFD;]7V9S
PO'IU]4 L42X2+VF'! PJ8 Y@3[Q?(IV ?G@CY;V&_&2C13,Y^\(GU4$D].EN+1($
P\P:'&K\T.#?=JEK>O<5?Z1O%!%T(O%D:(F2("S- ;U=+(%((7GCUNP2))#6EPQG:
PZ)W$_#F]!'8)W7>A(D,0@_M=]>$,O@YI]O(!E\,FJ-8/M)TEKZ"_6"ZO/T&J5_4P
P#0 [/M:FQ2GTI>M0NF.10O<?C%47HTQQ_A')+F]*[N;??*TK\38*\$F2"ZRUQDR+
P[UPRCQ5C+#1*+#Y67^D[>Q?VQ KFC$3UH?N\<JI>4HAGY9C 91PYFE'5Y[9'6E<$
P;QV1SS=6T-_6JQPJQZ^&14"T A ;ZL]N![Q&#7T1M;,=-^,T*.I;@:D3K>&'VGPI
P5 _4]]T*B)=X:]:+7 V"TTW'G3S[73I_9U67^_DL/[5"K#VUA?(E5KZZT@_]UV:!
P]$L(W_4]NW51EVVZ6<EIUUMZV=Y)IS%G/ASP+NH6.FA6]RJQ4N4-%4N@1Q8N)=01
P*JNC/_!VP47S$!MEBC*WR"YO)9XIZGGXI%,<+7B??$W/UL:B+$21C8X6J+#QUM-_
P=7>*]N^3-PS%I&@>59!E;YGBM^=4 0J[[_0(;^\SD9] @-JVAUG_<&7 6@%7&L6*
PJ>V0STD9?L$HM 9A-TG"G-)\ +TFW(RE W.!*^:';@:.Q@:[FKY=)T<0I-*LP\_9
PI#E=D'J>=IO"9K_NM'P1E!M#G%.-IA5FCK!S+FYXH^'4(=7?P7%((1D1_HIDC)LO
P0J.Q0CTAC\?B^BBS>0CL2#RJR2K@A)DBD)!Y,&W[PX82:H0)24&O=/L8LI"U!4&A
P=5;-NW_Q:&KSR>7X4V LPIS5H>F@X\W3(2CZA7H5H'F.;_>."C4?Y&@-+/T4CFLA
P$K$SS)?<_SSHQ']WH[F.7.+_N.MHHJJ!66"A9S/H'^)!'(B[R.HO,O7FX/OP=V]=
PQQ:V<9G["JVYCL(<DKR&48_JO_IZCI,%]'6\6T=4\&]-%MM]M346HKPX_(NP)F;0
P54%A*HW)A"MI0,P+J&O__BPF=E#(Q9/?4"7'Y#41;H'GSEX.3J5<E?B>3<2@?07L
P4J^YN(C'JQ_H&Q[&T!P[T1C%@IBO'OM6%L*(8/B-VD2@ES7>9M6%S_5!L@7+>L\[
PYA-5D$CISG^LE7K=M:>T?FV>_2A,'7_L\C-<\;Q2&[$6'H;5QHVAC<T(8?*]VG%_
P"8WJI1 4' EC/]R00D@*[: TV)E2ZJ2NRV)O(VARA)[O.)>^B([2^H[8*P":ZE!&
P,"B[@\?4(""73Z;G?8@U1,+ >;&\ :0&^&Y);==B@!=]&N9F_*3/?4?7JH!*'?AJ
P-?,-<%$Q%>BG7L\B)[$-O@B:9]N1IC>,",,ZU[*ARA8PU=R*OT0M-$31/D0[U.^[
P#&=M>!<)2[3J+3WJZ(3$JB4]-9#GW"TAD/_YU52IDM=-_$4Z_NQ*G=^_QGI$6C!^
PF/H5$L<Q59-AH7&>=>/FS-&MZS75QU((^K$T ,L5A(4$CHS ><>EE1&!3&^ ;5,I
PP'57E[RKT^/@! [)5BF%"@W63B9LA[M">'F&]3*=+"GP50ET@U3@LA0> YRYZF>!
PBFTE0'"5Y"_/"=H;G-SQ-+B0.2F!'Y&=XDKKW3K8E4PU#,E=+9R\I=@B^P[;/31Z
P3P2GTISXYM*"&;J9QF.!<.F"O,7B*F$.PG];4CF-!YQ@#Z\!WSVY=G3]1JYBL#9X
P;'^1&.*HSN<PMV^''/U4><V!-!,^U5'Y/)W53GX$A98PG]!BG.?FU7B"J!CU"3Z=
PEI;F)4"+!;5CF5+R9.51<_7JQ6(:W0&P481K.)A'NBA,"T6SH2(5;/0<31.W+>#+
PAR)C2);9B*6XB+=@ED_M=-GV@E*%[B_AZLZ0)ZC=/%I6D/8F-2QCH#;:XA]ZLEFS
PU>EMCP%)WO!=TJHH2C#9<&5YL@QT0KGI9-DR<V;]3MI^9?D,$?.--?.[1C$6#0EF
PJ38V:PC]>$.@M\M\8R/[5DF<X_*HF[J8+:S;#U"*D]MC<?._Q<J2D'9PYV(57>ZO
PB9;]-215H5?;.48<(,]^%]CB<[%Y1-L[:G#C9;,.#"64HYZ@MN/UIACWEG<T_F3^
P^ VK+NKF4H7+,8'61^!#=]-GQ:?B O]]AE3$J638U,[WA9'#1.]JY^96B@6E5LL>
P5@+"GQ"'PV/+]*SM2Y&UJD,=%_JBJEB1%%6TS>\L\>>^9N&TCFEAO5XWWQN _FCT
P8W^J=\@M!#BTN/O(0QHFY$[.*1;Z <N'[D>/B40#4CD2%#DUN>P.XJ>K#-PM(5J]
P5O$(H/RGZ2!>P!#&C*'VX_#R;X-F-H]?+T(U#N3VY>I73$/K"?QK-L"9=PO. SV;
PA98)0T"FF7F9*M1<EJ57^HJLU3E;TBDCM&:D@C6^""8N,[\ @4K/G^RAC'\5<GG)
P/$7-4?_:/.HE;_Z#0 ] 1$1S/Q U4_^]8A^X%-_"7X)8@"K."""3@8H&!**C7BI$
P>%%X2[UQ>.J$KD'\A3[,L+T0J!HR)6KUD?I>EX#EYD%1#<+$<)^&DI0&";,#9*X'
P:L7[=T_VGJL#U=@P?HS>K"_(B9](L>$5/^G/QXKX\M*-C;QF>JM'$J;R9':@6X;Q
P#.]^^T25O,)BEFAYTZZ9Y&CT0;;IE:H<? 4+\]\0AJE5B1OS2$97RY.P1Z^(KO#J
PPOK7ZQYVR*%XVG7)OV@K#F0 &3 LL#_=C.M1@>/D3VRP+!.>]^A,+IN"DRZSV(0Q
P%'^X)YVMZ02*0D_;5U'VH-<HDWC8.9Y@,,MS^!/57D0P^=@0_:NM$>R[%(71VZ1Q
PO3ZF<6<(IY&D8ON&E"6?;\!9?MXVBU3,\2I7!X.CQG!@>JAJ[HD8?)4;/])@6JC"
P#GV41@V)@P>5\@*5CQ_BK/2;4VO>DB,5A),*HSWY;8\%$;Q7WI#;)/FH35"_$OU.
PS_]&CY1:9ZVA-., *5YX^@UYZUJEND?AW=?)%OXWQG.3U&JH)"GM.^@Z^\/;*1_S
P=[QE(5!KS4?"I;W?U)/)K-NU;'=(R"RT8P1B4[HGZ,2ZLX/+O"MUF*1OD&<L6E<O
PW910B3"I@N+JDM=.&X1,=#8G3?)BVS+I7X6<_J]^LG'Y@_2+%#8!-!R74:*HQK)(
P*N ^!(:]LWF##CVZ4'N>AQ%6' AF27JT_HOS;65EW20A\/FH+"$L RY4;,9:H!#;
PXMWUY:'^CW;-KPH2\/Q[:^SND0!%CO4N&/"'X55-8+#P#HH*$*LN^0$CZUD"&$7?
P9EV^O6V&*CK W^ M'2"0[?<FCH0CQ(,]$%E 8.Z/)+RJM'&L\'^NJYLA&B_OV*ZS
PS; >J?Z7E:3W3G&1?8ZH&(9=TG)+TA6""RG(!I%8!(-!+>2N+XR&6PQ7V!6@O#Z5
P&Q:#&7M%EQWGD^&H[MA[5T)(O!GP 'VEBA</I'T=]M$QW\JLCPSMSVL?FW&#PI>0
P8^:;V79-Z:C(,J0)2^CT=B>,PS Q%#?3(ATS0<4TJ/<#@#NF%8?.KR#AJS1*"D"*
PX1/@*OCVVT.LMI9^)W/L#@+W%TT:N<EW:8[.=4:['1E%T8AO*TF:GFQLTU(FAGF 
PU[!I._XPL N69GD @(NF:W^TRHX*KLCA"5\Q'/YD:2\D8B@=H#T8%S7JWL%Q+2 ]
P?T$B:5H1J33B7;!A;Q23^:-?D6GQVL^D^UAJ)!:20F#P=B5.Z""7 FR.2;X_<R-V
PU"V:FYK@U?[#%.$MO":ATTD>_.$8^/#+5_XDD?.\+R07[S^)-U+\2E,_:= *[7 [
PY<#TDG]T-.Y/!#NZVM5 6M1DI$[5*%#7EUD^10)EA6JT?5PKKW=MFLNZZ8P*6G#D
PFW'8U*'VI-,(WUZ012+W#>@V'BE=EV&_%K+4D&P)*/IZUP1#R"P/'Z.*O$LF[PK@
P+.CX#G@.V.?J3DV$!X YQUOY,)1*!I<&+X[O*-)</M=4SZ1I"IFQN%;@UCGPG/6&
P:6&<5ZO3FM]/2C5@AU)AFO&O*[L*S*12I>T65"5YRC9Z4S)DOOUL2AR(@#H'%C*P
PB9</AL&^>T\T\"4RAQ]^KT[/-8\,$%7VZ\QK_YB,^C<X<) TW3C-Q_3"/^?*Q+:F
P?0_(?.O[_(>Z8]A&C.FT-['WWI=">U+J_0!RM*5-+-<17874_7GZZ@\5.+23,&6?
PU?R"PV$\<HE#QHX-K-23A&0K8UZ/_LBXOH:?E45#!6-IA&R0WZQT7O?V^>>N\S1;
P>\938@25K*5?K*<([9K/(^]=W/JAH_!,&F WQU>Z65PF?3M3TCU!,1R;_4PH,V3*
PDCU 'B(4)C [8Q&?3:+<0H?*[R4FZV3":!:/A%=A#.,;8)G4IM5WJ0WO-]4B3HC;
P3%IU5UPA](,4VR1#RW_O)DDDY-D5@4/^LF48E5;L,1]R3B,!.X85N L\C8JNED/<
P3HZYR:=19N2/7);EVN/NQ8""NPD7VE(DX-;:-JQ3,AYN"N)B3V[QCM:A]=(,T@*N
P2WQC^Y3]6'/QA%GPGTP'=\(>F2LI]>YY'I61F8W.XZ)8/81PA$?SL2>L9D 9^?%L
P\)*(_X8\"%,([+G5F6G8LX!3>'GVC#I0Z8\IF6L(^O&QSLY09;/$:?G+A**Z)]C,
P#"9?#;\(+L]EH' [%>-ACY25O"??&R:0IKCNBG+6QCAD]L]G>JN^8A_Z*,7C:V/O
P_[*;%R5X;P8RZ7<4P@3H;D1H]O\T6)^+Y?"M7\]-E"6*@S@=Y4,+A3GY3RVF?/"-
PG@F0LYTYO$CY@I]98N?G+QM,@!%KF;G&@8O]^_%H$2!:%-DX/QB=T3?3LJ-]='K%
PDS:?AO)X'2TF+D)S-L,N<C!CA=WSW0F %A,=<P#^/4"[MCI)3\#LL>0MRASJN@YN
P#8,CKXT<4.8@KFF&#DU7OI#%VHG>]B3A-I@_=O7VI\/;1H"%1_2HMUOQE,<45LO2
P")9X]>Z?K88OLQ01V+8ZA$$2 ;OZN#T&9R1S?T4F<?[DO4<Q%^(I+^ IR[%(RW1;
P(?Q<R+\/8 NS?I2])$H&RF@I7MK$/GPHFI.!2"N(891 WY?YQ6H/FE'%XT)W%NX'
P7CQS'QK4LZ_->,"&R7(R4D(,[>%GGYFJLYX\T(,3RI#4RQ7UJ4]W6&.H]#';GIVI
P:>(ZT&BOAR\"F<P.8V>2%(N0; N5%^R(!LF\71X\^\6]!MGL.>K3T*SC\!WEZ00'
P*H^AFLX#&>T;@<X4#>,>=\']^:)_HD.YZ1YKA?4%]O1'YEKIMG+AS7CX'Z>4N23V
P DO=]""998RME^.A<M)-PTAV$8+D BZD-?<*G)_NW+';4(]78(=0X/W85)TW+%7W
PT<7;]@G$2[W!/)0P8CL,2\%=ZB$ )X#71<%K8T6]YQAL),T$AE:$K=VO+DPM^48?
PJXP7QAUIO7I?9Y16.^:.G0&>J<&_MUM2$PY$%HQII;3.#^1A.WT0HM/.,"^55-1"
P, OMUJRWP>ZS21]W_OQ#$)!&2+C9@FI)F31ONO9&WF%PT]:=[?MA\3X9;XP^]:%[
P+4-OL2X+E&FAP@,6*B"K@W]JHR=,N2Z^TA(6M5V=: "HASY2!!7)_4_UMAH_@)'1
P8&*N_6F'0#?5(6&F@,C#L X9E.C>L&J8XA85.45]S1'A=(+5>@^RF8)5XOB'MMJS
P"W^IP<408P=5^HO+\CNQ10HI[:E.?]U[GH&QI)&D\)R6Z<?H"@NDL%:IO0/DL7QW
PN,3&/E-T\HC -B-\LCN:MJO/.\J\+!A>CH\B9W>QU=ML)^X+A/Z705%EF?D)!LPS
P.EMHJSX8_.,3F(!QR,*^B9/8A?;N>LRR,K4:U55<)0. 0'$0R<B2A 5E:<;SH:8?
P78+1N:SPPD-\/&L<A!C0>PBW;+@$  "T$Y=-;A"ZQ]T4;6%!H)82"S-Q9!4 P2)*
P2/05>#U.[W+AQ<)2MMC?T,NO^ 3,5)+Z1&BT^36Q*V,@O4'IO-O@IQ.['ERV'Y@B
P*A*S#90OEE-/"[.6&*PX&F9>Q3,HS-4DU$01?I,YWM.T<^$T_\Q;:  +*Z]H:^[:
PW!C(2+]UX(MKDWN0MXPO*VP2]OO=Y5O51QJI\>900]^2434,JVQ5WNHHL$EW*"CB
P=DJ'7(6Q-P(9BV3M!L<3-"PAUWV6V>+P0,TV?06LV!^%_(F?:*@?(+_!0BJ]_SB)
P(/,08MNEZL_KJT]-H1I-1<IJ;$(Z3/QWJ@(S9Q'-*_8QI)Q^#V,K#!*LX;=YXS3$
PK)1S9YO+!O&F?;.7D5E7A+W@%>>K(. 5F*NE=%\!W&)<),&L(DP3S7+ZF0C$QZ8V
PUQI]GKR091RM\AU$@[0^=$FG/486RH%VC9#=:K.S.?4@.DI:50AW8"C%\:T*!'NU
P,71YUA$U\.GL"^X#ZPM ;&,QJ+ 4*C7EICXYO5P'R"KV5PS37,*K=8I7<&>K5U*,
P27H;S- 1[,[KK1C8XDOSF6L8T)*(3E'/NC!/ZE$4I$;RZ3AD\;*#L?EWB8C)4(FJ
P:\N"H8&_V\"+ZF#0+2$>E)%ZEBEDEN 2R[\B\CL^0ZD9%MN2LSE?%O1!1%9:?/\]
PYG7Q7[3ADV[TL>C:ALN7&,N6A]RJE_!_;T:,.C!TF2_15^U.;!V)A91EVIC,]KJX
PJY@TA)12S$SGT9-X+MQ'\$F;3_%V^X@&](;D@C;?#DE@II'CDJ8-'1=N5-E&KZ8*
P+IX$3D "I7V-I%X>%$"!*G*DUMQ6%7]7(QV0@XB@Y%LQL ?\/_G+@):*!>BY2P2G
P^\4(&/^L)2ZICR6FS)<&JD/U:JO\XCT]Z/]^@(>=*0=HIU1;[]Y9_CXHAI[,@*M1
PL4W,2I::EJ-*M.;-ZU9]]O^3F%K[L1]YGZ,:\6J_.]_JMGWJBXCG@?"*G/\X1?>0
PS]"&^@(],0>8A#5>/Y@I+M<U-[0#9A'5C*T/EQ53.L!YK$CPBAG;:W0U@P()M\VM
PUDR1_]"Z_ GEZQ"*Z4SSI:&@6_=]8I:!^GKX<MY'H]#5HIA"1:?2;8$MLJY/'G9Y
P*6I'V@JYLP3AL#.G$Z+0[U[O("=M9-KK#ZDQVG!2A8O2Q,"9).**86"!'7\ +)I7
P:K":UY<1[#;7#E0L?Z0Q);^A(@A?AN!8FL;QSXP8Z_1ZM&9A1=RD<J T!KQ#B66U
P3'_>AU@MI)+HL82-*R+\8L:'8_-RH2-;6^-O'7 7A,A2!JPU+0VXY<:T$81#$BW#
PZ8BFC/&AS6>_S1Q)_D<3]%IX_I&[G^K-ANY6D#)('B(_'1)(S!]=&[9"U9! _LKG
P$3<)<3,EBF+_#GX17E%^H/Z5Z-71CVX@O&$W+TEBDA%EW\+GG-9O\2FPR\M9/L8V
P$-%ER5 ,1HHADR'U)YXK1>(;C ==)(]L\P?8V_R]]S0*6[X )E6$CZJ3Z0L5J6V&
PXM'OPIL P1*($GV3E/J%^J%3F"^/(G*J@JAR_<Q:M_B_+.-NZ\X!;6X)A3L",Y/<
P=T[#>;';.I;K9KJ?JV^@[&--4T4')SQ(S+:OF[0 [<<!OJ7]:*V9!P"67(;(X F8
P5BC&DIL1]ZORM2LN)";E%COH/7NSO"3,NV][#ONV\-?NU'EDUD3A]ZF -]LAY"]\
P.85K?YWJUI^UR*.1<*^Y5 @1'R=I3JZ?P@RI5HZ/"_B;J]=D_%#F^SXEOBFGR;KV
P,AGW]"'-[Q3/+&0UFRJ!I6%JP%[F)H/V-V9@3)3QGFD\:KTKT93,KNIQ3?="X.W>
PG]:[NPM9T'/)'Z.6XDW-HF$6PL+E_*DZ_ ='8[5G/7]<MXTIH//;6TYM&DMA)?Q^
P-4W0DB;_,(S/ @\' 520Y2?B[]M4ME>%^,0:Y20/NT)]V(8,2V:<I@,5\SFXP!B7
P+;S!@LG?>W0_3T@<7L#'F@#<=Z!G+M@QKE?S[DOIL*$!]NWDE*T;9*@2G4&Y"&A^
PMUU6R1C26()?SA%6J'):P4#ZC!^^Y":RQ.'X.&'X"8\JZZW[$'>C3#IR?V54V6ON
PXN5--4&QU H%:B@ S'QI3C .U#L:K;3ERHI>O?,CWGTPG94W:MU  H1(24DD_3W!
P;U\@%8+8-(Y'O1DG"8#8*MI^#^/H#8'9T/P%MP6CD]#&5SH4M.5#)!8K-[XQ#RW#
P!'!YAK:%7AUN!XWV3=_N<R'[KF1D*(%J,K3NOE1>&$KJE9:CJ.:ZR8F'N7M8>8G\
P-WIQ8E7_$9<(U,:/DZ]&363RY'T4I@+%1=9ZO4?F_! J:XU4OBM@<(8I45WZ-I0[
PP!,V]*FMK1D8H$4)">(U L:^OC6)R+_=@)'8VJ>PY9X<^#O7-B0Q (!4-;3BE,/=
P1NT$NX?I>?;IL]47S-S,0(+.[2+7:&/"AU%M>DGQK40[?X)"=M9S<4C@8C+RS?@7
PFF.R#D4=)<4=J&(O')3N&3GSI&%M3#S_Y8[UQPFZ+8EEH,3O?!WOMO+3YM-D'*[-
PMTZ>CK\C4\\A9VP<]L^/WDJ8)KFV32]23@! H527C)-7RWSN@42\L^V<;]4Z_^Z>
P<?%0S7']VH/K91, J:'%'M=]_]9<P<PC7]3QG.U6P@D)Q7\&='O1^P:CT2^/WHTV
PIG=>5\]5ST\XI ]JT(-+1^KW?*()=.B2_NAM0U:X.:P<U$@X7^LSU[IM%UU;'2"8
P1.VDP^5+*37Q=HJS(WU@@_+,EL<G[5^=9.VE,N]B.?T4BF7!-6B+=6_7QS+]'#E.
PEQ>IT+7UJ(3P\>)-'&IU;[U?.9^?4U)..LSQ!SG]6G\5V9T(3UU2PQU5,8BXN)&0
PL4GZK8?1G!=+M&_;/][2B>XF<=#&R,UQ-LW!O]BR7Y=A^YA?QN&LS\S_"7/!M,;E
P2^G/?_J?\.:?@N_O0.G#>$+N=TZ@AW024'*_>!6#R1#C;_"9OA3!]@)7G8+$R@I&
P,7/(=!Z*8T_&5L 9+RXE\OI'-+"+.3GQRU>:EA+MIZH37A'A";%I$#!DXOJ4VENW
P;:^6%E00:E"Y44YL@X6WAE]Z@=!5N3S\[212=-)Y>,Y 2DVN 2.;\5VA-0BM>([N
P15HH^*@"8:>LI;X./1N+<P4F.$JZ"I'%D3YF4O?I'KH=+@!;[NRK1]KL4OV49AST
PX>NB@"(U0 3-5N-&SB(UZ;[$2\Z,A, F%8J/]+.EJL0EXRKSEG8D)+2Z0)I;-Z+%
P5_4_JE(6)]1H+;)4,7T=37'[H@>-$XHAJ(TLYN=/V2K&&F\-EZ^GB06* 4R9HL)B
P>;6\<(3_!79DQ5KB"V22;/W@S"#? =[M0*I:&P9N92)J"61NK[2'.LX"4 ?3)/M0
P9LXBR/'Z%_$ZP95N<IK%OF%_78ZEN:(2@%VG!KLQJ5FKYC^@#7P#%"%TM>5+ET1[
P:ZS?VJTR[S5];^]GW_/#E^=$1P3<2=60.&U/[WLC9,O9(PNVOB&C37(BJ#5-8.FD
P5QT6K0)Z0RI=LH:!-%6"FINX..@_UG5S-P6)W08A5O98I(?L/4.??L3 1+*!M'6.
P;M.@V54(@/6D 0/JF--FN8';-NSJUI&NI*JSDZ0J0;5=I'E3[H #@9H[?,^=QFNS
P5>PO (;_1Z1Q_\9P^((GE];G:9*WC%39C^%Q]"CX?X2\[S7.2[4=;2K\CG6D>-'<
P"5XG$#,9XP&OP:#>MH$Q@=]O_M?OP$\UZ-25>9 ANS.?C*$[T$A<I]B(>/Z]&-;B
P2EP:W5)5]'I9G7J<<&3&,A5X[_429(#4R.5NQVHS=:+&#C7H)MTE?K-YNRBEDK;1
P:V?ZCS7TFS'6WM\24R3M;R]!![5+'.76FKEZ^$!1)2BG#&"B'1S4%[1Q0!EEB*W6
PETL8WCC+\/3<#_SE9H%3\@RT3;=(BJ4@?8#&PI,NGG(V![IM'AG<\@1T4]AC-K=P
P)CYWYE53GO4++EA@WQS,>U $2^@0^Y=!Y\XB@:6.5NG"T \]--[0NTBD(=O,2*)7
P_ZX((M_]Y=U34!N\B 3"T%IE%F^WQA!@&)_2K6;3X.G96VL\<PB/SQ37YAS4OVN%
P=F_E[4J-3!S=$YW>2EP!1081;]JS/8H7V]DEOELG# )4?/LH43*^6_\*W$]*<'_9
PKW(@=$@RY+DRQ=8]UG'JX@;ADA$-OB(@$.JMDFL-M?*9BYS]BP:9$B?W[PQ>0L[I
P&SC(C-GB4?9ED'%5'J\;I=!D94XU^$-?(U0NLO>"8FJ05_6U44<0F;9J'SU9LX!7
PZ"&7A 5:3[G/X6)H/J3@?]+M=K ?T*ROW87T<E %K.FIU#)FR/+!NCB\;P#^G1QZ
PK7W*XLP^9YOD#\BR6%L;D"8/_;2 <U\!HBDSMKO9.)3LV2P"<^-I"6E$=$ 0,A.W
P![#&$Z^.?)0G$[RRB;KS] ;4>\Y 2-3,YI1V,>I=\B0=S/W?C6X;MPC&; ='1@@B
P#!,$JRNJ[VK9_ME[M<'__L<WAP4'<GK>R5^)M$36@PG_C&(76H(Z8JHD6]H:X#ZD
PKZB 4A^;B) 8C]/>/"FY5XC4?4K V:#9SG=>FBW9#83&&MVY(VW:#H*OF+FYG_3J
PL0K1,61RZ>'/0 T$[BEJ\G20[7+FS9&09&)TH.H6ZOWM_M"P:=\WSL"]PH.XB(=!
P3 Q0?- %3F9+2#CZV0C]/ V>V%+E\[<)PWECM]5/B+%?# ,9I<MB:8%^3#,/T407
POIJ]*#)*N:P6)#">_G9$F)U#'16AER\WY/X==D\-<52A0VSG>?'\<MR^YM-GE\/6
P4]D1ZB?SIS2&%7?B/[QK;@-J[A5_>W3K1?D+Q9Q"60,BO5']. 22.1F$1H:"MV+K
PF#-DGPZI+SX.Q=AT&NE?'8]=3(Y7V%@BW]:2__P6I5;*R.E ,_!XU)@G/GB^P&FS
PI,?;>TE&G0'?Q[U2=S$.4Q&#!IKCLZ2,34OOF@N?U=.?E3UMU317JM(7>^/5XXR/
PBB*7H30JYPU5/>:F$$\A\3P9LD,K_-39PVV\0 E-9LLYG: 0&0SH3HAAD3G"PLTS
P)$\7AGXWC@ABN]?W+XJ>+#)6P.YIZ@(A[@DA;&+CLT_U]*\[T+^.[=^;X^7& HWF
P6]+QK_]6#B)K<>GT?;D>:T4V)'/&U_-V=>ASGMI.!"G4V\C +):$MOU0<A84/? =
PP [-Y7+$?P"(ROA_=?M-8<KX6)<0'>T[?=%,CS")M;=*IM>^W2=1+I:"^?(.@1("
P;[^73IVW'I[<<:.G5'G?VQ/K)^7@J9QKDUA\SVTEEC$B>%(=X+-!O+(K!F/H+R$G
P+(E0@\O7B:D:>8G&^ZWI@TSSEA)MCW3;IP:*TG0S06"B6;P%K5=7=Z'0RU>Q7+$>
PW&S8"P;ISO9;A]+NY*-/,^).[T"\I'F@0''2'&K,WX--)?,)$S4,>4<&ZRS]\"6L
P12@7H3/N^Y EQ;?H@?T:?JFBL^L[O(82\'HDOJ,MG=[@)?I4]; ELRW "!C0'4 4
PK.9+$CS%JT)5ADM7/VT2R*3LE+8LU A! DM5/0' D5#NL81PFR1A[WU=-JU2![?V
P2>4!;"<8TI *45]-[6KSMB/1V8(6YA^RCBV' "7[2-G.=W&8#KHDY;F&9>2?2(1$
PUO'D9AV#)1RC0D?EZ99L87X5(Q]'%2GVP[J_'39L"V12H/(XH6VA^-U:YC5<# 3:
P&IFG*")X(+!$;S2?OL K8#C59.M6_GXP PX#]^QRI =G3J3Q6=X:]5'HQC#'H[)V
P38!IL5UO4Q6PR/U+$6$II! :AI[@0--N1A2<?E='FPG;RGZKVO.F [GR67I%/'?!
P?OG2@^]M-%@45SG(]UY10!1IZKCSG?9JVD VY(SJ^>4EYE"Q.Y(0Y,OIHG2I1MU[
P*OE_;!BMCM2G]BQ?&YT  D';6_#&;)&9TBF,&[9]& #K'82'?))T%U!0^KQ4QBUZ
P+X#1]S"&FMM B 7\4:0^U6WOMAXZJ\0 _OS0DA6402 BX)T!GA*?@<6'R/XDHX(8
PK-PYH4AYL=O.^J,YV^3KEMI"9%I@R1@=\J@&L!];U^3-LKBLX"J3YIAFM3#%^1UY
PR D)N+JA@A&*P-)9B5=Q3O][JFWSC(MF'6">2;]VZTO0#GCZ\?\H8V&LQHE<L6&Y
PU*W2<8>ZI:D#G<_R8RSH(^#A? <(Z!ZNQL_!=_$P:";!UO,I,&AZ0N/<<4Q^JQ;;
P"#918=/1="EM!UR_V4"&4OM&2P61#9K':'Q$![.Q<F#?;*V^8BD*=5^;'+*6=_K=
PKWK<G@0L'8R*(E3VP(VZ .,O^:U=]96!FVU=5J6=B-X[/N%CMSZ< $IOU0C<#.C^
P9&>!0:XVGTDUZ]1SR8CQ<3JCG8&\"F1PH@M:;W/%+/E/51UTD[B3/Y;(#)3,:8TX
P&7?B\[_3% X'!F+:@G<'N:%)F2-RM TAQ"^9$A!E;8B4YL2)SEJ-U"2Q<8 5&LW%
P5+&(LDRH(JX"J+.NH$,-$SF:/T"-@XJ"%^(E<!4 T6E-E4\E>_9RS!$N\@#]Q'I 
P\&PO=?3(,<5Y:U#B6.>? O6(.N-\S=#BCR*28^WXG/+ER]$I14E]$E-Q^I3T@DZ7
PW;EWSG3BE,,LYJGM$9WLQ_/TG:K2>,5#9$JO%Y\ 0;"LCP7_)Q['+SKW-*EWG+M?
PDGITD'QB:NT&#_+3ROZ;H8&'+4G724M">CO9S.1EDSTP(T*/K&Q1 =SS@Y-#E+O3
PX+QJ>0J=Z0CM"*/WDK"NOL(";]L"-0P<*/X&/$(!95!8IC=\*W"&<-:'M#M> ;E$
P!Q,!T&D]G$YRH9')/>S4H/7L$N4:"2!:VT'=&KS43&-$=1'WU.K7B#7X+#..@<V%
PK=B.(C/#_,_JC%)IX;W7>3_YJ2F<^L9M(%..=5>;1_0K[1+GR$MIHHL>O"Y?P(J\
P!OIG9X3$NR+,V[860QR0MP[$$T5](+^(3(-T.5TTO5<;&[JA<T*F<J(L3L=FRPFH
P\]ZOTAD/8^AKI\RI.\,@]D-,4BA80';JJH/ZG4%$N:-113LW2J<_((_.B*K04EZ7
PI>:MTQVNS%?)>\T';KZ4RJ<^?"&7.>'UW&^,'?!"T#ZB&E(LS+ -_*J.#@G/'(O,
POPP)NZFXA P+31.F5-QJ!FXMAF3F</(*RT,;0LX7QY8 7/\S/RIBEEGLFLKBYZ:2
P=4E'8#G^\D([]:3,@ J5'QR%LN+F9B:Y', QC;M^(K=BE;-:M$GH]5V5=(F"[K_T
P:-_0DZ#<><[^\@ YR$3EMB[E4H?#($>@&D6S?TCC@Y7$&R46]XV66_C6&!S-!R)G
PHIN;Q_,B8LB=]XP:/MR;5+!]7E9Z'6;WQ/ZX+$F&*# F)F/>?(C24N.'*E:R1S>K
P^U@ $HKL&#,O(HP\0VEU128+@@)&H#OFB9^WPB?4QC:6VZF8:&8=DQEV(WI?AK*"
PF81=P$R]T29?)C\BROI1+8XY- I<9=M#(K&!1:\\FU+J=D6?E<NDPF/69=,MR[N2
P=,Y9,D8G;?W&N<X%EP0?M[*JN='G^&^_>.D'3X?7J9-"2BX8)EMMI [052/%!T;&
P$N3_&#R&@C/BJS0*9= SD/:%DJH@A*'01@ 7WRYY2+5E7ZV8QB_@HCFF_*S_%A1B
PD7DX]<#Z(V*(#UGL-= EO)7$+-P:<6JO#0LOA][/>PB;#]-&_#1,CZII>&"K7,2*
PV &ZG= &80PM8TVWPE1N[J;AADNM.3#E''927'@EO<K1@4D6D10/(FZS>E9,)< :
P@GC'=T"U^&Z1/$M"C*5+5Q)ED(<TRJ664HDE!(PZ0S>7O4<(4K[%0WOD,&K_*42+
PT3[&=O-^@ZW>HC9=WGQX2R>/P+W,\X7,N!6Q>YK"XP2#MT[IK:!V:H)0YLG>WE\]
PE-SZBR)#=SYE2Q96KA5S(MZRW"/F[6?PM.NMZ<C;QB<]ZX3_\9Q_>OYD*>T+(Q[T
PL>H6OMX!9JMH1CY"6K)^K3;YXX+#51MD9&S"7KGUQ@TM]P#%=I%%R42:EG22.PJB
PU\$UOL2%M\&T,U/%>@(P)<25QTK>U28YOQWQF%R*@^K 0E%6M-6P3&U5JS0N:3&3
P,4V2#M:.\RT8?"265K51.E/10%H$*N];@K[YE,"$)3GT>K:Z\5%!P3[E:G\TT]6O
P=L8']J:(M-M3PW#51'B,+D?KWV2:"%R$8)_#B6]QCXQ!>Y,;:#7 =U>ZD^9^8CH@
P*:BKN(.A$@WTVTPK X571(2%81> E^3<Q)N+ HPU.6D76HR"GTL$'7 ^[&G^H+NN
PDLPW'H 8J$8.>NS?>+YHD0P)5&E4C*$['(N1=(I3B5/-W XU!0*ASV6X!%-B:!,G
P??Y3VY][8QK*]";.$B/XMD@XB]Z[:SM#(IM#M1:H.K)DLCTR2Q/.KP-O&HI6/KYN
P::]<5;KH4J52OQIYP8L7"E-2IK6,1_H(*)C*;(F%Y*7_3VQ-K"#*N[9\:8(+X54Q
P <J=X@BBO]8>H!*P887XW5=BFR*/G('YH0*)($1HL.5=[G-\1A^Z1#0XRR:U:=@4
PWC\39%IPHD#RTIUKJZ /J_7%7([OUNE+?R(+A0!_HD@F-EAKO96>W"EF^*8Q[+;9
PHB/V;)A41<@SXL?-F!IHT@[I'8DYU[ %LS$KV;]78<L7[.2FMW4@S9V.-L$P1Q+\
P!@UQX<A 6_2KJ\]FBN.)+4,:,KO>$E02']>WXHF?4*."81X :I'NNJ-G1QWQ+O1G
PP.2VUK4* !L&0'.JV+%@,/[Y[99S$]JR-Z,1F1X(,1T)<_]3%+OD[[A/4%A.2%7"
PH.[G.8"BA"*R9YNI:>#&"H8[C!90W;=60"_!>"__K+NYM03[C"#,.JU3D5?@U:.#
P<SC\HUV+,+W=>W EG9H"5J>]HF622]M.V9V%AI6##85>"B/9O98%X71W+GB  ]-T
P[E<WUI&)\G5%29NBQ?"\&D'WIE=V 0*E63!_]$0CX@'JE]?Z*E+1;A,G KPW-M@)
P1NM&>GO1EKG>H$LE\=,?V^_FN?1]^U1Y5=WLUR"1#%/I@5.5;& VNW"8-GP]*U=V
PF)2NR,*L%ICP4__/)) G$=Q1>\\X^>X!7%@$-EZ\$4=TS9W(Z;-M3(8V]W3H\%Y,
P_1RZI!O/I>=]P=J*$ X5! ](W)E9N2B"5S*GZQH57/#C31ASV5F1+&+X>\"U \&-
P"KOOGKKD89C6)G +D53C9%'/"=M,]EE!D##,H+3O><XM_DRX8'&JOEEM0/K?T-Z,
PHQZU@R6N,\<6K^;.NIUHVILP,D^HM0<^1>-V6:BI5KJ@="4EE HFT#_<(_).9>/I
PWJF>(DW@"6*6?[MTL&R-*>WC!0=1^/,Y9QC)6P//GMC*FHL&.,!<?9V3N\/<3-- 
P6)WNS,D,U5*R#A$2#K9 T]ZO1-7#G);GYSK7%&0,(9&$2:8A'_%2Z7O)\F_OZOZZ
PB=&E[1)LN-9]>7!M^R%V##JZV[]63'6G\TVS.^&DMQ52S?YW(;C1L,+T"12DC%6L
PDDFXC$^I&>RF="EC^V%H"1ES)-D)NP492D#3\'N)&5I:0;8$[;>V8)N%@3W(+<O-
PO7"K]DPP:"W&2%_J+=@8=^4X$DZ0;O(T5(_XZ.W*^!C,I'T[!=#?C0LRYM#I0+BB
P_YQ3IWDQ?WAT25#A67SC=(&B.QE=P'3.7+RWGW)= FPA->PC:>X-CM_@BBT_).C3
P[96*;#8X9M20A>K<?@]_L_]?PTNOT[^'#1S7^"9N:7O-N!1%:>72WDUWKP_IR+%F
PB%Q',FKE33!H:[=<O],%X.UBM +(KV!16;VWFG+4QATQ<K-!NW^FN=WF2@.&5*]6
P7IQ@%7IA69#'@B]>OX[NH+@D)0;9.9)%J=JBX1W(%1'G?9>'/DU<YW@+T#8YDR6'
P7EF6AO2@$LYVG@(L7:UC_],<;G8*BO&@Y/*A=PB/0(:E1+9(MFM9Z'*L;4&M<)0&
P%,I1O:^*;)^#R%Z&D?L2TS1;J'EB45F,6W?;\^?*&Z[\T)%$NL=I*5X*S3N2['E6
P3/H!"J1OF4K_14_(]MPK*$&G9?^W.= -6HLI0S5.W/Y(.*2U_X&0+:"AGJV$-9!Z
P1Q+E0$.GL<2&98P@8\Z\V-%7H%R=V?+%%\#OZ^3/B;5"A@V#^61'_ L >R^(U@T2
P+R4!5>*FA,'\ >B43NVW!/+Q>DJO[0BT(F-BK_1/T31CV;2ZE":819#/JPP3@OY4
PJ0]QT(UT*=#1SU+H-5C2"3%\98_*QXR81TI\^MIYT)$=(<3#KK31^?<:/;*)(8A9
PVE[IHGCIM6 O@REL^,T(<K8F54N\>8WX=G :]ZQZE*+'1BDI<;ZWHI;L(N5\.\.3
P454!<!O"SUG(YFP)1BV370A6MJWM#RC-X\->7 >]"K$@A&"]<GS8DD:%2G+2M_G*
P@W)JZ<:7',2HC]A&]RZPJ R+448$O+RUA0TSWU$HF8> ]5'U+C,@$3KC+2<$HF6>
PX\B-FZ7&JB))M*"\Y"S&<<M1UD6P'FNYXDNK=^I&-B:VFCZ & +!2(C.\.'=YIA@
P*\R'NHTVO_I!XK.OD40?C#MD;&K51,#L(@>P\IFB/Y,11SSQQP J+.'_1EI*<Y:X
PWTFT1NBF)CKYJR,3"2N(I2#:'\)V+W+"1(;=G0Q,W:M9)=L1C*;]W:T EOJ/&/=B
P"%'L=^*'1YFVUYE>9IY%77*#$U"IZ_P[M06@@O?D"UFW[Z+FFH>-]/>JH2JU=6.:
P*!/J/2K/&HLWSX2@<OGK7@-Q#L$)E8*0(L#DP'Z4++52>DK%I$VY8%)92O1MN""-
P?E+U[?UR)]I/$YTF._4XXK/!( :]E8&('OMX-9D/P^!;"B4E3S3GCCMEVD!;7N"+
P-?9LHY/=\C[C5 O'"'0"FCD8M ZJID2,X5/#$UGA2Z)N_:@_M"N*Q:PB!#^/QZY.
PD'G<[XYMMHAGWVW6\[3C8E](B$B8BLEOKU2M*_7)!#K!7-JWJ]:8QMV/C3%PV#.R
P$>);'<R$/ /#>P(K)<@/^=LCJNW_6$*7\4.+,FHPS[SHMHKLRRT6GC)/>#]M2JII
P]6Y_29R'ICC20LPIRA6-<U+K<#OU65%VD+>*[DKK.$ #("HK6;$VIJB]1BJ*<'XS
P;U&4SSSYS$\12NJ,J;)Y^=$%X?7QL?\!S"UK:QN","9*VDAV"=>%W#)X4P_N0I0,
P'8<8,$MQGSB=E:"9Z3 1)D)"5EJ)T/4F=6JG5,05SEH[E']^0TU/BF+3$@JQ![A7
P(?&-$+B&UK#<L?46Y![8>K2+;^7" 1.;86=6L2PB4$Q^.J2*"38?O4J(KEQG"HSK
P".53OEN'(#:MOG<2W\^/'5S.CDE6A8%GD>^:%&RP>;-E8];37KT'MN^=IYD)$4&+
P9^/>%&X$U%B11&VA_0$%XRT\3I<S:?Q8S UV@D>5E,+3<J\SU@+&CJ?7/I#5<2A8
P]M@^>>/7QUN';64K(%5W]:XQGN4]S8<3&EOI61A2W0<OVMXX<$)30OK_V=FG..E_
P&PTE]9_<!)J !Z:^T;WI%42 5@CDXM)_IP@S.+7$R5 *F2]N\(^L20$C\-;Z+A"H
PWUXEJ815VCG,J9+-XBP-? I\='MZ;O6 \_A9>=O-\\<313HEC?09ZO7NT[LO,"3*
PCRV5Z>*_88TI.LG9.EL&K$JVU@*<G,/9CJ^=6G4GK:\98;Q*[7^U$789PY)4'Q5G
P[R+4ZO9584 N:T+@[70\2+^R!8NB Y G\ M3*DMI=B-;KI*XU78J?$!.-,)]8I3?
PF)8V\_9-E7FN>;][V  @!RGW</@]J^GIJPF(+[-H(?WV'(]?Q5\@ U*%&;_G7<I#
PZ [ZZ3-V>B+ZEG3Y FA>1:Z<@4T#4-'(X[RV?1F=MUS60Z\BB2 3*YCXOL): 7:P
P286;M* WS5CL=ULUJ;H'ERX0$4",$!,YL-U_,P.-=6EZ&K$ ,P$=IF+0&*..+T0M
PE+)RS:;9X&?^8\[!T&=(XM/R8T(V&@_*1(0:JNE.:),T][P3C%9FK="%DJ0TPZ1)
P-@"1$^%5U2S8-&N\VQS$SYP_A9>N2H?4]F?N2_S]^#U;V)XW7,O/ASYN7V(E@2"'
PF"6/7ZH1_?/VZ%67/2695! /_C9;9#/T#(.GW$!67C)#INPY(RW%*HX^(UPMYYX5
P29(,Q[=0CB:-V.U>C!JF%WW?!S$N$5GPLUN0+M;D >QA%:=P=R!\P[."(/$7?QO?
PI ?>C*68F =D0)M!_6BQ'6QM0(C*6I'8J>]]QZJQ7PU>_+Z5V[!ZU&SNN,9S'EE5
PN[.#-E[MG3DWR?_'6@RQ?:ZL)KEYP8(:-C4S('UG3WN+068P,Z4[X!N*':_?("J8
POI\F3"#SBS1?P)/:4)*1(W18K LA *OZ_ N3"Q/5;UI!\^N\V3O\NK#]5'JG&B35
P8_N7),83@B.)#^M )Q0.LZ:TA7P"P7548W "<B.8-"8,#Y.,?H/[\/#K5455"79D
P,!&QZ2A73!5=PQ7_FNO+UVP1.<$9O^GWN+<?6PS*+68CAM,TH/+#P].$?J"0 /5!
P""7J\2S@HBNC@,EY1IF*5:K?''BL9OVPVKA34^^PW^#$]@[-. Y^#RC:=C![7VNI
PL6H?N W^X&)%#I7&*O<C(GSW.FA\CWE*IT/1(=P:;I\$%)V^D2Y^2PJN2$?::H2Z
PX20U[[E;XAM&T.YSR"3SD=HNWE&"<S#S\NQC:U=#<OT7?@4R3TP3I3GV5=XZ.1"=
PX"J7]8Y[A3"]1R)&2!$0(U /CDY.DC(=-NW^(HR&_E9+N)"FW!IFXPYH@^MGJ,@7
P<&"'*+K2/!/@12QE:EBVU[B\W/<MBTU =\+M"$^35O' YQU^L_N4MM0!PHQ@CPW=
PL.5S7&6KFQ[E,"P8O49_+* 1C)N)Z?]UJ'"*(*.-S/]ELD4I'KC\U2/\!.D>:/\T
P%\:]6-E_.0 AL]73&Q%M!G-/L))((QVN=0S%A<6_H:A'U&NE$XV7G:;D,)IT;[%3
PTRO163DW>OU2M1QRZW\+<>FPCJWB$YNA",J"1W9]K!E;U=J.[^I[[9I3[9,:^%>W
P!,FK=AB?QE3,.R8)TTT!D9&)VB\YT)L$YX5*$^WR]8<!N%+%@.7&N #.DV9)J67-
PIT!IT]V@J;>L 65UZ"(5 #')\KQ(Z;^S1V-BST>U5$\=+$\15K-""F@YB^S5-]W0
P2<L0V"\\NP\^<3JJL=D-YX^NTA$H?V'DF(_R?OH'VTE0S(=7[T"*=S\,J,JD),J.
PG"9M5D$+N651< 0!6,9H%W?4#T[-"6P0T5=.2FUD2GF3X_>4:* W#GA]O1&'_ZE#
PEKLN1LSB2!I9" /0[]<QP2,=S/_FZ"JY.-^G^A9L[B2L<Y[%D+<GAG 0.)=OK-"V
PTJ.O=,%X8<";OZ!@4 PUQH>Z#G\03-^PBJ2NVQRIC=#G!5_S_O<KFNZ_+?IZL[W:
PUHVZ$NCL5@6O8?5P4>Q$\= VH).0[WB^?#SA(!V;A&<GMG<K;7?D@:$F@.A+# 0:
PKX.S0<H\CR?(+1'W5MBK<MQ1G;0LI:A![GF8W\UX3\/LW(K)-RIO%^.R-W.'VL*)
P)E K_D+-N^3JFQA%F71Y($1G!,6-KF17HYWI%1\<:BF-R&&_-3LD/Z?',04AG&P<
PQL)O2$H/L1(F&P]'<7<^/C%1-9M$7L<%=0]6G80O$G!GN8^IY ,)&R=5$H6'HTR%
PAG/= (1&Z7R0D]E/+-;#0E%S,?3-#M;=38?/#^^CS .L\[JIFQ/%+E,E*^"H.*+4
P)W/()PG%L\@BT?TV[SD-D,9=0<9C,G_-& K@N:/->AR@&L\H/<P>BFV<*O3G>8RF
PU1,N1M$#%0_9TB,7=^;- -OVWA'ZIR=7QJ5!.7WN@=37XE@-\1;<IC' BO&:UA='
PL,E+O%#T<6=:R&QZR::]KHJ"5>O/X<%'\H%EYAVZ)]:W"(O(SJU?@^Q7/&I&L@]:
P;]2#4Z$:%5'XD50+(<2,I'C;9N567%65XELE<]IS#)+I15,!W#3:(&=4&\+MQRO?
PXSS%+C[!:RZHR9=;B<O(PT*8@5>P^N</J/Z"LMG/U8[,&WN"U!Y:<Z1X!U21+M2-
P0=6+[P ()D;_X=H78(7U 6,PO6IFT>W@<V'>IG$7:XIOP1L(IE(MY! FIJ6U)U6C
PVTU-EW+_-'D.><'%M7I0-?4BQ<0DL:19X5*N\)N(,Z[$N^AK+?,]"*6A,I=P5[%7
P./C?RZ0WCF(I*-S09(D<1$MW/!^9BE![1(8/E]YG\DV!CB/S@@^JR8=S)#[F(44:
PZZ?8=JQE3Z<;1[T#WK5@Z][B,\XMVZDC6Y"]D>,PCLFF(4K8JBI82XT^'.7];J:V
P205W'H]22&4C'/0RDS=]<M#Y8?JS]1O;QGAQS%B=X_YB7:KOV=S)(WL:4$\;=Z5.
PYE-DN*1N'RA>U<Q2\5&CF.B*$@Y(4,B4]\9!B#!96CHI/*]<[+A?LT4ES?4+#1Y4
PSUV9#O9U=0]P4^V!NPPZ(N"6UNBP*],1#':^G4Z+2E>0XN?2@WUTV0T+DQ]'$!)*
PS7(>*NTKGX'#'N)1J!"?E5^A6LYK&WY65O.'I.%\5 _*YR2DHR12*R'.".SX;8>_
P'(;B?"7@,*5<5TU(M%J$"Y5U\_V7A*C2_;L^/,L=U#9O\VHS#]Z1\2.1==7?>;]D
P1/2]E_@ WH6TLDN;"(/BK69Y>@W)9](%D>O.V<Q;-N3.DUCR 6R[77X="I(;LVW?
P=?E4L6_^>0W8;$93_<V$$\^OGU51?>B7OSNS&T XWJ3<1(%-*="Q'O->?$2[H@IB
P8\2VO7.;@)C;&]ZU6(%^[WO$TFII!N%E%X%]8X:[)ZUI!0K&\D<YQ0!P"P/5EVJ\
PG"?:*Z0/.]W9Q11^P#BMSSC*G%J[6^>Z3ZSYI86M-Q!.%3&4!>P8"S0=]YR>+Q6I
P_;C$QHUN52C]+60LQJX]@TM(,73)/,;DT F5XT2SD>9]NS+4"R7UK]*VDIXK-V,D
P ;Q-PG780[YQ8?40/MSPBBYK,7W6+XSQ6R;_ O3]VP*5EKM1K%6:F%.=[9K)JLI+
P?D\UTYWEGEH\)1OR/;*]M+M]_SCE<M003TJMYK;-HACG_72_O/! <Q)*L#*R\"29
P79+A@NQ38/;Z%TV_\?$A@RCN"W:'1I=;1V1GUWM%IU*S>=QH@K]% 2CN&&95J<_J
P_Y'A(2FT5P*N]&4NP.HXU+,WI$#RW#;>PG)]1(Q%E>I.&TR'!X<-+U$+9A"]4X46
PV[U45KP6I%"#@7JUY#T1:7?BML<>Y6:$M!$6[;M_(J2W)\;-WSANU0D.;IIB/H& 
P0?QY2,QRA+ODLQB@*:.$B"!;*UOZO-KUGV"PODH$HCY3PX0--HPVDG:+P805)"L2
PRX*Y:X7HTOX/3,"_@TA@2U94A<3\&*FYBFN>.M;L$WMV<]?Y^^S)65V<.C1256UJ
PN\ICX"[ (F0&M290\^A9RL/)EO<SZNOG,SPW7]Y5BTL]I-N&P"7KGT(96S+BFX5"
P]U/J6T-3 @XPEDJ1';J+S:+#@U!3"?'8/PWOBL,:T[*"LNX5A$BIQ+WC4%#)^D9B
P'272@OC([EEBJOF7O3%^QM]\6%V3] [6QJQ$7:$^3"S!('Y"E-:8UIRB-16,(Y!J
P??UVQY]([1PL- 3S=O!\94]C^)R<*$D;M\+;01\ET?]WL&#$8Q)[2D!TT'LVM6;J
P.-1WI0>5:CB6#M+PZ-B[]4P)+7N]["^X2EG7#ETG_<V\*O(G\](2MK;B,QDN!KR 
P60!MF6FM(L9C\E1Z((UA8J@0YVKF['Z'6&7O/28.8?1'[\<78DL)093 ,%#7A/NO
PHE&PRLB=^LW^DJV,ED,//RGF;^:W1@'7TQ2- QU+V2<RJ/[H!//FW8OR=G?72!4[
PIBC00E3%Y!XY:;;>*PRL18+838+P ..-V$7D&5UJZQ>A!)5]$B7^6Z$,(C8@=3JD
P@>@2JZ5'>JC*+/#Y*1FO-"F<F1?$V+NZ6%5ORST1@G"#<;TS"SE=-GM"C:+D@=PB
PEM^*OT!G8__A+P!9RUP9N110B_7#3YVC _EH,Z !9=YS5:]R'=."O P)>M,$%Q6\
PAI*.%9KR5ON#"Z7<5B'OU9OF=E$%<UP/JM(LMVP4EG?1=9?AL[@2P2U3K*>SNO>L
P[@"<E6.>M0)[ZK-&)YHRI&+ZR)A#B/:3T-2/+D:%7K1%FR;I5#<-/_]IQK&I,$9(
P@YQLP)8ML,4HXO R:S+_VUIOX4 'D9N,$%82C,;@B%E<0SOY;K:8Y:L[:_5L>\ L
P14\;&PHADIBC30AX!6:2M<JJMWWI'$0KN^!,HD6VX5/XV5COKS ^@/^W)7&\Y5-J
PTSX[ZR!*E\6^]6*%**-$-U'#,S4:QJ%#--P*7]/![,'9'\]\B2UDFO)L\&+,/=/>
PSR3:IV&)X(LHOC<F!"EIG"H1!9N^#((AQBE9MZ+[J'VJR' W*\,A6CJO>@(VPTY\
PR%I/D,*#6Q,-18#%-JFIHEJI'"8H<7>T:Y*0)93H?;W=KEX1@J=]7B6IJ,A/]R:L
P069B.BIXLO],2B]N-9$MCGL:XU [2+^MF?EFB>A-LPS7 [1HX<Y'4O:9X**7RPX)
P^UG*LK1.8L;E5@@\6U"%0@=LNZI$&5W=0?N6-D-[52!0/O2_*7S\5^2&+&VHK@51
P-L-T3I(V<A<P7N&_-I:?!-:J':+0)&$QEE B<QK4@[H0)'(==:F:16ZO@)M.1C#&
PM0VRL.4@QO#.]Z/"2&F <G,%E"\?0JV?Z_<69'Z+Z>C+PJ%@X&%,8:>MT3RN>RND
PT__Y/[@C>X"S8XM_$-A>IB4_5.@]V59AZ4B7!=!S))Z#KABY!(PEC)L=+#&?-V:O
P93A=&3O!IR E>P&&C2D[.;IP]0L*07*8T82@0A9JG4(_RG2=T<HZ>X\"MLCJ+J2B
P*0LH^(UYJ@XG([9;+<*5':XU_"/<5((VXHE#Z])%:)@,IQWG8RL9BZ(6G6?O[M6!
P/0J#>-+P [*L51,DW9:T,E!VW3T;7 )\VP2 _C6:J[#EFPH)']L>VAR/(9&Y/6']
P#<ZSL^9W+ZOXE]G"]4P$Q)1R(HR>J*=^/%_DPNA:511LZIWA]\[,KO&#A]"8AQ<C
PR' X5O0X8R3_9LZ#4G/ T+2]MJEOA 1N:&DSBZ'#-VZ<AZ)2WMY0V/M *I@=@!T4
PSGQQIP'SFMK$#(1"B::NH6AB7O?@M64],ND?R53;F^\#I=\J'65D(37U"7$]9^K]
PUL*YW:\A-7IC,F0]G=6O:02/C=KU%I&*[R6#62@@0%-['J1[&A1L8\Z+H6-NC/9I
PVZ*,Q%465,?:GOC'S_MJ+W0^;]DCE9+ R4P8VKFR=F1$4T^%AT[ZP1FN4J!157^^
PQ1]19P3$%I\822N_AS4':D40JO=]K"P*?>!CLHH>9^;)= K+YL,!B*X@%>%)3!IU
P,?4 E6IM7GXR^F,G;E26NONL-:O^,1W_?NDQ2_')IQV58T$WC:82DXMRIP=D[06J
P(1RUH>DZC1(C$R^Z;&I.._<<S$%[PC:4.3F&]U4CWG4SUI.$^H+SPK3_I2;6[=!>
P9DT;6&C5/U/=R*V%#[CMMMGQLQMN+$MEG@D_HE,[YXP1W.Z7\W.-&Z53CKF8$XNC
PO< ;E#2G>VV- 5F2V/5EQNR/!\FG'6E"NA..VTS'Y*K%%\#4"KZVE!3XET^AX(<M
PQ_.K['+G,TF6O#3NJ7&1Y6P&,:)TZ5<]@TJ2="@4<P0]Y7.2GW]3F-J,PKM)*V$!
P6WK.*8@A^]MIW<5\_YMS%QH*:QO4&H0C@KBWAV.0_),!>D6Q'[ZZH!1G?2MI1P]$
P..F$78H%M_4ROJ'%A98W#E/L?:H)5FZGTE]L $<6NS'F&28^-=^*M8.I@W?E;E!'
P9\:Z@+XOG"_A:/ 4V)H?%W8,DK +XS;E&TZGT=!W.OZ5S)V.UQM?2J?2C  \),_'
P(<XX'$MJ)K8?\6NP%AKX<7)I";[+?BH6S:I!$>@ :+58B6-X#FWK&)_!^=Q$.3#)
PE'6B6-4B]IC?QM\RX@;J."6*<&S";7Z]AFQ[C?,RV.0+R0R20BFPR4/\A".EGF#A
P%%HP=UOSO":_T*.*Q6$&]OKBX*"9"/J"TFF[B1@2NQ(=HJFD=,UOR6"-FB^Z'4/B
P-B1?S[='-!TWG\'])8N$+PU(N;S_]E;R0I;'&V/#=N4177\3,D(4;E"_]@*F5:&6
P_.P8@7CXO/+<\",](]!K6%3@-N4P'QB&-LH[9_+@0%\1S5M#[<_3!=&XNS3MAF81
P(;=-YSG80+D-/=Z.^^@C 7$9V&%AG@R3E""I5-'8+6M.%:;M8@LN96'0%Z!H+U->
P!8CR%"&GP:Y,/"F%_4M*7K8&_O(C"CVM:NA'7<L)O+^>&BPP^=4'N(/VIW*8*R3H
POB8%/S%"PO3P<RO*#\J,1NB_OL>]4E07WU<6[0A<:=3TX((^8!S4L;/KK=WXL(<,
P]UF<W-,J&]]IHB?E4_N4"JSP+.3.WHM])>FX,5AN/'3?1R>T&0=2^ !S!*$?E/WJ
P2(K3U'X=4B-' 3J6\;]&ITM][VC"!.00C4/6-LM$45BM4)&3<02W4NQ"?FR3HF>M
P%0_4-E6W+LF W9#^(DR6 [G:KG#D.KD!*PFE;<#$/E&*0/9JZ*#/>T&OS\3+1UU&
P*\XCF+WP$Z]U_@-P#'.@U/EMAJA;H$>DWHMWNO!,<M21^%9J#D:BM?JQH.?,LOZ'
P7%('IS!F>DB2D<7D#QZY.%ZGZ)\??K<UU*;:(P RAW!0H4$0K:#01B;H5M29NLR9
PK$ S](*W\F*P&EEA.1[8&BUB=""9=T'P/K7B&$/D[-=CL3,TRR29F3O^F5.?0Z_D
PM'P&6I4S-X9V_).!=6GFAA7*I+N5O+*5S<!HCZ#<K ?9M76JC0Q2]'L.97A*T,![
PIILC6&IG-STFXW_P<SG#@LEV3J/#<H]" Q5-&KP$)SH+=,-!"_=:4Y9'3%YZRKY@
P7^N4:EDOCKV)MB4:S2__UY-:#A1)X0II(7LY#!R._HJ,MR*6PUL&9FXP*T=V5^!W
P"78LA8?, JOPFUGN%KK]@PJTNM$BFR%TSD\TF-94[!Y*LW74+FU1\P3HKT9A_G2M
PQY/7:L@\^*(Z@<FV%@=,[ZD0ZTX(>R6B6LU_UK7_Q92]!:+$L HIVS-7^7N8%FF>
PU(ZW 5@2*2JR!E$Y5J=LZ=A,:6+$_</)S'6<+OV0O@/)D>1L#W[1Y.J+JDCU@\85
P+AR1\:L@FZUB-B6A;YKPZ[[M*-Z[L]W?P78QT]F_XU_ZU!=O&D,#0Q$Z1WY\TEA@
PNNSMZWS2, 'E4!#9:Q.+D!IPJ2<?4LL85-QWM(&$8";0+OWR!=KQ#\$$_O.P *P?
PR5T1*-8G;?$MO+ZMS(,][C\!>(91C9G.09;^=R!6V\$?I[FO.H=*T-+VH1,KH.X!
PHA9HV6M>='N&E$P(A@O.A9A=Y2FEO+5<DQQ71<6/1RDOY0]Q 4JJ<\[ZY7W4XFN)
P5]=Y=\,SFOOEOM+B>;"[[WR%H]6ZRYD8[%+03PNHL^[T2::!<&15PT'B,\H(A5 Y
PLC$<2JGBR9+2XGV19ZVHA_V?R^W-@320UET*6.:-CR],4@/7[:K(G!EO?2+C!&'I
PHC>::$BLV8WBI+CDV/93]Q,34/0Z5NTH!/Z84VF&+"SV[L5'J"5L;(;57)>^_SY!
P6">_ T-T&Q\A?>1#2MF,7 94OTGC@D+HRXIN[D?>V3,DP,L69U_B:G:&FCOE6$,]
P<YUQSWWB>EW$QR)]OC!(.?(=/)9HGZ&]M!J_JD KX.72RCGC]>@)39XU57-DT_;.
PWNA6.:834W+) HD#?AI1JGVO^G#0;7('):B(RM)20C:1V_%:O4F9CR_B*2PMT^18
PGX3YE$P:\J"^(7-M1LEB)82%B-.-:U( D'&OVUI.*XZ#;5=@&\D8)PMA\A@Y/7KO
P= 0M94J+H%BF-PK#%SC0_J?T'.[3/&AFHK J>DTWS"F8RH.AU\@]TGU:F.P]*7M/
PV-R@@EMUP,BYS8-2%;=$"L'+:H,_7W>9QH___JQ>D"^R7;J9F!(>E0R6^AK8G*8*
P=? @7TI][C"]]#</J$YL)96O-UO=!YTI*I,WBLH5RYN0WIKB4"F1G["+0_K/1G6*
PC:\4^@'<&DK[$[CO6%^U\F'$O43_Y2SGMSI=;&#?Y1'!M@Y>*I$^>)NN]:%^\C4J
P(^(XZ<NT!%, 9QC*;A-HGQ<OY9\?ZV1QH1%0XH?8$#HV'S3_E 8N00Q7^V0672M5
PYSCV=NISUB+V1I!FNE EP^(9__&4L18RTZ[PD3=2BAI&A.YVC$@K8V0-1BD94%.Y
P=-]6\.G"QUVV==M*M+,!!F;:B!GG=2_,_D(%%X"Q1L6W@RE';PC ==3O&V?&F^KO
PBNR1U.]+(9JE4;HG".*:BX8NK2>KTC%@::)>-49ZT*:3W\0T21ZTT5Y@!K$F!4H[
P=LN\E;71,%>F_@'#OND@TK.E>,*QW)_)MJBV/-\!3&=WUOC;P]I03F;],>S(B]52
P1H[>4CUFG X%>)-<1%4!GO+[74U [M8:1%3&/0.XW8B:)%;<]#Y/8FI'A2&K5<)I
P81L7,^L[N@QP$+95*=]+HO.8RNO%XJ5U89\F5V4Z=EN"$KQY?IZ7$3=875BY,>&5
PH[S8>A1$82W1<2;MRNJ"IKGWO9G"0N(OGV^_/(+XOM<&!/AI 3&+FO=@1&'HJ@5=
P?20178L!!W%5%+>X[N+KP$V0G+%.3S'^@%?#S9S^ !Y$=7B*MW@=^PKEA_C'2.+@
P;&'ULUB6KX^.)$>9\6(S*/0V.PE;_2SO  90K8H'XDV;B6H',PC2 .1:RI=O+Y%@
P5%N1ZNG3#+.N%3:/2M;SE'2BY49:*\&P !57_'21?CGW*S'YU)+R: 4]S[*:^]!4
PS<L6P7?8KY_6N8]*((CV.(PA*-L\*<6_(V9(O] Y?WIF;+2#07(CQ8,@H%8&S4I,
P)M0<-.H*Y6V&V&'$7TJFUY/[Q0Z+<ZP,@&.E@TM-G?+HS$G@N^8]\:3]=V'*'5J4
PC,TLH:DLA-3LV('1#QQ&G+P3<?T#.+$8U_1=-9";$#E'&QFS\S-J^L,!&>'6,0X?
PE7%ON.UE@OF,7ZY).'6 YKK<=-#RDG /@6ZJY-8AE6W=S[+NQH7+3$A4H-DYVEO$
PF5WR]<<$TGY6^!(!IJ?*3*9[<VLEM^TY8:O8:;PC!VO-<Z3'(RB/12G9CCOZ,C#>
PC[H5S7GZ&@BV>[!;K:?BLA4Q#-B<O7_&!!,S ,IG2X$;F>2WHT<50J,F=($^+SU)
P$ZL#NUHC\69![@IE7KU )Y$P3\>&:(N<FLG6>]^O=GIQ$2C'%Q!HNV\+3G#&=3CE
P/?9G=V4MJ]0K4=)&1S+BZPD9Y\^A;TL+>$36.=JBB >*C[=.'F&)0D.C\$@V6UIQ
PW1Q;_4NXZ8:Y9-+;?<C"17V/73QARO0 Z)^'^?D1M0IS#R'B8>KOO=R&VL]\#*QW
PVS;T;1^.E5/3B0Z]74"E>ZG_+G]Y3K].$U:24VT@H^:-=XN1\%S7D*@P3K:_.NS'
PQ&IOMFG*ZQF05ZT,BT=ZV$%-F8$_Z6K(('*^Y%V?1NW-KJ!P4JIP#*4\U/9-[$6M
P>!Q9WT.;<&:='.I:KM0H4\@_=M<*5;(S<]WGP0:59"<O(_>/F%5KA@\).N]IZ3^S
PC 77[#:Z+C-I?5=HDQ@*4N^OTGZ[#_>*(Q0D*[Z;##D<0M0-H?;;XPO9QR+^D" K
P!(N&._7%3JC6B$R^+H9@4 "L^T#"9S^1-<83M#-3Y<Z,$\@:6,C?/W\,4ZGW]#)Q
PYL:-CU-]?Z%5C&X8G1R@<J8%-Z)\X!AJT,_,[X]*L!NX6YC04_F&SBF\S5BSMS"Y
PN2;.QHU";A[["(M]?O%FVYDAU'U^"VIM];_-<\!Z"T?"J!LUZ_XB'1\;U9EE9>GZ
P_.RVS@V7.@/E_UEM;;)D*,P;%8A>3Y2_.&@&U]D&LOE4C7L[[,BI;%JIJ,^A-.;7
P-&O/P7&+US)T)Z3A3/YOY::'-P3*,EB<XGHM..59S)R2BP1\MCX0\>^GE1Q?:+2%
PZ;O>]D6?+.SSP+.22<^,L)=(A5+925N-CH_U67E)U5R%\H7]QLH3+[Z0_6-T:T>*
P^H$ %O16RGLQ]-Q2>7>A'_ -1J39LK.MY:PB"YEE&!.+53>EOT/"C,0H2G7^01A9
P;H$U,+WD,S9)Q0R[1SQD.@P08RW#]W;5&G_3!$"BW9\PMM?S-3Y)\[E EB5#O4-;
P.;? 8 B_Z_7;U8AM-6JRY3#%&H!/!70=1CY=E?7YL,QB%XYH+"RJD#W*ID\M$ YJ
PAR.X,[1F^N.#/93IP^=FG;U%_H0^1?<<FNGZO47]4 #4]#6_V<,=NJVEQX"2>@@Q
PXWCSOFT+]T0O"(WEG<:R]Y3E$%ESV A]Y AL3CSISMTG#@#^2=,/@^TL8]+H;9Z>
PRL?Q!]6[AL:= 'H+:)F:)E4]@@%$ (B[=P"FLO=?.5LTQU4/[)9R5,7H:,23TJ:N
P>NBN23/P79BFT?%KF]E[>8?S_D/$):W6PY2ET>XPOO&+)^(CCH4HKT4)3T4GL& Z
P/D@E<MFWNG)*1]XB"CBWEY (3TCL!U49@0"B,QJ9O>&9.&I]AJZ#R=BLO5"$9JVL
P<HF"^E%G&20)+=L[6C /* 6EGZ/4%[GWI:TAIV(<IT38'9O_^'O]2]GEPNN;#36F
P7JLF]<M6%2GV/TOH=<,JX&+32=4"-/^>)974A\Z@-SM^29K@J.IVC&XL2Y7GLR[Q
PS?K-/1&-4*Q8E1UD:O^;>V@<A+_?#,EF>26%\@4M&\T[]/P<+S&]4V/R@3\ W% Y
P,E*Y+[<ZXJ\VU/.DA)VSBM3[;GVF!4&W(<_J<!^\=*/80;&=BQ[.&.%V#^R'3W_$
P QZ<2Y["$IV:_8[(.?=!02'(] B<S_=3C5,A0D5B N_833S#HV=48M=_@SI1PJ8-
PUC8-G-[LD;CDJO5?,OVS84G2AZ]9[HJ5&$(B1P3'+O<ZY7$8.+)U9Q OHI.9IORJ
P;3=R4*ZJYP=UQ^I@HM6%B0AL3IH%;1V@S _[U3E*WT5A5^92>BQK;W^LYUKT5MSH
P-5(29AH,TUHW9H.T* <0AM#I'ODFN^EN\1(+KE]]6+.0:0#;G:AGSGB[+$0T$S_[
PCN]8+447^\?9/%.3=F,*:_KS*"P!:'N!EX69**'-Q@I2\5HST2E89V0*:!<?F1[>
PJ"=0@RMX[XH#8&2/?*V*M"OW9HQ7!$?B^$8("MJ,H)H>S)(4EG/FR2D[4#FW;<D;
PDD05C-J#?\NJ#)5"$0Q1/V\@^&L<<7[E7145ZAH-(.!'RRZI]N8&>,;-]7FONGYO
PJH0T)'%R-B8J!,=7JU#'[W9;21BD?H/.9Q8H)X]KI0XYB!PK@-D!#WF#]LPW <0N
P8SKN][_@M-D\C*0HI5'POI3P">Y69B"E(P*XR;M#'Z6:G=^G7I]\Q0M &@!"_*46
PZL4=P]8&S:U-]\E(*T<E)ICB^'E]@VAIDEDDN^P2N02"4DM]N@RY0L9%+[G&*WYW
PI6&]JA IO&P'6'6F %OZ?G[5Q[N=#9J1T1^6![,5 [(8H"J$A!"V?6&GYO:LW=8@
PE%4(JV*4E%02I:#@B%*Y*OMT;\+;0%A2*SF6T+%:*<">:=%3&<-#T[R=]W<0H<3,
PSLK$IKM\M!G^F2U'%]5*=5-<X;^*M^[B\64LS)UPH1U@";J[CX>Z;GIY;0'36?QI
PVMK_>_&\'4L6R@PE5S2/-X;$@R6.Z+#&TG4S!@(J!XE3,_0RN,TN&%P#4\X[TG(Z
PU5G]N\^.4O<RN9$0Q9(;YAH-3PONY.9@]0$*/I2\Z?ZZQ<1QQGY;B C_UZ^N&_*F
PR0N&A5QG711X\]73F0]P*8-A7G2B[\3/;NC\EI\T?5I/W.KHWTY4A PBIOB]%AR;
PH_*Z?XN!^8;+&A!=$1'%G-V!A8PF''Y"!-29^3K>21%AV(:;E1AN>ZS8FN+;T/S;
P(XW^D(#5!#1=S)$9>Y$A3:%Z2R?HX&LYP%^85<[F(_C#\@,*GP;L1YPLZG._?$$R
P3 (S262(X9BKEQASVD+:3\-PETUHV!%U2C3)9D8[Y95!:VN9*@_81W9_CYAA5Y46
P_K05D.<&0!%MT"' AD^*"^.+^I4,Z<#;"K-L_P/?L"Z<)MSWR5AN0;P-VMZ5W42O
PG1Y3V8/0=P.RT)D_!%+E?X_[79R?<78,GTQ[6I%QUMXT5:Z\?](?3J=YL2_26CHS
P6GQPY9T?S>%4?9AB;S%1\X^M@0+XVD=-<7S^TWO_XD\1":,-,(YDPQK-L3$YFZ26
PS2^79YFH)6-0R_CW;C#:M2WH:O!GA8+GJQ-08;=H;\Q+%)S!J\Q8!W_74=G2)\[ 
P?)O=3E35(<%/5:NA-"1O@4YT&LDL/I 21(#0G-U3]XLQ6I56,<;=A!" [_8)^I;K
P1U3%0N!!@&](3F4P0'HED#O#M?RP:8K"_G4!+J+K73H65W0 4 YNOS'FTZ&)#M5*
P>D&YE1I G3+[8TW]> F*K78@/:I_K<<G7@D\DWP_$2UB 2LGD!0-<7Z%0W=\7"'%
P]F&9$YZ(;M,ZV)4W,C)WQ[W S;%HV:X)L(MV.19R8)+(GP%?Z&9IV[LGQL\.U^H8
P!OVNZA8[7*R5";X%A(PE\&?84)?CYQ4PZ&0B&3U>:EOEIN3*OV;)=NW:%SFN+:U'
P'B3&I1$IW,*  ;( Q;(EJ,A'G*#076&2KGP$K?)>I:UJKMC=F$ RQ51,J]UPFWU=
PD;KYD3YE"IG?!@YM=]H#F,&<BDBBN9EX"%^G\Z00%6R/_CRN"DJQQ!Q>E@%*NGS>
P<"%BE\=DF/S@LN.HIL@7M",Z=-N6T<,]%]L9E*X_>/^Y5D5^;=3;48\+<@*.-7S8
P,;OEJU'YWQ6/%;PO?EL&'JF#]79.=#=:^PAL@"1W,S,>]F*;<J [I4Y?W- K6\?_
POE6 \\LHHJOLPLB L<F-!4$/R OMBENON(H:?)$LUR?+$BIO<;8DR".C2LCJ8N]G
P$,-;J]C$&3?ZII+9CL$G"4LJ$""63!N]5QT:AC;L3 (5?'2<O2>FX(%AGN#\43'S
P5_ANAL%<A(:OG:^GG<X&XE PG$(R5L^922T>(P>44JLG*)H*O#)(Q"$R*^>4\>09
P,0,!<"+9*_ _1L!(!,XJJ3V/N^Y_W0K'SN"A&RE.S^(\3W47- ^ZX\W"_.QA-QFQ
P;7O-QG[]CO0AZ.6M;=5 5#IL"^Y&KW(-;FREPYIBH7C3H-!+T 8&#+@.,+?([_9U
P72-CI,!#.[R=L9!RM,B.FT8JPMU3X271WV4Q<?]][-8C]Y;>#W#O?OK' @?F-.9#
P[>4<,+]V8@-BFLGESL0!B^$^:9+O@M._UCO:91JB_L==.+ZUW=X!<+A/;B:VPPP:
P9(M^Y9*ZY2UQKCX_;]B3H)DNC@EF@T')[Z8TJE[]G^[N,^"$"V4Y:]ZA&FGT=_?*
PVINJANIRT,84&KZ^ PQ=C@WN4'#P]H1_]X'?0-_3F&&19,SD.$@1ZV88$F=YU!E*
P,S"CP4*_ /Q16D,C!5I;Q'?SIMM:$#6[M&G/$C@-A^"1%TDU[[-+P*E]Y3'EZ$PO
P,$7.J:VFIO,2!C[<77=^=88^^DR6>U$HLLSFK89 Q>0#F%:+C$&!@#S,- *1DX;Z
P %02=+!X^NBN1W/:;/1THO%2".OS'SB9[T^"Y;^X64*J.:LQ/XU(7_IX]S+M1?=?
PEMWO6*$&FTB@CQF>*G)+3)E5CMZRJH^&*,8HK<M'PLH$CR<$&Z#'1'%A<F!HU]\,
P &=UU?F/"S6/GSH_'RG/:+L.P,8E/!)#Q#::X?3(R@G$9ZH_$I>SZS3 M'B%,N6,
P^\^R^1__Z0,<M2L]2F8;F.-URA;YBI/H)LM6/=)*ATT%H-D8(S93I""#O1[*@:'1
PHVTB!P-#AMJM?NN")%<]SYF98>KC1IM.8J#'52Y?$[J!+:^Z%!T!PMQ@Z-?/4T$<
P^Q/]"TGN<;9VZMB>W"HF&/U'^T ?WB?^PJU#V;=U;3%5M-%KN6=):(VWE:D#,(7(
PQ[];51^.,2(/+C2ACK6)@H3 =_ZUMIY.\DZG@?XVG<$%]_""9Z%(END<I= W_\C9
P!%^<=$:M/I+X]IR4.M2$6^A=P9LM&T]("L%6?<I(TV<LX@VC%D\NC/C6?GB/5P%F
P<G<,50^/D!7A]9?DOF,X%G]2US+M9O8EAB9:'6+BI1."!R#%$E^7;@E/X>4B)HT_
PM.X</IB;RP*\SX6#M6 R?\6SU?6ARN$EK6E/5HU2@QL-MOQ]:3:$2+#9>F.&H-%I
P:_7KVU+0-K0^8MV/<HV\T]HK"S"03A)/AG=QT=*F-UR2/;A>VW/7.)AY:'85Z"ZV
PDOZ?#KO4;-SG:+B<@:LZS517>>'CHU;<B6(S1CE3).G?GY'RHIZWO@AN.Z>8L']T
PT8#O *K5RV"[ULDUA*>)T8; K"EM(:^^8)]CBS0]#!]/57==6ZWW:NLC.KYM:I\R
PW5,WTV24;9A>[15(^7!E8TG+FS74A.<(]Y7-%W-+L.#_'/)?5 6H(DY(XVZ,4*Z\
P-V,T\*#%IUAL_6+MXD<[;@2O%6[G>*K%]&O$$A2RBD&/+XF8G+]5JH*^L7SOAN1*
P#$/(0-_CY^0<Y7 ]GC((M9ISJ_P)_B-GI7W9XE(TG+LZQ0^<^N(= -IDI?AM!JK(
P34---$SNC XAS*'" ^[IT#,7F0//^=,##/&/)7 3'Y+/[P/8ZG=5'=$$I-$YW0\V
PF&S](,I0X1*DMSX\Q(1#1TAW4B5V!0'O^ON<B*?TCXB,KU; <_Q)K67ZC6KQ)R>$
P,FO24D*H'!:F,X;RKF.Z^<-SQNVL)ZS)91GP1T#'HC?FE[U9IH2]6V=3QV;E96/H
PV2*SZ]"F#0#+LL$5M@K=(P=WLK;#H/;94[+4-!E63M-TEX^]-+VG&.^W(H@!MB&G
P41+H3\LRF$MCRTHF_;-955 )X\2*QSW4N;I($-TI$Z/XF#4V&U401H].;2L"]5]9
PTYS_)D]@86G]3ZCD2<453YNDQ:;8NTFB:%))HFA'X85$SSTR;/1SO!(,-0_F0RQE
P42.G<WO)"]%L2GN#H5^PP:,/J!5)AN=PU>N!.T(? ]^5-F@D01,5NQ(@W\V<<'CG
PP(VNEUV9X+HFA)(I-F*5O?8(?Y=*^$.61G,9]JN,8F@I:0>P+!&K2PXX!Z^CE,P:
PE7PAGBKG'K)I AI-Z/K9<>*L.VH8H-5//G68NZ1,#?' 0M@GIX@QY3:U<("*I'*@
P395Z(A([[KU@!VT@M1>\OJ9;F75^%+XY@U.RFC[41?M$94&@#;VCBQ?<EHK8_7/5
PAUM;<2Z'5? *GJ-0K%5BX8'\)\#<9F>=K5-^<NH@\YP)M:JD#=O]8P[,9$E*#E=*
P4R-I@.;]G"'*29^5I%*I7B.OBP'4<Q,? &%WF;(0@,KICYW.-+=,UAD$H1-O#>#-
PK+@H$CX+S1SNJ_JEAF3M%-,S=Y?7#$.2]:U"MH)ZA.72@M84K*A\P"(])X.79PIY
PMAT;J$MI2RYN!BIP+ZVPS_1&<:!54 V7?^/AH$$YM?%DK-YE/A=$%C8+<RY6Y0;5
PEU\^2X%7N?BZJYL[;0>D+Y#3$ +FI2\@U2>64S^D[1$1(;+FVD(Y[A'WG%&U3$3U
PF:R',"2= O";;OXS@- N<\)K%HK*HL\+%3R#A,=[;C^-65YVY3$J:%"CEHFH'3]H
P1QT6.=W(9QJI']_;S8)>V)W9B9RFD.R9\VTZ0>^MDUL<P,@$>8TB@_D1:X%G-^<F
P+OW3D:.6_#!D#T^&P$,3F:',>#TSQ?;?)*HP+,)X8*;,\C/AXL_41GP&6]+BS*L5
P(0FJQCH+H!-9UN[#\8((I)M=U42K&<'K52K%,;/YCY.I<N@\T*W3(V4":#+'G+=%
PQG2#00E^]H;K,Y?=C9L-HZ+(?@K5D41K"I8_A%-U:&U%(S4\R:5]DW8.>K301[E?
PV/2"?&/Z5#_#,C&MX\P>8[<0:I+IF$D\!''PGO?Z%H&7-MC6<DW[ ZY>OQI9<UH9
P  F>BT35[_C\3JHA8/_37U36D@5\IT+@Y"(_<!(''PC.]/- Z$_,9(&[MU.)V:'&
P#$LX[- A4[/ 0<^"/$LJTX6=A';M;B6^S\*&76!=QI35;^7'?J)0<Q%B7O:=G(L8
P%:C(46YN[BTJ2[&?M4A6,O<O1^P>,N7CNB2YCZ%)L;7_75G-@[8R6?04-&;?P1!(
P!2WS-.O1MQMMV1<%402%?G?R^_T6#X:==+8QTKT_Z04Z=M)#WV6C=?X&F8WR)E90
PJ$,Y\;#D"Q\T-\[>,"/8\Y*'5;M:PBSBX99MB)8G5PBWL]F@=GRO))+4P9.=,V@S
P-I*"OV-9\<C/RR%G:B.OGSL--=4B+ NQMC]TK0]1F5!A&K1(&/6(N!7?PHE$L%O4
P[C(_M=#, PPV\(Q$C&BDSZT>"1'%(7)3>16</]N% 5X6X-5KVC:D7 $4D\N74I\0
P$;,H*8\]RA1<HXBCTFPIZ@:MF6 >6).>>!D?WGB_35Z&@<%+[QSQ#)JD6(HN4[\&
P,L/^WXG&=_0NB+VK=[1$VGI$BKX@<<L9\9,$Y4L-(DIQ3CZ,W) &J%LID'Z[6%6?
P79&;*P$)M<H(649U3FTL4RBABJ TY:B<C$$ZBF>N34PAL+RGN ]JTN7A[V"YK%K5
PYK3QR<WZI^NC"YK[=V$-W?(2;L1*$<#!*?:8]<A/M7R(L]*T,Z^$0=Z$)MUN)*"M
P!E65^)O*BU]P+3.5U9%LQ--M-MK\]BHN%7Q*6'_==8Z/05_?-Q>HIS;F"REL(VHS
P$[T@B0A%)>'UV5;X^;6L79A42&1L%M@S?;=@Y?HS=/ZQ$LPITH&_*A6#]W1(QY40
PMI.6B842K#^EV^''NAZ2V@/\*SYQ:7Y!J%=^(*+K7STNKU>-:8Y=F1I+U8;QZ >E
P,O]=XOO[0^2(\GFQS3)3"TN8$%_?R3Q.CD)+_1UHQ+RW^)CB;4;SA( %+V%D!I=#
P(9[B@OVI#ZW18K88S@.$F>V+:T0ETGN>%>C-CIJ]H26<F'JU>1E$T"VH3,T>OP5$
PAEZ4F]REBFU?VXN0<B=@%I&E''Z.6WJL"9TM);S+</@YX>-B0(_HV2$$*1X])G1+
PY,!P=U#SZNB:QY,K<3L%MR]PC8YFVVQ)'",:.!/CW?D&0-NON#+*L_FKB!%6AP7R
P31_[8*X!+_#H_^3U<U!&WIL+;M64K\Q'TU93>X_?,1;U(L6A'P@=&8B;)#HK#NGR
PS%/Z#'Z'KC6%IK45,33F)H0BGQRJ)U=-S$I2;!J;)9AZ[I60F%R=E9-F$'L'?87"
PI4/Y6^A#)4J'$R%V@.LEPGB$ 22<VVAP!)^]?L%\5\M?_"UMU2X[4WA5L,IC[>%F
P3'S?1MB@2#L?R7+Y3Z ?U)  %^E*F?F0Z4STF3X:ZJH@"MBT-+KA%(DDPDHR#I>F
P2HO;%#D4PB]^),RC_'<TGUN1+1T9E*#23Y)M0E&;R/JCD:P<OV<232&[[I4I8!OP
P%Z=344,<E*.R;JVP=+BC'$-<E&'"M5X_54"M7N?"]-IGIWG9L8J&$F$"75/Y+#7"
PWE#S+8!!9N]WPF,DO\=86?*%Y^UT TAAN_IV[0*=NS'&"'A?3?K/F1@>/IAU#('(
P\R"Q8Z<A3&L)/"28P*&RJJ9->B\YTDXX<Q*J_1H+_6X4.^M\ZP6>HFIU9KN^IJ1'
PZCSQU":0QWBPL +U=IV:8T.7Q7(WN[R %\7#Z8MT+XSFL%YC3S#,*%)6Q]K(N+)J
P?'K.?"]9HBU: QW5*7PXVR-X2QW_98B$N3,H>;T-F=%>];1N2=N<\5#&OD./ ML5
P_&>C:0E,C]49??/$:F-U<]7C +D8_!Q#@X[NQM'$QT14>-6D5_7<5.&3+# (G^?Z
PJB2,) _+_SXV: %#'USK9ZQ^P.H3<8=WLU]9,DM#^*6SE$6OYUTVV7'G]J 'E*7K
P5*3 ET*#X?3D\62?V.:4OIR4$?00/<0H)[&%?M.4Q3JZ+U>'UN@%4KO9.WQD(<6@
PS3R1$:<Z&-Z\8M]-(< Q^[0["QM]O>&H!"2WSF*<,SS^H)]:D?IJ550IG!EH_>BY
PRC;<_ZO?">(US\A)^=X5+1'+I]^7?A"!XGM2YT?&5A0C6I >'^&@6='/I=/-I/V=
P*BP$C1$54EEU&#CH-F1 R*4L8@<O)B#>##+3PR%9SZC3NAKKR>8<QC1)%HCWD^F:
P#S%09L5J$_ACT&T@I5G)MQE:)TW:.#I8F1CMM=WP#^X-6M.9 CKV ?8=:LK^PW[P
P,"Y^)@DN V]49Q_E@">6'4:Z__WO4S!K6_N&LX&HU8G_[4"'T,1.@[*LP_*7^IT6
PO)12\9IW8U@%BG7R_7GEQI5+)N1.];P5#)3>Y@GSJ<<%_.AP2;Z1IC?K;:H_E+:^
P\_X."!;%JZYT*>HSXH3K*[B*\$2+E)0:<D?C009UDU5'#+P/Q<B<B U@%2X:=7%V
PM;/LIXJ\!7ML7X(Y$*3>+$TB. 3?4ZY*P%IZB<#EP(W]@X>Z%B*U<!#N9N8E*.^[
PZVPTA'SN5>4/+S>6B5_6TE#Y<E$T4KVU R(K% TUD^F(SL_ ;O6!^$VY^1)=25K+
P!B672 T 32WZTTX+H31#8A!YC[2-B%+3P#[W?8U@U'+O_/NMB%%UJY*D_Z0GNB+%
PG8,Z'?& =OJ\?,^BUX^89#A%A! :L.MB:].E^_&T9HMQ<@!R9M:4-U8R#)+/(.>"
PHGVJ1V(.5EWK]5/[. R!RG0&)WZYZX.<OIQ&WSB5^'J*K;A5 A0 *8&?8RE)JUV3
PH]T_T/(SUD<6XD^S>#C*A.^(3.C9#7 8G,>-*.T!03B(U_+J)%V8I8$DT#D174$,
PH'C9V$5B'LCVOPC"RP2B<#5/TXYMH@Y+7?S<!(G>-\V&LX*E91[L8$TG@9- M+AA
P4]W) ?%$R3;3$< NVX2MP2QTK^%E!W09+3V6L<68[/3Y!"/OB'\T4'7G]JZ]=6PU
PEBC)52U#>1&3]W<AHGBUO'[&XT6YP)C^K.C1%TT*NTLDRS9L_&12,V'_?,I^"UE 
PW/'5)MIE;9(>1FGZ<[_6'+7C2N?_>_\DHQ) W441PE_+,=5C=AR3>Z'1OAM*ALK2
P6HKHZ3+#*M!,//9HG:@^YACQ+W)#)WO)]-_%F82N)>P[:P^VL_Y,&IJ/SC<UP7C 
P4[;2?4_;X)0QIC=6?3[D(&Y^&L=(CQ5B9]X-E_3FHH_G_NKF !'WV9L!!!=3+;C-
P##X&9L3-B-N09UP+,UN<=9R<*UM-PXEF4$[^KX',/)PN?^44CIO =ZWJ1$+4N>%F
PYE^-D'T*5W+YBWBPGZLCR&%I#04W@/GTI_T61;O>5TCBK=P^YE"Z9 :H"]%Z'T="
PQH&[0DHK^)>H6$ RV=+I]8XJ56C'4Q))=2<"FW7L7ELVB,!+G0![)[$!P *7C<\'
P7K:E+7F/T^'L?Y32X+Y]_T^O@N$/0)8W*+Q\WQ_%-?&5-@YM/HC;DXW$- _B_*)>
P?UL:Y 8*I>'=6NU#Y[ZNN5GM9G\V5Y9DXC@"@985+5* [UZ<9]EK2(/MCDU<V-OY
PBT"2YPJF+/$L/O&W$LZ<7B)+\P:[ E57DE<:@2X(SWYBOO9*O.H;BE;7Z;;C\@K:
P4K2H.A7!QIXVE^&R 29I?2!#)*!<H,XL;YR R^Z9:MMN2][!2F6.2)8(Z3*^O1" 
P0F;5_ZP:9>:S8W MEGR/^B,\2'(X#0:C,M@GX>F4V8^I7WC=NXYB,[S+'S1)='2K
P691C<OSK,_BV$[TD4MROCLY+(7_5E*A0)8?2O4FS.>=SWF NMI I2Y ]*R.O,O5,
PM)C-9 0'W-_GKF3)B%ID("*2NTTY1MPYFFY%OTIRN8)<TFTOWC*CQ!F3O;WDU35A
PZ^MK$IO6SLK*/6P4"/S9Y(%ZFB:&>4N7J9/065/5UT17Q"FMJ%15(1'/I*/^JP&A
P;F]S$SX?A;UUU^=J9<R24%\ZA(0]%#](Q90TQSZOV)9BD@EXX'E8C%="A0>*I7)7
P>_39?5<\$,?4C2%(W,W'<MYW;=E:,#-.U^[[*?Y[;J)"[LNVEO"4QU&:ROFB/Y<>
PS3=OX 6U\ZZAZ]"Z)(EY+"3#]Y?'[3H(SUPRL(Z,\BE[7@VEF)@5'5#Y]73$K66F
P'_#S5[?LZ?$..+^\TR+KO>>V+"P\G],@CI!KT(,+6LNE9UB.S?JR<P(I2CZS!<%O
PCB7.4Y:M0WQIRMDABL=9H<</6UL3 +Y*Q%1=4N<K679DV@H-#EWR(LK<M(P"V#"(
P>+^[=)NB*3]E(J\7:.U]@:Z'?+#")-;\(-XYNE)76AR!K28"MB"T@+_=H%23E?+\
P?, _$_.EQ7A4TKG5]0,6)U 2 ^HK>J<-3-OY86# %+5$X..)*-895/)7+!G("\=:
PZ=_A79F/AM^+SGZYR1F%[T8_[YQ= BQAI8X$#WEVU<!]U:$%A*CR.SO%G@%.NDX5
P4@HBKP<E(U6E,?NJ?,B4,.04>+G(!E!^%#UHE)2(%-6)E]/,,X)4<:/ ["7O&]<-
P:<8V[A,5/8SP <U^D*$L\!UHUO#DO9=RO,[3SN4_50K^OMM>@J0U+0 =#$7\!2,Q
P-O_[,.?S&(WDOFT]1UA(](WQ)_8DMB@Y@1KC\RT5^^UH11$-L--H]XV$26.]7AWJ
P>X;%)*KA]PNQBL]1.EQ-;-41#Q!\?#\=JY1G1IPTU"\^I_".%W2+D[8[MB_OA_M(
P-8BKR;?OA1,.[$[G\";+-$0JJBL:9T98[+_\IPVP*? S?J;-4$3;#9X#S,210<;D
P<]9]!NVXVA5@$W'.&1,5/ ]@@M.:UKFF3UJ:Y5UQ].F596.5[*A'@<5$D <!/BQ6
P$'JGPN1FG*B/;_C,)T&0)I?"PRP![ Y\Z(L$IT]1ST*"*9H \,86&DX@XUL\*39.
P1-^Z1D^*6:WA.2QV.DK0]!'+BHLQ.$&V"S_('M>B*B'3<PD(?\-$.W[)NMJFV3)I
P%9KVU$W'KXZ9XF9\U0L_,?_N)C]0P!)WQ*U*<;9_&IL;I].;C 1*,^V1G)J5)]=X
P $8TTSD?+UL/ALK$"=&_'-4^/;!^EHM_;*I_>)B7MK&VFKFOOY?41-A-/+!X3!/,
PZP;9!P-'AO,ED@(I(R^/H)LS2U)NOF,VAD0"<[P!P[K*5]7DH-K#TML^S1+.H@DG
P$T)!OE, 4CH2DSR@@LS64X3Q<B@P_J,%<F#+%5O#')%!369)Y-:I2&;6ZQFW\=QS
P>,O:3_%+H5^X%@]J>*WO7/$''XQHT3K_C8%S\-7[I=B#O%_[F 4AGY/QZAT_>H-2
PI[%%KY$OR"YT<#SM[M5P>N::XVOZUUG TJ6,@I^O9 0'5*A4R'EUQ4]VQBPWQ.3I
P-8[65F$<RDQJKH ,0 WYE1-*(<S]H KXM[9WWU?*Z.(H9\[!W3LD??,SOWZM0K?'
P]#J=N <8_L(O'*\:RI+D^((2<"U8(NRH62WRKD] 81#%C%LJ4NL5HK,]@:6!>#B>
P*RZ-00:53E("0F@]V34@IHT/C@ZF+QY86>&1(U_B. >+!EUFMY/;D9$?C69:Z_S7
P(6YE,;FM=D:&E/92?\$MG#HL[XOX@3&%.I_E)X0B?^$*.I_Q96T:B1.IV&M&^-7'
P?$TX<ZP:?P-%,^U#IBQ.->B2DKVC8$@'!'$4Q!IS40I_C@0CW>HQ#' >R;K^^9)[
P!&S+?]E]<9OLME8%7ON8[2(I,PCM_C<#ZFM4$<K3F\YGD)6_YH,J&$0@H6LHD.E5
P1?"O8=&LU<SM4X":/7[F9-7C?]U!J#WF=SI"W9:JB!.3PK?:2Z[@-RG4$>-=?L6K
PIG8]J<E"0H10"X0M)P;HD(#M)?;CI!ERP%!T) NIN^9>1(@>E"\3[98(&\S/.V#S
PL]B6OZ0*1]%MPR?C"T$/&?=^/^,J:[-[83NPBU,\6+E'!RJ),$7#<4F8\D7H]:KO
P=(38JKA?L2VD'")DF,-%6M#QBC]F21#T<B:!C&*UB%AK@AN9E:C^\>)6;&ID89,!
PD;PDQ2FG).%I().[=+ZWN&R/4A!AL*/L4_?- &J#/K._=.8!(*N1Q_[^"%A%TA5+
PKS<AWBR+=HO*C_SE(/BM8MNI:$;3-?T=<ZHX.3,A'D[]0Z3]=>>(XL/W3^>*=#/W
PUZ:M_I_*<$/C)-^B01WFJFL[/^]<4O$3J9X!HJ,5C6\I?_YYZ_FN8.]_:<TVE+ ?
PN8N,DU/<>$WSV/OGRVEF_, NJQ7LN_-S)UL\[P-P*"7/$MEEIB%;SV-S&NO=/5;G
P KD75X(O-&MC$,[\VQ'U< &UD;()SH"P,%J[?EU?\%![XU3*LRW%R/M!-$$5OO9E
PNF9)[HUI1T8\R:P.Y98:<[*JM9?S/*=O%E?]NO;C='HZO$+ZD =G$*OR^X8(!@A(
P$[KLE;CUIPCI!;PY@IVGT-C3^AWSF'1;N7ZD?#]]V=UX7]<[*YLV'ZHG%C8I)*P"
PYK[OM5^M14PM50D'.0]F31P&@T;[E9P$7T*UZK^:@D])YQ&D8^HW]&Z)#W3&HWD+
P(;ULT-(!(EO/_\_/N5+?5M:D7:1UC0\E<<7.OAE+Y:5MHR0*WQ6Q_&KL]P@M@PYO
P'5BLFH?CCM$@F=EYO U)Z-(!9O3%GE0N+&*-#.5?Y35(A3BK5;X-I7KY.7+ZDRL!
PIN61W)<PKS1'1E.0MP'4'9K.?,F6M'SE_1J4Q\MP4T740 .A=J9S#>M0(\9"K/KB
PST)C7-:V^T9\(H(2=;5"A<$W6VH_.@91**+PSS8(3HRM6U)-.6U;(L14VY^=P)?T
PI*Y=>BG7>*,'U!, I?FMIG);!$=$3$-7HU#=2?2X=8>#70+KF7G,*RXE5*1"0Y=,
P!,Y)7T'?H(]@/SD1)*JY](3615Y_S>@@;-$R9-!;AB#)T:E\4WL35!$:=^%&!Z9-
PS^P!0",@7'M<\T=.%K5'=O4A,R?7 9!&EY-UI!61P\I/P7*54KR4+>R*-2A0%##_
P#:S55S23*('#(<6 8NQ9MD)O!=^[08,D0E83AQMM!^6G2$6PK>OP;#8@J'YAZBS;
`endprotected128
endmodule

// `endif