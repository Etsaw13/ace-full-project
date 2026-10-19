// Verilog for library n28_dline_coarse_4b_gray_ccs created by Liberate 19.2.0.100 on Tue Aug 18 12:16:56 CST 2026 for SDF version 3.0

// type:  
`timescale 1ns/1ps
`celldefine
module dline_coarse_4b_gray (out, code, in);
	output out;
	input [3:0] code;
	input in;

	// Function
	buf (out, in);

	// Timing
	specify
		if (code[0]&&code[1]&&code[2]&&code[3])
			(in => out) = 0;
		if (code[0]&&code[1]&&code[2]&&!code[3])
			(in => out) = 0;
		if (code[0]&&code[1]&&!code[2]&&code[3])
			(in => out) = 0;
		if (code[0]&&code[1]&&!code[2]&&!code[3])
			(in => out) = 0;
		if (code[0]&&!code[1]&&code[2]&&code[3])
			(in => out) = 0;
		if (code[0]&&!code[1]&&code[2]&&!code[3])
			(in => out) = 0;
		if (code[0]&&!code[1]&&!code[2]&&code[3])
			(in => out) = 0;
		if (code[0]&&!code[1]&&!code[2]&&!code[3])
			(in => out) = 0;
		if (!code[0]&&code[1]&&code[2]&&code[3])
			(in => out) = 0;
		if (!code[0]&&code[1]&&code[2]&&!code[3])
			(in => out) = 0;
		if (!code[0]&&code[1]&&!code[2]&&code[3])
			(in => out) = 0;
		if (!code[0]&&code[1]&&!code[2]&&!code[3])
			(in => out) = 0;
		if (!code[0]&&!code[1]&&code[2]&&code[3])
			(in => out) = 0;
		if (!code[0]&&!code[1]&&code[2]&&!code[3])
			(in => out) = 0;
		if (!code[0]&&!code[1]&&!code[2]&&code[3])
			(in => out) = 0;
		if (!code[0]&&!code[1]&&!code[2]&&!code[3])
			(in => out) = 0;
	endspecify
endmodule
`endcelldefine
