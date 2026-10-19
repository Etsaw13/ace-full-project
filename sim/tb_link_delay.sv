`timescale 1ns/1ps
module tb_link_delay;
  logic clk=0, reset_n=0;
  always #5 clk=~clk;
  logic replay, retrain, s_valid, m_ready;
  logic [15:0] cycles;
  logic [9:0] mask;
  logic s_ready, m_valid, active;
  logic [7:0] s_payload, m_payload;
  ace_delay_channel #(.WIDTH(8),.CHANNEL(0)) dut(
    .clk,.reset_n,.replay_delay_active(replay),.retrain_link_active(retrain),
    .delay_cycles(cycles),.delay_channel_mask(mask),.s_valid,.s_ready,
    .s_payload,.m_valid,.m_ready,.m_payload,.channel_delay_active(active));
  initial begin
    replay=0; retrain=0; cycles=3; mask=10'b1; s_valid=0; m_ready=1; s_payload=0;
    repeat(2) @(posedge clk); reset_n=1;
    @(negedge clk); replay=1; s_payload=8'hA5; s_valid=1;
    repeat(3) begin @(posedge clk); if (s_ready || m_valid) $fatal(1,"early delivery"); end
    wait(s_ready); @(posedge clk); @(negedge clk); s_valid=0;
    wait(m_valid); if(m_payload!==8'hA5) $fatal(1,"payload mismatch");
    @(posedge clk); replay=0;
    $display("LINK_DELAY_TEST_PASS"); $finish;
  end
endmodule
