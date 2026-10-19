// Verilog for library sideband_rx_v2 created by Liberate 19.2.0.100 on Mon Jul 14 15:35:02 CST 2025 for SDF version 2.1

// type:  
`timescale 1ns/1ps
`celldefine
module sideband_rx_v2 (dout_sbrx, din_sbrx, en, ctrl_rt, en_loop, loop_rxin, delaycode, test, ana_test);
    output dout_sbrx;
    input [3:0] ctrl_rt;
    input [3:0] delaycode;
    input [8:0] test;
    input din_sbrx, en, en_loop, loop_rxin;
    inout ana_test;

    // Function
    `ifdef BEHAVIORAL
        localparam  DLY_UNIT = 0.024; //ns
        reg     din_sbrx_dly;
    
        always @(*) begin
            case(delaycode) //gray code
                4'h0: din_sbrx_dly <= #(DLY_UNIT*0) din_sbrx;
                4'h1: din_sbrx_dly <= #(DLY_UNIT*1) din_sbrx;
                4'h3: din_sbrx_dly <= #(DLY_UNIT*2) din_sbrx;
                4'h2: din_sbrx_dly <= #(DLY_UNIT*3) din_sbrx;
                4'h6: din_sbrx_dly <= #(DLY_UNIT*4) din_sbrx;
                4'h7: din_sbrx_dly <= #(DLY_UNIT*5) din_sbrx;
                4'h5: din_sbrx_dly <= #(DLY_UNIT*6) din_sbrx;
                4'h4: din_sbrx_dly <= #(DLY_UNIT*7) din_sbrx;
                4'hc: din_sbrx_dly <= #(DLY_UNIT*8) din_sbrx;
                4'hd: din_sbrx_dly <= #(DLY_UNIT*9) din_sbrx;
                4'hf: din_sbrx_dly <= #(DLY_UNIT*10) din_sbrx;
                4'he: din_sbrx_dly <= #(DLY_UNIT*11) din_sbrx;
                4'ha: din_sbrx_dly <= #(DLY_UNIT*12) din_sbrx;
                4'hb: din_sbrx_dly <= #(DLY_UNIT*13) din_sbrx;
                4'h9: din_sbrx_dly <= #(DLY_UNIT*14) din_sbrx;
                4'h8: din_sbrx_dly <= #(DLY_UNIT*15) din_sbrx;
            endcase
        end
    `else
        wire    din_sbrx_dly;
        assign  din_sbrx_dly = din_sbrx;
    `endif

    wire mux1;
    udp_mux2_m2 u0(mux1, 1'b0, din_sbrx_dly, en);
    udp_mux2_m2 u1(dout_sbrx, mux1, loop_rxin, en_loop);

    // Timing
    specify
        (din_sbrx => dout_sbrx) = 0;
        (en => dout_sbrx) = 0;
        (posedge en_loop => (dout_sbrx:en_loop)) = 0;
        (negedge en_loop => (dout_sbrx:en_loop)) = 0;
        (loop_rxin => dout_sbrx) = 0;
    endspecify
endmodule
`endcelldefine

`ifdef _udp_def_mux2_m2_
`else
`define _udp_def_mux2_m2_
primitive udp_mux2_m2 (out, in0, in1, sel);
   output out;  
   input  in0, in1, sel;

   table

// in0 in1  sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive
`endif
