//=======================================================================
// Copyright 2022@M2SEMI Technologies, Inc.
// Created by       : xcliu
// Filename         : rom_4096x64.v
// Created On       : 2022-10-31 17:31
// Last Modified    : 
// Description      : 
//                    
//=======================================================================
`timescale 1ns/1ps    
                      
module  rom_4096x64 (
    input               clk ,
    input   [11:0]      addr,
    input               ce,     // chip enable or read enable, active-high
    output  [63:0]      rdata,
//------------------------------------------------
`ifdef SL8_SNPS
    input               s8_asdv_test1,
    input   [3:0]       s8_asdv_rm,
`endif
    input               scan_mode

);

`ifdef BEHAVIORAL
    parameter   rom_init_file = "../src_all/rom_dat/TS3N28HPCPA4096X64M16MBS.rom.v";
    
    reg     [63:0]      rom_array[0:4095];
    reg     [63:0]      rdata_buf;

    assign  rdata   =   rdata_buf;

    always @(posedge clk) begin
        if(ce)
            rdata_buf   <= rom_array[addr];
    end 

    `ifndef EMUL
    initial begin
        #(0.05) $readmemh(rom_init_file, rom_array, 0, 4095);
    end
    `endif
`else

rom_4096x64m8m u_rom_4096x64m8m (
    .A(addr), 
    .AM(12'h0),
    .CEBM(1'b1),
    .BIST(1'b0),
    .CEB(~ce),
    .CLK(clk), 
    .SLP(1'b0),
    .RTSEL(2'b01),
    .PTSEL(2'b01),
    .TRB(2'b01),
    .Q(rdata)
);

`endif

endmodule
