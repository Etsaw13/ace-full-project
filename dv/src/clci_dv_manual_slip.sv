// ----------------------------------------------------------
// (c) 2026 M2 Semiconductor, Inc. All rights reserved.
// ----------------------------------------------------------
// The confidential and proprietary information contained in this file may only be used by a person
// authorised under and to the extent permitted by a subsisting licensing agreement from M2 Semiconductor.
// 
// This entire notice must be reproduced on all copies of this file and copies of this file may only be made by a person
// if such person is permitted to do so under the terms of a subsisting license agreement from M2 Semiconductor.
// 
// Modification of this file is not permitted for any one and any case.
// 
// M2 Semiconductor has no responsibility for any problem caused by unpermitted modification of this file.
// **************************************************************************
//------------------------------------------------------------
// This file is generated with script. DO NOT edit without prior permission
//------------------------------------------------------------
//
module clci_dv_manual_slip(
    input bit_lock_bypass,
    input rx_lock1_fh_cnt_equal2,
    input diff_mode,
    input                              in_bit_lock_state,
    input                              reset_n,
    input                              pmd_20_clk,
    input        [4:0]                 slip_cnt,
    input        [4:0]                 ch_idx,
    //output       [4:0]                 slip_cnt_o,
    input        string                slip_cnt_hier,
    input        [19:0]                rx_data_div20
);
    import uvm_pkg::*;
    bit [31:0]  gap_cnt[20];
    bit [31:0]  gap_cnt_reg[20];
    bit [7:0]   success_cnt[20];
    bit [7:0]   slip_cnt_tmp[20];
    int                            max_slip_num;
    bit [4:0]   slip_num;
    reg [19:0]                     rx_data_div20_1;
    wire [19:0][19:0]               rx_data_div20_join;


    covergroup slip_num_cg with function sample(bit[4:0] slip_num); //for pcs_slip cnt coverage
        slip_num_range: coverpoint (slip_num) {
            bins slip_num_0    =   {0};
            bins slip_num_1    =   {1};
            bins slip_num_2    =   {2};
            bins slip_num_3_4  =   {[3:4]};
            bins slip_num_5_8  =   {[5:8]};
            bins slip_num_9_19 =   {[9:19]};
            bins reserved      = default;
        }
        option.per_instance = 1;
    endgroup:slip_num_cg

    slip_num_cg sli_num_cov;

    initial begin
        sli_num_cov = new();
        if (! $value$plusargs("max_slip_num=%d", max_slip_num)) max_slip_num=0;


        #1ns;
        slip_num = $urandom_range(0,max_slip_num);
        sli_num_cov.sample(slip_num);
        `info("clci_dv_manual_slip", $sformatf("max_slip_num is %0d, slip_num is %0d", max_slip_num, slip_num))
    end
    always @(posedge pmd_20_clk) begin
        rx_data_div20_1    <= rx_data_div20;
    end

    genvar gen_j;
    generate 
        for (gen_j=0; gen_j<20; gen_j++) begin 
            if (gen_j == 0)
                assign rx_data_div20_join[gen_j] = rx_data_div20_1[19-gen_j:gen_j];
            else
                assign rx_data_div20_join[gen_j] = {rx_data_div20[gen_j-1:0],rx_data_div20_1[19:gen_j]};
        end
    endgenerate

    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[0] <= 0;
        gap_cnt[0] <= 0;
        gap_cnt_reg[0] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[0] == 'hf5a5a)begin
                    if (gap_cnt[0] >= gap_cnt_reg[0]-1 && gap_cnt[0] <= gap_cnt_reg[0]+1)
                        success_cnt[0] <= (success_cnt[0] == 'hff) ? success_cnt[0] : success_cnt[0] + 1;
                    else
                        success_cnt[0] <= 0;
                    if (success_cnt[0] == 3) begin
                        if(slip_cnt != 0)
                        begin //for slip
                            slip_cnt_tmp[0] = 0;
                            slip_cnt_tmp[0] = 0 + 20 - slip_num;
                            if(slip_cnt_tmp[0] >= 20) slip_cnt_tmp[0] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[0][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[0][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[0][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[0][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[0][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[0][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[0]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[0];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 0)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 0", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[0] <= gap_cnt[0];
                    gap_cnt[0] <= 0;
                end else begin
                    gap_cnt[0] <= gap_cnt[0] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[1] <= 0;
        gap_cnt[1] <= 0;
        gap_cnt_reg[1] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[1] == 'hf5a5a)begin
                    if (gap_cnt[1] >= gap_cnt_reg[1]-1 && gap_cnt[1] <= gap_cnt_reg[1]+1)
                        success_cnt[1] <= (success_cnt[1] == 'hff) ? success_cnt[1] : success_cnt[1] + 1;
                    else
                        success_cnt[1] <= 0;
                    if (success_cnt[1] == 3) begin
                        if(slip_cnt != 1)
                        begin //for slip
                            slip_cnt_tmp[1] = 0;
                            slip_cnt_tmp[1] = 1 + 20 - slip_num;
                            if(slip_cnt_tmp[1] >= 20) slip_cnt_tmp[1] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[1][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[1][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[1][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[1][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[1][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[1][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[1]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[1];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 1)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 1", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[1] <= gap_cnt[1];
                    gap_cnt[1] <= 0;
                end else begin
                    gap_cnt[1] <= gap_cnt[1] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[2] <= 0;
        gap_cnt[2] <= 0;
        gap_cnt_reg[2] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[2] == 'hf5a5a)begin
                    if (gap_cnt[2] >= gap_cnt_reg[2]-1 && gap_cnt[2] <= gap_cnt_reg[2]+1)
                        success_cnt[2] <= (success_cnt[2] == 'hff) ? success_cnt[2] : success_cnt[2] + 1;
                    else
                        success_cnt[2] <= 0;
                    if (success_cnt[2] == 3) begin
                        if(slip_cnt != 2)
                        begin //for slip
                            slip_cnt_tmp[2] = 0;
                            slip_cnt_tmp[2] = 2 + 20 - slip_num;
                            if(slip_cnt_tmp[2] >= 20) slip_cnt_tmp[2] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[2][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[2][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[2][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[2][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[2][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[2][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[2]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[2];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 2)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 2", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[2] <= gap_cnt[2];
                    gap_cnt[2] <= 0;
                end else begin
                    gap_cnt[2] <= gap_cnt[2] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[3] <= 0;
        gap_cnt[3] <= 0;
        gap_cnt_reg[3] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[3] == 'hf5a5a)begin
                    if (gap_cnt[3] >= gap_cnt_reg[3]-1 && gap_cnt[3] <= gap_cnt_reg[3]+1)
                        success_cnt[3] <= (success_cnt[3] == 'hff) ? success_cnt[3] : success_cnt[3] + 1;
                    else
                        success_cnt[3] <= 0;
                    if (success_cnt[3] == 3) begin
                        if(slip_cnt != 3)
                        begin //for slip
                            slip_cnt_tmp[3] = 0;
                            slip_cnt_tmp[3] = 3 + 20 - slip_num;
                            if(slip_cnt_tmp[3] >= 20) slip_cnt_tmp[3] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[3][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[3][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[3][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[3][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[3][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[3][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[3]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[3];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 3)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 3", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[3] <= gap_cnt[3];
                    gap_cnt[3] <= 0;
                end else begin
                    gap_cnt[3] <= gap_cnt[3] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[4] <= 0;
        gap_cnt[4] <= 0;
        gap_cnt_reg[4] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[4] == 'hf5a5a)begin
                    if (gap_cnt[4] >= gap_cnt_reg[4]-1 && gap_cnt[4] <= gap_cnt_reg[4]+1)
                        success_cnt[4] <= (success_cnt[4] == 'hff) ? success_cnt[4] : success_cnt[4] + 1;
                    else
                        success_cnt[4] <= 0;
                    if (success_cnt[4] == 3) begin
                        if(slip_cnt != 4)
                        begin //for slip
                            slip_cnt_tmp[4] = 0;
                            slip_cnt_tmp[4] = 4 + 20 - slip_num;
                            if(slip_cnt_tmp[4] >= 20) slip_cnt_tmp[4] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[4][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[4][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[4][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[4][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[4][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[4][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[4]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[4];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 4)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 4", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[4] <= gap_cnt[4];
                    gap_cnt[4] <= 0;
                end else begin
                    gap_cnt[4] <= gap_cnt[4] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[5] <= 0;
        gap_cnt[5] <= 0;
        gap_cnt_reg[5] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[5] == 'hf5a5a)begin
                    if (gap_cnt[5] >= gap_cnt_reg[5]-1 && gap_cnt[5] <= gap_cnt_reg[5]+1)
                        success_cnt[5] <= (success_cnt[5] == 'hff) ? success_cnt[5] : success_cnt[5] + 1;
                    else
                        success_cnt[5] <= 0;
                    if (success_cnt[5] == 3) begin
                        if(slip_cnt != 5)
                        begin //for slip
                            slip_cnt_tmp[5] = 0;
                            slip_cnt_tmp[5] = 5 + 20 - slip_num;
                            if(slip_cnt_tmp[5] >= 20) slip_cnt_tmp[5] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[5][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[5][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[5][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[5][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[5][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[5][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[5]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[5];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 5)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 5", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[5] <= gap_cnt[5];
                    gap_cnt[5] <= 0;
                end else begin
                    gap_cnt[5] <= gap_cnt[5] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[6] <= 0;
        gap_cnt[6] <= 0;
        gap_cnt_reg[6] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[6] == 'hf5a5a)begin
                    if (gap_cnt[6] >= gap_cnt_reg[6]-1 && gap_cnt[6] <= gap_cnt_reg[6]+1)
                        success_cnt[6] <= (success_cnt[6] == 'hff) ? success_cnt[6] : success_cnt[6] + 1;
                    else
                        success_cnt[6] <= 0;
                    if (success_cnt[6] == 3) begin
                        if(slip_cnt != 6)
                        begin //for slip
                            slip_cnt_tmp[6] = 0;
                            slip_cnt_tmp[6] = 6 + 20 - slip_num;
                            if(slip_cnt_tmp[6] >= 20) slip_cnt_tmp[6] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[6][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[6][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[6][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[6][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[6][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[6][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[6]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[6];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 6)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 6", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[6] <= gap_cnt[6];
                    gap_cnt[6] <= 0;
                end else begin
                    gap_cnt[6] <= gap_cnt[6] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[7] <= 0;
        gap_cnt[7] <= 0;
        gap_cnt_reg[7] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[7] == 'hf5a5a)begin
                    if (gap_cnt[7] >= gap_cnt_reg[7]-1 && gap_cnt[7] <= gap_cnt_reg[7]+1)
                        success_cnt[7] <= (success_cnt[7] == 'hff) ? success_cnt[7] : success_cnt[7] + 1;
                    else
                        success_cnt[7] <= 0;
                    if (success_cnt[7] == 3) begin
                        if(slip_cnt != 7)
                        begin //for slip
                            slip_cnt_tmp[7] = 0;
                            slip_cnt_tmp[7] = 7 + 20 - slip_num;
                            if(slip_cnt_tmp[7] >= 20) slip_cnt_tmp[7] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[7][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[7][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[7][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[7][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[7][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[7][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[7]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[7];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 7)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 7", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[7] <= gap_cnt[7];
                    gap_cnt[7] <= 0;
                end else begin
                    gap_cnt[7] <= gap_cnt[7] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[8] <= 0;
        gap_cnt[8] <= 0;
        gap_cnt_reg[8] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[8] == 'hf5a5a)begin
                    if (gap_cnt[8] >= gap_cnt_reg[8]-1 && gap_cnt[8] <= gap_cnt_reg[8]+1)
                        success_cnt[8] <= (success_cnt[8] == 'hff) ? success_cnt[8] : success_cnt[8] + 1;
                    else
                        success_cnt[8] <= 0;
                    if (success_cnt[8] == 3) begin
                        if(slip_cnt != 8)
                        begin //for slip
                            slip_cnt_tmp[8] = 0;
                            slip_cnt_tmp[8] = 8 + 20 - slip_num;
                            if(slip_cnt_tmp[8] >= 20) slip_cnt_tmp[8] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[8][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[8][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[8][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[8][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[8][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[8][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[8]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[8];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 8)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 8", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[8] <= gap_cnt[8];
                    gap_cnt[8] <= 0;
                end else begin
                    gap_cnt[8] <= gap_cnt[8] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[9] <= 0;
        gap_cnt[9] <= 0;
        gap_cnt_reg[9] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[9] == 'hf5a5a)begin
                    if (gap_cnt[9] >= gap_cnt_reg[9]-1 && gap_cnt[9] <= gap_cnt_reg[9]+1)
                        success_cnt[9] <= (success_cnt[9] == 'hff) ? success_cnt[9] : success_cnt[9] + 1;
                    else
                        success_cnt[9] <= 0;
                    if (success_cnt[9] == 3) begin
                        if(slip_cnt != 9)
                        begin //for slip
                            slip_cnt_tmp[9] = 0;
                            slip_cnt_tmp[9] = 9 + 20 - slip_num;
                            if(slip_cnt_tmp[9] >= 20) slip_cnt_tmp[9] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[9][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[9][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[9][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[9][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[9][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[9][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[9]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[9];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 9)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 9", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[9] <= gap_cnt[9];
                    gap_cnt[9] <= 0;
                end else begin
                    gap_cnt[9] <= gap_cnt[9] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[10] <= 0;
        gap_cnt[10] <= 0;
        gap_cnt_reg[10] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[10] == 'hf5a5a)begin
                    if (gap_cnt[10] >= gap_cnt_reg[10]-1 && gap_cnt[10] <= gap_cnt_reg[10]+1)
                        success_cnt[10] <= (success_cnt[10] == 'hff) ? success_cnt[10] : success_cnt[10] + 1;
                    else
                        success_cnt[10] <= 0;
                    if (success_cnt[10] == 3) begin
                        if(slip_cnt != 10)
                        begin //for slip
                            slip_cnt_tmp[10] = 0;
                            slip_cnt_tmp[10] = 10 + 20 - slip_num;
                            if(slip_cnt_tmp[10] >= 20) slip_cnt_tmp[10] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[10][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[10][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[10][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[10][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[10][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[10][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[10]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[10];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 10)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 10", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[10] <= gap_cnt[10];
                    gap_cnt[10] <= 0;
                end else begin
                    gap_cnt[10] <= gap_cnt[10] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[11] <= 0;
        gap_cnt[11] <= 0;
        gap_cnt_reg[11] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[11] == 'hf5a5a)begin
                    if (gap_cnt[11] >= gap_cnt_reg[11]-1 && gap_cnt[11] <= gap_cnt_reg[11]+1)
                        success_cnt[11] <= (success_cnt[11] == 'hff) ? success_cnt[11] : success_cnt[11] + 1;
                    else
                        success_cnt[11] <= 0;
                    if (success_cnt[11] == 3) begin
                        if(slip_cnt != 11)
                        begin //for slip
                            slip_cnt_tmp[11] = 0;
                            slip_cnt_tmp[11] = 11 + 20 - slip_num;
                            if(slip_cnt_tmp[11] >= 20) slip_cnt_tmp[11] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[11][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[11][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[11][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[11][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[11][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[11][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[11]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[11];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 11)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 11", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[11] <= gap_cnt[11];
                    gap_cnt[11] <= 0;
                end else begin
                    gap_cnt[11] <= gap_cnt[11] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[12] <= 0;
        gap_cnt[12] <= 0;
        gap_cnt_reg[12] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[12] == 'hf5a5a)begin
                    if (gap_cnt[12] >= gap_cnt_reg[12]-1 && gap_cnt[12] <= gap_cnt_reg[12]+1)
                        success_cnt[12] <= (success_cnt[12] == 'hff) ? success_cnt[12] : success_cnt[12] + 1;
                    else
                        success_cnt[12] <= 0;
                    if (success_cnt[12] == 3) begin
                        if(slip_cnt != 12)
                        begin //for slip
                            slip_cnt_tmp[12] = 0;
                            slip_cnt_tmp[12] = 12 + 20 - slip_num;
                            if(slip_cnt_tmp[12] >= 20) slip_cnt_tmp[12] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[12][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[12][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[12][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[12][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[12][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[12][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[12]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[12];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 12)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 12", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[12] <= gap_cnt[12];
                    gap_cnt[12] <= 0;
                end else begin
                    gap_cnt[12] <= gap_cnt[12] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[13] <= 0;
        gap_cnt[13] <= 0;
        gap_cnt_reg[13] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[13] == 'hf5a5a)begin
                    if (gap_cnt[13] >= gap_cnt_reg[13]-1 && gap_cnt[13] <= gap_cnt_reg[13]+1)
                        success_cnt[13] <= (success_cnt[13] == 'hff) ? success_cnt[13] : success_cnt[13] + 1;
                    else
                        success_cnt[13] <= 0;
                    if (success_cnt[13] == 3) begin
                        if(slip_cnt != 13)
                        begin //for slip
                            slip_cnt_tmp[13] = 0;
                            slip_cnt_tmp[13] = 13 + 20 - slip_num;
                            if(slip_cnt_tmp[13] >= 20) slip_cnt_tmp[13] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[13][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[13][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[13][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[13][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[13][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[13][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[13]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[13];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 13)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 13", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[13] <= gap_cnt[13];
                    gap_cnt[13] <= 0;
                end else begin
                    gap_cnt[13] <= gap_cnt[13] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[14] <= 0;
        gap_cnt[14] <= 0;
        gap_cnt_reg[14] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[14] == 'hf5a5a)begin
                    if (gap_cnt[14] >= gap_cnt_reg[14]-1 && gap_cnt[14] <= gap_cnt_reg[14]+1)
                        success_cnt[14] <= (success_cnt[14] == 'hff) ? success_cnt[14] : success_cnt[14] + 1;
                    else
                        success_cnt[14] <= 0;
                    if (success_cnt[14] == 3) begin
                        if(slip_cnt != 14)
                        begin //for slip
                            slip_cnt_tmp[14] = 0;
                            slip_cnt_tmp[14] = 14 + 20 - slip_num;
                            if(slip_cnt_tmp[14] >= 20) slip_cnt_tmp[14] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[14][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[14][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[14][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[14][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[14][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[14][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[14]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[14];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 14)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 14", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[14] <= gap_cnt[14];
                    gap_cnt[14] <= 0;
                end else begin
                    gap_cnt[14] <= gap_cnt[14] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[15] <= 0;
        gap_cnt[15] <= 0;
        gap_cnt_reg[15] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[15] == 'hf5a5a)begin
                    if (gap_cnt[15] >= gap_cnt_reg[15]-1 && gap_cnt[15] <= gap_cnt_reg[15]+1)
                        success_cnt[15] <= (success_cnt[15] == 'hff) ? success_cnt[15] : success_cnt[15] + 1;
                    else
                        success_cnt[15] <= 0;
                    if (success_cnt[15] == 3) begin
                        if(slip_cnt != 15)
                        begin //for slip
                            slip_cnt_tmp[15] = 0;
                            slip_cnt_tmp[15] = 15 + 20 - slip_num;
                            if(slip_cnt_tmp[15] >= 20) slip_cnt_tmp[15] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[15][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[15][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[15][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[15][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[15][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[15][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[15]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[15];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 15)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 15", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[15] <= gap_cnt[15];
                    gap_cnt[15] <= 0;
                end else begin
                    gap_cnt[15] <= gap_cnt[15] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[16] <= 0;
        gap_cnt[16] <= 0;
        gap_cnt_reg[16] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[16] == 'hf5a5a)begin
                    if (gap_cnt[16] >= gap_cnt_reg[16]-1 && gap_cnt[16] <= gap_cnt_reg[16]+1)
                        success_cnt[16] <= (success_cnt[16] == 'hff) ? success_cnt[16] : success_cnt[16] + 1;
                    else
                        success_cnt[16] <= 0;
                    if (success_cnt[16] == 3) begin
                        if(slip_cnt != 16)
                        begin //for slip
                            slip_cnt_tmp[16] = 0;
                            slip_cnt_tmp[16] = 16 + 20 - slip_num;
                            if(slip_cnt_tmp[16] >= 20) slip_cnt_tmp[16] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[16][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[16][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[16][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[16][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[16][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[16][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[16]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[16];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 16)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 16", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[16] <= gap_cnt[16];
                    gap_cnt[16] <= 0;
                end else begin
                    gap_cnt[16] <= gap_cnt[16] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[17] <= 0;
        gap_cnt[17] <= 0;
        gap_cnt_reg[17] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[17] == 'hf5a5a)begin
                    if (gap_cnt[17] >= gap_cnt_reg[17]-1 && gap_cnt[17] <= gap_cnt_reg[17]+1)
                        success_cnt[17] <= (success_cnt[17] == 'hff) ? success_cnt[17] : success_cnt[17] + 1;
                    else
                        success_cnt[17] <= 0;
                    if (success_cnt[17] == 3) begin
                        if(slip_cnt != 17)
                        begin //for slip
                            slip_cnt_tmp[17] = 0;
                            slip_cnt_tmp[17] = 17 + 20 - slip_num;
                            if(slip_cnt_tmp[17] >= 20) slip_cnt_tmp[17] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[17][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[17][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[17][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[17][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[17][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[17][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[17]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[17];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 17)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 17", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[17] <= gap_cnt[17];
                    gap_cnt[17] <= 0;
                end else begin
                    gap_cnt[17] <= gap_cnt[17] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[18] <= 0;
        gap_cnt[18] <= 0;
        gap_cnt_reg[18] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[18] == 'hf5a5a)begin
                    if (gap_cnt[18] >= gap_cnt_reg[18]-1 && gap_cnt[18] <= gap_cnt_reg[18]+1)
                        success_cnt[18] <= (success_cnt[18] == 'hff) ? success_cnt[18] : success_cnt[18] + 1;
                    else
                        success_cnt[18] <= 0;
                    if (success_cnt[18] == 3) begin
                        if(slip_cnt != 18)
                        begin //for slip
                            slip_cnt_tmp[18] = 0;
                            slip_cnt_tmp[18] = 18 + 20 - slip_num;
                            if(slip_cnt_tmp[18] >= 20) slip_cnt_tmp[18] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[18][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[18][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[18][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[18][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[18][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[18][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[18]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[18];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 18)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 18", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[18] <= gap_cnt[18];
                    gap_cnt[18] <= 0;
                end else begin
                    gap_cnt[18] <= gap_cnt[18] + 1;
                end
            end
    end
    always @(posedge pmd_20_clk or negedge reset_n)
    if (~reset_n) begin
        success_cnt[19] <= 0;
        gap_cnt[19] <= 0;
        gap_cnt_reg[19] <= 0;
    end else begin
            if (bit_lock_bypass | ~in_bit_lock_state) begin
                if (rx_data_div20_join[19] == 'hf5a5a)begin
                    if (gap_cnt[19] >= gap_cnt_reg[19]-1 && gap_cnt[19] <= gap_cnt_reg[19]+1)
                        success_cnt[19] <= (success_cnt[19] == 'hff) ? success_cnt[19] : success_cnt[19] + 1;
                    else
                        success_cnt[19] <= 0;
                    if (success_cnt[19] == 3) begin
                        if(slip_cnt != 19)
                        begin //for slip
                            slip_cnt_tmp[19] = 0;
                            slip_cnt_tmp[19] = 19 + 20 - slip_num;
                            if(slip_cnt_tmp[19] >= 20) slip_cnt_tmp[19] -= 20;
                            `ifdef GATESIM
                            `deposit_s($sformatf("%s.slip_cnt_reg_4_.Q", slip_cnt_hier), slip_cnt_tmp[19][4]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_3_.Q", slip_cnt_hier), slip_cnt_tmp[19][3]);
                            `deposit_s($sformatf("%s.slip_cnt_reg_2_.Q", slip_cnt_hier), slip_cnt_tmp[19][2]);
                            if (ch_idx inside {1, 2, 5, 6, 8, 10}) begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), ~slip_cnt_tmp[19][1]);
                            end else begin
                                `deposit_s($sformatf("%s.slip_cnt_reg_1_.Q", slip_cnt_hier), slip_cnt_tmp[19][1]);
                            end
                            `deposit_s($sformatf("%s.slip_cnt_reg_0_.Q", slip_cnt_hier), slip_cnt_tmp[19][0]);
                            `else
                            `deposit_s($sformatf("%s.slip_cnt", slip_cnt_hier), slip_cnt_tmp[19]);
                            `endif
                            //force slip_cnt_o = slip_cnt_tmp[19];
                            //#0;
                            //release slip_cnt_o;
                            foreach(success_cnt[j]) begin
                                if((success_cnt[j] >=3) && (j != 19)) begin
                                    `error("framer_header_chk", $sformatf("there are framer header in slip %0d or 19", j))
                                end
                            end
                        end
                    end
                    gap_cnt_reg[19] <= gap_cnt[19];
                    gap_cnt[19] <= 0;
                end else begin
                    gap_cnt[19] <= gap_cnt[19] + 1;
                end
            end
    end

endmodule