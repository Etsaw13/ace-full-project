`ifndef SDPRAM_256x97_MODULE
`define SDPRAM_256x97_MODULE

`resetall
`timescale 10 ps/10 ps

module sdpram_256x97
    #(
    parameter DATA_WIDTH = 97,
    parameter ADDR_WIDTH = 8,
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

wire[8:0]   addr_a;
wire[8:0]   addr_b;
wire[127:0] rdata_i;

assign addr_a ={1'b0,wr_addr};
assign addr_b ={1'b0,rd_addr};
assign rd_dat = rdata_i[96:0];

dpsram_288x128m4m u_dpsram_288x128m4m
   (.RTSEL(2'b01),
    .WTSEL(2'b01),
    .PTSEL(2'b01),
    .AA(addr_a),
    .DA({{31{1'b0}},wr_dat[96:0]}),
    .WEBA(~wr_en),
    .CEBA(~wr_en),
    .CLK(clk),
    .AB(addr_b),
    .DB({128{1'b0}}),
    .WEBB(1'b1),
    .CEBB(~rd_en),
    .QA(),
    .QB(rdata_i)
  );


`endif

endmodule

`endif
