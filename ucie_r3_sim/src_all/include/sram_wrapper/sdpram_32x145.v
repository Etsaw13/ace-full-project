`ifndef SDPRAM_32X145_MODULE
`define SDPRAM_32X145_MODULE

`resetall
`timescale 10 ps/10 ps

module sdpram_32x145
    #(
    parameter DATA_WIDTH = 145,
    parameter ADDR_WIDTH = 5,
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
    input                       scan_mode
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
reg     [DATA_WIDTH-1:0]      fifo_reg [FIFO_DEPTH:0];
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
wire[5:0]  wr_addr_i;
wire[5:0]  rd_addr_i;
wire[63:0] dato_i0;
wire[63:0] dato_i1;
wire[63:0] dato_i2;

assign wr_addr_i = {1'b0,wr_addr};
assign rd_addr_i = {1'b0,rd_addr};
assign rd_dat={dato_i2[16:0],dato_i1,dato_i0};

DP_64X64 u0_DP_64X64 (
    .SLP(1'b0),
    .SD(1'b0),
    .WTSEL(2'b01),
    .RTSEL(2'b01),
    .VG(1'b1),
    .VS(1'b1),
    .AA(wr_addr_i),
    .DA(wr_dat[63:0]),
    .BWEBA({64{1'b0}}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLKA(clk),
    .AB(rd_addr_i),
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
    .QB(dato_i0)
  );

DP_64X64 u1_DP_64X64 (
    .SLP(1'b0),
    .SD(1'b0),
    .WTSEL(2'b01),
    .RTSEL(2'b01),
    .VG(1'b1),
    .VS(1'b1),
    .AA(wr_addr_i),
    .DA(wr_dat[127:64]),
    .BWEBA({64{1'b0}}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLKA(clk),
    .AB(rd_addr_i),
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

DP_64X64 u2_DP_64X64 (
    .SLP(1'b0),
    .SD(1'b0),
    .WTSEL(2'b01),
    .RTSEL(2'b01),
    .VG(1'b1),
    .VS(1'b1),
    .AA(wr_addr_i),
    .DA({{47{1'b0}},wr_dat[144:128]}),
    .BWEBA({64{1'b0}}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLKA(clk),
    .AB(rd_addr_i),
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
    .QB(dato_i2)
  );


`endif

endmodule

`endif
