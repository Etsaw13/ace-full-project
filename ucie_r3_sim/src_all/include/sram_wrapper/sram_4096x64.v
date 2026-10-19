//=======================================================================
// Copyright 2022@M2SEMI Technologies, Inc.
// Created by       : xcliu
// Filename         : sram_32x8192.v
// Created On       : 2022-10-31 17:26
// Last Modified    : 
// Description      : 
//                    
//=======================================================================
`timescale 1ns/1ps    
                      
module  sram_4096x64 (
    input               clk,
    input   [11:0]      addr,
    input               ce,         // chip enable, active-high
    input               we,         // write enable, active-high
    input   [63:0]      be,         // bit enable in write mode, active-high
    input   [63:0]      wdata,  
    output  [63:0]      rdata,      // read data, latency 1
//------------------------------------------------
`ifdef SL8_SNPS
    input               s8_sads_test1,
    input               s8_sads_test_rnm,
    input   [2:0]       s8_sads_rm,
    input               s8_sads_wmd,
    input   [1:0]       s8_sads_ra,
    input   [1:0]       s8_sads_wpulse,
`endif
    input               scan_mode  
);

`ifdef BEHAVIORAL
    reg     [63:0]      mem_array[0:4095];
    reg     [63:0]      rdata_buf;

    assign  rdata   =   rdata_buf;

    always @(posedge clk) begin
        if(ce & ~we)
            rdata_buf       <= mem_array[addr];
        else if(ce & we)
            mem_array[addr] <= (mem_array[addr] & ~be) | (wdata & be);
    end 

    `ifndef EMUL
    //  Randomize all memory content
    task randomMemoryAll;
        integer i;
        begin
            for (i = 0; i < 4096; i = i + 1)
                mem_array[i] <= #0.005 {2{$random}};
        end
    endtask
    
    initial begin
        #(0.01);
        randomMemoryAll;
    end
    `endif

`else

wire [71:0] bweb;
wire [63:0] be_n;
wire[71:0]  rdata_i;

assign be_n = ~be;
assign bweb = {{8{1'b1}},be_n};
assign rdata = rdata_i[63:0];

sram_sp_4096x72 u_sram_sp_4096x72(
            .SLP(1'b0),
            .SD(1'b0),
            .CLK(clk),
            .CEB(~ce),
            .WEB(~we),
            .CEBM(1'b1),
            .WEBM(1'b1),
            .A(addr),
            .D({{8{1'b0}},wdata}),
            .BWEB(bweb),
            .AM({12{1'b0}}),
            .DM({72{1'b0}}),
            .BWEBM({72{1'b1}}),
            .BIST(1'b0),
            .Q(rdata_i)
);

`endif

endmodule
