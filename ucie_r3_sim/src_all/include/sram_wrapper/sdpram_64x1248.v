`ifndef SDPRAM_64X1248_MODULE
`define SDPRAM_64X1248_MODULE

`resetall
`timescale 10 ps/10 ps

module sdpram_64x1248
    #(
    parameter DATA_WIDTH = 1248,
    parameter ADDR_WIDTH = 6,
    parameter FIFO_DEPTH = (1 << ADDR_WIDTH),
    parameter FULL_WR_EN = 0,
    parameter DELAY = 0
    )
    (
    input                       clk,
    input                       rst_n,
    input                       wr_en,
    input   [ADDR_WIDTH-1:0]    wr_addr,
    input   [DATA_WIDTH-1:0]    wr_dat,
    input                       rd_en,
    input   [ADDR_WIDTH-1:0]    rd_addr,
    output  [DATA_WIDTH-1:0]    rd_dat,
//-----------------------------------------
`ifdef SL8_SNPS
    input                       s8_sasr_test1a,
    input                       s8_sasr_test_rnma,
    input   [3:0]               s8_sasr_rma,
    input                       s8_sasr_wmda,
    input                       s8_sasr_test1b,
    input   [3:0]               s8_sasr_rmb,
`endif
    input               scan_mode
    );

wire                            wr_en_tmp;
wire                            rd_en_tmp;
wire    [ADDR_WIDTH-1:0]        wr_pointer;
wire    [ADDR_WIDTH-1:0]        rd_pointer_nxt;
wire    [DATA_WIDTH-1:0]        data_in;
wire    [DATA_WIDTH-1:0]        data_q;

assign wr_en_tmp = wr_en;
assign rd_en_tmp = rd_en;
assign wr_pointer = wr_addr;
assign rd_pointer_nxt = rd_addr;
assign data_in = wr_dat;
assign rd_dat = data_q;

`ifdef BEHAVIORAL
reg     [DATA_WIDTH-1:0]      fifo_reg [FIFO_DEPTH-1:0];
reg     [DATA_WIDTH-1:0]      data_q_reg;

integer i;

always @(posedge clk or negedge rst_n) begin
if(~rst_n)
    begin
        for(i=0;i<=FIFO_DEPTH-1;i=i+1)
            begin
                fifo_reg[i] <= #DELAY {DATA_WIDTH{1'b0}};
            end
    end
else if ((!FULL_WR_EN) & wr_en)
    fifo_reg[wr_addr] <= #DELAY wr_dat;
end

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        data_q_reg <= {DATA_WIDTH{1'b0}};
    else if(rd_en)
        data_q_reg <= fifo_reg[rd_addr];

assign data_q = data_q_reg;

`else

genvar      j;

wire[63:0] wdata_i[0:18];
wire[63:0] dato_i0[0:18];
wire[63:0] dato_i1;

assign wdata_i[0]  = wr_dat[63:0];
assign wdata_i[1]  = wr_dat[127:64];
assign wdata_i[2]  = wr_dat[191:128];
assign wdata_i[3]  = wr_dat[255:192];
assign wdata_i[4]  = wr_dat[319:256];
assign wdata_i[5]  = wr_dat[383:320];
assign wdata_i[6]  = wr_dat[447:384];
assign wdata_i[7]  = wr_dat[511:448];
assign wdata_i[8]  = wr_dat[575:512];
assign wdata_i[9]  = wr_dat[639:576];
assign wdata_i[10] = wr_dat[703:640];
assign wdata_i[11] = wr_dat[767:704];
assign wdata_i[12] = wr_dat[831:768];
assign wdata_i[13] = wr_dat[895:832];
assign wdata_i[14] = wr_dat[959:896];
assign wdata_i[15] = wr_dat[1023:960];
assign wdata_i[16] = wr_dat[1087:1024];
assign wdata_i[17] = wr_dat[1151:1088];
assign wdata_i[18] = wr_dat[1215:1152];

assign  rd_dat[63:0]      =   dato_i0[0]; 
assign  rd_dat[127:64]    =   dato_i0[1]; 
assign  rd_dat[191:128]   =   dato_i0[2]; 
assign  rd_dat[255:192]   =   dato_i0[3]; 
assign  rd_dat[319:256]   =   dato_i0[4]; 
assign  rd_dat[383:320]   =   dato_i0[5]; 
assign  rd_dat[447:384]   =   dato_i0[6]; 
assign  rd_dat[511:448]   =   dato_i0[7]; 
assign  rd_dat[575:512]   =   dato_i0[8]; 
assign  rd_dat[639:576]   =   dato_i0[9]; 
assign  rd_dat[703:640]   =   dato_i0[10];
assign  rd_dat[767:704]   =   dato_i0[11];
assign  rd_dat[831:768]   =   dato_i0[12];
assign  rd_dat[895:832]   =   dato_i0[13];
assign  rd_dat[959:896]   =   dato_i0[14];
assign  rd_dat[1023:960]  =   dato_i0[15];
assign  rd_dat[1087:1024] =   dato_i0[16];
assign  rd_dat[1151:1088] =   dato_i0[17];
assign  rd_dat[1215:1152] =   dato_i0[18];
assign  rd_dat[1247:1216] =   dato_i1[31:0];

generate
   for(j=0;j<=18;j=j+1) begin : dp_gen

DP_64X64 u0_DP_64X64 (
    .SLP(1'b0),
    .SD(1'b0),
    .WTSEL(2'b01),
    .RTSEL(2'b01),
    .VG(1'b1),
    .VS(1'b1),
    .AA(wr_addr),
    .DA(wdata_i[j]),
    .BWEBA({64{1'b0}}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLKA(clk),
    .AB(rd_addr),
    .DB({64{1'b0}}),
    .BWEBB({64{1'b0}}),
    .WEBB(1'b1),
    .CEBB(~rd_en),
    .CLKB(clk),
    .AWT(1'b0),
    .AMA({6{1'b0}}),
    .DMA({64{1'b0}}),
    .BWEBMA({64{1'b0}}),
    .WEBMA(1'b1),
    .CEBMA(1'b1),
    .AMB({6{1'b0}}),
    .DMB({64{1'b0}}),
    .BWEBMB({64{1'b0}}),
    .WEBMB(1'b1),
    .CEBMB(1'b1),
    .BIST(1'b0),
    .CLKM(1'b0),
    .QA(),
    .QB(dato_i0[j])
  );
end
endgenerate

DP_64X64 u1_DP_64X64 (
    .SLP(1'b0),
    .SD(1'b0),
    .WTSEL(2'b01),
    .RTSEL(2'b01),
    .VG(1'b1),
    .VS(1'b1),
    .AA(wr_addr),
    .DA({{32{1'b0}},wr_dat[1247:1216]}),
    .BWEBA({64{1'b0}}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLKA(clk),
    .AB(rd_addr),
    .DB({64{1'b0}}),
    .BWEBB({64{1'b0}}),
    .WEBB(1'b1),
    .CEBB(~rd_en),
    .CLKB(clk),
    .AWT(1'b0),
    .AMA({6{1'b0}}),
    .DMA({64{1'b0}}),
    .BWEBMA({64{1'b0}}),
    .WEBMA(1'b1),
    .CEBMA(1'b1),
    .AMB({6{1'b0}}),
    .DMB({64{1'b0}}),
    .BWEBMB({64{1'b0}}),
    .WEBMB(1'b1),
    .CEBMB(1'b1),
    .BIST(1'b0),
    .CLKM(1'b0),
    .QA(),
    .QB(dato_i1)
  );

`endif

endmodule

`endif
