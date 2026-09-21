`timescale 1ns/1ps
`default_nettype none

module ace_delay_channel #(
  parameter int WIDTH = 1,
  parameter int CHANNEL = 0
) (
  input  wire                 clk,
  input  wire                 reset_n,
  input  wire                 replay_delay_active,
  input  wire                 retrain_link_active,
  input  wire [15:0]          delay_cycles,
  input  wire [9:0]           delay_channel_mask,
  input  wire                 s_valid,
  output logic                s_ready,
  input  wire [WIDTH-1:0]     s_payload,
  output logic                m_valid,
  input  wire                 m_ready,
  output logic [WIDTH-1:0]    m_payload,
  output logic                channel_delay_active
);
  logic pending, waiting;
  logic [WIDTH-1:0] payload_q;
  logic [15:0] delay_q;
  wire delay_requested = (replay_delay_active || retrain_link_active) &&
                         delay_channel_mask[CHANNEL];

  // Once a transfer enters the delay window, finish that window even if the
  // testbench drops the mode control.  The control selects a new transfer;
  // it must not shorten a delay already in progress.
  assign s_ready = !pending &&
                   (waiting ? (delay_q == 0) : !delay_requested);
  assign m_valid = pending && (delay_q == 0);
  assign m_payload = payload_q;
  assign channel_delay_active = waiting && (delay_q != 0);

  always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      pending   <= 1'b0;
      waiting   <= 1'b0;
      payload_q <= '0;
      delay_q   <= '0;
    end else begin
      if (!pending && !waiting && s_valid && delay_requested) begin
        waiting <= 1'b1;
        delay_q <= delay_cycles;
      end else if (waiting && (delay_q != 0)) begin
        delay_q <= delay_q - 1'b1;
      end else if (s_valid && s_ready) begin
        pending   <= 1'b1;
        payload_q <= s_payload;
        waiting   <= 1'b0;
        delay_q   <= '0;
      end else if (m_valid && m_ready) begin
        pending <= 1'b0;
      end
    end
  end
`ifndef __ICARUS__
  property p_source_stable_while_delayed;
    @(posedge clk) disable iff (!reset_n)
      s_valid && !s_ready |=> s_valid && $stable(s_payload);
  endproperty
  assert property (p_source_stable_while_delayed);
  property p_output_stable_while_blocked;
    @(posedge clk) disable iff (!reset_n)
      m_valid && !m_ready |=> m_valid && $stable(m_payload);
  endproperty
  assert property (p_output_stable_while_blocked);
`endif
endmodule

module ace_delay_pulse #(parameter int CHANNEL=0) (
  input wire clk, input wire reset_n,
  input wire replay_delay_active, input wire retrain_link_active,
  input wire [15:0] delay_cycles, input wire [9:0] delay_channel_mask,
  input wire pulse_in, output logic pulse_out,
  output logic active, output logic pending
);
  logic [15:0] cnt;
  wire selected=(replay_delay_active||retrain_link_active)&&delay_channel_mask[CHANNEL];
  always_ff @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin pending<=0; cnt<='0; pulse_out<=0; end
    else begin
      pulse_out<=0;
      if(pulse_in && !pending) begin
        if(selected && delay_cycles!=0) begin pending<=1; cnt<=delay_cycles; end
        else pulse_out<=1;
      end else if(pending && cnt>1) cnt<=cnt-1'b1;
      else if(pending) begin pending<=0; cnt<='0; pulse_out<=1; end
    end
  end
  assign active=pending;
endmodule

module ace_ucie_link_model #(
  parameter int AW_W = 1, W_W = 1, B_W = 1, AR_W = 1, R_W = 1,
  parameter int AC_W = 1, CR_W = 1, CD_W = 1
) (
  input wire clk, input wire reset_n,
  input wire replay_delay_active, input wire retrain_link_active,
  input wire [15:0] delay_cycles, input wire [9:0] delay_channel_mask,
  output wire [9:0] channel_delay_active,
  output wire [9:0] channel_pending,

  input wire s_awvalid, output wire s_awready, input wire [AW_W-1:0] s_aw,
  output wire m_awvalid, input wire m_awready, output wire [AW_W-1:0] m_aw,
  input wire s_wvalid, output wire s_wready, input wire [W_W-1:0] s_w,
  output wire m_wvalid, input wire m_wready, output wire [W_W-1:0] m_w,
  input wire s_bvalid, output wire s_bready, input wire [B_W-1:0] s_b,
  output wire m_bvalid, input wire m_bready, output wire [B_W-1:0] m_b,
  input wire s_arvalid, output wire s_arready, input wire [AR_W-1:0] s_ar,
  output wire m_arvalid, input wire m_arready, output wire [AR_W-1:0] m_ar,
  input wire s_rvalid, output wire s_rready, input wire [R_W-1:0] s_r,
  output wire m_rvalid, input wire m_rready, output wire [R_W-1:0] m_r,
  input wire s_acvalid, output wire s_acready, input wire [AC_W-1:0] s_ac,
  output wire m_acvalid, input wire m_acready, output wire [AC_W-1:0] m_ac,
  input wire s_crvalid, output wire s_crready, input wire [CR_W-1:0] s_cr,
  output wire m_crvalid, input wire m_crready, output wire [CR_W-1:0] m_cr,
  input wire s_cdvalid, output wire s_cdready, input wire [CD_W-1:0] s_cd,
  output wire m_cdvalid, input wire m_cdready, output wire [CD_W-1:0] m_cd,
  input wire s_rack, output wire m_rack,
  input wire s_wack, output wire m_wack
);
  wire rack_pending, wack_pending;

  ace_delay_channel #(AW_W,0) u_aw(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_awvalid,s_awready,s_aw,m_awvalid,m_awready,m_aw,channel_delay_active[0]);
  ace_delay_channel #(W_W,1)  u_w (clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_wvalid,s_wready,s_w,m_wvalid,m_wready,m_w,channel_delay_active[1]);
  ace_delay_channel #(B_W,2)  u_b (clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_bvalid,s_bready,s_b,m_bvalid,m_bready,m_b,channel_delay_active[2]);
  ace_delay_channel #(AR_W,3) u_ar(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_arvalid,s_arready,s_ar,m_arvalid,m_arready,m_ar,channel_delay_active[3]);
  ace_delay_channel #(R_W,4)  u_r (clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_rvalid,s_rready,s_r,m_rvalid,m_rready,m_r,channel_delay_active[4]);
  ace_delay_channel #(AC_W,5) u_ac(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_acvalid,s_acready,s_ac,m_acvalid,m_acready,m_ac,channel_delay_active[5]);
  ace_delay_channel #(CR_W,6) u_cr(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_crvalid,s_crready,s_cr,m_crvalid,m_crready,m_cr,channel_delay_active[6]);
  ace_delay_channel #(CD_W,7) u_cd(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_cdvalid,s_cdready,s_cd,m_cdvalid,m_cdready,m_cd,channel_delay_active[7]);
  ace_delay_pulse #(8) u_rack(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_rack,m_rack,channel_delay_active[8],rack_pending);
  ace_delay_pulse #(9) u_wack(clk,reset_n,replay_delay_active,retrain_link_active,delay_cycles,delay_channel_mask,s_wack,m_wack,channel_delay_active[9],wack_pending);
  assign channel_pending = {wack_pending,rack_pending,
                            u_cd.pending|u_cd.waiting,u_cr.pending|u_cr.waiting,
                            u_ac.pending|u_ac.waiting,u_r.pending|u_r.waiting,
                            u_ar.pending|u_ar.waiting,u_b.pending|u_b.waiting,
                            u_w.pending|u_w.waiting,u_aw.pending|u_aw.waiting};

`ifndef __ICARUS__
  property p_delay_controls_mutex;
    @(posedge clk) disable iff (!reset_n)
      !(replay_delay_active && retrain_link_active);
  endproperty
  assert property (p_delay_controls_mutex);
`endif
endmodule

`default_nettype wire
