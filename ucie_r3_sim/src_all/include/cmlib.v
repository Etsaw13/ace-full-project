`resetall
`timescale 1ns/1ps

`ifndef __CKBUF__
`define __CKBUF__
module CKBUF ( I, Z );
input I;
output Z;


`ifdef BEHAVIORAL

assign Z = I;

`elsif FPGA
assign Z = I;

`elsif SMIC_S28

CLKBUFV4_140P9T30UL u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif S12_SMIC

CLKBUFV4_90S9T16UL u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif T7_SNPS

HDBULT08_BUF_SM_3 u_dont_touch_ckbuf ( .A(I), .X(Z) );

`elsif TSMC_N7_H300

CKBD4BWP300H8P64PDULVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif TSMC_N7_H240

CKBD4BWP240H8P57PDULVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif TSMC_N6_H240

CKBD4BWP240H8P57CPDULVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif TSMC_N12_9T

CKBD4BWP16P90CPDULVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif TSMC_N28

CKBD4BWP12T30P140LVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );
//CKBD4BWP40P140LVT u_dont_touch_ckbuf ( .I(I), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_BUF_S_4 u_dont_touch_ckbuf ( .X(Z), .A(I) );

`elsif SL5_SFDK

CLKBUF_D4_N_M7P5TSL_C60L08 u_dont_touch_ckbuf ( .Y(Z), .A(I) );

`else

assign Z = I;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKINV__
`define __CKINV__
module CKINV ( I, ZN );
input I;
output ZN;


`ifdef BEHAVIORAL

assign ZN = ~I;

`elsif FPGA

assign ZN = ~I;

`elsif SMIC_S28

CLKINV4_140P9T30UL u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif S12_SMIC

CLKINV4_90S9T16UL u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif T7_SNPS

HDBULT08_INV_CK_4 u_dont_touch_ckinv ( .CK(I), .X(ZN) );

`elsif TSMC_N7_H300

CKND4BWP300H8P64PDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N7_H240

CKND4BWP240H8P57PDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N6_H240

CKND4BWP240H8P57CPDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N12_9T

CKND4BWP16P90CPDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N28

CKND4BWP12T30P140LVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );
//CKND4BWP40P140LVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif SL8_SNPS

HDBSLT20_INV_SDC_4 u_dont_touch_ckinv ( .X(ZN), .A(I) );

`elsif SL5_SFDK

CLKINV_D4_N_M7P5TSL_C60L08 u_dont_touch_ckinv ( .Y(ZN), .A(I) );

`else

assign ZN = ~I;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKAN2__
`define __CKAN2__
module CKAN2 ( A1, A2, Z );
input A1;
input A2;
output Z;

`ifdef BEHAVIORAL

assign Z = A1 & A2;

`elsif FPGA

assign Z = A1 & A2;

`elsif SMIC_S28

CLKAND2V4_140P9T30UL u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif S12_SMIC

CLKAND2V4_90S9T16UL u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif T7_SNPS

HDBULT08_AN2_MM_2 u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .X(Z) );

`elsif TSMC_N7_H300

CKAN2D4BWP300H8P64PDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N7_H240

CKAN2D4BWP240H8P57PDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N6_H240

CKAN2D4BWP240H8P57CPDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N12_9T

CKAN2D4BWP16P90CPDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N28

CKAN2D4BWP12T30P140LVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );
//CKAN2D4BWP40P140LVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_AN2_MM_4 u_dont_touch_ckan2 ( .X(Z), .A1(A1), .A2(A2) );

`elsif SL5_SFDK

AND2_D2_N_M7P5TSL_C60L08 u_dont_touch_ckan2 ( .Y(Z), .A(A1), .B(A2) );

`else

assign Z = A1 & A2;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKND2__
`define __CKND2__
module CKND2 ( A1, A2, ZN );
input A1;
input A2;
output ZN;

`ifdef BEHAVIORAL

assign ZN = ~(A1 & A2);

`elsif FPGA

assign ZN = ~(A1 & A2);

`elsif SMIC_S28

CLKNAND2V4_140P9T30UL u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif S12_SMIC

CLKNAND2V4_90S9T16UL u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif T7_SNPS

`ifdef SIM
wire ZN_pre;
reg ZN_reg;
HDBULT08_ND2_MM_2 u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .X(ZN_pre) );
always @(*)
    ZN_reg <= #5 ZN_pre;
assign ZN = ZN_reg;
`else
HDBULT08_ND2_MM_2 u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .X(ZN) );
`endif

`elsif TSMC_N7_H300

CKND2D4BWP300H8P64PDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N7_H240

CKND2D4BWP240H8P57PDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N6_H240

CKND2D4BWP240H8P57CPDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N12_9T

`elsif TSMC_N28

//CKAN2D4BWP12T30P140LVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .Z(ZN) );
CKND2D4BWP12T30P140LVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );//wxy@0829
//CKND2D4BWP40P140LVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );


`elsif SL8_SNPS

HDBSLT20_ND2_MM_4 u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .X(ZN) );

`elsif SL5_SFDK

NAND2_D4_N_M7P5TSL_C60L08 u_dont_touch_cknd2 ( .A(A1), .B(A2), .Y(ZN) );

`else

assign ZN = ~(A1 & A2);

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __CKMUX2__
`define __CKMUX2__
module CKMUX2 ( S, I0, I1, Z );
input S;
input I0;
input I1;
output Z;

`ifdef BEHAVIORAL

assign Z = S ? I1 : I0;

`elsif FPGA

// by xcliu 2026-05-26 | assign Z = S ? I1 : I0;
assign Z = I0;

`elsif SMIC_S28

CLKMUX2V4_140P9T30UL u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif S12_SMIC

CLKMUX2V4_90S9T16UL u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif T7_SNPS

HDBULT08_MUX2_CK_2 u_dont_touch_ckmux2 ( .S(S), .CK0(I0), .CK1(I1), .X(Z) );

`elsif TSMC_N7_H300

CKMUX2D4BWP300H8P64PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N7_H240

CKMUX2D4BWP240H8P57PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N6_H240

CKMUX2D4BWP240H8P57CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N12_9T

CKMUX2D4BWP16P90CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N28

CKMUX2D4BWP12T30P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
//CKMUX2D4BWP40P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX2_MM_4 u_dont_touch_ckmux2 ( .X(Z), .D0(I0), .D1(I1), .S(S) ); //S

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_ckmux2 ( .Y(Z), .A(I0), .B(I1), .S0(S) ); //S

`else

assign Z = S ? I1 : I0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKLNQ__
`define __CKLNQ__
module CKLNQ ( CP, E, TE, Q );
input CP;
input E;
input TE;
output Q;


`ifdef BEHAVIORAL

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

`elsif FPGA

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

`elsif SMIC_S28

CLKLANQV4_140P9T30UL u_dont_touch_cklnq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif S12_SMIC

CLKLANQV4_90S9T16UL u_dont_touch_cklnq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif T7_SNPS

HDBULT08_CKGTPLT_V5Y2_4 u_dont_touch_cklnq ( .CK(CP), .SE(TE), .EN(E), .Q(Q) );

`elsif TSMC_N7_H300

CKLNQD4BWP300H8P64PDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N7_H240

CKLNQD4BWP240H8P57PDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N6_H240

CKLNQD4BWP240H8P57CPDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N12_9T

CKLNQD4BWP16P90CPDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N28
CKLNQD4BWP12T30P140LVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );
//CKLNQD4BWP40P140LVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif SL8_SNPS

HDBSLT20_CKGTPLT_V5_4 u_dont_touch_cklnq ( .Q(Q), .CK(CP), .EN(E), .SE(TE) );

`elsif SL5_SFDK

PREICG_D4_N_M7P5TSL_C60L08 u_dont_touch_cklnq ( .ECK(Q), .CK(CP), .E(E), .SE(TE) );

`else

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKLHQ__
`define __CKLHQ__
module CKLHQ ( CP, E, TE, Q );
input CP;
input E;
input TE;
output Q;


`ifdef BEHAVIORAL

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(CP)
        clk_en_sync <= clk_en;

assign Q = !clk_en_sync | CP;

`elsif FPGA

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(CP)
        clk_en_sync <= clk_en;

assign Q = !clk_en_sync | CP;

`elsif SMIC_S28

CLKLAHQV4_140P9T30UL u_dont_touch_cklhq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif S12_SMIC

CLKLAHQV4_90S9T16UL u_dont_touch_cklhq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif T7_SNPS

HDBULT08_CKGTNLT_V5Y2_4 u_dont_touch_cklhq ( .CK(CP), .SE(TE), .EN(E), .Q(Q) );

`elsif TSMC_N7_H300

CKLHQD4BWP300H8P64PDULVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N7_H240

CKLHQD4BWP240H8P57PDULVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N6_H240

CKLHQD4BWP240H8P57CPDULVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N12_9T

CKLHQD4BWP16P90CPDULVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N28

CKLHQD4BWP12T30P140LVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );
//CKLHQD4BWP40P140LVT u_dont_touch_cklhq ( .CPN(CP), .TE(TE), .E(E), .Q(Q) );

`elsif SL8_SNPS

HDBSLT20_CKGTNLT_V7_4 u_dont_touch_cklhq ( .Q(Q), .CK(CP), .EN(E), .SE(TE) );

`elsif SL5_SFDK

PREICGN_D4_N_M7P5TSL_C60L08 u_dont_touch_cklhq ( .ECK(Q), .CK(CP), .E(E), .SE(TE) ); //TODO

`else

reg clk_en_sync;
assign clk_en = E | TE;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __MUX2__
`define __MUX2__
module MUX2 ( S, I0, I1, Z );
input S;
input I0;
input I1;
output Z;

`ifdef BEHAVIORAL

assign Z = S ? I1 : I0;

`elsif FPGA

assign Z = S ? I1 : I0;

`elsif SMIC_S28

MUX2V4_140P9T30UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif S12_SMIC

MUX2V4_90S9T16UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif T7_SNPS

HDBULT08_MUX2_1 u_dont_touch_mux2 ( .S(S), .D0(I0), .D1(I1), .X(Z) );

`elsif TSMC_N7_H300

MUX2D4BWP300H8P64PDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N7_H240

MUX2D4BWP240H8P57PDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N6_H240

MUX2D4BWP240H8P57CPDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N12_9T

MUX2D4BWP16P90CPDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N28

MUX2D4BWP12T30P140LVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
//MUX2D4BWP40P140LVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX2_1 u_dont_touch_mux2 ( .X(Z), .D0(I0), .D1(I1), .S(S) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2 ( .Y(Z), .A(I0), .B(I1), .S0(S) );

`else

assign Z = S ? I1 : I0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __AN2__
`define __AN2__
module AN2 ( A1, A2, Z );
input A1;
input A2;
output Z;

`ifdef BEHAVIORAL

assign Z = A1 & A2;

`elsif FPGA

assign Z = A1 & A2;

`elsif SMIC_S28

AND2V4_140P9T30UL u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif S12_SMIC

AND2V4_90S9T16UL u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif T7_SNPS

HDBULT08_AN2_2 u_dont_touch_an2 ( .A1(A1), .A2(A2), .X(Z) );

`elsif TSMC_N7_H300

AN2D4BWP300H8P64PDULVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N7_H240

AN2D4BWP240H8P57PDULVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N6_H240

AN2D4BWP240H8P57CPDULVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N12_9T

AN2D4BWP16P90CPDULVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N28

AN2D4BWP12T30P140LVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );
//AN2D4BWP40P140LVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_AN2_2 u_dont_touch_an2 ( .X(Z), .A1(A1), .A2(A2) );

`elsif SL5_SFDK

AND2_D2_N_M7P5TSL_C60L08 u_dont_touch_an2 ( .Y(Z), .A(A1), .B(A2) );

`else

assign Z = A1 & A2;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __MUX3__
`define __MUX3__
module MUX3 ( S0, S1, I0, I1, I2, Z );
input S0;
input S1;
input I0;
input I1;
input I2;
output Z;

`ifdef BEHAVIORAL

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

`elsif FPGA

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

`elsif SMIC_S28

MUX3V4_140P9T30UL u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif S12_SMIC

MUX3V4_90S9T16UL u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif T7_SNPS

wire ZN;
HDBULT08_MUXI3_Y2_1 u_dont_touch_muxi3 ( .D0(I0), .D1(I1), .D2(I2), .S0(S0), .S1(S1), .X(ZN) );
HDBULT08_INV_1 u_dont_touch_inv ( .A(ZN), .X(Z) );

`elsif TSMC_N7_H300

MUX3D4BWP300H8P64PDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N7_H240

MUX3D4BWP240H8P57PDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N6_H240

MUX3D4BWP240H8P57CPDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N12_9T

wire ZN;
MUX3D4BWP16P90CPDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N28

MUX3D4BWP12T30P140LVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );
//MUX3D4BWP40P140LVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX3_2 u_dont_touch_muxi3( .X(Z), .D0(I0), .D1(I1), .D2(I2), .S0(S0), .S1(S1) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_0( .Y(Z01), .A(I0), .B(I1), .S0(S0) );
MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_1( .Y(Z), .A(Z01), .B(I2), .S0(S1) );

`else

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __OR2__
`define __OR2__
module OR2 ( A1, A2, Z );
input A1;
input A2;
output Z;

`ifdef BEHAVIORAL

assign Z = A1 | A2;

`elsif FPGA

assign Z = A1 | A2;
 
`elsif SMIC_S28

OR2V4_140P9T30UL u_dont_touch_an2 ( .Z(Z), .A1(A1), .A2(A2) );

`elsif S12_SMIC

OR2V4_90S9T16UL u_dont_touch_an2 ( .Z(Z), .A1(A1), .A2(A2) );

`elsif T7_SNPS

HDBULT08_OR2_2 u_dont_touch_an2 ( .A1(A1), .A2(A2), .X(Z) );

`elsif TSMC_N7_H300

OR2D4BWP300H8P64PDLVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N7_H240

OR2D4BWP240H8P57PDLVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N6_H240

OR2D4BWP240H8P57CPDLVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N12_9T

OR2D4BWP16P90CPDULVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N28

OR2D4BWP12T30P140LVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );
//OR2D4BWP40P140LVT u_dont_touch_an2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_OR2_2 u_dont_touch_an2 ( .X(Z), .A1(A1), .A2(A2) );

`elsif SL5_SFDK

OR2_D2_N_M7P5TSL_C60L08 u_dont_touch_an2 ( .Y(Z), .A(A1), .B(A2) );

`else

assign Z = A1 | A2;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __DFQ__
`define __DFQ__
module DFQ ( CP, D, Q );
input CP;
input D;
output Q;


`ifdef BEHAVIORAL

reg Q_reg;
always @(posedge CP)
    Q_reg <= D;

assign Q = Q_reg;

`elsif FPGA

reg Q_reg;
always @(posedge CP)
    Q_reg <= D;

assign Q = Q_reg;

`elsif SMIC_S28

DQV4_140P9T30UL u_dont_touch_dfq ( .CK(CP), .D(D), .Q(Q) );

`elsif S12_SMIC

DQV4_90S9T16UL u_dont_touch_dfq ( .CK(CP), .D(D), .Q(Q) );

`elsif TSMC_N7_H300

DFQD4BWP300H8P64PDULVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );

`elsif TSMC_N7_H240

DFQD4BWP240H8P57PDULVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );

`elsif TSMC_N6_H240

DFQD4BWP240H8P57CPDULVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );

`elsif TSMC_N12_9T

DFQD2BWP20P90CPDULVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );

`elsif TSMC_N28

DFQD2BWP12T30P140LVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );
//DFQD2BWP40P140LVT u_dont_touch_dfq ( .CP(CP), .D(D), .Q(Q) );

`elsif SL8_SNPS

//HDBSLT20_CKGTPLT_V8_4 u_dont_touch_dfq ( .Q(Q), .CK(CP), .EN(1'b1), .SE(D) );
//HDBSLT20_LDPQ_4 u_dont_touch_dfq ( .Q(Q), .G(CP), .D(D) );
HDBSLT20_FDPQ_4 u_dont_touch_dfq( .Q(Q), .CK(CP), .D(D) );

`elsif SL5_SFDK

DFFQLV_D2_N_M7P5TSL_C60L08 u_dont_touch_dfq( .Q(Q), .CK(CP), .D(D) );

`else

reg Q_reg;
always @(posedge CP)
    Q_reg <= D;

assign Q = Q_reg;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __DFRPQD2_ULVT__
`define __DFRPQD2_ULVT__
module DFRPQD2_ULVT ( CP, CD, D, Q );
input CP;
input CD;
input D;
output Q;


`ifdef BEHAVIORAL

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif FPGA

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif SMIC_S28

CLKINV4_140P9T30UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_140P9T30UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif S12_SMIC

CLKINV4_90S9T16UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_90S9T16UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N7_H300

DFRPQD2BWP300H8P64PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N7_H240

DFRPQD2BWP240H8P57PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N6_H240

DFRPQD2BWP240H8P57CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N12_9T

INVD2BWP16P90CPDULVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP16P90CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N28

INVD2BWP12T30P140LVT u_dont_touch_inv   ( .I(CD), .ZN(CDN));
//INVD2BWP40P140LVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP12T30P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );
//DFCNQD4BWP40P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );

`elsif SL8_SNPS

// HDBSLT20_BUF_S_4 u_dont_touch_ckbuf ( .A(CD), .X(CDN) );
HDBSLT20_INV_S_4 u_dont_touch_ckinv ( .A(CD), .X(CDN) );
HDBSLT20_FDPRBQ_2 u_dont_touch_dfcnq ( .CK(CP), .RD(CDN), .D(D), .Q(Q) );

`elsif SL5_SFDK

DFFRPQLV_D1_N_M7P5TSL_C60L08 u_dont_touch_dfcnq (.Q(Q), .CK(CP), .D(D), .R(CD) );

`else

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

// initial begin
initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");
// end

`endif

endmodule
`endif


`ifndef __DFRPQD2_ULVT_META__
`define __DFRPQD2_ULVT_META__
module DFRPQD2_ULVT_META #(
    parameter   SETUP_MARGIN = 8,  //ps  
    parameter   HOLD_MARGIN = 6    //ps
) ( CP, CD, D, Q );
input CP;
input CD;
input D;
output Q;


`ifdef EMUL
reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif BEHAVIORAL
realtime                time_clk;
realtime                time_din;
realtime                time_skew;
wire                    meta_detect;

always @(posedge CP) begin
    time_clk    <= $realtime;
end

always @(D) begin
    time_din    <= $realtime;
end

assign  time_skew   =   time_clk - time_din;

assign  meta_detect =   (time_skew > (SETUP_MARGIN*1ps) || time_skew < (-1.0*HOLD_MARGIN*1ps)) ? 1'b0 : 1'b1;     

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else begin
    #(HOLD_MARGIN*1ps);
    if(meta_detect)
      Q_reg <= $random%2;
    else 
      Q_reg <= D;
  end

assign Q = Q_reg;

`elsif FPGA

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif FPGA

`elsif SMIC_S28

CLKINV4_140P9T30UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_140P9T30UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif S12_SMIC

CLKINV4_90S9T16UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_90S9T16UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N7_H300

DFRPQD2BWP300H8P64PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N7_H240

DFRPQD2BWP240H8P57PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N6_H240

DFRPQD2BWP240H8P57CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N12_9T

INVD2BWP16P90CPDULVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP16P90CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N28
INVD2BWP12T30P140LVT u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP12T30P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );
//INVD2BWP40P140LVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
//DFCNQD4BWP40P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );
`elsif SL8_SNPS

// HDBSLT20_BUF_S_4 u_dont_touch_ckbuf ( .A(CD), .X(CDN) );
HDBSLT20_INV_S_4 u_dont_touch_ckinv ( .A(CD), .X(CDN) );
HDBSLT20_FDPRBQ_2 u_dont_touch_dfcnq ( .CK(CP), .RD(CDN), .D(D), .Q(Q) );

`elsif SL5_SFDK

DFFRPQLV_D1_N_M7P5TSL_C60L08 u_dont_touch_dfcnq (.Q(Q), .CK(CP), .D(D), .R(CD) );

`else

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

// initial begin
initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");
// end

`endif

endmodule
`endif

`ifndef __LNQ_D2_ULVT__
`define __LNQ_D2_ULVT__
module LNQ_D2_ULVT ( D, EN, Q );
input D;
input EN;
output Q;


`ifdef BEHAVIORAL

reg Q;

always @( * )
  if(~EN)
    Q = D;

`elsif FPGA

reg Q;

always @( * )
  if(~EN)
    Q = D;

`elsif SMIC_S28

LALQV4_140P9T30UL u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif S12_SMIC

LALQV4_90S9T16UL u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif T7_SNPS

`elsif TSMC_N7_H300

LNQD2BWP300H8P64PDULVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif TSMC_N7_H240

LNQD2BWP240H8P57PDULVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif TSMC_N6_H240

LNQD2BWP240H8P57CPDULVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif TSMC_N12_9T

LNQD2BWP20P90CPDULVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif TSMC_N28

LNQD2BWP12T30P140LVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );
//LNQD2BWP40P140LVT u_dont_touch_lnqd2 ( .EN(EN), .D(D), .Q(Q) );

`elsif SL8_SNPS

HDBSLT20_LDNQ_4 u_dont_touch_lnqd2 ( .Q(Q), .G(EN), .D(D) );

`elsif SL5_SFDK

LATNQ_D2_N_M7P5TSL_C60L08 u_dont_touch_lnqd2 ( .Q(Q), .GN(EN), .D(D) );

`else

reg Q;

always @( * )
  if(~EN)
    Q = D;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __MUX4_ULVT__
`define __MUX4_ULVT__
module MUX4_ULVT ( S0, S1, I0, I1, I2, I3, Z );
input S0;
input S1;
input I0;
input I1;
input I2;
input I3;
output Z;

`ifdef BEHAVIORAL

assign Z0 = S0 ? I1 : I0;
assign Z1 = S0 ? I3 : I2;
assign Z  = S1 ? Z1 : Z0;

`elsif FPGA

assign Z0 = S0 ? I1 : I0;
assign Z1 = S0 ? I3 : I2;
assign Z  = S1 ? Z1 : Z0;

`elsif SMIC_S28

MUX2V4_140P9T30UL u_dont_touch_mux2_0 ( .I0(I0), .I1(I1), .S(S0), .Z(Z0));
MUX2V4_140P9T30UL u_dont_touch_mux2_1 ( .I0(I2), .I1(I3), .S(S0), .Z(Z1));
MUX2V4_140P9T30UL u_dont_touch_mux2_2 ( .I0(Z0), .I1(Z1), .S(S1), .Z(Z));

`elsif S12_SMIC

MUX4V4_90S9T16UL  u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif T7_SNPS

`elsif TSMC_N7_H300

MUX4D4BWP300H8P64PDULVT u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif TSMC_N7_H240

MUX4D4BWP240H8P57PDULVT u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif TSMC_N6_H240

MUX4D4BWP240H8P57CPDULVT u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif TSMC_N12_9T

MUX4D4BWP20P90CPDULVT   u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif TSMC_N28

MUX4D4BWP12T30P140LVT u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));
//MUX4D4BWP40P140LVT   u_dont_touch_ckmux4 ( .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Z(Z));

`elsif SL8_SNPS

HDBSLT20_MUX4_2 u_dont_touch_ckmux4( .X(Z), .D0(I0), .D1(I1), .D2(I2), .D3(I3), .S0(S0), .S1(S1) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_0( .Y(Z0), .A(I0), .B(I1), .S0(S0) );
MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_1( .Y(Z1), .A(I2), .B(I3), .S0(S0) );
MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_2( .Y(Z), .A(Z0), .B(Z1), .S0(S1) );

`else

assign Z0 = S0 ? I1 : I0;
assign Z1 = S0 ? I3 : I2;
assign Z  = S1 ? Z1 : Z0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif









////////////////////////////////////////////////////////////
// H240 hand code.
////////////////////////////////////////////////////////////

`ifndef __CKMUX2_H240__
`define __CKMUX2_H240__
module CKMUX2_H240 ( S, I0, I1, Z );
input S;
input I0;
input I1;
output Z;

`ifdef BEHAVIORAL

assign Z = S ? I1 : I0;

`elsif FPGA

// by xcliu 2026-05-26 | assign Z = S ? I1 : I0;
assign Z = I0;

`elsif SMIC_S28

CLKMUX2V4_140P9T30UL u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif S12_SMIC

CLKMUX2V4_90S9T16UL u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif T7_SNPS

HDBULT08_MUX2_CK_2 u_dont_touch_ckmux2 ( .S(S), .CK0(I0), .CK1(I1), .X(Z) );

`elsif TSMC_N7_H300

CKMUX2D4BWP300H8P64PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N7_H240

CKMUX2D4BWP240H8P57PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N6_H240

CKMUX2D4BWP240H8P57CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N12_9T

CKMUX2D4BWP16P90CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N28

CKMUX2D4BWP12T30P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
//CKMUX2D4BWP40P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX2_MM_2 u_dont_touch_ckmux2( .X(Z), .D0(I0), .D1(I1), .S(S) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_ckmux2( .Y(Z), .A(I0), .B(I1), .S0(S) );

`else

assign Z = S ? I1 : I0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __CKINV_H240__
`define __CKINV_H240__
module CKINV_H240 ( I, ZN );
input I;
output ZN;


`ifdef BEHAVIORAL

assign ZN = ~I;

`elsif FPGA

assign ZN = ~I;

`elsif SMIC_S28

CLKINV4_140P9T30UL u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif S12_SMIC

CLKINV4_90S9T16UL u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif T7_SNPS

HDBULT08_INV_CK_4 u_dont_touch_ckinv ( .CK(I), .X(ZN) );

`elsif TSMC_N7_H300

CKND4BWP300H8P64PDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N7_H240

CKND4BWP240H8P57PDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N6_H240

CKND4BWP240H8P57CPDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N12_9T

CKND4BWP16P90CPDULVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif TSMC_N28

CKND4BWP12T30P140LVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );
//CKND4BWP40P140LVT u_dont_touch_ckinv ( .I(I), .ZN(ZN) );

`elsif SL8_SNPS

HDBSLT20_INV_SDC_4 u_dont_touch_ckinv ( .A(I), .X(ZN) );

`elsif SL5_SFDK

CLKINV_D4_N_M7P5TSL_C60L08 u_dont_touch_ckinv ( .A(I), .Y(ZN) );

`else

assign ZN = ~I;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __MUX3_H240__
`define __MUX3_H240__
module MUX3_H240 ( S0, S1, I0, I1, I2, Z );
input S0;
input S1;
input I0;
input I1;
input I2;
output Z;

`ifdef BEHAVIORAL

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

`elsif FPGA

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

`elsif SMIC_S28

MUX3V4_140P9T30UL u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif S12_SMIC

MUX3V4_90S9T16UL u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif T7_SNPS

wire ZN;
HDBULT08_MUXI3_Y2_1 u_dont_touch_muxi3 ( .D0(I0), .D1(I1), .D2(I2), .S0(S0), .S1(S1), .X(ZN) );
HDBULT08_INV_1 u_dont_touch_inv ( .A(ZN), .X(Z) );

`elsif TSMC_N7_H300

MUX3D4BWP300H8P64PDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N7_H240

MUX3D4BWP240H8P57PDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N6_H240

MUX3D4BWP240H8P57CPDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N12_9T

wire ZN;
MUX3D4BWP16P90CPDULVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif TSMC_N28

MUX3D4BWP12T30P140LVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );
//MUX3D4BWP40P140LVT u_dont_touch_muxi3 ( .I0(I0), .I1(I1), .I2(I2), .S0(S0), .S1(S1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX3_2 u_dont_touch_muxi3 ( .X(Z), .D0(I0), .D1(I1), .D2(I2), .S0(S0), .S1(S1) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_0( .Y(Z01), .A(I0), .B(I1), .S0(S0) );
MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2_1( .Y(Z), .A(Z01), .B(I2), .S0(S1) );

`else

assign Z01 = S0 ? I1 : I0;
assign Z = S1 ? I2 : Z01;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __CKAN2_H240__
`define __CKAN2_H240__
module CKAN2_H240 ( A1, A2, Z );
input A1;
input A2;
output Z;

`ifdef BEHAVIORAL

assign Z = A1 & A2;

`elsif FPGA

assign Z = A1 & A2;

`elsif SMIC_S28

CLKAND2V4_140P9T30UL u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif S12_SMIC

CLKAND2V4_90S9T16UL u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif T7_SNPS

HDBULT08_AN2_MM_2 u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .X(Z) );

`elsif TSMC_N7_H300

CKAN2D4BWP300H8P64PDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N7_H240

CKAN2D4BWP240H8P57PDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N6_H240

CKAN2D4BWP240H8P57CPDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N12_9T

CKAN2D4BWP16P90CPDULVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif TSMC_N28

CKAN2D4BWP12T30P140LVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );
//CKAN2D4BWP40P140LVT u_dont_touch_ckan2 ( .A1(A1), .A2(A2), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_AN2_MM_2 u_dont_touch_ckan2 ( .X(Z), .A1(A1), .A2(A2) );

`elsif SL5_SFDK

AND2_D2_N_M7P5TSL_C60L08 u_dont_touch_ckan2 ( .Y(Z), .A(A1), .B(A2) );

`else

assign Z = A1 & A2;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __DFRPQD2_ULVT_H240__
`define __DFRPQD2_ULVT_H240__
module DFRPQD2_ULVT_H240 ( CP, CD, D, Q );
input CP;
input CD;
input D;
output Q;


`ifdef BEHAVIORAL

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif FPGA

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

`elsif SMIC_S28

CLKINV4_140P9T30UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_140P9T30UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif S12_SMIC

CLKINV4_90S9T16UL u_dont_touch_ckinv ( .I(CD), .ZN(CDN) );
DRNQV4_90S9T16UL u_dont_touch_dfcnq ( .CK(CP), .RDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N7_H300

DFRPQD2BWP300H8P64PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N7_H240

DFRPQD2BWP240H8P57PDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N6_H240

DFRPQD2BWP240H8P57CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CD(CD), .D(D), .Q(Q) );

`elsif TSMC_N12_9T

INVD2BWP16P90CPDULVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP16P90CPDULVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );

`elsif TSMC_N28

INVD2BWP12T30P140LVT u_dont_touch_inv   ( .I(CD), .ZN(CDN));
DFCNQD4BWP12T30P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );
//INVD2BWP40P140LVT   u_dont_touch_inv   ( .I(CD), .ZN(CDN));
//DFCNQD4BWP40P140LVT u_dont_touch_dfcnq ( .CP(CP), .CDN(CDN), .D(D), .Q(Q) );

`elsif SL8_SNPS

HDBSLT20_INV_SDC_4 u_dont_touch_inv( .X(CDN), .A(CD) );
HDBSLT20_FDPRBQ_4 u_dont_touch_dfcnq (.Q(Q), .CK(CP), .D(D), .RD(CDN) );
//HDBSLT20_CKGTNLT_V8_2 u_dont_touch_dfcnq( .Q(Q), .CK(CP), .EN(CDN), .SE(D) );

`elsif SL5_SFDK

DFFRPQLV_D1_N_M7P5TSL_C60L08 u_dont_touch_dfcnq (.Q(Q), .CK(CP), .D(D), .R(CD) );

`else

reg Q_reg;
always @(posedge CP or posedge CD)
  if(CD)
    Q_reg <= 1'b0;
  else
    Q_reg <= D;

assign Q = Q_reg;

// initial begin
initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");
// end

`endif

endmodule
`endif

`ifndef __CKLNQ_H240__
`define __CKLNQ_H240__
module CKLNQ_H240 ( CP, E, TE, Q );
input CP;
input E;
input TE;
output Q;


`ifdef BEHAVIORAL

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

`elsif FPGA

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

`elsif SMIC_S28

CLKLANQV4_140P9T30UL u_dont_touch_cklnq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif S12_SMIC

CLKLANQV4_90S9T16UL u_dont_touch_cklnq ( .CK(CP), .TE(TE), .E(E), .Q(Q) );

`elsif T7_SNPS

HDBULT08_CKGTPLT_V5Y2_4 u_dont_touch_cklnq ( .CK(CP), .SE(TE), .EN(E), .Q(Q) );

`elsif TSMC_N7_H300

CKLNQD4BWP300H8P64PDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N7_H240

CKLNQD4BWP240H8P57PDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N6_H240

CKLNQD4BWP240H8P57CPDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N12_9T

CKLNQD4BWP16P90CPDULVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif TSMC_N28

CKLNQD4BWP12T30P140LVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );
//CKLNQD4BWP40P140LVT u_dont_touch_cklnq ( .CP(CP), .TE(TE), .E(E), .Q(Q) );

`elsif SL8_SNPS

HDBSLT20_CKGTPLT_V5_1 u_dont_touch_cklnq ( .Q(Q), .CK(CP), .EN(E), .SE(TE) );

`elsif SL5_SFDK

PREICG_D4_N_M7P5TSL_C60L08 u_dont_touch_cklnq ( .ECK(Q), .CK(CP), .E(E), .SE(TE) );

`else

reg clk_en_sync;
assign clk_en = E | TE;

always @( * )
    if(~CP)
        clk_en_sync <= clk_en;

assign Q = clk_en_sync & CP;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif


`ifndef __MUX2_H240__
`define __MUX2_H240__
module MUX2_H240 ( S, I0, I1, Z );
input S;
input I0;
input I1;
output Z;

`ifdef BEHAVIORAL

assign Z = S ? I1 : I0;

`elsif FPGA

assign Z = S ? I1 : I0;

`elsif SMIC_S28

MUX2V4_140P9T30UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif S12_SMIC

MUX2V4_90S9T16UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif T7_SNPS

HDBULT08_MUX2_1 u_dont_touch_mux2 ( .S(S), .D0(I0), .D1(I1), .X(Z) );

`elsif TSMC_N7_H300

MUX2D4BWP300H8P64PDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N7_H240

MUX2D4BWP240H8P57PDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N6_H240

MUX2D4BWP240H8P57CPDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N12_9T

MUX2D4BWP16P90CPDULVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N28

MUX2D4BWP12T30P140LVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
//MUX2D4BWP40P140LVT u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_MUX2_1 u_dont_touch_mux2 ( .X(Z), .D0(I0), .D1(I1), .S(S) );

`elsif SL5_SFDK

MXGL2_D4_N_M7P5TSL_C60L08 u_dont_touch_mux2 ( .Y(Z), .A(I0), .B(I1), .S0(S) );

`else

assign Z = S ? I1 : I0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif

`ifndef __CKMUX2_HS__
`define __CKMUX2_HS__
module CKMUX2_HS ( S, I0, I1, Z );
input S;
input I0;
input I1;
output Z;

wire I0_G, I1_G;
wire S_N;

`ifdef BEHAVIORAL

assign Z = S ? I1 : I0;

`elsif FPGA

// by xcliu 2026-05-26 | assign Z = S ? I1 : I0;
assign Z = I0;

`elsif SMIC_S28

CLKMUX2V4_140P9T30UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif S12_SMIC

CLKMUX2V4_90S9T16UL u_dont_touch_mux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif T7_SNPS

HDBULT08_MUX2_CK_2 u_dont_touch_ckmux2 ( .S(S), .CK0(I0), .CK1(I1), .X(Z) );

`elsif TSMC_N7_H300

CKMUX2D4BWP300H8P64PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N7_H240

CKMUX2D4BWP240H8P57PDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N6_H240

CKMUX2D4BWP240H8P57CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif TSMC_N12_9T

// CKMUX2D4BWP16P90CPDULVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
CKND4BWP16P90CPDULVT u_dont_touch_ckinv ( .I(S), .ZN(S_N) );
CKND2D4BWP16P90CPDULVT u_dont_touch_cKnd2_i0 ( .A1(I0), .A2(S_N), .ZN(I0_G));
CKND2D4BWP16P90CPDULVT u_dont_touch_cKnd2_i1 ( .A1(I1), .A2(S), .ZN(I1_G));
CKND2D4BWP16P90CPDULVT u_dont_touch_cknr2_i0 ( .A1(I0_G), .A2(I1_G), .ZN(Z));

`elsif TSMC_N28

CKMUX2D4BWP12T30P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );
//CKMUX2D4BWP40P140LVT u_dont_touch_ckmux2 ( .S(S), .I0(I0), .I1(I1), .Z(Z) );

`elsif SL8_SNPS

HDBSLT20_INV_SDC_4 u_dont_touch_ckinv ( .A(S), .X(S_N) );
HDBSLT20_ND2_MM_2 u_dont_touch_cKnd2_i0 ( .A1(I0), .A2(S_N), .X(I0_G));
HDBSLT20_ND2_MM_2 u_dont_touch_cKnd2_i1 ( .A1(I1), .A2(S), .X(I1_G));
HDBSLT20_ND2_MM_2 u_dont_touch_cknr2_i0 ( .A1(I0_G), .A2(I1_G), .X(Z));

//HDBSLT20_INV_CKSTHSDB_0P4 u_dont_touch_ckinv ( .CK(S), .X(S_N) );
//HDBSLT20_ND2_HSDB_2 u_dont_touch_cKnd2_i0 ( .A1(I0), .A2(S_N), .X(I0_G));
//HDBSLT20_ND2_HSDB_2 u_dont_touch_cKnd2_i1 ( .A1(I1), .A2(S), .X(I1_G));
//HDBSLT20_ND2_HSDB_2 u_dont_touch_cknr2_i0 ( .A1(I0_G), .A2(I1_G), .X(Z));

`elsif SL5_SFDK

CLKINV_D4_N_M7P5TSL_C60L08 u_dont_touch_ckinv ( .A(S), .Y(S_N) );
NAND2_D4_N_M7P5TSL_C60L08 u_dont_touch_cKnd2_i0 ( .A(I0), .B(S_N), .Y(I0_G));
NAND2_D4_N_M7P5TSL_C60L08 u_dont_touch_cKnd2_i1 ( .A(I1), .B(S), .Y(I1_G));
NAND2_D4_N_M7P5TSL_C60L08 u_dont_touch_cknr2_i0 ( .A(I0_G), .B(I1_G), .Y(Z));

`else

assign Z = S ? I1 : I0;

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule

`endif

`ifndef __CKND2_H240__
`define __CKND2_H240__
module CKND2_H240 ( A1, A2, ZN );
input A1;
input A2;
output ZN;

`ifdef BEHAVIORAL

assign ZN = ~(A1 & A2);

`elsif FPGA

assign ZN = ~(A1 & A2);

`elsif T7_SNPS

`ifdef SIM
wire ZN_pre;
reg ZN_reg;
HDBULT08_ND2_MM_2 u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .X(ZN_pre) );
always @(*)
    ZN_reg <= #5 ZN_pre;
assign ZN = ZN_reg;
`else
HDBULT08_ND2_MM_2 u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .X(ZN) );
`endif

`elsif SMIC_S28

CLKNAND2V4_140P9T30UL u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif S12_SMIC

CLKNAND2V4_90S9T16UL u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N7_H300

CKND2D4BWP300H8P64PDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N7_H240

CKND2D4BWP240H8P57PDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N6_H240

CKND2D4BWP240H8P57CPDULVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif TSMC_N12_9T

`elsif TSMC_N28

CKND2D4BWP12T30P140LVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );
//CKND2D4BWP40P140LVT u_dont_touch_cknd2 ( .A1(A1), .A2(A2), .ZN(ZN) );

`elsif SL8_SNPS

HDBSLT20_ND2_MM_2 u_dont_touch_pll2dig_clk_inst0 ( .A1(A1), .A2(A2), .X(ZN));

`elsif SL5_SFDK

NAND2_D4_N_M7P5TSL_C60L08 u_dont_touch_pll2dig_clk_inst0 ( .A(A1), .B(A2), .Y(ZN));

`else

assign ZN = ~(A1 & A2);

initial $display("FATAL: %s(%0d) @ %0t: %m [ %s ]", `__FILE__, `__LINE__, $realtime, "MACRO: BEHAVIORAL or PROCESS related TSMC_N12_9T  is not defined.");

`endif

endmodule
`endif
