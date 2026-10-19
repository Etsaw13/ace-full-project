// Verilog for library sideband_tx_v2 created by Liberate 19.2.0.100 on Mon Jul 14 15:38:17 CST 2025 for SDF version 2.1

// type:  
`timescale 1ns/10ps
`celldefine
module sideband_tx_v2 (loop_sbtxout, dout_sbtx, din_sbtx, en, en_loop, test, ana_test);
	output loop_sbtxout, dout_sbtx;
	input [6:0] test;
	input din_sbtx, en, en_loop;
	inout ana_test;

	// Function
    udp_mux2_m2 u0(dout_sbtx, 1'bz, din_sbtx, en);
    udp_mux2_m2 u1(loop_sbtxout, 1'bz, din_sbtx, en_loop);

	// Timing
	specify
		(din_sbtx => loop_sbtxout) = 0;
		(en_loop => loop_sbtxout) = 0;
		(din_sbtx => dout_sbtx) = 0;
		(en => dout_sbtx) = 0;
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
