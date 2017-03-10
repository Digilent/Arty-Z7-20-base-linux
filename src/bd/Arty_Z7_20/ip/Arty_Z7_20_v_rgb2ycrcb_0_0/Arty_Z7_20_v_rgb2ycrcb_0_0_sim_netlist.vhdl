-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Mon Mar 06 11:30:49 2017
-- Host        : WK73 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/sam_work/git/digilent/Arty-Z7-20-base/src/bd/Arty_Z7_20/ip/Arty_Z7_20_v_rgb2ycrcb_0_0/Arty_Z7_20_v_rgb2ycrcb_0_0_sim_netlist.vhdl
-- Design      : Arty_Z7_20_v_rgb2ycrcb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_axi4s_control is
  port (
    master_en : out STD_LOGIC;
    eol_late_i_reg_0 : out STD_LOGIC;
    sof_early_i_reg_0 : out STD_LOGIC;
    sof_early_i_reg_1 : out STD_LOGIC;
    da : out STD_LOGIC_VECTOR ( 1 downto 0 );
    intc_if : out STD_LOGIC_VECTOR ( 4 downto 0 );
    fifo_wr_i : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \col_cnt_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wen : out STD_LOGIC;
    in_fifo_reset_reg_0 : out STD_LOGIC;
    \col_cnt_reg[12]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclken : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \write_ptr_int_reg[2]\ : in STD_LOGIC;
    \time_control_regs[0]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \write_ptr_int_reg[2]_0\ : in STD_LOGIC;
    \read_ptr_int_reg[1]\ : in STD_LOGIC;
    empty_match_reg : in STD_LOGIC;
    full_int_reg : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    vid_empty : in STD_LOGIC;
    \word_count_reg[4]\ : in STD_LOGIC;
    t_qb : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_axi4s_control : entity is "axi4s_control";
end Arty_Z7_20_v_rgb2ycrcb_0_0_axi4s_control;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_axi4s_control is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal active_cols_2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \active_cols_2[11]_i_2_n_0\ : STD_LOGIC;
  signal \active_cols_2[11]_i_3_n_0\ : STD_LOGIC;
  signal \active_cols_2[11]_i_4_n_0\ : STD_LOGIC;
  signal \active_cols_2[11]_i_5_n_0\ : STD_LOGIC;
  signal \active_cols_2[12]_i_2_n_0\ : STD_LOGIC;
  signal \active_cols_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \active_cols_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \active_cols_2[3]_i_4_n_0\ : STD_LOGIC;
  signal \active_cols_2[3]_i_5_n_0\ : STD_LOGIC;
  signal \active_cols_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \active_cols_2[7]_i_3_n_0\ : STD_LOGIC;
  signal \active_cols_2[7]_i_4_n_0\ : STD_LOGIC;
  signal \active_cols_2[7]_i_5_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \active_cols_2_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \active_cols_2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \active_cols_2_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \active_cols_2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \col_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_15_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_16_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_17_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_18_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_19_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_20_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_4_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \col_cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \col_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \col_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \col_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt_reg[12]_i_9_n_1\ : STD_LOGIC;
  signal \col_cnt_reg[12]_i_9_n_2\ : STD_LOGIC;
  signal \col_cnt_reg[12]_i_9_n_3\ : STD_LOGIC;
  signal \^col_cnt_reg[1]_0\ : STD_LOGIC;
  signal \col_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \col_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \col_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \col_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \col_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \col_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal core_en_i : STD_LOGIC;
  signal core_en_i_i_1_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal eof_i_i_1_n_0 : STD_LOGIC;
  signal eol_early_i0 : STD_LOGIC;
  signal eol_early_i_i_1_n_0 : STD_LOGIC;
  signal eol_early_i_i_4_n_0 : STD_LOGIC;
  signal eol_expected : STD_LOGIC;
  signal eol_expected0 : STD_LOGIC;
  signal eol_expected_d : STD_LOGIC;
  signal eol_expected_d_i_1_n_0 : STD_LOGIC;
  signal eol_late_i3_out : STD_LOGIC;
  signal eol_late_i_i_2_n_0 : STD_LOGIC;
  signal eol_late_i_i_3_n_0 : STD_LOGIC;
  signal \^eol_late_i_reg_0\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal eqOp1_out : STD_LOGIC;
  signal eqOp_0 : STD_LOGIC;
  signal \eqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal fifo_rd_d : STD_LOGIC;
  signal fifo_rd_d_i_1_n_0 : STD_LOGIC;
  signal fifo_rd_i : STD_LOGIC;
  signal fifo_rd_i0 : STD_LOGIC;
  signal fifo_rd_i_i_1_n_0 : STD_LOGIC;
  signal \^fifo_wr_i\ : STD_LOGIC;
  signal fifo_wr_i_i_10_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_11_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_12_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_13_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_14_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_1_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_4_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_5_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_6_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_7_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_8_n_0 : STD_LOGIC;
  signal fifo_wr_i_i_9_n_0 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_2 : STD_LOGIC;
  signal fifo_wr_i_reg_i_2_n_3 : STD_LOGIC;
  signal fifo_wr_i_reg_i_3_n_0 : STD_LOGIC;
  signal fifo_wr_i_reg_i_3_n_1 : STD_LOGIC;
  signal fifo_wr_i_reg_i_3_n_2 : STD_LOGIC;
  signal fifo_wr_i_reg_i_3_n_3 : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_i_8_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal gtOp18_in : STD_LOGIC;
  signal gtOp19_in : STD_LOGIC;
  signal gtOp21_in : STD_LOGIC;
  signal gtOp22_in : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \gtOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in_fifo_reset : STD_LOGIC;
  signal in_fifo_reset0 : STD_LOGIC;
  signal in_fifo_reset_i_3_n_0 : STD_LOGIC;
  signal \^in_fifo_reset_reg_0\ : STD_LOGIC;
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal leqOp16_in : STD_LOGIC;
  signal leqOp20_in : STD_LOGIC;
  signal leqOp23_in : STD_LOGIC;
  signal \leqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_i_8_n_0 : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal line_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_4_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_5_n_0 : STD_LOGIC;
  signal line_cnt_tc_i_6_n_0 : STD_LOGIC;
  signal \ltOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_1\ : STD_LOGIC;
  signal \ltOp_carry__0_n_2\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal ltOp_carry_i_8_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^master_en\ : STD_LOGIC;
  signal out_fifo_sof0 : STD_LOGIC;
  signal out_fifo_sof_i_2_n_0 : STD_LOGIC;
  signal pixel_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal pixel_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal pixel_cnt_tc_i_4_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal row_cnt : STD_LOGIC;
  signal \row_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \row_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \row_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \row_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \row_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \row_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \row_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \row_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \row_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \row_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \row_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \row_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \row_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \row_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal row_cnt_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \row_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \row_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \row_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \row_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \row_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal sof_early_i_i_1_n_0 : STD_LOGIC;
  signal \^sof_early_i_reg_0\ : STD_LOGIC;
  signal \^sof_early_i_reg_1\ : STD_LOGIC;
  signal sof_expected : STD_LOGIC;
  signal sof_expected0 : STD_LOGIC;
  signal sof_expected_i_2_n_0 : STD_LOGIC;
  signal sof_expected_i_3_n_0 : STD_LOGIC;
  signal sof_expected_i_4_n_0 : STD_LOGIC;
  signal sof_expected_i_5_n_0 : STD_LOGIC;
  signal sof_expected_i_6_n_0 : STD_LOGIC;
  signal sof_expected_i_7_n_0 : STD_LOGIC;
  signal sof_expected_i_8_n_0 : STD_LOGIC;
  signal sof_expected_i_9_n_0 : STD_LOGIC;
  signal sof_late_i2_out : STD_LOGIC;
  signal total_cols : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \total_cols[12]_i_2_n_0\ : STD_LOGIC;
  signal \total_cols[12]_i_3_n_0\ : STD_LOGIC;
  signal \total_cols[12]_i_4_n_0\ : STD_LOGIC;
  signal \total_cols[12]_i_5_n_0\ : STD_LOGIC;
  signal \total_cols[4]_i_2_n_0\ : STD_LOGIC;
  signal \total_cols[4]_i_3_n_0\ : STD_LOGIC;
  signal \total_cols[4]_i_4_n_0\ : STD_LOGIC;
  signal \total_cols[4]_i_5_n_0\ : STD_LOGIC;
  signal \total_cols[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_cols[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_cols[8]_i_4_n_0\ : STD_LOGIC;
  signal \total_cols[8]_i_5_n_0\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \total_cols_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \total_cols_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \total_cols_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \total_cols_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \total_cols_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_cols_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal total_rows : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_col_cnt_reg[12]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_wr_i_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gtOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gtOp_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gtOp_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_leqOp_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_cnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \col_cnt[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of eol_early_i_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of eol_early_i_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of eol_expected_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of eol_late_i_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of eol_late_i_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of fifo_rd_d_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of in_fifo_reset_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of in_fifo_reset_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_fifo_sof_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of pixel_cnt_tc_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sof_expected_i_8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sof_late_i_i_3 : label is "soft_lutpair1";
begin
  CO(0) <= \^co\(0);
  \col_cnt_reg[1]_0\ <= \^col_cnt_reg[1]_0\;
  eol_late_i_reg_0 <= \^eol_late_i_reg_0\;
  fifo_wr_i <= \^fifo_wr_i\;
  in_fifo_reset_reg_0 <= \^in_fifo_reset_reg_0\;
  intc_if(4 downto 0) <= \^intc_if\(4 downto 0);
  master_en <= \^master_en\;
  sof_early_i_reg_0 <= \^sof_early_i_reg_0\;
  sof_early_i_reg_1 <= \^sof_early_i_reg_1\;
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => aclken,
      I1 => \genr_control_regs[0]\(0),
      I2 => \^eol_late_i_reg_0\,
      I3 => full_int_reg,
      I4 => core_d_out,
      I5 => \^fifo_wr_i\,
      O => wen
    );
\active_cols_2[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(11),
      O => \active_cols_2[11]_i_2_n_0\
    );
\active_cols_2[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(10),
      O => \active_cols_2[11]_i_3_n_0\
    );
\active_cols_2[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(9),
      O => \active_cols_2[11]_i_4_n_0\
    );
\active_cols_2[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      O => \active_cols_2[11]_i_5_n_0\
    );
\active_cols_2[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      O => \active_cols_2[12]_i_2_n_0\
    );
\active_cols_2[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(3),
      O => \active_cols_2[3]_i_2_n_0\
    );
\active_cols_2[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      O => \active_cols_2[3]_i_3_n_0\
    );
\active_cols_2[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(1),
      O => \active_cols_2[3]_i_4_n_0\
    );
\active_cols_2[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      O => \active_cols_2[3]_i_5_n_0\
    );
\active_cols_2[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(7),
      O => \active_cols_2[7]_i_2_n_0\
    );
\active_cols_2[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      O => \active_cols_2[7]_i_3_n_0\
    );
\active_cols_2[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(5),
      O => \active_cols_2[7]_i_4_n_0\
    );
\active_cols_2[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(4),
      O => \active_cols_2[7]_i_5_n_0\
    );
\active_cols_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[3]_i_1_n_7\,
      Q => active_cols_2(0),
      R => '0'
    );
\active_cols_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[11]_i_1_n_5\,
      Q => active_cols_2(10),
      R => '0'
    );
\active_cols_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[11]_i_1_n_4\,
      Q => active_cols_2(11),
      R => '0'
    );
\active_cols_2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \active_cols_2_reg[7]_i_1_n_0\,
      CO(3) => \active_cols_2_reg[11]_i_1_n_0\,
      CO(2) => \active_cols_2_reg[11]_i_1_n_1\,
      CO(1) => \active_cols_2_reg[11]_i_1_n_2\,
      CO(0) => \active_cols_2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \active_cols_2_reg[11]_i_1_n_4\,
      O(2) => \active_cols_2_reg[11]_i_1_n_5\,
      O(1) => \active_cols_2_reg[11]_i_1_n_6\,
      O(0) => \active_cols_2_reg[11]_i_1_n_7\,
      S(3) => \active_cols_2[11]_i_2_n_0\,
      S(2) => \active_cols_2[11]_i_3_n_0\,
      S(1) => \active_cols_2[11]_i_4_n_0\,
      S(0) => \active_cols_2[11]_i_5_n_0\
    );
\active_cols_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[12]_i_1_n_7\,
      Q => active_cols_2(12),
      R => '0'
    );
\active_cols_2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \active_cols_2_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \active_cols_2_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \active_cols_2[12]_i_2_n_0\
    );
\active_cols_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[3]_i_1_n_6\,
      Q => active_cols_2(1),
      R => '0'
    );
\active_cols_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[3]_i_1_n_5\,
      Q => active_cols_2(2),
      R => '0'
    );
\active_cols_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[3]_i_1_n_4\,
      Q => active_cols_2(3),
      R => '0'
    );
\active_cols_2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \active_cols_2_reg[3]_i_1_n_0\,
      CO(2) => \active_cols_2_reg[3]_i_1_n_1\,
      CO(1) => \active_cols_2_reg[3]_i_1_n_2\,
      CO(0) => \active_cols_2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \time_control_regs[0]\(1),
      DI(0) => '0',
      O(3) => \active_cols_2_reg[3]_i_1_n_4\,
      O(2) => \active_cols_2_reg[3]_i_1_n_5\,
      O(1) => \active_cols_2_reg[3]_i_1_n_6\,
      O(0) => \active_cols_2_reg[3]_i_1_n_7\,
      S(3) => \active_cols_2[3]_i_2_n_0\,
      S(2) => \active_cols_2[3]_i_3_n_0\,
      S(1) => \active_cols_2[3]_i_4_n_0\,
      S(0) => \active_cols_2[3]_i_5_n_0\
    );
\active_cols_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_7\,
      Q => active_cols_2(4),
      R => '0'
    );
\active_cols_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_6\,
      Q => active_cols_2(5),
      R => '0'
    );
\active_cols_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_5\,
      Q => active_cols_2(6),
      R => '0'
    );
\active_cols_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[7]_i_1_n_4\,
      Q => active_cols_2(7),
      R => '0'
    );
\active_cols_2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \active_cols_2_reg[3]_i_1_n_0\,
      CO(3) => \active_cols_2_reg[7]_i_1_n_0\,
      CO(2) => \active_cols_2_reg[7]_i_1_n_1\,
      CO(1) => \active_cols_2_reg[7]_i_1_n_2\,
      CO(0) => \active_cols_2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \active_cols_2_reg[7]_i_1_n_4\,
      O(2) => \active_cols_2_reg[7]_i_1_n_5\,
      O(1) => \active_cols_2_reg[7]_i_1_n_6\,
      O(0) => \active_cols_2_reg[7]_i_1_n_7\,
      S(3) => \active_cols_2[7]_i_2_n_0\,
      S(2) => \active_cols_2[7]_i_3_n_0\,
      S(1) => \active_cols_2[7]_i_4_n_0\,
      S(0) => \active_cols_2[7]_i_5_n_0\
    );
\active_cols_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[11]_i_1_n_7\,
      Q => active_cols_2(8),
      R => '0'
    );
\active_cols_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \active_cols_2_reg[11]_i_1_n_6\,
      Q => active_cols_2(9),
      R => '0'
    );
\col_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \col_cnt[0]_i_2_n_0\,
      I1 => \write_ptr_int_reg[2]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[0]_i_1_n_0\
    );
\col_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAEFAAEAAAEFAA"
    )
        port map (
      I0 => \col_cnt[1]_i_4_n_0\,
      I1 => active_cols_2(0),
      I2 => eol_late_i3_out,
      I3 => \row_cnt[0]_i_4_n_0\,
      I4 => \col_cnt_reg_n_0_[0]\,
      I5 => geqOp,
      O => \col_cnt[0]_i_2_n_0\
    );
\col_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(10),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(10),
      O => \col_cnt[10]_i_1_n_0\
    );
\col_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(11),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(11),
      O => \col_cnt[11]_i_1_n_0\
    );
\col_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => \write_ptr_int_reg[2]\,
      I2 => resetn_out,
      O => \col_cnt[12]_i_1_n_0\
    );
\col_cnt[12]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0800AAAA0A0A"
    )
        port map (
      I0 => \word_count_reg[4]\,
      I1 => fifo_rd_i,
      I2 => \^col_cnt_reg[1]_0\,
      I3 => \genr_control_regs[0]\(1),
      I4 => \col_cnt[12]_i_20_n_0\,
      I5 => in_fifo_reset_i_3_n_0,
      O => \col_cnt[12]_i_15_n_0\
    );
\col_cnt[12]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => \col_cnt[12]_i_16_n_0\
    );
\col_cnt[12]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      O => \col_cnt[12]_i_17_n_0\
    );
\col_cnt[12]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      O => \col_cnt[12]_i_18_n_0\
    );
\col_cnt[12]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      O => \col_cnt[12]_i_19_n_0\
    );
\col_cnt[12]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000808080"
    )
        port map (
      I0 => aclken,
      I1 => \genr_control_regs[0]\(0),
      I2 => fifo_rd_i,
      I3 => in_fifo_reset,
      I4 => t_qb(0),
      I5 => eol_expected_d,
      O => \col_cnt[12]_i_20_n_0\
    );
\col_cnt[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(12),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(12),
      O => \col_cnt[12]_i_3_n_0\
    );
\col_cnt[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \row_cnt[0]_i_4_n_0\,
      I1 => eol_late_i3_out,
      I2 => geqOp,
      O => \col_cnt[12]_i_4_n_0\
    );
\col_cnt[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515150015151515"
    )
        port map (
      I0 => gtOp21_in,
      I1 => leqOp23_in,
      I2 => gtOp22_in,
      I3 => vid_empty,
      I4 => \col_cnt[12]_i_15_n_0\,
      I5 => leqOp20_in,
      O => \col_cnt_reg[12]_0\
    );
\col_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0C000"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[1]\,
      I1 => \col_cnt[1]_i_2_n_0\,
      I2 => resetn_out,
      I3 => \col_cnt[1]_i_3_n_0\,
      I4 => line_cnt_tc_i_3_n_0,
      I5 => \^col_cnt_reg[1]_0\,
      O => \col_cnt[1]_i_1_n_0\
    );
\col_cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEAAAAA"
    )
        port map (
      I0 => \col_cnt[1]_i_4_n_0\,
      I1 => active_cols_2(1),
      I2 => eol_late_i3_out,
      I3 => data1(1),
      I4 => \col_cnt[12]_i_4_n_0\,
      O => \col_cnt[1]_i_2_n_0\
    );
\col_cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3F55555555"
    )
        port map (
      I0 => \^sof_early_i_reg_0\,
      I1 => t_qb(1),
      I2 => in_fifo_reset,
      I3 => \^sof_early_i_reg_1\,
      I4 => sof_expected,
      I5 => fifo_rd_d,
      O => \col_cnt[1]_i_3_n_0\
    );
\col_cnt[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DCDCDC00D0D0D0"
    )
        port map (
      I0 => \^sof_early_i_reg_0\,
      I1 => fifo_rd_d,
      I2 => \^sof_early_i_reg_1\,
      I3 => t_qb(1),
      I4 => in_fifo_reset,
      I5 => sof_expected,
      O => \col_cnt[1]_i_4_n_0\
    );
\col_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \col_cnt[2]_i_2_n_0\,
      I1 => \write_ptr_int_reg[2]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      O => \col_cnt[2]_i_1_n_0\
    );
\col_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555D5DDD555D555"
    )
        port map (
      I0 => \col_cnt[2]_i_3_n_0\,
      I1 => \row_cnt[0]_i_4_n_0\,
      I2 => active_cols_2(2),
      I3 => eol_late_i3_out,
      I4 => geqOp,
      I5 => data1(2),
      O => \col_cnt[2]_i_2_n_0\
    );
\col_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BBBBBB"
    )
        port map (
      I0 => fifo_rd_d,
      I1 => \^sof_early_i_reg_0\,
      I2 => sof_expected,
      I3 => in_fifo_reset,
      I4 => t_qb(1),
      O => \col_cnt[2]_i_3_n_0\
    );
\col_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(3),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(3),
      O => \col_cnt[3]_i_1_n_0\
    );
\col_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(4),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(4),
      O => \col_cnt[4]_i_1_n_0\
    );
\col_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      O => \col_cnt[4]_i_3_n_0\
    );
\col_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      O => \col_cnt[4]_i_4_n_0\
    );
\col_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      O => \col_cnt[4]_i_5_n_0\
    );
\col_cnt[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[1]\,
      O => \col_cnt[4]_i_6_n_0\
    );
\col_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(5),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(5),
      O => \col_cnt[5]_i_1_n_0\
    );
\col_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(6),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(6),
      O => \col_cnt[6]_i_1_n_0\
    );
\col_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(7),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(7),
      O => \col_cnt[7]_i_1_n_0\
    );
\col_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(8),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(8),
      O => \col_cnt[8]_i_1_n_0\
    );
\col_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      O => \col_cnt[8]_i_3_n_0\
    );
\col_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      O => \col_cnt[8]_i_4_n_0\
    );
\col_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      O => \col_cnt[8]_i_5_n_0\
    );
\col_cnt[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      O => \col_cnt[8]_i_6_n_0\
    );
\col_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \col_cnt[12]_i_4_n_0\,
      I1 => data1(9),
      I2 => eol_late_i3_out,
      I3 => active_cols_2(9),
      O => \col_cnt[9]_i_1_n_0\
    );
\col_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \col_cnt[0]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[0]\,
      S => SR(0)
    );
\col_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[10]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[10]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[11]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[11]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[12]_i_3_n_0\,
      Q => \col_cnt_reg_n_0_[12]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[12]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \col_cnt_reg[8]_i_2_n_0\,
      CO(3) => \NLW_col_cnt_reg[12]_i_9_CO_UNCONNECTED\(3),
      CO(2) => \col_cnt_reg[12]_i_9_n_1\,
      CO(1) => \col_cnt_reg[12]_i_9_n_2\,
      CO(0) => \col_cnt_reg[12]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \col_cnt[12]_i_16_n_0\,
      S(2) => \col_cnt[12]_i_17_n_0\,
      S(1) => \col_cnt[12]_i_18_n_0\,
      S(0) => \col_cnt[12]_i_19_n_0\
    );
\col_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \col_cnt[1]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[1]\,
      R => '0'
    );
\col_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \col_cnt[2]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[2]\,
      R => SR(0)
    );
\col_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[3]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[3]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[4]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[4]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \col_cnt_reg[4]_i_2_n_0\,
      CO(2) => \col_cnt_reg[4]_i_2_n_1\,
      CO(1) => \col_cnt_reg[4]_i_2_n_2\,
      CO(0) => \col_cnt_reg[4]_i_2_n_3\,
      CYINIT => \col_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(4 downto 1),
      S(3) => \col_cnt[4]_i_3_n_0\,
      S(2) => \col_cnt[4]_i_4_n_0\,
      S(1) => \col_cnt[4]_i_5_n_0\,
      S(0) => \col_cnt[4]_i_6_n_0\
    );
\col_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[5]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[5]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[6]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[6]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[7]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[7]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[8]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[8]\,
      R => \col_cnt[12]_i_1_n_0\
    );
\col_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \col_cnt_reg[4]_i_2_n_0\,
      CO(3) => \col_cnt_reg[8]_i_2_n_0\,
      CO(2) => \col_cnt_reg[8]_i_2_n_1\,
      CO(1) => \col_cnt_reg[8]_i_2_n_2\,
      CO(0) => \col_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \col_cnt[8]_i_3_n_0\,
      S(2) => \col_cnt[8]_i_4_n_0\,
      S(1) => \col_cnt[8]_i_5_n_0\,
      S(0) => \col_cnt[8]_i_6_n_0\
    );
\col_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ptr_int_reg[2]\,
      D => \col_cnt[9]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[9]\,
      R => \col_cnt[12]_i_1_n_0\
    );
core_en_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0A0A0A0A0A0A0"
    )
        port map (
      I0 => core_en_i,
      I1 => gtOp,
      I2 => resetn_out,
      I3 => line_cnt_tc_i_3_n_0,
      I4 => \genr_control_regs[0]\(0),
      I5 => aclken,
      O => core_en_i_i_1_n_0
    );
core_en_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => core_en_i_i_1_n_0,
      Q => core_en_i,
      R => '0'
    );
eof_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00C0AAAA"
    )
        port map (
      I0 => \^intc_if\(0),
      I1 => eqOp1_out,
      I2 => eqOp_0,
      I3 => line_cnt_tc_i_3_n_0,
      I4 => resetn_out,
      I5 => \^col_cnt_reg[1]_0\,
      O => eof_i_i_1_n_0
    );
eof_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eof_i_i_1_n_0,
      Q => \^intc_if\(0),
      R => '0'
    );
eol_early_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A000C0A0A0A0A0"
    )
        port map (
      I0 => \^intc_if\(4),
      I1 => eol_early_i0,
      I2 => resetn_out,
      I3 => eol_expected_d,
      I4 => \^col_cnt_reg[1]_0\,
      I5 => fifo_rd_d,
      O => eol_early_i_i_1_n_0
    );
eol_early_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1A1A1A1000000A1"
    )
        port map (
      I0 => eol_early_i_i_4_n_0,
      I1 => \^sof_early_i_reg_1\,
      I2 => sof_expected,
      I3 => \^eol_late_i_reg_0\,
      I4 => eol_late_i_i_2_n_0,
      I5 => \^intc_if\(4),
      O => eol_early_i0
    );
eol_early_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aclken,
      I1 => \genr_control_regs[0]\(0),
      O => \^col_cnt_reg[1]_0\
    );
eol_early_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_fifo_reset,
      I1 => t_qb(1),
      O => eol_early_i_i_4_n_0
    );
eol_early_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eol_early_i_i_1_n_0,
      Q => \^intc_if\(4),
      R => '0'
    );
eol_expected_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => eol_expected,
      I1 => fifo_rd_i,
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      I4 => eol_expected_d,
      O => eol_expected_d_i_1_n_0
    );
eol_expected_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => eol_expected_d_i_1_n_0,
      Q => eol_expected_d,
      R => SR(0)
    );
eol_expected_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => eqOp0_out,
      I1 => t_qb(1),
      I2 => in_fifo_reset,
      O => eol_expected0
    );
eol_expected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eol_expected0,
      Q => eol_expected,
      R => SR(0)
    );
eol_late_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAA8AAA00008000"
    )
        port map (
      I0 => eol_late_i_i_2_n_0,
      I1 => eol_late_i_i_3_n_0,
      I2 => fifo_rd_d,
      I3 => eol_expected_d,
      I4 => \^intc_if\(4),
      I5 => \^eol_late_i_reg_0\,
      O => eol_late_i3_out
    );
eol_late_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => in_fifo_reset,
      I1 => t_qb(0),
      O => eol_late_i_i_2_n_0
    );
eol_late_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A111"
    )
        port map (
      I0 => sof_expected,
      I1 => \^sof_early_i_reg_1\,
      I2 => in_fifo_reset,
      I3 => t_qb(1),
      O => eol_late_i_i_3_n_0
    );
eol_late_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eol_late_i3_out,
      Q => \^eol_late_i_reg_0\,
      R => SR(0)
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => eqOp_carry_n_0,
      CO(3 downto 1) => \NLW_eqOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => eqOp0_out,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \eqOp_carry__0_i_1_n_0\
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \eqOp_carry__0_i_1_n_0\
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \time_control_regs[0]\(10),
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \time_control_regs[0]\(11),
      I4 => \time_control_regs[0]\(9),
      I5 => \col_cnt_reg_n_0_[9]\,
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \time_control_regs[0]\(7),
      I2 => \col_cnt_reg_n_0_[6]\,
      I3 => \time_control_regs[0]\(6),
      I4 => \time_control_regs[0]\(8),
      I5 => \col_cnt_reg_n_0_[8]\,
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \time_control_regs[0]\(4),
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => \time_control_regs[0]\(5),
      I4 => \time_control_regs[0]\(3),
      I5 => \col_cnt_reg_n_0_[3]\,
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[1]\,
      I1 => \time_control_regs[0]\(1),
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \time_control_regs[0]\(0),
      I4 => \time_control_regs[0]\(2),
      I5 => \col_cnt_reg_n_0_[2]\,
      O => eqOp_carry_i_4_n_0
    );
\eqOp_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__3/i__carry_n_0\,
      CO(2) => \eqOp_inferred__3/i__carry_n_1\,
      CO(1) => \eqOp_inferred__3/i__carry_n_2\,
      CO(0) => \eqOp_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\eqOp_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__3/i__carry_n_0\,
      CO(3 downto 1) => \NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => eqOp1_out,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__5_n_0\
    );
\eqOp_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__4/i__carry_n_0\,
      CO(2) => \eqOp_inferred__4/i__carry_n_1\,
      CO(1) => \eqOp_inferred__4/i__carry_n_2\,
      CO(0) => \eqOp_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\eqOp_inferred__4/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__4/i__carry_n_0\,
      CO(3 downto 1) => \NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => eqOp_0,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__6_n_0\
    );
fifo_rd_d_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => fifo_rd_i,
      I1 => resetn_out,
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      I4 => fifo_rd_d,
      O => fifo_rd_d_i_1_n_0
    );
fifo_rd_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_rd_d_i_1_n_0,
      Q => fifo_rd_d,
      R => '0'
    );
fifo_rd_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0A0A0A0A0A0A0"
    )
        port map (
      I0 => fifo_rd_i,
      I1 => fifo_rd_i0,
      I2 => resetn_out,
      I3 => line_cnt_tc_i_3_n_0,
      I4 => \genr_control_regs[0]\(0),
      I5 => aclken,
      O => fifo_rd_i_i_1_n_0
    );
fifo_rd_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFECECEC"
    )
        port map (
      I0 => fifo_rd_d,
      I1 => \^sof_early_i_reg_1\,
      I2 => sof_expected,
      I3 => leqOp20_in,
      I4 => leqOp16_in,
      I5 => eol_early_i_i_4_n_0,
      O => fifo_rd_i0
    );
fifo_rd_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_rd_i_i_1_n_0,
      Q => fifo_rd_i,
      R => '0'
    );
fifo_wr_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA000000C000"
    )
        port map (
      I0 => \^fifo_wr_i\,
      I1 => gtOp18_in,
      I2 => gtOp19_in,
      I3 => resetn_out,
      I4 => line_cnt_tc_i_3_n_0,
      I5 => \^col_cnt_reg[1]_0\,
      O => fifo_wr_i_i_1_n_0
    );
fifo_wr_i_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt_reg_n_0_[4]\,
      O => fifo_wr_i_i_10_n_0
    );
fifo_wr_i_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => fifo_wr_i_i_11_n_0
    );
fifo_wr_i_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => fifo_wr_i_i_12_n_0
    );
fifo_wr_i_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => fifo_wr_i_i_13_n_0
    );
fifo_wr_i_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      O => fifo_wr_i_i_14_n_0
    );
fifo_wr_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => fifo_wr_i_i_4_n_0
    );
fifo_wr_i_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => fifo_wr_i_i_5_n_0
    );
fifo_wr_i_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => fifo_wr_i_i_6_n_0
    );
fifo_wr_i_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[11]\,
      O => fifo_wr_i_i_7_n_0
    );
fifo_wr_i_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => fifo_wr_i_i_8_n_0
    );
fifo_wr_i_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      O => fifo_wr_i_i_9_n_0
    );
fifo_wr_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => fifo_wr_i_i_1_n_0,
      Q => \^fifo_wr_i\,
      R => '0'
    );
fifo_wr_i_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => fifo_wr_i_reg_i_3_n_0,
      CO(3) => NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => gtOp19_in,
      CO(1) => fifo_wr_i_reg_i_2_n_2,
      CO(0) => fifo_wr_i_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \col_cnt_reg_n_0_[12]\,
      DI(1) => fifo_wr_i_i_4_n_0,
      DI(0) => fifo_wr_i_i_5_n_0,
      O(3 downto 0) => NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => fifo_wr_i_i_6_n_0,
      S(1) => fifo_wr_i_i_7_n_0,
      S(0) => fifo_wr_i_i_8_n_0
    );
fifo_wr_i_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fifo_wr_i_reg_i_3_n_0,
      CO(2) => fifo_wr_i_reg_i_3_n_1,
      CO(1) => fifo_wr_i_reg_i_3_n_2,
      CO(0) => fifo_wr_i_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => fifo_wr_i_i_9_n_0,
      DI(2) => fifo_wr_i_i_10_n_0,
      DI(1) => '0',
      DI(0) => \col_cnt_reg_n_0_[1]\,
      O(3 downto 0) => NLW_fifo_wr_i_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => fifo_wr_i_i_11_n_0,
      S(2) => fifo_wr_i_i_12_n_0,
      S(1) => fifo_wr_i_i_13_n_0,
      S(0) => fifo_wr_i_i_14_n_0
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => geqOp_carry_i_2_n_0,
      DI(1) => geqOp_carry_i_3_n_0,
      DI(0) => geqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_5_n_0,
      S(2) => geqOp_carry_i_6_n_0,
      S(1) => geqOp_carry_i_7_n_0,
      S(0) => geqOp_carry_i_8_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => geqOp,
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \geqOp_carry__0_i_1_n_0\,
      DI(1) => \geqOp_carry__0_i_2_n_0\,
      DI(0) => \geqOp_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \geqOp_carry__0_i_4_n_0\,
      S(1) => \geqOp_carry__0_i_5_n_0\,
      S(0) => \geqOp_carry__0_i_6_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => total_cols(12),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => total_cols(10),
      I2 => total_cols(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => total_cols(8),
      I2 => total_cols(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => total_cols(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => total_cols(11),
      O => \geqOp_carry__0_i_5_n_0\
    );
\geqOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(9),
      I1 => \col_cnt_reg_n_0_[9]\,
      I2 => total_cols(8),
      I3 => \col_cnt_reg_n_0_[8]\,
      O => \geqOp_carry__0_i_6_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => total_cols(6),
      I2 => total_cols(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => total_cols(4),
      I2 => total_cols(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => total_cols(2),
      I2 => total_cols(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => total_cols(0),
      I2 => total_cols(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => total_cols(7),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => total_cols(5),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(3),
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => total_cols(2),
      I3 => \col_cnt_reg_n_0_[2]\,
      O => geqOp_carry_i_7_n_0
    );
geqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => total_cols(1),
      O => geqOp_carry_i_8_n_0
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => gtOp22_in,
      CO(1) => \gtOp_carry__0_n_2\,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gtOp_carry__0_i_1_n_0\,
      DI(1) => \gtOp_carry__0_i_2_n_0\,
      DI(0) => \gtOp_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gtOp_carry__0_i_4_n_0\,
      S(1) => \gtOp_carry__0_i_5_n_0\,
      S(0) => \gtOp_carry__0_i_6_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => \time_control_regs[0]\(12),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \time_control_regs[0]\(11),
      I2 => \time_control_regs[0]\(10),
      I3 => \col_cnt_reg_n_0_[10]\,
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => \time_control_regs[0]\(9),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(11),
      I1 => \col_cnt_reg_n_0_[11]\,
      I2 => \time_control_regs[0]\(10),
      I3 => \col_cnt_reg_n_0_[10]\,
      O => \gtOp_carry__0_i_5_n_0\
    );
\gtOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \time_control_regs[0]\(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \gtOp_carry__0_i_6_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \time_control_regs[0]\(7),
      I2 => \time_control_regs[0]\(6),
      I3 => \col_cnt_reg_n_0_[6]\,
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \time_control_regs[0]\(5),
      I2 => \time_control_regs[0]\(4),
      I3 => \col_cnt_reg_n_0_[4]\,
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \time_control_regs[0]\(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[1]\,
      I1 => \time_control_regs[0]\(1),
      I2 => \time_control_regs[0]\(0),
      I3 => \col_cnt_reg_n_0_[0]\,
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \time_control_regs[0]\(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(5),
      I1 => \col_cnt_reg_n_0_[5]\,
      I2 => \time_control_regs[0]\(4),
      I3 => \col_cnt_reg_n_0_[4]\,
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \time_control_regs[0]\(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \time_control_regs[0]\(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => gtOp_carry_i_8_n_0
    );
\gtOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__0/i__carry_n_0\,
      CO(2) => \gtOp_inferred__0/i__carry_n_1\,
      CO(1) => \gtOp_inferred__0/i__carry_n_2\,
      CO(0) => \gtOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__3_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\gtOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_gtOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => gtOp21_in,
      CO(1) => \gtOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \gtOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__2_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_4__2_n_0\,
      S(1) => \i__carry__0_i_5__2_n_0\,
      S(0) => \i__carry__0_i_6__1_n_0\
    );
\gtOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__2/i__carry_n_0\,
      CO(2) => \gtOp_inferred__2/i__carry_n_1\,
      CO(1) => \gtOp_inferred__2/i__carry_n_2\,
      CO(0) => \gtOp_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__5_n_0\,
      DI(2) => \i__carry_i_2__4_n_0\,
      DI(1) => \i__carry_i_3__4_n_0\,
      DI(0) => \i__carry_i_4__4_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__3_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\gtOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_inferred__2/i__carry_n_0\,
      CO(3) => \NLW_gtOp_inferred__2/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => gtOp18_in,
      CO(1) => \gtOp_inferred__2/i__carry__0_n_2\,
      CO(0) => \gtOp_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => row_cnt_reg(12),
      DI(1) => \i__carry__0_i_1__2_n_0\,
      DI(0) => \i__carry__0_i_2__2_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_3__0_n_0\,
      S(1) => \i__carry__0_i_4__0_n_0\,
      S(0) => \i__carry__0_i_5__1_n_0\
    );
\gtOp_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gtOp_inferred__3/i__carry_n_0\,
      CO(2) => \gtOp_inferred__3/i__carry_n_1\,
      CO(1) => \gtOp_inferred__3/i__carry_n_2\,
      CO(0) => \gtOp_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \i__carry_i_2__5_n_0\,
      DI(1) => \i__carry_i_3__5_n_0\,
      DI(0) => \col_cnt_reg_n_0_[1]\,
      O(3 downto 0) => \NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__6_n_0\,
      S(2) => \i__carry_i_5__4_n_0\,
      S(1) => \i__carry_i_6__2_n_0\,
      S(0) => \i__carry_i_7__2_n_0\
    );
\gtOp_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_inferred__3/i__carry_n_0\,
      CO(3) => \NLW_gtOp_inferred__3/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => gtOp,
      CO(1) => \gtOp_inferred__3/i__carry__0_n_2\,
      CO(0) => \gtOp_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \col_cnt_reg_n_0_[12]\,
      DI(1) => \i__carry__0_i_1__3_n_0\,
      DI(0) => \i__carry__0_i_2__3_n_0\,
      O(3 downto 0) => \NLW_gtOp_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_3__1_n_0\,
      S(1) => \i__carry__0_i_4_n_0\,
      S(0) => \i__carry__0_i_5__3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => total_cols(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => \time_control_regs[0]\(25),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(25),
      I1 => row_cnt_reg(12),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(11),
      I1 => row_cnt_reg(10),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[11]\,
      I1 => \col_cnt_reg_n_0_[10]\,
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => total_cols(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => total_rows(12),
      I1 => row_cnt_reg(12),
      O => \i__carry__0_i_1__6_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => total_cols(11),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => \time_control_regs[0]\(23),
      I2 => \time_control_regs[0]\(24),
      I3 => row_cnt_reg(11),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => row_cnt_reg(11),
      I3 => \time_control_regs[0]\(24),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(9),
      I1 => row_cnt_reg(8),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[9]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[11]\,
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \col_cnt_reg_n_0_[9]\,
      I3 => total_cols(9),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(12),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(8),
      I1 => \time_control_regs[0]\(21),
      I2 => \time_control_regs[0]\(22),
      I3 => row_cnt_reg(9),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => row_cnt_reg(9),
      I3 => \time_control_regs[0]\(22),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[11]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => row_cnt_reg(11),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => total_cols(12),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \time_control_regs[0]\(25),
      I1 => row_cnt_reg(12),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => \time_control_regs[0]\(25),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => total_cols(11),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => row_cnt_reg(11),
      I3 => \time_control_regs[0]\(24),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(8),
      I1 => row_cnt_reg(9),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(23),
      I1 => row_cnt_reg(10),
      I2 => row_cnt_reg(11),
      I3 => \time_control_regs[0]\(24),
      O => \i__carry__0_i_5__2_n_0\
    );
\i__carry__0_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry__0_i_5__3_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(9),
      I1 => \col_cnt_reg_n_0_[9]\,
      I2 => total_cols(8),
      I3 => \col_cnt_reg_n_0_[8]\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => row_cnt_reg(9),
      I3 => \time_control_regs[0]\(22),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(21),
      I1 => row_cnt_reg(8),
      I2 => row_cnt_reg(9),
      I3 => \time_control_regs[0]\(22),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => total_cols(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_cols(11),
      I1 => \col_cnt_reg_n_0_[11]\,
      I2 => \col_cnt_reg_n_0_[10]\,
      I3 => total_cols(10),
      I4 => total_cols(9),
      I5 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_rows(10),
      I1 => row_cnt_reg(10),
      I2 => total_rows(11),
      I3 => row_cnt_reg(11),
      I4 => row_cnt_reg(9),
      I5 => total_rows(9),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(6),
      I1 => \time_control_regs[0]\(19),
      I2 => \time_control_regs[0]\(20),
      I3 => row_cnt_reg(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => row_cnt_reg(7),
      I3 => \time_control_regs[0]\(20),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(7),
      I1 => row_cnt_reg(6),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[7]\,
      I1 => \col_cnt_reg_n_0_[6]\,
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => total_cols(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_cols(7),
      I1 => \col_cnt_reg_n_0_[7]\,
      I2 => \col_cnt_reg_n_0_[6]\,
      I3 => total_cols(6),
      I4 => total_cols(8),
      I5 => \col_cnt_reg_n_0_[8]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_rows(6),
      I1 => row_cnt_reg(6),
      I2 => total_rows(7),
      I3 => row_cnt_reg(7),
      I4 => row_cnt_reg(8),
      I5 => total_rows(8),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => \time_control_regs[0]\(17),
      I2 => \time_control_regs[0]\(18),
      I3 => row_cnt_reg(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => row_cnt_reg(5),
      I3 => \time_control_regs[0]\(18),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(5),
      I1 => row_cnt_reg(4),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[5]\,
      I1 => \col_cnt_reg_n_0_[4]\,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => total_cols(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_cols(5),
      I1 => \col_cnt_reg_n_0_[5]\,
      I2 => \col_cnt_reg_n_0_[4]\,
      I3 => total_cols(4),
      I4 => total_cols(3),
      I5 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_rows(4),
      I1 => row_cnt_reg(4),
      I2 => total_rows(5),
      I3 => row_cnt_reg(5),
      I4 => row_cnt_reg(3),
      I5 => total_rows(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(2),
      I1 => \time_control_regs[0]\(15),
      I2 => \time_control_regs[0]\(16),
      I3 => row_cnt_reg(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => row_cnt_reg(3),
      I3 => \time_control_regs[0]\(16),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(3),
      I1 => row_cnt_reg(2),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_cols(1),
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => total_cols(0),
      I4 => total_cols(2),
      I5 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => total_cols(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => total_rows(0),
      I1 => row_cnt_reg(0),
      I2 => total_rows(1),
      I3 => row_cnt_reg(1),
      I4 => row_cnt_reg(2),
      I5 => total_rows(2),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => row_cnt_reg(0),
      I1 => \time_control_regs[0]\(13),
      I2 => \time_control_regs[0]\(14),
      I3 => row_cnt_reg(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => row_cnt_reg(1),
      I3 => \time_control_regs[0]\(14),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => row_cnt_reg(1),
      I1 => row_cnt_reg(0),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \col_cnt_reg_n_0_[7]\,
      I3 => total_cols(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => row_cnt_reg(7),
      I3 => \time_control_regs[0]\(20),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(19),
      I1 => row_cnt_reg(6),
      I2 => row_cnt_reg(7),
      I3 => \time_control_regs[0]\(20),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(6),
      I1 => row_cnt_reg(7),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \col_cnt_reg_n_0_[5]\,
      I3 => total_cols(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => row_cnt_reg(5),
      I3 => \time_control_regs[0]\(18),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => row_cnt_reg(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(17),
      I1 => row_cnt_reg(4),
      I2 => row_cnt_reg(5),
      I3 => \time_control_regs[0]\(18),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(3),
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => total_cols(2),
      I3 => \col_cnt_reg_n_0_[2]\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => row_cnt_reg(3),
      I3 => \time_control_regs[0]\(16),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(2),
      I1 => row_cnt_reg(3),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(15),
      I1 => row_cnt_reg(2),
      I2 => row_cnt_reg(3),
      I3 => \time_control_regs[0]\(16),
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => total_cols(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => total_cols(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => row_cnt_reg(1),
      I3 => \time_control_regs[0]\(14),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(0),
      I1 => row_cnt_reg(1),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(13),
      I1 => row_cnt_reg(0),
      I2 => row_cnt_reg(1),
      I3 => \time_control_regs[0]\(14),
      O => \i__carry_i_8__2_n_0\
    );
in_fifo_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in_fifo_reset,
      I1 => \^in_fifo_reset_reg_0\,
      O => in_fifo_reset0
    );
in_fifo_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECECECECECECEEE"
    )
        port map (
      I0 => in_fifo_reset_i_3_n_0,
      I1 => \^col_cnt_reg[1]_0\,
      I2 => fifo_rd_i,
      I3 => eol_late_i_i_2_n_0,
      I4 => eol_expected_d,
      I5 => \genr_control_regs[0]\(1),
      O => \^in_fifo_reset_reg_0\
    );
in_fifo_reset_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55030303"
    )
        port map (
      I0 => \^sof_early_i_reg_1\,
      I1 => eol_expected_d,
      I2 => \^eol_late_i_reg_0\,
      I3 => in_fifo_reset,
      I4 => t_qb(0),
      O => in_fifo_reset_i_3_n_0
    );
in_fifo_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => in_fifo_reset0,
      Q => in_fifo_reset,
      R => SR(0)
    );
\intc_if[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => core_en_i,
      I1 => aclken,
      I2 => \genr_control_regs[0]\(0),
      I3 => \^eol_late_i_reg_0\,
      O => E(0)
    );
\intc_if[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sof_early_i_reg_1\,
      I1 => \^sof_early_i_reg_0\,
      I2 => \^intc_if\(4),
      I3 => \^eol_late_i_reg_0\,
      O => \^intc_if\(3)
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => leqOp_carry_i_1_n_0,
      DI(2) => leqOp_carry_i_2_n_0,
      DI(1) => leqOp_carry_i_3_n_0,
      DI(0) => leqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => leqOp_carry_i_5_n_0,
      S(2) => leqOp_carry_i_6_n_0,
      S(1) => leqOp_carry_i_7_n_0,
      S(0) => leqOp_carry_i_8_n_0
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3) => \NLW_leqOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => leqOp20_in,
      CO(1) => \leqOp_carry__0_n_2\,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \leqOp_carry__0_i_1_n_0\,
      DI(1) => \leqOp_carry__0_i_2_n_0\,
      DI(0) => \leqOp_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \leqOp_carry__0_i_4_n_0\,
      S(1) => \leqOp_carry__0_i_5_n_0\,
      S(0) => \leqOp_carry__0_i_6_n_0\
    );
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      I1 => \col_cnt_reg_n_0_[12]\,
      O => \leqOp_carry__0_i_1_n_0\
    );
\leqOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(10),
      I1 => \col_cnt_reg_n_0_[10]\,
      I2 => \time_control_regs[0]\(11),
      I3 => \col_cnt_reg_n_0_[11]\,
      O => \leqOp_carry__0_i_2_n_0\
    );
\leqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \time_control_regs[0]\(8),
      I2 => \time_control_regs[0]\(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \leqOp_carry__0_i_3_n_0\
    );
\leqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[12]\,
      I1 => \time_control_regs[0]\(12),
      O => \leqOp_carry__0_i_4_n_0\
    );
\leqOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(11),
      I1 => \col_cnt_reg_n_0_[11]\,
      I2 => \time_control_regs[0]\(10),
      I3 => \col_cnt_reg_n_0_[10]\,
      O => \leqOp_carry__0_i_5_n_0\
    );
\leqOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \time_control_regs[0]\(9),
      I3 => \col_cnt_reg_n_0_[9]\,
      O => \leqOp_carry__0_i_6_n_0\
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \time_control_regs[0]\(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(4),
      I1 => \col_cnt_reg_n_0_[4]\,
      I2 => \time_control_regs[0]\(5),
      I3 => \col_cnt_reg_n_0_[5]\,
      O => leqOp_carry_i_2_n_0
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \time_control_regs[0]\(2),
      I2 => \time_control_regs[0]\(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \time_control_regs[0]\(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      I1 => \col_cnt_reg_n_0_[6]\,
      I2 => \time_control_regs[0]\(7),
      I3 => \col_cnt_reg_n_0_[7]\,
      O => leqOp_carry_i_5_n_0
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(5),
      I1 => \col_cnt_reg_n_0_[5]\,
      I2 => \time_control_regs[0]\(4),
      I3 => \col_cnt_reg_n_0_[4]\,
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \time_control_regs[0]\(3),
      I3 => \col_cnt_reg_n_0_[3]\,
      O => leqOp_carry_i_7_n_0
    );
leqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \time_control_regs[0]\(1),
      I3 => \col_cnt_reg_n_0_[1]\,
      O => leqOp_carry_i_8_n_0
    );
\leqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \leqOp_inferred__0/i__carry_n_0\,
      CO(2) => \leqOp_inferred__0/i__carry_n_1\,
      CO(1) => \leqOp_inferred__0/i__carry_n_2\,
      CO(0) => \leqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\leqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \leqOp_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => leqOp23_in,
      CO(1) => \leqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \leqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_4__1_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\leqOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \leqOp_inferred__1/i__carry_n_0\,
      CO(2) => \leqOp_inferred__1/i__carry_n_1\,
      CO(1) => \leqOp_inferred__1/i__carry_n_2\,
      CO(0) => \leqOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\leqOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \leqOp_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_leqOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => leqOp16_in,
      CO(1) => \leqOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \leqOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__1_n_0\,
      DI(1) => \i__carry__0_i_2__1_n_0\,
      DI(0) => \i__carry__0_i_3__3_n_0\,
      O(3 downto 0) => \NLW_leqOp_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__0_i_4__3_n_0\,
      S(1) => \i__carry__0_i_5__0_n_0\,
      S(0) => \i__carry__0_i_6__0_n_0\
    );
line_cnt_tc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => line_cnt_tc_i_2_n_0,
      I1 => aclken,
      I2 => \genr_control_regs[0]\(0),
      I3 => resetn_out,
      I4 => line_cnt_tc_i_3_n_0,
      I5 => \^intc_if\(2),
      O => line_cnt_tc_i_1_n_0
    );
line_cnt_tc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => line_cnt_tc_i_4_n_0,
      I1 => line_cnt_tc_i_5_n_0,
      I2 => row_cnt_reg(9),
      I3 => row_cnt_reg(8),
      I4 => row_cnt_reg(5),
      O => line_cnt_tc_i_2_n_0
    );
line_cnt_tc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE0000FEFEEEFE"
    )
        port map (
      I0 => \write_ptr_int_reg[2]_0\,
      I1 => \read_ptr_int_reg[1]\,
      I2 => line_cnt_tc_i_6_n_0,
      I3 => leqOp20_in,
      I4 => empty_match_reg,
      I5 => \^co\(0),
      O => line_cnt_tc_i_3_n_0
    );
line_cnt_tc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => row_cnt_reg(6),
      I2 => row_cnt_reg(0),
      I3 => row_cnt_reg(7),
      I4 => row_cnt_reg(2),
      I5 => row_cnt_reg(11),
      O => line_cnt_tc_i_4_n_0
    );
line_cnt_tc_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => row_cnt_reg(4),
      I1 => row_cnt_reg(3),
      I2 => row_cnt_reg(12),
      I3 => row_cnt_reg(1),
      O => line_cnt_tc_i_5_n_0
    );
line_cnt_tc_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => gtOp22_in,
      I1 => leqOp23_in,
      I2 => gtOp21_in,
      O => line_cnt_tc_i_6_n_0
    );
line_cnt_tc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => line_cnt_tc_i_1_n_0,
      Q => \^intc_if\(2),
      R => '0'
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => ltOp_carry_i_1_n_0,
      DI(2) => ltOp_carry_i_2_n_0,
      DI(1) => ltOp_carry_i_3_n_0,
      DI(0) => ltOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ltOp_carry_i_5_n_0,
      S(2) => ltOp_carry_i_6_n_0,
      S(1) => ltOp_carry_i_7_n_0,
      S(0) => ltOp_carry_i_8_n_0
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \ltOp_carry__0_n_1\,
      CO(1) => \ltOp_carry__0_n_2\,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ltOp_carry__0_i_1_n_0\,
      DI(1) => \ltOp_carry__0_i_2_n_0\,
      DI(0) => \ltOp_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ltOp_carry__0_i_4_n_0\,
      S(1) => \ltOp_carry__0_i_5_n_0\,
      S(0) => \ltOp_carry__0_i_6_n_0\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => total_rows(12),
      I1 => row_cnt_reg(12),
      O => \ltOp_carry__0_i_1_n_0\
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(11),
      I1 => row_cnt_reg(11),
      I2 => total_rows(10),
      I3 => row_cnt_reg(10),
      O => \ltOp_carry__0_i_2_n_0\
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(9),
      I1 => row_cnt_reg(9),
      I2 => total_rows(8),
      I3 => row_cnt_reg(8),
      O => \ltOp_carry__0_i_3_n_0\
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => row_cnt_reg(12),
      I1 => total_rows(12),
      O => \ltOp_carry__0_i_4_n_0\
    );
\ltOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(11),
      I1 => total_rows(11),
      I2 => row_cnt_reg(10),
      I3 => total_rows(10),
      O => \ltOp_carry__0_i_5_n_0\
    );
\ltOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(9),
      I1 => total_rows(9),
      I2 => row_cnt_reg(8),
      I3 => total_rows(8),
      O => \ltOp_carry__0_i_6_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(7),
      I1 => row_cnt_reg(7),
      I2 => total_rows(6),
      I3 => row_cnt_reg(6),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(5),
      I1 => row_cnt_reg(5),
      I2 => total_rows(4),
      I3 => row_cnt_reg(4),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(3),
      I1 => row_cnt_reg(3),
      I2 => total_rows(2),
      I3 => row_cnt_reg(2),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => total_rows(1),
      I1 => row_cnt_reg(1),
      I2 => total_rows(0),
      I3 => row_cnt_reg(0),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(7),
      I1 => total_rows(7),
      I2 => row_cnt_reg(6),
      I3 => total_rows(6),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(5),
      I1 => total_rows(5),
      I2 => row_cnt_reg(4),
      I3 => total_rows(4),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(3),
      I1 => total_rows(3),
      I2 => row_cnt_reg(2),
      I3 => total_rows(2),
      O => ltOp_carry_i_7_n_0
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => row_cnt_reg(1),
      I1 => total_rows(1),
      I2 => row_cnt_reg(0),
      I3 => total_rows(0),
      O => ltOp_carry_i_8_n_0
    );
\ltOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__0/i__carry_n_0\,
      CO(2) => \ltOp_inferred__0/i__carry_n_1\,
      CO(1) => \ltOp_inferred__0/i__carry_n_2\,
      CO(0) => \ltOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__4_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__6_n_0\,
      S(2) => \i__carry_i_3__6_n_0\,
      S(1) => \i__carry_i_4__5_n_0\,
      S(0) => \i__carry_i_5__2_n_0\
    );
\ltOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_ltOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => \ltOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__4_n_0\,
      S(0) => \i__carry__0_i_2__4_n_0\
    );
out_fifo_eol_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => eqOp1_out,
      Q => da(0),
      R => SR(0)
    );
out_fifo_sof_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => sof_expected_i_2_n_0,
      I1 => out_fifo_sof_i_2_n_0,
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \col_cnt_reg_n_0_[10]\,
      I4 => \col_cnt_reg_n_0_[7]\,
      I5 => \col_cnt_reg_n_0_[6]\,
      O => out_fifo_sof0
    );
out_fifo_sof_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      O => out_fifo_sof_i_2_n_0
    );
out_fifo_sof_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => out_fifo_sof0,
      Q => da(1),
      S => SR(0)
    );
pixel_cnt_tc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => eqOp,
      I1 => aclken,
      I2 => \genr_control_regs[0]\(0),
      I3 => resetn_out,
      I4 => line_cnt_tc_i_3_n_0,
      I5 => \^intc_if\(1),
      O => pixel_cnt_tc_i_1_n_0
    );
pixel_cnt_tc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => pixel_cnt_tc_i_3_n_0,
      I1 => pixel_cnt_tc_i_4_n_0,
      I2 => \col_cnt_reg_n_0_[4]\,
      I3 => \col_cnt_reg_n_0_[9]\,
      I4 => \col_cnt_reg_n_0_[6]\,
      O => eqOp
    );
pixel_cnt_tc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \col_cnt_reg_n_0_[12]\,
      I4 => \col_cnt_reg_n_0_[5]\,
      I5 => \col_cnt_reg_n_0_[7]\,
      O => pixel_cnt_tc_i_3_n_0
    );
pixel_cnt_tc_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[10]\,
      I1 => \col_cnt_reg_n_0_[8]\,
      I2 => \col_cnt_reg_n_0_[11]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      O => pixel_cnt_tc_i_4_n_0
    );
pixel_cnt_tc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pixel_cnt_tc_i_1_n_0,
      Q => \^intc_if\(1),
      R => '0'
    );
\row_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000111FFFFFFFF"
    )
        port map (
      I0 => \^col_cnt_reg[1]_0\,
      I1 => line_cnt_tc_i_3_n_0,
      I2 => \row_cnt[0]_i_4_n_0\,
      I3 => \ltOp_carry__0_n_1\,
      I4 => \col_cnt[12]_i_4_n_0\,
      I5 => resetn_out,
      O => \row_cnt[0]_i_1_n_0\
    );
\row_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => eol_late_i3_out,
      I1 => geqOp,
      I2 => line_cnt_tc_i_3_n_0,
      I3 => aclken,
      I4 => \genr_control_regs[0]\(0),
      O => row_cnt
    );
\row_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C33340004555"
    )
        port map (
      I0 => \^sof_early_i_reg_0\,
      I1 => sof_expected,
      I2 => in_fifo_reset,
      I3 => t_qb(1),
      I4 => \^sof_early_i_reg_1\,
      I5 => fifo_rd_d,
      O => \row_cnt[0]_i_4_n_0\
    );
\row_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(3),
      O => \row_cnt[0]_i_5_n_0\
    );
\row_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(2),
      O => \row_cnt[0]_i_6_n_0\
    );
\row_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(1),
      O => \row_cnt[0]_i_7_n_0\
    );
\row_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(0),
      O => \row_cnt[0]_i_8_n_0\
    );
\row_cnt[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(12),
      O => \row_cnt[12]_i_2_n_0\
    );
\row_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(7),
      O => \row_cnt[4]_i_2_n_0\
    );
\row_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(6),
      O => \row_cnt[4]_i_3_n_0\
    );
\row_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(5),
      O => \row_cnt[4]_i_4_n_0\
    );
\row_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(4),
      O => \row_cnt[4]_i_5_n_0\
    );
\row_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(11),
      O => \row_cnt[8]_i_2_n_0\
    );
\row_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(10),
      O => \row_cnt[8]_i_3_n_0\
    );
\row_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(9),
      O => \row_cnt[8]_i_4_n_0\
    );
\row_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => row_cnt_reg(8),
      O => \row_cnt[8]_i_5_n_0\
    );
\row_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[0]_i_3_n_7\,
      Q => row_cnt_reg(0),
      S => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row_cnt_reg[0]_i_3_n_0\,
      CO(2) => \row_cnt_reg[0]_i_3_n_1\,
      CO(1) => \row_cnt_reg[0]_i_3_n_2\,
      CO(0) => \row_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \row_cnt_reg[0]_i_3_n_4\,
      O(2) => \row_cnt_reg[0]_i_3_n_5\,
      O(1) => \row_cnt_reg[0]_i_3_n_6\,
      O(0) => \row_cnt_reg[0]_i_3_n_7\,
      S(3) => \row_cnt[0]_i_5_n_0\,
      S(2) => \row_cnt[0]_i_6_n_0\,
      S(1) => \row_cnt[0]_i_7_n_0\,
      S(0) => \row_cnt[0]_i_8_n_0\
    );
\row_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[8]_i_1_n_5\,
      Q => row_cnt_reg(10),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[8]_i_1_n_4\,
      Q => row_cnt_reg(11),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[12]_i_1_n_7\,
      Q => row_cnt_reg(12),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_row_cnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_row_cnt_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \row_cnt_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \row_cnt[12]_i_2_n_0\
    );
\row_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[0]_i_3_n_6\,
      Q => row_cnt_reg(1),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[0]_i_3_n_5\,
      Q => row_cnt_reg(2),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[0]_i_3_n_4\,
      Q => row_cnt_reg(3),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[4]_i_1_n_7\,
      Q => row_cnt_reg(4),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_cnt_reg[0]_i_3_n_0\,
      CO(3) => \row_cnt_reg[4]_i_1_n_0\,
      CO(2) => \row_cnt_reg[4]_i_1_n_1\,
      CO(1) => \row_cnt_reg[4]_i_1_n_2\,
      CO(0) => \row_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_cnt_reg[4]_i_1_n_4\,
      O(2) => \row_cnt_reg[4]_i_1_n_5\,
      O(1) => \row_cnt_reg[4]_i_1_n_6\,
      O(0) => \row_cnt_reg[4]_i_1_n_7\,
      S(3) => \row_cnt[4]_i_2_n_0\,
      S(2) => \row_cnt[4]_i_3_n_0\,
      S(1) => \row_cnt[4]_i_4_n_0\,
      S(0) => \row_cnt[4]_i_5_n_0\
    );
\row_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[4]_i_1_n_6\,
      Q => row_cnt_reg(5),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[4]_i_1_n_5\,
      Q => row_cnt_reg(6),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[4]_i_1_n_4\,
      Q => row_cnt_reg(7),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[8]_i_1_n_7\,
      Q => row_cnt_reg(8),
      R => \row_cnt[0]_i_1_n_0\
    );
\row_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_cnt_reg[4]_i_1_n_0\,
      CO(3) => \row_cnt_reg[8]_i_1_n_0\,
      CO(2) => \row_cnt_reg[8]_i_1_n_1\,
      CO(1) => \row_cnt_reg[8]_i_1_n_2\,
      CO(0) => \row_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_cnt_reg[8]_i_1_n_4\,
      O(2) => \row_cnt_reg[8]_i_1_n_5\,
      O(1) => \row_cnt_reg[8]_i_1_n_6\,
      O(0) => \row_cnt_reg[8]_i_1_n_7\,
      S(3) => \row_cnt[8]_i_2_n_0\,
      S(2) => \row_cnt[8]_i_3_n_0\,
      S(1) => \row_cnt[8]_i_4_n_0\,
      S(0) => \row_cnt[8]_i_5_n_0\
    );
\row_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => row_cnt,
      D => \row_cnt_reg[8]_i_1_n_6\,
      Q => row_cnt_reg(9),
      R => \row_cnt[0]_i_1_n_0\
    );
sof_early_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5755555502000000"
    )
        port map (
      I0 => fifo_rd_d,
      I1 => sof_expected,
      I2 => \^sof_early_i_reg_1\,
      I3 => in_fifo_reset,
      I4 => t_qb(1),
      I5 => \^sof_early_i_reg_0\,
      O => sof_early_i_i_1_n_0
    );
sof_early_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_early_i_i_1_n_0,
      Q => \^sof_early_i_reg_0\,
      R => SR(0)
    );
sof_expected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sof_expected_i_2_n_0,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[11]\,
      I4 => \col_cnt_reg_n_0_[10]\,
      I5 => sof_expected_i_3_n_0,
      O => sof_expected0
    );
sof_expected_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => sof_expected_i_4_n_0,
      I1 => sof_expected_i_5_n_0,
      I2 => \col_cnt_reg_n_0_[12]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => row_cnt_reg(12),
      O => sof_expected_i_2_n_0
    );
sof_expected_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[6]\,
      I1 => \col_cnt_reg_n_0_[7]\,
      O => sof_expected_i_3_n_0
    );
sof_expected_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => row_cnt_reg(1),
      I1 => row_cnt_reg(0),
      I2 => row_cnt_reg(2),
      I3 => row_cnt_reg(3),
      I4 => sof_expected_i_6_n_0,
      I5 => sof_expected_i_7_n_0,
      O => sof_expected_i_4_n_0
    );
sof_expected_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => sof_expected_i_8_n_0,
      I1 => row_cnt_reg(8),
      I2 => row_cnt_reg(9),
      I3 => sof_expected_i_9_n_0,
      I4 => row_cnt_reg(4),
      I5 => row_cnt_reg(5),
      O => sof_expected_i_5_n_0
    );
sof_expected_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(10),
      I1 => row_cnt_reg(11),
      O => sof_expected_i_6_n_0
    );
sof_expected_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_cnt_reg(6),
      I1 => row_cnt_reg(7),
      O => sof_expected_i_7_n_0
    );
sof_expected_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[8]\,
      I1 => \col_cnt_reg_n_0_[9]\,
      O => sof_expected_i_8_n_0
    );
sof_expected_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[4]\,
      I1 => \col_cnt_reg_n_0_[5]\,
      O => sof_expected_i_9_n_0
    );
sof_expected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_expected0,
      Q => sof_expected,
      R => SR(0)
    );
sof_late_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \genr_control_regs[0]\(0),
      I1 => aclken,
      O => \^master_en\
    );
sof_late_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F2A3F00"
    )
        port map (
      I0 => sof_expected,
      I1 => in_fifo_reset,
      I2 => t_qb(1),
      I3 => \^sof_early_i_reg_1\,
      I4 => fifo_rd_d,
      O => sof_late_i2_out
    );
sof_late_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^master_en\,
      D => sof_late_i2_out,
      Q => \^sof_early_i_reg_1\,
      R => SR(0)
    );
\total_cols[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(0),
      O => plusOp(0)
    );
\total_cols[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(12),
      O => \total_cols[12]_i_2_n_0\
    );
\total_cols[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(11),
      O => \total_cols[12]_i_3_n_0\
    );
\total_cols[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(10),
      O => \total_cols[12]_i_4_n_0\
    );
\total_cols[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(9),
      O => \total_cols[12]_i_5_n_0\
    );
\total_cols[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(4),
      O => \total_cols[4]_i_2_n_0\
    );
\total_cols[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(3),
      O => \total_cols[4]_i_3_n_0\
    );
\total_cols[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \time_control_regs[0]\(2),
      O => \total_cols[4]_i_4_n_0\
    );
\total_cols[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(1),
      O => \total_cols[4]_i_5_n_0\
    );
\total_cols[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(8),
      O => \total_cols[8]_i_2_n_0\
    );
\total_cols[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(7),
      O => \total_cols[8]_i_3_n_0\
    );
\total_cols[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(6),
      O => \total_cols[8]_i_4_n_0\
    );
\total_cols[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_control_regs[0]\(5),
      O => \total_cols[8]_i_5_n_0\
    );
\total_cols_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(0),
      Q => total_cols(0),
      R => '0'
    );
\total_cols_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(10),
      Q => total_cols(10),
      R => '0'
    );
\total_cols_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(11),
      Q => total_cols(11),
      R => '0'
    );
\total_cols_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(12),
      Q => total_cols(12),
      R => '0'
    );
\total_cols_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_cols_reg[8]_i_1_n_0\,
      CO(3) => \NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \total_cols_reg[12]_i_1_n_1\,
      CO(1) => \total_cols_reg[12]_i_1_n_2\,
      CO(0) => \total_cols_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \total_cols[12]_i_2_n_0\,
      S(2) => \total_cols[12]_i_3_n_0\,
      S(1) => \total_cols[12]_i_4_n_0\,
      S(0) => \total_cols[12]_i_5_n_0\
    );
\total_cols_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(1),
      Q => total_cols(1),
      R => '0'
    );
\total_cols_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(2),
      Q => total_cols(2),
      R => '0'
    );
\total_cols_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(3),
      Q => total_cols(3),
      R => '0'
    );
\total_cols_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(4),
      Q => total_cols(4),
      R => '0'
    );
\total_cols_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_cols_reg[4]_i_1_n_0\,
      CO(2) => \total_cols_reg[4]_i_1_n_1\,
      CO(1) => \total_cols_reg[4]_i_1_n_2\,
      CO(0) => \total_cols_reg[4]_i_1_n_3\,
      CYINIT => \time_control_regs[0]\(0),
      DI(3) => '0',
      DI(2 downto 1) => \time_control_regs[0]\(3 downto 2),
      DI(0) => '0',
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \total_cols[4]_i_2_n_0\,
      S(2) => \total_cols[4]_i_3_n_0\,
      S(1) => \total_cols[4]_i_4_n_0\,
      S(0) => \total_cols[4]_i_5_n_0\
    );
\total_cols_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(5),
      Q => total_cols(5),
      R => '0'
    );
\total_cols_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(6),
      Q => total_cols(6),
      R => '0'
    );
\total_cols_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(7),
      Q => total_cols(7),
      R => '0'
    );
\total_cols_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(8),
      Q => total_cols(8),
      R => '0'
    );
\total_cols_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_cols_reg[4]_i_1_n_0\,
      CO(3) => \total_cols_reg[8]_i_1_n_0\,
      CO(2) => \total_cols_reg[8]_i_1_n_1\,
      CO(1) => \total_cols_reg[8]_i_1_n_2\,
      CO(0) => \total_cols_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \total_cols[8]_i_2_n_0\,
      S(2) => \total_cols[8]_i_3_n_0\,
      S(1) => \total_cols[8]_i_4_n_0\,
      S(0) => \total_cols[8]_i_5_n_0\
    );
\total_cols_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => plusOp(9),
      Q => total_cols(9),
      R => '0'
    );
\total_rows_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(13),
      Q => total_rows(0),
      R => '0'
    );
\total_rows_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(23),
      Q => total_rows(10),
      R => '0'
    );
\total_rows_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(24),
      Q => total_rows(11),
      R => '0'
    );
\total_rows_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(25),
      Q => total_rows(12),
      R => '0'
    );
\total_rows_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(14),
      Q => total_rows(1),
      R => '0'
    );
\total_rows_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(15),
      Q => total_rows(2),
      R => '0'
    );
\total_rows_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(16),
      Q => total_rows(3),
      R => '0'
    );
\total_rows_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(17),
      Q => total_rows(4),
      R => '0'
    );
\total_rows_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(18),
      Q => total_rows(5),
      R => '0'
    );
\total_rows_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(19),
      Q => total_rows(6),
      R => '0'
    );
\total_rows_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(20),
      Q => total_rows(7),
      R => '0'
    );
\total_rows_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(21),
      Q => total_rows(8),
      R => '0'
    );
\total_rows_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \time_control_regs[0]\(22),
      Q => total_rows(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_delay is
  port (
    y_intb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_delay : entity is "delay";
end Arty_Z7_20_v_rgb2ycrcb_0_0_delay;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_delay is
  signal \needs_delay.shift_register_reg[3][0]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][1]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][2]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][3]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][4]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][5]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][6]_srl3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[3][7]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][0]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[3][0]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][0]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][1]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][1]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][1]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][2]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][2]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][2]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][3]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][3]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][3]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][4]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][4]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][4]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][5]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][5]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][5]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][6]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][6]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][6]_srl3 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[3][7]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] ";
  attribute srl_name of \needs_delay.shift_register_reg[3][7]_srl3\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][7]_srl3 ";
begin
\needs_delay.shift_register_reg[3][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[3][0]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[3][1]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[3][2]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[3][3]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[3][4]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[3][5]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[3][6]_srl3_n_0\
    );
\needs_delay.shift_register_reg[3][7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[3][7]_srl3_n_0\
    );
\needs_delay.shift_register_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][0]_srl3_n_0\,
      Q => y_intb(0),
      R => '0'
    );
\needs_delay.shift_register_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][1]_srl3_n_0\,
      Q => y_intb(1),
      R => '0'
    );
\needs_delay.shift_register_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][2]_srl3_n_0\,
      Q => y_intb(2),
      R => '0'
    );
\needs_delay.shift_register_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][3]_srl3_n_0\,
      Q => y_intb(3),
      R => '0'
    );
\needs_delay.shift_register_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][4]_srl3_n_0\,
      Q => y_intb(4),
      R => '0'
    );
\needs_delay.shift_register_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][5]_srl3_n_0\,
      Q => y_intb(5),
      R => '0'
    );
\needs_delay.shift_register_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][6]_srl3_n_0\,
      Q => y_intb(6),
      R => '0'
    );
\needs_delay.shift_register_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[3][7]_srl3_n_0\,
      Q => y_intb(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \needs_delay.shift_register_reg[1][0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized0\ : entity is "delay";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized0\ is
  signal b_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \needs_delay.shift_register[1][3]_i_3__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_5__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_6__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][0]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][1]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][2]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][3]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][4]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][5]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][6]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][7]_srl4_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][0]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][1]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][2]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][3]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][4]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][5]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][6]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][7]_srl4 ";
begin
\needs_delay.shift_register[1][3]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(3),
      I1 => s(2),
      O => \needs_delay.shift_register[1][3]_i_3__2_n_0\
    );
\needs_delay.shift_register[1][3]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(2),
      I1 => s(1),
      O => \needs_delay.shift_register[1][3]_i_4__2_n_0\
    );
\needs_delay.shift_register[1][3]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(1),
      I1 => s(0),
      O => \needs_delay.shift_register[1][3]_i_5__2_n_0\
    );
\needs_delay.shift_register[1][3]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b_int(0),
      O => \needs_delay.shift_register[1][3]_i_6__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(7),
      I1 => s(6),
      O => \needs_delay.shift_register[1][7]_i_2__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(6),
      I1 => s(5),
      O => \needs_delay.shift_register[1][7]_i_3__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(5),
      I1 => s(4),
      O => \needs_delay.shift_register[1][7]_i_4__2_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b_int(4),
      I1 => s(3),
      O => \needs_delay.shift_register[1][7]_i_5__2_n_0\
    );
\needs_delay.shift_register_reg[1][3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1__1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1__1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1__1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1__1_n_3\,
      CYINIT => \needs_delay.shift_register_reg[1][0]\,
      DI(3 downto 0) => b_int(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \needs_delay.shift_register[1][3]_i_3__2_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_4__2_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_5__2_n_0\,
      S(0) => \needs_delay.shift_register[1][3]_i_6__0_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => b_int(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \needs_delay.shift_register[1][7]_i_2__2_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3__2_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4__2_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5__2_n_0\
    );
\needs_delay.shift_register_reg[4][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[4][0]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[4][1]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[4][2]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[4][3]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[4][4]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[4][5]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[4][6]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[4][7]_srl4_n_0\
    );
\needs_delay.shift_register_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][0]_srl4_n_0\,
      Q => b_int(0),
      R => '0'
    );
\needs_delay.shift_register_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][1]_srl4_n_0\,
      Q => b_int(1),
      R => '0'
    );
\needs_delay.shift_register_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][2]_srl4_n_0\,
      Q => b_int(2),
      R => '0'
    );
\needs_delay.shift_register_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][3]_srl4_n_0\,
      Q => b_int(3),
      R => '0'
    );
\needs_delay.shift_register_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][4]_srl4_n_0\,
      Q => b_int(4),
      R => '0'
    );
\needs_delay.shift_register_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][5]_srl4_n_0\,
      Q => b_int(5),
      R => '0'
    );
\needs_delay.shift_register_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][6]_srl4_n_0\,
      Q => b_int(6),
      R => '0'
    );
\needs_delay.shift_register_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][7]_srl4_n_0\,
      Q => b_int(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \needs_delay.shift_register_reg[1][10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \needs_delay.shift_register_reg[1][0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized1\ : entity is "delay";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized1\ is
  signal \needs_delay.shift_register[1][3]_i_2__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_3__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_5__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__2_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__2_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__2_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__2_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][0]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][1]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][2]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][3]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][4]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][5]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][6]_srl4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[4][7]_srl4_n_0\ : STD_LOGIC;
  signal r_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[4][0]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][0]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][1]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][1]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][2]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][2]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][3]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][3]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][4]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][4]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][5]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][5]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][6]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][6]_srl4 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] ";
  attribute srl_name of \needs_delay.shift_register_reg[4][7]_srl4\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][7]_srl4 ";
begin
\needs_delay.shift_register[1][3]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(3),
      I1 => s(2),
      O => \needs_delay.shift_register[1][3]_i_2__2_n_0\
    );
\needs_delay.shift_register[1][3]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(2),
      I1 => s(1),
      O => \needs_delay.shift_register[1][3]_i_3__1_n_0\
    );
\needs_delay.shift_register[1][3]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(1),
      I1 => s(0),
      O => \needs_delay.shift_register[1][3]_i_4__1_n_0\
    );
\needs_delay.shift_register[1][3]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_int(0),
      O => \needs_delay.shift_register[1][3]_i_5__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(7),
      I1 => s(6),
      O => \needs_delay.shift_register[1][7]_i_2__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(6),
      I1 => s(5),
      O => \needs_delay.shift_register[1][7]_i_3__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(5),
      I1 => s(4),
      O => \needs_delay.shift_register[1][7]_i_4__1_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_int(4),
      I1 => s(3),
      O => \needs_delay.shift_register[1][7]_i_5__1_n_0\
    );
\needs_delay.shift_register_reg[1][3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1__2_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1__2_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1__2_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1__2_n_3\,
      CYINIT => \needs_delay.shift_register_reg[1][0]\,
      DI(3 downto 0) => r_int(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \needs_delay.shift_register[1][3]_i_2__2_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_3__1_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_4__1_n_0\,
      S(0) => \needs_delay.shift_register[1][3]_i_5__0_n_0\
    );
\needs_delay.shift_register_reg[1][7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1__2_n_0\,
      CO(3) => \needs_delay.shift_register_reg[1][10]\(0),
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_int(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \needs_delay.shift_register[1][7]_i_2__1_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3__1_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4__1_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5__1_n_0\
    );
\needs_delay.shift_register_reg[4][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(0),
      Q => \needs_delay.shift_register_reg[4][0]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(1),
      Q => \needs_delay.shift_register_reg[4][1]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(2),
      Q => \needs_delay.shift_register_reg[4][2]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(3),
      Q => \needs_delay.shift_register_reg[4][3]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(4),
      Q => \needs_delay.shift_register_reg[4][4]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(5),
      Q => \needs_delay.shift_register_reg[4][5]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(6),
      Q => \needs_delay.shift_register_reg[4][6]_srl4_n_0\
    );
\needs_delay.shift_register_reg[4][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => Q(7),
      Q => \needs_delay.shift_register_reg[4][7]_srl4_n_0\
    );
\needs_delay.shift_register_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][0]_srl4_n_0\,
      Q => r_int(0),
      R => '0'
    );
\needs_delay.shift_register_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][1]_srl4_n_0\,
      Q => r_int(1),
      R => '0'
    );
\needs_delay.shift_register_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][2]_srl4_n_0\,
      Q => r_int(2),
      R => '0'
    );
\needs_delay.shift_register_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][3]_srl4_n_0\,
      Q => r_int(3),
      R => '0'
    );
\needs_delay.shift_register_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][4]_srl4_n_0\,
      Q => r_int(4),
      R => '0'
    );
\needs_delay.shift_register_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][5]_srl4_n_0\,
      Q => r_int(5),
      R => '0'
    );
\needs_delay.shift_register_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][6]_srl4_n_0\,
      Q => r_int(6),
      R => '0'
    );
\needs_delay.shift_register_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[4][7]_srl4_n_0\,
      Q => r_int(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized2\ is
  port (
    \needs_delay.shift_register_reg[1][9]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][8]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][7]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][6]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][5]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][4]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][3]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][2]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][1]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][0]\ : out STD_LOGIC;
    \needs_delay.shift_register_reg[1][9]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][9]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized2\ : entity is "delay";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized2\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized2\ is
  signal \^needs_delay.shift_register_reg[1][0]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][1]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][2]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][3]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][4]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][5]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][6]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][7]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][8]\ : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][9]\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][0]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][1]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][2]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][3]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][4]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][5]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][6]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][7]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][8]_srl2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[2][9]_srl2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][0]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \needs_delay.shift_register_reg[2][0]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][0]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][1]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][1]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][1]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][2]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][2]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][2]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][3]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][3]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][3]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][4]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][4]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][4]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][5]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][5]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][5]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][6]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][6]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][6]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][7]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][7]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][7]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][8]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][8]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][8]_srl2 ";
  attribute srl_bus_name of \needs_delay.shift_register_reg[2][9]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] ";
  attribute srl_name of \needs_delay.shift_register_reg[2][9]_srl2\ : label is "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][9]_srl2 ";
begin
  \needs_delay.shift_register_reg[1][0]\ <= \^needs_delay.shift_register_reg[1][0]\;
  \needs_delay.shift_register_reg[1][1]\ <= \^needs_delay.shift_register_reg[1][1]\;
  \needs_delay.shift_register_reg[1][2]\ <= \^needs_delay.shift_register_reg[1][2]\;
  \needs_delay.shift_register_reg[1][3]\ <= \^needs_delay.shift_register_reg[1][3]\;
  \needs_delay.shift_register_reg[1][4]\ <= \^needs_delay.shift_register_reg[1][4]\;
  \needs_delay.shift_register_reg[1][5]\ <= \^needs_delay.shift_register_reg[1][5]\;
  \needs_delay.shift_register_reg[1][6]\ <= \^needs_delay.shift_register_reg[1][6]\;
  \needs_delay.shift_register_reg[1][7]\ <= \^needs_delay.shift_register_reg[1][7]\;
  \needs_delay.shift_register_reg[1][8]\ <= \^needs_delay.shift_register_reg[1][8]\;
  \needs_delay.shift_register_reg[1][9]\ <= \^needs_delay.shift_register_reg[1][9]\;
\gtOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][8]\,
      I1 => \^needs_delay.shift_register_reg[1][9]\,
      O => \needs_delay.shift_register_reg[1][9]_0\(0)
    );
\gtOp_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][8]\,
      I1 => \^needs_delay.shift_register_reg[1][9]\,
      O => \needs_delay.shift_register_reg[1][9]_1\(0)
    );
\gtOp_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][6]\,
      I1 => \core_control_regs[0]\(6),
      I2 => \core_control_regs[0]\(7),
      I3 => \^needs_delay.shift_register_reg[1][7]\,
      O => DI(3)
    );
\gtOp_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][4]\,
      I1 => \core_control_regs[0]\(4),
      I2 => \core_control_regs[0]\(5),
      I3 => \^needs_delay.shift_register_reg[1][5]\,
      O => DI(2)
    );
\gtOp_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][2]\,
      I1 => \core_control_regs[0]\(2),
      I2 => \core_control_regs[0]\(3),
      I3 => \^needs_delay.shift_register_reg[1][3]\,
      O => DI(1)
    );
\gtOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][0]\,
      I1 => \core_control_regs[0]\(0),
      I2 => \core_control_regs[0]\(1),
      I3 => \^needs_delay.shift_register_reg[1][1]\,
      O => DI(0)
    );
\gtOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][6]\,
      I1 => \core_control_regs[0]\(6),
      I2 => \^needs_delay.shift_register_reg[1][7]\,
      I3 => \core_control_regs[0]\(7),
      O => S(3)
    );
\gtOp_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][4]\,
      I1 => \core_control_regs[0]\(4),
      I2 => \^needs_delay.shift_register_reg[1][5]\,
      I3 => \core_control_regs[0]\(5),
      O => S(2)
    );
\gtOp_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][2]\,
      I1 => \core_control_regs[0]\(2),
      I2 => \^needs_delay.shift_register_reg[1][3]\,
      I3 => \core_control_regs[0]\(3),
      O => S(1)
    );
\gtOp_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^needs_delay.shift_register_reg[1][0]\,
      I1 => \core_control_regs[0]\(0),
      I2 => \^needs_delay.shift_register_reg[1][1]\,
      I3 => \core_control_regs[0]\(1),
      O => S(0)
    );
\needs_delay.shift_register_reg[2][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(0),
      Q => \needs_delay.shift_register_reg[2][0]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(1),
      Q => \needs_delay.shift_register_reg[2][1]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(2),
      Q => \needs_delay.shift_register_reg[2][2]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(3),
      Q => \needs_delay.shift_register_reg[2][3]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(4),
      Q => \needs_delay.shift_register_reg[2][4]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][5]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(5),
      Q => \needs_delay.shift_register_reg[2][5]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][6]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(6),
      Q => \needs_delay.shift_register_reg[2][6]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][7]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(7),
      Q => \needs_delay.shift_register_reg[2][7]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][8]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(8),
      Q => \needs_delay.shift_register_reg[2][8]_srl2_n_0\
    );
\needs_delay.shift_register_reg[2][9]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => E(0),
      CLK => aclk,
      D => \^s\(9),
      Q => \needs_delay.shift_register_reg[2][9]_srl2_n_0\
    );
\needs_delay.shift_register_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][0]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][0]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][1]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][1]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][2]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][2]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][3]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][3]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][4]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][4]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][5]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][5]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][6]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][6]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][7]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][7]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][8]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][8]\,
      R => '0'
    );
\needs_delay.shift_register_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[2][9]_srl2_n_0\,
      Q => \^needs_delay.shift_register_reg[1][9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr is
  port (
    out_s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr : entity is "delay_sclr";
end Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr is
  signal \needs_delay.shift_register[1][3]_i_3__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_5__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_6_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][8]_i_1_n_7\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_needs_delay.shift_register_reg[1][8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  p_0_in(0) <= \^p_0_in\(0);
\needs_delay.shift_register[1][3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => \^p_0_in\(0)
    );
\needs_delay.shift_register[1][3]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(11),
      I1 => Q(3),
      O => \needs_delay.shift_register[1][3]_i_3__0_n_0\
    );
\needs_delay.shift_register[1][3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(10),
      I1 => Q(2),
      O => \needs_delay.shift_register[1][3]_i_4__0_n_0\
    );
\needs_delay.shift_register[1][3]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(9),
      I1 => Q(1),
      O => \needs_delay.shift_register[1][3]_i_5__1_n_0\
    );
\needs_delay.shift_register[1][3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => \needs_delay.shift_register[1][3]_i_6_n_0\
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(15),
      I1 => Q(7),
      O => \needs_delay.shift_register[1][7]_i_2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(14),
      I1 => Q(6),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(13),
      I1 => Q(5),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(12),
      I1 => Q(4),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1_n_7\,
      Q => out_s(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1_n_6\,
      Q => out_s(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1_n_5\,
      Q => out_s(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1_n_4\,
      Q => out_s(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1_n_3\,
      CYINIT => \^p_0_in\(0),
      DI(3 downto 0) => Q(11 downto 8),
      O(3) => \needs_delay.shift_register_reg[1][3]_i_1_n_4\,
      O(2) => \needs_delay.shift_register_reg[1][3]_i_1_n_5\,
      O(1) => \needs_delay.shift_register_reg[1][3]_i_1_n_6\,
      O(0) => \needs_delay.shift_register_reg[1][3]_i_1_n_7\,
      S(3) => \needs_delay.shift_register[1][3]_i_3__0_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_4__0_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_5__1_n_0\,
      S(0) => \needs_delay.shift_register[1][3]_i_6_n_0\
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_7\,
      Q => out_s(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_6\,
      Q => out_s(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_5\,
      Q => out_s(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1_n_4\,
      Q => out_s(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_4\,
      O(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_5\,
      O(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_6\,
      O(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_7\,
      S(3) => \needs_delay.shift_register[1][7]_i_2_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][8]_i_1_n_7\,
      Q => out_s(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_needs_delay.shift_register_reg[1][8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_needs_delay.shift_register_reg[1][8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \needs_delay.shift_register_reg[1][8]_i_1_n_7\,
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr_6 is
  port (
    out_s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr_6 : entity is "delay_sclr";
end Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr_6;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr_6 is
  signal \needs_delay.shift_register[1][3]_i_2__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1__0_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_4\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_5\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_6\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1__0_n_7\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[1][8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][8]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\needs_delay.shift_register[1][3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(10),
      I1 => Q(2),
      O => \needs_delay.shift_register[1][3]_i_2__1_n_0\
    );
\needs_delay.shift_register[1][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(9),
      I1 => Q(1),
      O => \needs_delay.shift_register[1][3]_i_3_n_0\
    );
\needs_delay.shift_register[1][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(8),
      I1 => Q(0),
      O => \needs_delay.shift_register[1][3]_i_4_n_0\
    );
\needs_delay.shift_register[1][3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \needs_delay.shift_register[1][3]_i_5_n_0\
    );
\needs_delay.shift_register[1][7]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(14),
      I1 => Q(6),
      O => \needs_delay.shift_register[1][7]_i_2__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(13),
      I1 => Q(5),
      O => \needs_delay.shift_register[1][7]_i_3__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(12),
      I1 => Q(4),
      O => \needs_delay.shift_register[1][7]_i_4__0_n_0\
    );
\needs_delay.shift_register[1][7]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(11),
      I1 => Q(3),
      O => \needs_delay.shift_register[1][7]_i_5__0_n_0\
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1__0_n_7\,
      Q => out_s(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1__0_n_6\,
      Q => out_s(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1__0_n_5\,
      Q => out_s(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][3]_i_1__0_n_4\,
      Q => out_s(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_3\,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => Q(10 downto 7),
      O(3) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_4\,
      O(2) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_5\,
      O(1) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_6\,
      O(0) => \needs_delay.shift_register_reg[1][3]_i_1__0_n_7\,
      S(3) => \needs_delay.shift_register[1][3]_i_2__1_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_4_n_0\,
      S(0) => \needs_delay.shift_register[1][3]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_7\,
      Q => out_s(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_6\,
      Q => out_s(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_5\,
      Q => out_s(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][7]_i_1__0_n_4\,
      Q => out_s(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1__0_n_0\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(14 downto 11),
      O(3) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_4\,
      O(2) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_5\,
      O(1) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_6\,
      O(0) => \needs_delay.shift_register_reg[1][7]_i_1__0_n_7\,
      S(3) => \needs_delay.shift_register[1][7]_i_2__0_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3__0_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4__0_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5__0_n_0\
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \needs_delay.shift_register_reg[1][8]_i_1__0_n_7\,
      Q => out_s(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_needs_delay.shift_register_reg[1][8]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_needs_delay.shift_register_reg[1][8]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \needs_delay.shift_register_reg[1][8]_i_1__0_n_7\,
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ is
  port (
    c : out STD_LOGIC_VECTOR ( 25 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    sclr : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\ is
  signal \NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal \NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \needs_delay.shift_register_reg[2]\ : label is "{SYNTH-12 {cell *THIS*}}";
begin
\needs_delay.shift_register_reg[2]\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \core_control_regs[9]\(16),
      A(28) => \core_control_regs[9]\(16),
      A(27) => \core_control_regs[9]\(16),
      A(26) => \core_control_regs[9]\(16),
      A(25) => \core_control_regs[9]\(16),
      A(24) => \core_control_regs[9]\(16),
      A(23) => \core_control_regs[9]\(16),
      A(22) => \core_control_regs[9]\(16),
      A(21) => \core_control_regs[9]\(16),
      A(20) => \core_control_regs[9]\(16),
      A(19) => \core_control_regs[9]\(16),
      A(18) => \core_control_regs[9]\(16),
      A(17) => \core_control_regs[9]\(16),
      A(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => s(8),
      B(16) => s(8),
      B(15) => s(8),
      B(14) => s(8),
      B(13) => s(8),
      B(12) => s(8),
      B(11) => s(8),
      B(10) => s(8),
      B(9) => s(8),
      B(8 downto 0) => s(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => E(0),
      CEP => E(0),
      CLK => aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED\,
      P(47 downto 26) => \NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED\(47 downto 26),
      P(25 downto 0) => c(25 downto 0),
      PATTERNBDETECT => \NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => \NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ is
  port (
    a : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[5][7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\ is
  signal \needs_delay.shift_register[1][10]_i_2__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_2__1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_3__0_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][10]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1__0_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\needs_delay.shift_register[1][10]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(2),
      O => \needs_delay.shift_register[1][10]_i_2__0_n_0\
    );
\needs_delay.shift_register[1][10]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(2),
      O => \needs_delay.shift_register[1][10]_i_2__1_n_0\
    );
\needs_delay.shift_register[1][10]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(1),
      O => \needs_delay.shift_register[1][10]_i_3_n_0\
    );
\needs_delay.shift_register[1][10]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(1),
      O => \needs_delay.shift_register[1][10]_i_3__0_n_0\
    );
\needs_delay.shift_register[1][3]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => \needs_delay.shift_register_reg[1][3]_0\
    );
\needs_delay.shift_register[1][3]_i_5__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(0),
      O => a(0)
    );
\needs_delay.shift_register[1][9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(1),
      O => a(1)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 2) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \needs_delay.shift_register_reg[1][10]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(2 downto 0),
      S(3 downto 2) => B"01",
      S(1) => \needs_delay.shift_register[1][10]_i_2__0_n_0\,
      S(0) => \needs_delay.shift_register[1][10]_i_3__0_n_0\
    );
\needs_delay.shift_register_reg[1][10]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[5][7]\(0),
      CO(3 downto 2) => \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][10]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3) => \NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED\(3),
      O(2 downto 0) => \needs_delay.shift_register_reg[1][10]\(2 downto 0),
      S(3 downto 2) => B"01",
      S(1) => \needs_delay.shift_register[1][10]_i_2__1_n_0\,
      S(0) => \needs_delay.shift_register[1][10]_i_3_n_0\
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized3\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized3\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized3\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized4\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    plusOp : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized4\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized4\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized4\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(0),
      Q => Q(0),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(10),
      Q => Q(10),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(1),
      Q => Q(1),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(2),
      Q => Q(2),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(3),
      Q => Q(3),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(4),
      Q => Q(4),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(5),
      Q => Q(5),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(6),
      Q => Q(6),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(7),
      Q => Q(7),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(8),
      Q => Q(8),
      R => \^sr\(0)
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => plusOp(9),
      Q => Q(9),
      R => \^sr\(0)
    );
sof_late_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_out,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5\ is
  port (
    \needs_delay.shift_register_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][8]\ : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\ltOp_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][8]\,
      I1 => \^q\(8),
      O => \needs_delay.shift_register_reg[1][7]_0\(0)
    );
\ltOp_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[1]\(7),
      O => \needs_delay.shift_register_reg[1][7]_2\(3)
    );
\ltOp_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[1]\(5),
      O => \needs_delay.shift_register_reg[1][7]_2\(2)
    );
\ltOp_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[1]\(3),
      O => \needs_delay.shift_register_reg[1][7]_2\(1)
    );
\ltOp_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[1]\(1),
      O => \needs_delay.shift_register_reg[1][7]_2\(0)
    );
\ltOp_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[1]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][7]_1\(3)
    );
\ltOp_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[1]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][7]_1\(2)
    );
\ltOp_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[1]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][7]_1\(1)
    );
\ltOp_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[1]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][7]_1\(0)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \needs_delay.shift_register_reg_n_0_[1][8]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(8),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_7\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_7\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_7\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][8]\ : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gtOp_carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(8),
      I1 => p(9),
      O => DI(0)
    );
\gtOp_carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(8),
      I1 => p(9),
      O => S(0)
    );
\gtOp_carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[4]\(6),
      I2 => \core_control_regs[4]\(7),
      I3 => p(7),
      O => \needs_delay.shift_register_reg[1][9]_1\(3)
    );
\gtOp_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[4]\(4),
      I2 => \core_control_regs[4]\(5),
      I3 => p(5),
      O => \needs_delay.shift_register_reg[1][9]_1\(2)
    );
\gtOp_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[4]\(2),
      I2 => \core_control_regs[4]\(3),
      I3 => p(3),
      O => \needs_delay.shift_register_reg[1][9]_1\(1)
    );
\gtOp_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[4]\(0),
      I2 => \core_control_regs[4]\(1),
      I3 => p(1),
      O => \needs_delay.shift_register_reg[1][9]_1\(0)
    );
\gtOp_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[4]\(6),
      I2 => p(7),
      I3 => \core_control_regs[4]\(7),
      O => \needs_delay.shift_register_reg[1][9]_0\(3)
    );
\gtOp_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[4]\(4),
      I2 => p(5),
      I3 => \core_control_regs[4]\(5),
      O => \needs_delay.shift_register_reg[1][9]_0\(2)
    );
\gtOp_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[4]\(2),
      I2 => p(3),
      I3 => \core_control_regs[4]\(3),
      O => \needs_delay.shift_register_reg[1][9]_0\(1)
    );
\gtOp_carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[4]\(0),
      I2 => p(1),
      I3 => \core_control_regs[4]\(1),
      O => \needs_delay.shift_register_reg[1][9]_0\(0)
    );
\ltOp_carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][8]\,
      I1 => \^q\(8),
      O => \needs_delay.shift_register_reg[1][7]_0\(0)
    );
\ltOp_carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[5]\(7),
      O => \needs_delay.shift_register_reg[1][7]_2\(3)
    );
\ltOp_carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[5]\(5),
      O => \needs_delay.shift_register_reg[1][7]_2\(2)
    );
\ltOp_carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[5]\(3),
      O => \needs_delay.shift_register_reg[1][7]_2\(1)
    );
\ltOp_carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[5]\(1),
      O => \needs_delay.shift_register_reg[1][7]_2\(0)
    );
\ltOp_carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[5]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][7]_1\(3)
    );
\ltOp_carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[5]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][7]_1\(2)
    );
\ltOp_carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[5]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][7]_1\(1)
    );
\ltOp_carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[5]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][7]_1\(0)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \needs_delay.shift_register_reg_n_0_[1][8]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(8),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_8\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_8\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_8\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \needs_delay.shift_register_reg_n_0_[1][8]\ : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gtOp_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(8),
      I1 => p(9),
      O => DI(0)
    );
\gtOp_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(8),
      I1 => p(9),
      O => S(0)
    );
\gtOp_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[2]\(6),
      I2 => \core_control_regs[2]\(7),
      I3 => p(7),
      O => \needs_delay.shift_register_reg[1][9]_1\(3)
    );
\gtOp_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[2]\(4),
      I2 => \core_control_regs[2]\(5),
      I3 => p(5),
      O => \needs_delay.shift_register_reg[1][9]_1\(2)
    );
\gtOp_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[2]\(2),
      I2 => \core_control_regs[2]\(3),
      I3 => p(3),
      O => \needs_delay.shift_register_reg[1][9]_1\(1)
    );
\gtOp_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[2]\(0),
      I2 => \core_control_regs[2]\(1),
      I3 => p(1),
      O => \needs_delay.shift_register_reg[1][9]_1\(0)
    );
\gtOp_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(6),
      I1 => \core_control_regs[2]\(6),
      I2 => p(7),
      I3 => \core_control_regs[2]\(7),
      O => \needs_delay.shift_register_reg[1][9]_0\(3)
    );
\gtOp_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(4),
      I1 => \core_control_regs[2]\(4),
      I2 => p(5),
      I3 => \core_control_regs[2]\(5),
      O => \needs_delay.shift_register_reg[1][9]_0\(2)
    );
\gtOp_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(2),
      I1 => \core_control_regs[2]\(2),
      I2 => p(3),
      I3 => \core_control_regs[2]\(3),
      O => \needs_delay.shift_register_reg[1][9]_0\(1)
    );
\gtOp_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p(0),
      I1 => \core_control_regs[2]\(0),
      I2 => p(1),
      I3 => \core_control_regs[2]\(1),
      O => \needs_delay.shift_register_reg[1][9]_0\(0)
    );
\ltOp_carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \needs_delay.shift_register_reg_n_0_[1][8]\,
      I1 => \^q\(8),
      O => \needs_delay.shift_register_reg[1][7]_0\(0)
    );
\ltOp_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \core_control_regs[3]\(7),
      O => \needs_delay.shift_register_reg[1][7]_2\(3)
    );
\ltOp_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \core_control_regs[3]\(5),
      O => \needs_delay.shift_register_reg[1][7]_2\(2)
    );
\ltOp_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \core_control_regs[3]\(3),
      O => \needs_delay.shift_register_reg[1][7]_2\(1)
    );
\ltOp_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \core_control_regs[3]\(1),
      O => \needs_delay.shift_register_reg[1][7]_2\(0)
    );
\ltOp_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => \^q\(6),
      I2 => \core_control_regs[3]\(7),
      I3 => \^q\(7),
      O => \needs_delay.shift_register_reg[1][7]_1\(3)
    );
\ltOp_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => \^q\(4),
      I2 => \core_control_regs[3]\(5),
      I3 => \^q\(5),
      O => \needs_delay.shift_register_reg[1][7]_1\(2)
    );
\ltOp_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => \^q\(2),
      I2 => \core_control_regs[3]\(3),
      I3 => \^q\(3),
      O => \needs_delay.shift_register_reg[1][7]_1\(1)
    );
\ltOp_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => \^q\(0),
      I2 => \core_control_regs[3]\(1),
      I3 => \^q\(1),
      O => \needs_delay.shift_register_reg[1][7]_1\(0)
    );
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => sclr
    );
\needs_delay.shift_register_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(8),
      Q => \needs_delay.shift_register_reg_n_0_[1][8]\,
      R => sclr
    );
\needs_delay.shift_register_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(9),
      Q => \^q\(8),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6\ is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_10\ is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_10\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_10\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_10\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_9\ is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_9\ : entity is "delay_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_9\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_9\ is
begin
\needs_delay.shift_register_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => da(0),
      R => sclr
    );
\needs_delay.shift_register_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => da(1),
      R => sclr
    );
\needs_delay.shift_register_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(2),
      Q => da(2),
      R => sclr
    );
\needs_delay.shift_register_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(3),
      Q => da(3),
      R => sclr
    );
\needs_delay.shift_register_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(4),
      Q => da(4),
      R => sclr
    );
\needs_delay.shift_register_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(5),
      Q => da(5),
      R => sclr
    );
\needs_delay.shift_register_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(6),
      Q => da(6),
      R => sclr
    );
\needs_delay.shift_register_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => D(7),
      Q => da(7),
      R => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram is
  port (
    \read_ptr_int_reg[3]\ : out STD_LOGIC;
    ADDRA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_video_tuser_sof : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    axi_fifo_empty : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wen : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \write_ptr_int_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram : entity is "dp_ram";
end Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram is
  signal \^addra\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_5\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_5\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_5\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_0\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_1\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_2\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_3\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_4\ : STD_LOGIC;
  signal \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_5\ : STD_LOGIC;
  signal \^read_ptr_int_reg[3]\ : STD_LOGIC;
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_12_17_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_18_23_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_6_11_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_5\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_12_17\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_18_23\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_24_25\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_6_11\ : label is "";
begin
  ADDRA(3 downto 0) <= \^addra\(3 downto 0);
  \read_ptr_int_reg[3]\ <= \^read_ptr_int_reg[3]\;
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_int_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(1 downto 0),
      DIB(1 downto 0) => da(3 downto 2),
      DIC(1 downto 0) => da(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_5\,
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \^read_ptr_int_reg[3]\,
      O => \^addra\(3)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA6AAAAAAAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => axi_fifo_empty,
      I3 => m_axis_video_tready,
      I4 => aclken_0,
      I5 => Q(0),
      O => \^addra\(2)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      I4 => m_axis_video_tready,
      I5 => axi_fifo_empty,
      O => \^addra\(1)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => axi_fifo_empty,
      I2 => m_axis_video_tready,
      I3 => aclken,
      I4 => \genr_control_regs[0]\(0),
      O => \^addra\(0)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => Q(0),
      I1 => \genr_control_regs[0]\(0),
      I2 => aclken,
      I3 => m_axis_video_tready,
      I4 => axi_fifo_empty,
      I5 => Q(1),
      O => \^read_ptr_int_reg[3]\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_12_17\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_int_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(13 downto 12),
      DIB(1 downto 0) => da(15 downto 14),
      DIC(1 downto 0) => da(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_5\,
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_12_17_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_18_23\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_int_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(19 downto 18),
      DIB(1 downto 0) => da(21 downto 20),
      DIC(1 downto 0) => da(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_5\,
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_18_23_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_24_25\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_int_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(25 downto 24),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_1\,
      DOB(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOB_UNCONNECTED\(1 downto 0),
      DOC(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_6_11\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addra\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addra\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addra\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_int_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(7 downto 6),
      DIB(1 downto 0) => da(9 downto 8),
      DIC(1 downto 0) => da(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_0\,
      DOA(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_1\,
      DOB(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_2\,
      DOB(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_3\,
      DOC(1) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_4\,
      DOC(0) => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_5\,
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_6_11_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => wen
    );
\GenerateDoutWriteFirstB.t_qb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_1\,
      Q => m_axis_video_tuser_sof(0),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_5\,
      Q => m_axis_video_tuser_sof(10),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_4\,
      Q => m_axis_video_tuser_sof(11),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_1\,
      Q => m_axis_video_tuser_sof(12),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_0\,
      Q => m_axis_video_tuser_sof(13),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_3\,
      Q => m_axis_video_tuser_sof(14),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_2\,
      Q => m_axis_video_tuser_sof(15),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_5\,
      Q => m_axis_video_tuser_sof(16),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_12_17_n_4\,
      Q => m_axis_video_tuser_sof(17),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_1\,
      Q => m_axis_video_tuser_sof(18),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_0\,
      Q => m_axis_video_tuser_sof(19),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_0\,
      Q => m_axis_video_tuser_sof(1),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_3\,
      Q => m_axis_video_tuser_sof(20),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_2\,
      Q => m_axis_video_tuser_sof(21),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_5\,
      Q => m_axis_video_tuser_sof(22),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_18_23_n_4\,
      Q => m_axis_video_tuser_sof(23),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_1\,
      Q => m_axis_video_tuser_sof(24),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_24_25_n_0\,
      Q => m_axis_video_tuser_sof(25),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_3\,
      Q => m_axis_video_tuser_sof(2),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_2\,
      Q => m_axis_video_tuser_sof(3),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_5\,
      Q => m_axis_video_tuser_sof(4),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_0_5_n_4\,
      Q => m_axis_video_tuser_sof(5),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_1\,
      Q => m_axis_video_tuser_sof(6),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_0\,
      Q => m_axis_video_tuser_sof(7),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_3\,
      Q => m_axis_video_tuser_sof(8),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \GenerateDoutWriteFirstA.mem_reg_0_15_6_11_n_2\,
      Q => m_axis_video_tuser_sof(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram_11 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_ptr_reg[0]\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    reg_update : out STD_LOGIC;
    sof_late_i_reg : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    empty_match_reg : in STD_LOGIC;
    fifo_rd_i_reg : in STD_LOGIC;
    depth_match_reg : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclken : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \write_ptr_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram_11 : entity is "dp_ram";
end Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram_11;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram_11 is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^p_0_in\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^read_ptr_reg[0]\ : STD_LOGIC;
  signal \^sof_late_i_reg\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_12_17_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_18_23_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_6_11_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_0_5\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_12_17\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_18_23\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_24_25\ : label is "";
  attribute METHODOLOGY_DRC_VIOS of \GenerateDoutWriteFirstA.mem_reg_0_15_6_11\ : label is "";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  p_0_in <= \^p_0_in\;
  \read_ptr_reg[0]\ <= \^read_ptr_reg[0]\;
  sof_late_i_reg(25 downto 0) <= \^sof_late_i_reg\(25 downto 0);
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(1 downto 0),
      DIB(1 downto 0) => da(3 downto 2),
      DIC(1 downto 0) => da(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_2_out(1 downto 0),
      DOB(1 downto 0) => p_2_out(3 downto 2),
      DOC(1 downto 0) => p_2_out(5 downto 4),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => depth_match_reg,
      I1 => resetn_out,
      I2 => \genr_control_regs[0]\(0),
      I3 => aclken,
      I4 => s_axis_video_tvalid,
      I5 => s_axis_video_tready,
      O => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \^read_ptr_reg[0]\,
      I3 => Q(0),
      I4 => Q(2),
      O => \^d\(3)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => \^read_ptr_reg[0]\,
      I3 => Q(1),
      O => \^d\(2)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(1),
      I1 => \^read_ptr_reg[0]\,
      I2 => Q(0),
      O => \^d\(1)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \^read_ptr_reg[0]\,
      O => \^d\(0)
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_0_5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_match_reg,
      I1 => fifo_rd_i_reg,
      O => \^read_ptr_reg[0]\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_12_17\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(13 downto 12),
      DIB(1 downto 0) => da(15 downto 14),
      DIC(1 downto 0) => da(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_2_out(13 downto 12),
      DOB(1 downto 0) => p_2_out(15 downto 14),
      DOC(1 downto 0) => p_2_out(17 downto 16),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_12_17_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_18_23\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(19 downto 18),
      DIB(1 downto 0) => da(21 downto 20),
      DIC(1 downto 0) => da(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_2_out(19 downto 18),
      DOB(1 downto 0) => p_2_out(21 downto 20),
      DOC(1 downto 0) => p_2_out(23 downto 22),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_18_23_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_24_25\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(25 downto 24),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_2_out(25 downto 24),
      DOB(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOB_UNCONNECTED\(1 downto 0),
      DOC(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_24_25_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstA.mem_reg_0_15_6_11\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^d\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^d\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^d\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \write_ptr_reg[3]\(3 downto 0),
      DIA(1 downto 0) => da(7 downto 6),
      DIB(1 downto 0) => da(9 downto 8),
      DIC(1 downto 0) => da(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_2_out(7 downto 6),
      DOB(1 downto 0) => p_2_out(9 downto 8),
      DOC(1 downto 0) => p_2_out(11 downto 10),
      DOD(1 downto 0) => \NLW_GenerateDoutWriteFirstA.mem_reg_0_15_6_11_DOD_UNCONNECTED\(1 downto 0),
      WCLK => aclk,
      WE => \^p_0_in\
    );
\GenerateDoutWriteFirstB.t_qb_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(0),
      Q => \^sof_late_i_reg\(0),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(10),
      Q => \^sof_late_i_reg\(10),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(11),
      Q => \^sof_late_i_reg\(11),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(12),
      Q => \^sof_late_i_reg\(12),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(13),
      Q => \^sof_late_i_reg\(13),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(14),
      Q => \^sof_late_i_reg\(14),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(15),
      Q => \^sof_late_i_reg\(15),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(16),
      Q => \^sof_late_i_reg\(16),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(17),
      Q => \^sof_late_i_reg\(17),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(18),
      Q => \^sof_late_i_reg\(18),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(19),
      Q => \^sof_late_i_reg\(19),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(1),
      Q => \^sof_late_i_reg\(1),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(20),
      Q => \^sof_late_i_reg\(20),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(21),
      Q => \^sof_late_i_reg\(21),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(22),
      Q => \^sof_late_i_reg\(22),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(23),
      Q => \^sof_late_i_reg\(23),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(24),
      Q => \^sof_late_i_reg\(24),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(25),
      Q => \^sof_late_i_reg\(25),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(2),
      Q => \^sof_late_i_reg\(2),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(3),
      Q => \^sof_late_i_reg\(3),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(4),
      Q => \^sof_late_i_reg\(4),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(5),
      Q => \^sof_late_i_reg\(5),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(6),
      Q => \^sof_late_i_reg\(6),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(7),
      Q => \^sof_late_i_reg\(7),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(8),
      Q => \^sof_late_i_reg\(8),
      R => '0'
    );
\GenerateDoutWriteFirstB.t_qb_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_2_out(9),
      Q => \^sof_late_i_reg\(9),
      R => '0'
    );
U_VIDEO_CTRL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sof_late_i_reg\(25),
      I1 => \genr_control_regs[0]\(1),
      O => reg_update
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_mac is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 25 downto 0 );
    p : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 9;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 26;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is "yes";
  attribute use_dsp48 : string;
  attribute use_dsp48 of Arty_Z7_20_v_rgb2ycrcb_0_0_mac : entity is "yes";
end Arty_Z7_20_v_rgb2ycrcb_0_0_mac;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_mac is
  signal NLW_mac_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mac_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mac_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mac_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_mac_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
mac_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mac_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(8),
      B(16) => a(8),
      B(15) => a(8),
      B(14) => a(8),
      B(13) => a(8),
      B(12) => a(8),
      B(11) => a(8),
      B(10) => a(8),
      B(9) => a(8),
      B(8 downto 0) => a(8 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mac_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(25),
      C(46) => c(25),
      C(45) => c(25),
      C(44) => c(25),
      C(43) => c(25),
      C(42) => c(25),
      C(41) => c(25),
      C(40) => c(25),
      C(39) => c(25),
      C(38) => c(25),
      C(37) => c(25),
      C(36) => c(25),
      C(35) => c(25),
      C(34) => c(25),
      C(33) => c(25),
      C(32) => c(25),
      C(31) => c(25),
      C(30) => c(25),
      C(29) => c(25),
      C(28) => c(25),
      C(27) => c(25),
      C(26) => c(25),
      C(25 downto 0) => c(25 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mac_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mac_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mac_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_mac_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_mac_reg_P_UNCONNECTED(47 downto 26),
      P(25 downto 0) => p(25 downto 0),
      PATTERNBDETECT => NLW_mac_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mac_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mac_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_mac_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 11 downto 0 );
    p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 11;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 12;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
  attribute use_dsp48 : string;
  attribute use_dsp48 of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ : entity is "yes";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\ is
  signal mac_reg_n_100 : STD_LOGIC;
  signal mac_reg_n_101 : STD_LOGIC;
  signal mac_reg_n_102 : STD_LOGIC;
  signal mac_reg_n_103 : STD_LOGIC;
  signal mac_reg_n_104 : STD_LOGIC;
  signal mac_reg_n_105 : STD_LOGIC;
  signal mac_reg_n_90 : STD_LOGIC;
  signal mac_reg_n_91 : STD_LOGIC;
  signal mac_reg_n_92 : STD_LOGIC;
  signal mac_reg_n_93 : STD_LOGIC;
  signal mac_reg_n_94 : STD_LOGIC;
  signal mac_reg_n_95 : STD_LOGIC;
  signal mac_reg_n_96 : STD_LOGIC;
  signal mac_reg_n_97 : STD_LOGIC;
  signal mac_reg_n_98 : STD_LOGIC;
  signal mac_reg_n_99 : STD_LOGIC;
  signal NLW_mac_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mac_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mac_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mac_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 28 );
  signal NLW_mac_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
mac_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mac_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(10),
      B(16) => a(10),
      B(15) => a(10),
      B(14) => a(10),
      B(13) => a(10),
      B(12) => a(10),
      B(11) => a(10),
      B(10 downto 0) => a(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mac_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(11),
      C(46) => c(11),
      C(45) => c(11),
      C(44) => c(11),
      C(43) => c(11),
      C(42) => c(11),
      C(41) => c(11),
      C(40) => c(11),
      C(39) => c(11),
      C(38) => c(11),
      C(37) => c(11),
      C(36) => c(11),
      C(35) => c(11),
      C(34) => c(11),
      C(33) => c(11),
      C(32) => c(11),
      C(31) => c(11),
      C(30) => c(11),
      C(29) => c(11),
      C(28) => c(11),
      C(27 downto 16) => c(11 downto 0),
      C(15 downto 0) => B"0111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mac_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mac_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mac_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_mac_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 28) => NLW_mac_reg_P_UNCONNECTED(47 downto 28),
      P(27 downto 16) => p(11 downto 0),
      P(15) => mac_reg_n_90,
      P(14) => mac_reg_n_91,
      P(13) => mac_reg_n_92,
      P(12) => mac_reg_n_93,
      P(11) => mac_reg_n_94,
      P(10) => mac_reg_n_95,
      P(9) => mac_reg_n_96,
      P(8) => mac_reg_n_97,
      P(7) => mac_reg_n_98,
      P(6) => mac_reg_n_99,
      P(5) => mac_reg_n_100,
      P(4) => mac_reg_n_101,
      P(3) => mac_reg_n_102,
      P(2) => mac_reg_n_103,
      P(1) => mac_reg_n_104,
      P(0) => mac_reg_n_105,
      PATTERNBDETECT => NLW_mac_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mac_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mac_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_mac_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ is
  port (
    a : in STD_LOGIC_VECTOR ( 10 downto 0 );
    b : in STD_LOGIC_VECTOR ( 16 downto 0 );
    c : in STD_LOGIC_VECTOR ( 11 downto 0 );
    p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    ce : in STD_LOGIC;
    sclr : in STD_LOGIC
  );
  attribute CREG : integer;
  attribute CREG of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 11;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is "mac";
  attribute OWIDTH : integer;
  attribute OWIDTH of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 12;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is "yes";
  attribute mult_style : string;
  attribute mult_style of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is "yes";
  attribute use_dsp48 : string;
  attribute use_dsp48 of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ : entity is "yes";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\ is
  signal mac_reg_n_100 : STD_LOGIC;
  signal mac_reg_n_101 : STD_LOGIC;
  signal mac_reg_n_102 : STD_LOGIC;
  signal mac_reg_n_103 : STD_LOGIC;
  signal mac_reg_n_104 : STD_LOGIC;
  signal mac_reg_n_105 : STD_LOGIC;
  signal mac_reg_n_90 : STD_LOGIC;
  signal mac_reg_n_91 : STD_LOGIC;
  signal mac_reg_n_92 : STD_LOGIC;
  signal mac_reg_n_93 : STD_LOGIC;
  signal mac_reg_n_94 : STD_LOGIC;
  signal mac_reg_n_95 : STD_LOGIC;
  signal mac_reg_n_96 : STD_LOGIC;
  signal mac_reg_n_97 : STD_LOGIC;
  signal mac_reg_n_98 : STD_LOGIC;
  signal mac_reg_n_99 : STD_LOGIC;
  signal NLW_mac_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mac_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mac_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mac_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 28 );
  signal NLW_mac_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
mac_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => b(16),
      A(28) => b(16),
      A(27) => b(16),
      A(26) => b(16),
      A(25) => b(16),
      A(24) => b(16),
      A(23) => b(16),
      A(22) => b(16),
      A(21) => b(16),
      A(20) => b(16),
      A(19) => b(16),
      A(18) => b(16),
      A(17) => b(16),
      A(16 downto 0) => b(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mac_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => a(10),
      B(16) => a(10),
      B(15) => a(10),
      B(14) => a(10),
      B(13) => a(10),
      B(12) => a(10),
      B(11) => a(10),
      B(10 downto 0) => a(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mac_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => c(11),
      C(46) => c(11),
      C(45) => c(11),
      C(44) => c(11),
      C(43) => c(11),
      C(42) => c(11),
      C(41) => c(11),
      C(40) => c(11),
      C(39) => c(11),
      C(38) => c(11),
      C(37) => c(11),
      C(36) => c(11),
      C(35) => c(11),
      C(34) => c(11),
      C(33) => c(11),
      C(32) => c(11),
      C(31) => c(11),
      C(30) => c(11),
      C(29) => c(11),
      C(28) => c(11),
      C(27 downto 16) => c(11 downto 0),
      C(15 downto 0) => B"0111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mac_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '1',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mac_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ce,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ce,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => ce,
      CEP => ce,
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mac_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_mac_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 28) => NLW_mac_reg_P_UNCONNECTED(47 downto 28),
      P(27 downto 16) => p(11 downto 0),
      P(15) => mac_reg_n_90,
      P(14) => mac_reg_n_91,
      P(13) => mac_reg_n_92,
      P(12) => mac_reg_n_93,
      P(11) => mac_reg_n_94,
      P(10) => mac_reg_n_95,
      P(9) => mac_reg_n_96,
      P(8) => mac_reg_n_97,
      P(7) => mac_reg_n_98,
      P(6) => mac_reg_n_99,
      P(5) => mac_reg_n_100,
      P(4) => mac_reg_n_101,
      P(3) => mac_reg_n_102,
      P(2) => mac_reg_n_103,
      P(1) => mac_reg_n_104,
      P(0) => mac_reg_n_105,
      PATTERNBDETECT => NLW_mac_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mac_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mac_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => sclr,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => sclr,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => sclr,
      RSTP => sclr,
      UNDERFLOW => NLW_mac_reg_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl is
  port (
    aclk : in STD_LOGIC;
    aclk_en : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    vid_aclk : in STD_LOGIC;
    vid_aclk_en : in STD_LOGIC;
    vid_aresetn : in STD_LOGIC;
    reg_update : in STD_LOGIC;
    irq : out STD_LOGIC;
    resetn_out : out STD_LOGIC;
    core_d_out : out STD_LOGIC;
    ipif_addr_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ipif_rnw_out : out STD_LOGIC;
    ipif_cs_out : out STD_LOGIC;
    ipif_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \genr_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \time_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[1]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[3]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[5]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[6]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[7]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[8]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[9]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[10]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[11]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_control_regs[12]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[1]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[2]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[3]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[4]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[5]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[6]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[7]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[8]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[9]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[10]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[11]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \core_status_regs[12]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "416'b00000000000000000000000011110000000000000000000000000000000100000000000000000000000000001111000000000000000000000000000000010000000000000000000000000000111100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000100000000000000000000000000000001000000000000000000000000100110010001011000000000000000000011101001011110000000000000000101101101000011100000000000000001001000001100010";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 13;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "zynq";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 8;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "64'b0000001011010000000001010000000000000000000000000000000000000000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 2;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 7;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "video_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl : entity is "yes";
end Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^vid_aresetn\ : STD_LOGIC;
begin
  \^vid_aresetn\ <= vid_aresetn;
  \core_control_regs[0]\(31) <= \<const0>\;
  \core_control_regs[0]\(30) <= \<const0>\;
  \core_control_regs[0]\(29) <= \<const0>\;
  \core_control_regs[0]\(28) <= \<const0>\;
  \core_control_regs[0]\(27) <= \<const0>\;
  \core_control_regs[0]\(26) <= \<const0>\;
  \core_control_regs[0]\(25) <= \<const0>\;
  \core_control_regs[0]\(24) <= \<const0>\;
  \core_control_regs[0]\(23) <= \<const0>\;
  \core_control_regs[0]\(22) <= \<const0>\;
  \core_control_regs[0]\(21) <= \<const0>\;
  \core_control_regs[0]\(20) <= \<const0>\;
  \core_control_regs[0]\(19) <= \<const0>\;
  \core_control_regs[0]\(18) <= \<const0>\;
  \core_control_regs[0]\(17) <= \<const0>\;
  \core_control_regs[0]\(16) <= \<const0>\;
  \core_control_regs[0]\(15) <= \<const0>\;
  \core_control_regs[0]\(14) <= \<const0>\;
  \core_control_regs[0]\(13) <= \<const0>\;
  \core_control_regs[0]\(12) <= \<const0>\;
  \core_control_regs[0]\(11) <= \<const0>\;
  \core_control_regs[0]\(10) <= \<const0>\;
  \core_control_regs[0]\(9) <= \<const0>\;
  \core_control_regs[0]\(8) <= \<const0>\;
  \core_control_regs[0]\(7) <= \<const1>\;
  \core_control_regs[0]\(6) <= \<const1>\;
  \core_control_regs[0]\(5) <= \<const1>\;
  \core_control_regs[0]\(4) <= \<const1>\;
  \core_control_regs[0]\(3) <= \<const0>\;
  \core_control_regs[0]\(2) <= \<const0>\;
  \core_control_regs[0]\(1) <= \<const0>\;
  \core_control_regs[0]\(0) <= \<const0>\;
  \core_control_regs[10]\(31) <= \<const0>\;
  \core_control_regs[10]\(30) <= \<const0>\;
  \core_control_regs[10]\(29) <= \<const0>\;
  \core_control_regs[10]\(28) <= \<const0>\;
  \core_control_regs[10]\(27) <= \<const0>\;
  \core_control_regs[10]\(26) <= \<const0>\;
  \core_control_regs[10]\(25) <= \<const0>\;
  \core_control_regs[10]\(24) <= \<const0>\;
  \core_control_regs[10]\(23) <= \<const0>\;
  \core_control_regs[10]\(22) <= \<const0>\;
  \core_control_regs[10]\(21) <= \<const0>\;
  \core_control_regs[10]\(20) <= \<const0>\;
  \core_control_regs[10]\(19) <= \<const0>\;
  \core_control_regs[10]\(18) <= \<const0>\;
  \core_control_regs[10]\(17) <= \<const0>\;
  \core_control_regs[10]\(16) <= \<const0>\;
  \core_control_regs[10]\(15) <= \<const0>\;
  \core_control_regs[10]\(14) <= \<const0>\;
  \core_control_regs[10]\(13) <= \<const0>\;
  \core_control_regs[10]\(12) <= \<const1>\;
  \core_control_regs[10]\(11) <= \<const1>\;
  \core_control_regs[10]\(10) <= \<const1>\;
  \core_control_regs[10]\(9) <= \<const0>\;
  \core_control_regs[10]\(8) <= \<const1>\;
  \core_control_regs[10]\(7) <= \<const0>\;
  \core_control_regs[10]\(6) <= \<const0>\;
  \core_control_regs[10]\(5) <= \<const1>\;
  \core_control_regs[10]\(4) <= \<const0>\;
  \core_control_regs[10]\(3) <= \<const1>\;
  \core_control_regs[10]\(2) <= \<const1>\;
  \core_control_regs[10]\(1) <= \<const1>\;
  \core_control_regs[10]\(0) <= \<const1>\;
  \core_control_regs[11]\(31) <= \<const0>\;
  \core_control_regs[11]\(30) <= \<const0>\;
  \core_control_regs[11]\(29) <= \<const0>\;
  \core_control_regs[11]\(28) <= \<const0>\;
  \core_control_regs[11]\(27) <= \<const0>\;
  \core_control_regs[11]\(26) <= \<const0>\;
  \core_control_regs[11]\(25) <= \<const0>\;
  \core_control_regs[11]\(24) <= \<const0>\;
  \core_control_regs[11]\(23) <= \<const0>\;
  \core_control_regs[11]\(22) <= \<const0>\;
  \core_control_regs[11]\(21) <= \<const0>\;
  \core_control_regs[11]\(20) <= \<const0>\;
  \core_control_regs[11]\(19) <= \<const0>\;
  \core_control_regs[11]\(18) <= \<const0>\;
  \core_control_regs[11]\(17) <= \<const0>\;
  \core_control_regs[11]\(16) <= \<const0>\;
  \core_control_regs[11]\(15) <= \<const1>\;
  \core_control_regs[11]\(14) <= \<const0>\;
  \core_control_regs[11]\(13) <= \<const1>\;
  \core_control_regs[11]\(12) <= \<const1>\;
  \core_control_regs[11]\(11) <= \<const0>\;
  \core_control_regs[11]\(10) <= \<const1>\;
  \core_control_regs[11]\(9) <= \<const1>\;
  \core_control_regs[11]\(8) <= \<const0>\;
  \core_control_regs[11]\(7) <= \<const1>\;
  \core_control_regs[11]\(6) <= \<const0>\;
  \core_control_regs[11]\(5) <= \<const0>\;
  \core_control_regs[11]\(4) <= \<const0>\;
  \core_control_regs[11]\(3) <= \<const0>\;
  \core_control_regs[11]\(2) <= \<const1>\;
  \core_control_regs[11]\(1) <= \<const1>\;
  \core_control_regs[11]\(0) <= \<const1>\;
  \core_control_regs[12]\(31) <= \<const0>\;
  \core_control_regs[12]\(30) <= \<const0>\;
  \core_control_regs[12]\(29) <= \<const0>\;
  \core_control_regs[12]\(28) <= \<const0>\;
  \core_control_regs[12]\(27) <= \<const0>\;
  \core_control_regs[12]\(26) <= \<const0>\;
  \core_control_regs[12]\(25) <= \<const0>\;
  \core_control_regs[12]\(24) <= \<const0>\;
  \core_control_regs[12]\(23) <= \<const0>\;
  \core_control_regs[12]\(22) <= \<const0>\;
  \core_control_regs[12]\(21) <= \<const0>\;
  \core_control_regs[12]\(20) <= \<const0>\;
  \core_control_regs[12]\(19) <= \<const0>\;
  \core_control_regs[12]\(18) <= \<const0>\;
  \core_control_regs[12]\(17) <= \<const0>\;
  \core_control_regs[12]\(16) <= \<const0>\;
  \core_control_regs[12]\(15) <= \<const1>\;
  \core_control_regs[12]\(14) <= \<const0>\;
  \core_control_regs[12]\(13) <= \<const0>\;
  \core_control_regs[12]\(12) <= \<const1>\;
  \core_control_regs[12]\(11) <= \<const0>\;
  \core_control_regs[12]\(10) <= \<const0>\;
  \core_control_regs[12]\(9) <= \<const0>\;
  \core_control_regs[12]\(8) <= \<const0>\;
  \core_control_regs[12]\(7) <= \<const0>\;
  \core_control_regs[12]\(6) <= \<const1>\;
  \core_control_regs[12]\(5) <= \<const1>\;
  \core_control_regs[12]\(4) <= \<const0>\;
  \core_control_regs[12]\(3) <= \<const0>\;
  \core_control_regs[12]\(2) <= \<const0>\;
  \core_control_regs[12]\(1) <= \<const1>\;
  \core_control_regs[12]\(0) <= \<const0>\;
  \core_control_regs[1]\(31) <= \<const0>\;
  \core_control_regs[1]\(30) <= \<const0>\;
  \core_control_regs[1]\(29) <= \<const0>\;
  \core_control_regs[1]\(28) <= \<const0>\;
  \core_control_regs[1]\(27) <= \<const0>\;
  \core_control_regs[1]\(26) <= \<const0>\;
  \core_control_regs[1]\(25) <= \<const0>\;
  \core_control_regs[1]\(24) <= \<const0>\;
  \core_control_regs[1]\(23) <= \<const0>\;
  \core_control_regs[1]\(22) <= \<const0>\;
  \core_control_regs[1]\(21) <= \<const0>\;
  \core_control_regs[1]\(20) <= \<const0>\;
  \core_control_regs[1]\(19) <= \<const0>\;
  \core_control_regs[1]\(18) <= \<const0>\;
  \core_control_regs[1]\(17) <= \<const0>\;
  \core_control_regs[1]\(16) <= \<const0>\;
  \core_control_regs[1]\(15) <= \<const0>\;
  \core_control_regs[1]\(14) <= \<const0>\;
  \core_control_regs[1]\(13) <= \<const0>\;
  \core_control_regs[1]\(12) <= \<const0>\;
  \core_control_regs[1]\(11) <= \<const0>\;
  \core_control_regs[1]\(10) <= \<const0>\;
  \core_control_regs[1]\(9) <= \<const0>\;
  \core_control_regs[1]\(8) <= \<const0>\;
  \core_control_regs[1]\(7) <= \<const0>\;
  \core_control_regs[1]\(6) <= \<const0>\;
  \core_control_regs[1]\(5) <= \<const0>\;
  \core_control_regs[1]\(4) <= \<const1>\;
  \core_control_regs[1]\(3) <= \<const0>\;
  \core_control_regs[1]\(2) <= \<const0>\;
  \core_control_regs[1]\(1) <= \<const0>\;
  \core_control_regs[1]\(0) <= \<const0>\;
  \core_control_regs[2]\(31) <= \<const0>\;
  \core_control_regs[2]\(30) <= \<const0>\;
  \core_control_regs[2]\(29) <= \<const0>\;
  \core_control_regs[2]\(28) <= \<const0>\;
  \core_control_regs[2]\(27) <= \<const0>\;
  \core_control_regs[2]\(26) <= \<const0>\;
  \core_control_regs[2]\(25) <= \<const0>\;
  \core_control_regs[2]\(24) <= \<const0>\;
  \core_control_regs[2]\(23) <= \<const0>\;
  \core_control_regs[2]\(22) <= \<const0>\;
  \core_control_regs[2]\(21) <= \<const0>\;
  \core_control_regs[2]\(20) <= \<const0>\;
  \core_control_regs[2]\(19) <= \<const0>\;
  \core_control_regs[2]\(18) <= \<const0>\;
  \core_control_regs[2]\(17) <= \<const0>\;
  \core_control_regs[2]\(16) <= \<const0>\;
  \core_control_regs[2]\(15) <= \<const0>\;
  \core_control_regs[2]\(14) <= \<const0>\;
  \core_control_regs[2]\(13) <= \<const0>\;
  \core_control_regs[2]\(12) <= \<const0>\;
  \core_control_regs[2]\(11) <= \<const0>\;
  \core_control_regs[2]\(10) <= \<const0>\;
  \core_control_regs[2]\(9) <= \<const0>\;
  \core_control_regs[2]\(8) <= \<const0>\;
  \core_control_regs[2]\(7) <= \<const1>\;
  \core_control_regs[2]\(6) <= \<const1>\;
  \core_control_regs[2]\(5) <= \<const1>\;
  \core_control_regs[2]\(4) <= \<const1>\;
  \core_control_regs[2]\(3) <= \<const0>\;
  \core_control_regs[2]\(2) <= \<const0>\;
  \core_control_regs[2]\(1) <= \<const0>\;
  \core_control_regs[2]\(0) <= \<const0>\;
  \core_control_regs[3]\(31) <= \<const0>\;
  \core_control_regs[3]\(30) <= \<const0>\;
  \core_control_regs[3]\(29) <= \<const0>\;
  \core_control_regs[3]\(28) <= \<const0>\;
  \core_control_regs[3]\(27) <= \<const0>\;
  \core_control_regs[3]\(26) <= \<const0>\;
  \core_control_regs[3]\(25) <= \<const0>\;
  \core_control_regs[3]\(24) <= \<const0>\;
  \core_control_regs[3]\(23) <= \<const0>\;
  \core_control_regs[3]\(22) <= \<const0>\;
  \core_control_regs[3]\(21) <= \<const0>\;
  \core_control_regs[3]\(20) <= \<const0>\;
  \core_control_regs[3]\(19) <= \<const0>\;
  \core_control_regs[3]\(18) <= \<const0>\;
  \core_control_regs[3]\(17) <= \<const0>\;
  \core_control_regs[3]\(16) <= \<const0>\;
  \core_control_regs[3]\(15) <= \<const0>\;
  \core_control_regs[3]\(14) <= \<const0>\;
  \core_control_regs[3]\(13) <= \<const0>\;
  \core_control_regs[3]\(12) <= \<const0>\;
  \core_control_regs[3]\(11) <= \<const0>\;
  \core_control_regs[3]\(10) <= \<const0>\;
  \core_control_regs[3]\(9) <= \<const0>\;
  \core_control_regs[3]\(8) <= \<const0>\;
  \core_control_regs[3]\(7) <= \<const0>\;
  \core_control_regs[3]\(6) <= \<const0>\;
  \core_control_regs[3]\(5) <= \<const0>\;
  \core_control_regs[3]\(4) <= \<const1>\;
  \core_control_regs[3]\(3) <= \<const0>\;
  \core_control_regs[3]\(2) <= \<const0>\;
  \core_control_regs[3]\(1) <= \<const0>\;
  \core_control_regs[3]\(0) <= \<const0>\;
  \core_control_regs[4]\(31) <= \<const0>\;
  \core_control_regs[4]\(30) <= \<const0>\;
  \core_control_regs[4]\(29) <= \<const0>\;
  \core_control_regs[4]\(28) <= \<const0>\;
  \core_control_regs[4]\(27) <= \<const0>\;
  \core_control_regs[4]\(26) <= \<const0>\;
  \core_control_regs[4]\(25) <= \<const0>\;
  \core_control_regs[4]\(24) <= \<const0>\;
  \core_control_regs[4]\(23) <= \<const0>\;
  \core_control_regs[4]\(22) <= \<const0>\;
  \core_control_regs[4]\(21) <= \<const0>\;
  \core_control_regs[4]\(20) <= \<const0>\;
  \core_control_regs[4]\(19) <= \<const0>\;
  \core_control_regs[4]\(18) <= \<const0>\;
  \core_control_regs[4]\(17) <= \<const0>\;
  \core_control_regs[4]\(16) <= \<const0>\;
  \core_control_regs[4]\(15) <= \<const0>\;
  \core_control_regs[4]\(14) <= \<const0>\;
  \core_control_regs[4]\(13) <= \<const0>\;
  \core_control_regs[4]\(12) <= \<const0>\;
  \core_control_regs[4]\(11) <= \<const0>\;
  \core_control_regs[4]\(10) <= \<const0>\;
  \core_control_regs[4]\(9) <= \<const0>\;
  \core_control_regs[4]\(8) <= \<const0>\;
  \core_control_regs[4]\(7) <= \<const1>\;
  \core_control_regs[4]\(6) <= \<const1>\;
  \core_control_regs[4]\(5) <= \<const1>\;
  \core_control_regs[4]\(4) <= \<const1>\;
  \core_control_regs[4]\(3) <= \<const0>\;
  \core_control_regs[4]\(2) <= \<const0>\;
  \core_control_regs[4]\(1) <= \<const0>\;
  \core_control_regs[4]\(0) <= \<const0>\;
  \core_control_regs[5]\(31) <= \<const0>\;
  \core_control_regs[5]\(30) <= \<const0>\;
  \core_control_regs[5]\(29) <= \<const0>\;
  \core_control_regs[5]\(28) <= \<const0>\;
  \core_control_regs[5]\(27) <= \<const0>\;
  \core_control_regs[5]\(26) <= \<const0>\;
  \core_control_regs[5]\(25) <= \<const0>\;
  \core_control_regs[5]\(24) <= \<const0>\;
  \core_control_regs[5]\(23) <= \<const0>\;
  \core_control_regs[5]\(22) <= \<const0>\;
  \core_control_regs[5]\(21) <= \<const0>\;
  \core_control_regs[5]\(20) <= \<const0>\;
  \core_control_regs[5]\(19) <= \<const0>\;
  \core_control_regs[5]\(18) <= \<const0>\;
  \core_control_regs[5]\(17) <= \<const0>\;
  \core_control_regs[5]\(16) <= \<const0>\;
  \core_control_regs[5]\(15) <= \<const0>\;
  \core_control_regs[5]\(14) <= \<const0>\;
  \core_control_regs[5]\(13) <= \<const0>\;
  \core_control_regs[5]\(12) <= \<const0>\;
  \core_control_regs[5]\(11) <= \<const0>\;
  \core_control_regs[5]\(10) <= \<const0>\;
  \core_control_regs[5]\(9) <= \<const0>\;
  \core_control_regs[5]\(8) <= \<const0>\;
  \core_control_regs[5]\(7) <= \<const0>\;
  \core_control_regs[5]\(6) <= \<const0>\;
  \core_control_regs[5]\(5) <= \<const0>\;
  \core_control_regs[5]\(4) <= \<const1>\;
  \core_control_regs[5]\(3) <= \<const0>\;
  \core_control_regs[5]\(2) <= \<const0>\;
  \core_control_regs[5]\(1) <= \<const0>\;
  \core_control_regs[5]\(0) <= \<const0>\;
  \core_control_regs[6]\(31) <= \<const0>\;
  \core_control_regs[6]\(30) <= \<const0>\;
  \core_control_regs[6]\(29) <= \<const0>\;
  \core_control_regs[6]\(28) <= \<const0>\;
  \core_control_regs[6]\(27) <= \<const0>\;
  \core_control_regs[6]\(26) <= \<const0>\;
  \core_control_regs[6]\(25) <= \<const0>\;
  \core_control_regs[6]\(24) <= \<const0>\;
  \core_control_regs[6]\(23) <= \<const0>\;
  \core_control_regs[6]\(22) <= \<const0>\;
  \core_control_regs[6]\(21) <= \<const0>\;
  \core_control_regs[6]\(20) <= \<const0>\;
  \core_control_regs[6]\(19) <= \<const0>\;
  \core_control_regs[6]\(18) <= \<const0>\;
  \core_control_regs[6]\(17) <= \<const0>\;
  \core_control_regs[6]\(16) <= \<const0>\;
  \core_control_regs[6]\(15) <= \<const0>\;
  \core_control_regs[6]\(14) <= \<const0>\;
  \core_control_regs[6]\(13) <= \<const0>\;
  \core_control_regs[6]\(12) <= \<const0>\;
  \core_control_regs[6]\(11) <= \<const0>\;
  \core_control_regs[6]\(10) <= \<const0>\;
  \core_control_regs[6]\(9) <= \<const0>\;
  \core_control_regs[6]\(8) <= \<const0>\;
  \core_control_regs[6]\(7) <= \<const0>\;
  \core_control_regs[6]\(6) <= \<const0>\;
  \core_control_regs[6]\(5) <= \<const0>\;
  \core_control_regs[6]\(4) <= \<const1>\;
  \core_control_regs[6]\(3) <= \<const0>\;
  \core_control_regs[6]\(2) <= \<const0>\;
  \core_control_regs[6]\(1) <= \<const0>\;
  \core_control_regs[6]\(0) <= \<const0>\;
  \core_control_regs[7]\(31) <= \<const0>\;
  \core_control_regs[7]\(30) <= \<const0>\;
  \core_control_regs[7]\(29) <= \<const0>\;
  \core_control_regs[7]\(28) <= \<const0>\;
  \core_control_regs[7]\(27) <= \<const0>\;
  \core_control_regs[7]\(26) <= \<const0>\;
  \core_control_regs[7]\(25) <= \<const0>\;
  \core_control_regs[7]\(24) <= \<const0>\;
  \core_control_regs[7]\(23) <= \<const0>\;
  \core_control_regs[7]\(22) <= \<const0>\;
  \core_control_regs[7]\(21) <= \<const0>\;
  \core_control_regs[7]\(20) <= \<const0>\;
  \core_control_regs[7]\(19) <= \<const0>\;
  \core_control_regs[7]\(18) <= \<const0>\;
  \core_control_regs[7]\(17) <= \<const0>\;
  \core_control_regs[7]\(16) <= \<const0>\;
  \core_control_regs[7]\(15) <= \<const0>\;
  \core_control_regs[7]\(14) <= \<const0>\;
  \core_control_regs[7]\(13) <= \<const0>\;
  \core_control_regs[7]\(12) <= \<const0>\;
  \core_control_regs[7]\(11) <= \<const0>\;
  \core_control_regs[7]\(10) <= \<const0>\;
  \core_control_regs[7]\(9) <= \<const0>\;
  \core_control_regs[7]\(8) <= \<const0>\;
  \core_control_regs[7]\(7) <= \<const1>\;
  \core_control_regs[7]\(6) <= \<const0>\;
  \core_control_regs[7]\(5) <= \<const0>\;
  \core_control_regs[7]\(4) <= \<const0>\;
  \core_control_regs[7]\(3) <= \<const0>\;
  \core_control_regs[7]\(2) <= \<const0>\;
  \core_control_regs[7]\(1) <= \<const0>\;
  \core_control_regs[7]\(0) <= \<const0>\;
  \core_control_regs[8]\(31) <= \<const0>\;
  \core_control_regs[8]\(30) <= \<const0>\;
  \core_control_regs[8]\(29) <= \<const0>\;
  \core_control_regs[8]\(28) <= \<const0>\;
  \core_control_regs[8]\(27) <= \<const0>\;
  \core_control_regs[8]\(26) <= \<const0>\;
  \core_control_regs[8]\(25) <= \<const0>\;
  \core_control_regs[8]\(24) <= \<const0>\;
  \core_control_regs[8]\(23) <= \<const0>\;
  \core_control_regs[8]\(22) <= \<const0>\;
  \core_control_regs[8]\(21) <= \<const0>\;
  \core_control_regs[8]\(20) <= \<const0>\;
  \core_control_regs[8]\(19) <= \<const0>\;
  \core_control_regs[8]\(18) <= \<const0>\;
  \core_control_regs[8]\(17) <= \<const0>\;
  \core_control_regs[8]\(16) <= \<const0>\;
  \core_control_regs[8]\(15) <= \<const0>\;
  \core_control_regs[8]\(14) <= \<const0>\;
  \core_control_regs[8]\(13) <= \<const0>\;
  \core_control_regs[8]\(12) <= \<const0>\;
  \core_control_regs[8]\(11) <= \<const0>\;
  \core_control_regs[8]\(10) <= \<const0>\;
  \core_control_regs[8]\(9) <= \<const0>\;
  \core_control_regs[8]\(8) <= \<const0>\;
  \core_control_regs[8]\(7) <= \<const1>\;
  \core_control_regs[8]\(6) <= \<const0>\;
  \core_control_regs[8]\(5) <= \<const0>\;
  \core_control_regs[8]\(4) <= \<const0>\;
  \core_control_regs[8]\(3) <= \<const0>\;
  \core_control_regs[8]\(2) <= \<const0>\;
  \core_control_regs[8]\(1) <= \<const0>\;
  \core_control_regs[8]\(0) <= \<const0>\;
  \core_control_regs[9]\(31) <= \<const0>\;
  \core_control_regs[9]\(30) <= \<const0>\;
  \core_control_regs[9]\(29) <= \<const0>\;
  \core_control_regs[9]\(28) <= \<const0>\;
  \core_control_regs[9]\(27) <= \<const0>\;
  \core_control_regs[9]\(26) <= \<const0>\;
  \core_control_regs[9]\(25) <= \<const0>\;
  \core_control_regs[9]\(24) <= \<const0>\;
  \core_control_regs[9]\(23) <= \<const0>\;
  \core_control_regs[9]\(22) <= \<const0>\;
  \core_control_regs[9]\(21) <= \<const0>\;
  \core_control_regs[9]\(20) <= \<const0>\;
  \core_control_regs[9]\(19) <= \<const0>\;
  \core_control_regs[9]\(18) <= \<const0>\;
  \core_control_regs[9]\(17) <= \<const0>\;
  \core_control_regs[9]\(16) <= \<const0>\;
  \core_control_regs[9]\(15) <= \<const0>\;
  \core_control_regs[9]\(14) <= \<const1>\;
  \core_control_regs[9]\(13) <= \<const0>\;
  \core_control_regs[9]\(12) <= \<const0>\;
  \core_control_regs[9]\(11) <= \<const1>\;
  \core_control_regs[9]\(10) <= \<const1>\;
  \core_control_regs[9]\(9) <= \<const0>\;
  \core_control_regs[9]\(8) <= \<const0>\;
  \core_control_regs[9]\(7) <= \<const1>\;
  \core_control_regs[9]\(6) <= \<const0>\;
  \core_control_regs[9]\(5) <= \<const0>\;
  \core_control_regs[9]\(4) <= \<const0>\;
  \core_control_regs[9]\(3) <= \<const1>\;
  \core_control_regs[9]\(2) <= \<const0>\;
  \core_control_regs[9]\(1) <= \<const1>\;
  \core_control_regs[9]\(0) <= \<const1>\;
  core_d_out <= \<const0>\;
  \genr_control_regs[0]\(31) <= \<const0>\;
  \genr_control_regs[0]\(30) <= \<const0>\;
  \genr_control_regs[0]\(29) <= \<const0>\;
  \genr_control_regs[0]\(28) <= \<const0>\;
  \genr_control_regs[0]\(27) <= \<const0>\;
  \genr_control_regs[0]\(26) <= \<const0>\;
  \genr_control_regs[0]\(25) <= \<const0>\;
  \genr_control_regs[0]\(24) <= \<const0>\;
  \genr_control_regs[0]\(23) <= \<const0>\;
  \genr_control_regs[0]\(22) <= \<const0>\;
  \genr_control_regs[0]\(21) <= \<const0>\;
  \genr_control_regs[0]\(20) <= \<const0>\;
  \genr_control_regs[0]\(19) <= \<const0>\;
  \genr_control_regs[0]\(18) <= \<const0>\;
  \genr_control_regs[0]\(17) <= \<const0>\;
  \genr_control_regs[0]\(16) <= \<const0>\;
  \genr_control_regs[0]\(15) <= \<const0>\;
  \genr_control_regs[0]\(14) <= \<const0>\;
  \genr_control_regs[0]\(13) <= \<const0>\;
  \genr_control_regs[0]\(12) <= \<const0>\;
  \genr_control_regs[0]\(11) <= \<const0>\;
  \genr_control_regs[0]\(10) <= \<const0>\;
  \genr_control_regs[0]\(9) <= \<const0>\;
  \genr_control_regs[0]\(8) <= \<const0>\;
  \genr_control_regs[0]\(7) <= \<const0>\;
  \genr_control_regs[0]\(6) <= \<const0>\;
  \genr_control_regs[0]\(5) <= \<const0>\;
  \genr_control_regs[0]\(4) <= \<const0>\;
  \genr_control_regs[0]\(3) <= \<const0>\;
  \genr_control_regs[0]\(2) <= \<const0>\;
  \genr_control_regs[0]\(1) <= \<const0>\;
  \genr_control_regs[0]\(0) <= \<const1>\;
  \genr_control_regs[1]\(31) <= \<const0>\;
  \genr_control_regs[1]\(30) <= \<const0>\;
  \genr_control_regs[1]\(29) <= \<const0>\;
  \genr_control_regs[1]\(28) <= \<const0>\;
  \genr_control_regs[1]\(27) <= \<const0>\;
  \genr_control_regs[1]\(26) <= \<const0>\;
  \genr_control_regs[1]\(25) <= \<const0>\;
  \genr_control_regs[1]\(24) <= \<const0>\;
  \genr_control_regs[1]\(23) <= \<const0>\;
  \genr_control_regs[1]\(22) <= \<const0>\;
  \genr_control_regs[1]\(21) <= \<const0>\;
  \genr_control_regs[1]\(20) <= \<const0>\;
  \genr_control_regs[1]\(19) <= \<const0>\;
  \genr_control_regs[1]\(18) <= \<const0>\;
  \genr_control_regs[1]\(17) <= \<const0>\;
  \genr_control_regs[1]\(16) <= \<const0>\;
  \genr_control_regs[1]\(15) <= \<const0>\;
  \genr_control_regs[1]\(14) <= \<const0>\;
  \genr_control_regs[1]\(13) <= \<const0>\;
  \genr_control_regs[1]\(12) <= \<const0>\;
  \genr_control_regs[1]\(11) <= \<const0>\;
  \genr_control_regs[1]\(10) <= \<const0>\;
  \genr_control_regs[1]\(9) <= \<const0>\;
  \genr_control_regs[1]\(8) <= \<const0>\;
  \genr_control_regs[1]\(7) <= \<const0>\;
  \genr_control_regs[1]\(6) <= \<const0>\;
  \genr_control_regs[1]\(5) <= \<const0>\;
  \genr_control_regs[1]\(4) <= \<const0>\;
  \genr_control_regs[1]\(3) <= \<const0>\;
  \genr_control_regs[1]\(2) <= \<const0>\;
  \genr_control_regs[1]\(1) <= \<const0>\;
  \genr_control_regs[1]\(0) <= \<const0>\;
  \genr_control_regs[2]\(31) <= \<const0>\;
  \genr_control_regs[2]\(30) <= \<const0>\;
  \genr_control_regs[2]\(29) <= \<const0>\;
  \genr_control_regs[2]\(28) <= \<const0>\;
  \genr_control_regs[2]\(27) <= \<const0>\;
  \genr_control_regs[2]\(26) <= \<const0>\;
  \genr_control_regs[2]\(25) <= \<const0>\;
  \genr_control_regs[2]\(24) <= \<const0>\;
  \genr_control_regs[2]\(23) <= \<const0>\;
  \genr_control_regs[2]\(22) <= \<const0>\;
  \genr_control_regs[2]\(21) <= \<const0>\;
  \genr_control_regs[2]\(20) <= \<const0>\;
  \genr_control_regs[2]\(19) <= \<const0>\;
  \genr_control_regs[2]\(18) <= \<const0>\;
  \genr_control_regs[2]\(17) <= \<const0>\;
  \genr_control_regs[2]\(16) <= \<const0>\;
  \genr_control_regs[2]\(15) <= \<const0>\;
  \genr_control_regs[2]\(14) <= \<const0>\;
  \genr_control_regs[2]\(13) <= \<const0>\;
  \genr_control_regs[2]\(12) <= \<const0>\;
  \genr_control_regs[2]\(11) <= \<const0>\;
  \genr_control_regs[2]\(10) <= \<const0>\;
  \genr_control_regs[2]\(9) <= \<const0>\;
  \genr_control_regs[2]\(8) <= \<const0>\;
  \genr_control_regs[2]\(7) <= \<const0>\;
  \genr_control_regs[2]\(6) <= \<const0>\;
  \genr_control_regs[2]\(5) <= \<const0>\;
  \genr_control_regs[2]\(4) <= \<const0>\;
  \genr_control_regs[2]\(3) <= \<const0>\;
  \genr_control_regs[2]\(2) <= \<const0>\;
  \genr_control_regs[2]\(1) <= \<const0>\;
  \genr_control_regs[2]\(0) <= \<const0>\;
  \genr_control_regs[3]\(31) <= \<const0>\;
  \genr_control_regs[3]\(30) <= \<const0>\;
  \genr_control_regs[3]\(29) <= \<const0>\;
  \genr_control_regs[3]\(28) <= \<const0>\;
  \genr_control_regs[3]\(27) <= \<const0>\;
  \genr_control_regs[3]\(26) <= \<const0>\;
  \genr_control_regs[3]\(25) <= \<const0>\;
  \genr_control_regs[3]\(24) <= \<const0>\;
  \genr_control_regs[3]\(23) <= \<const0>\;
  \genr_control_regs[3]\(22) <= \<const0>\;
  \genr_control_regs[3]\(21) <= \<const0>\;
  \genr_control_regs[3]\(20) <= \<const0>\;
  \genr_control_regs[3]\(19) <= \<const0>\;
  \genr_control_regs[3]\(18) <= \<const0>\;
  \genr_control_regs[3]\(17) <= \<const0>\;
  \genr_control_regs[3]\(16) <= \<const0>\;
  \genr_control_regs[3]\(15) <= \<const0>\;
  \genr_control_regs[3]\(14) <= \<const0>\;
  \genr_control_regs[3]\(13) <= \<const0>\;
  \genr_control_regs[3]\(12) <= \<const0>\;
  \genr_control_regs[3]\(11) <= \<const0>\;
  \genr_control_regs[3]\(10) <= \<const0>\;
  \genr_control_regs[3]\(9) <= \<const0>\;
  \genr_control_regs[3]\(8) <= \<const0>\;
  \genr_control_regs[3]\(7) <= \<const0>\;
  \genr_control_regs[3]\(6) <= \<const0>\;
  \genr_control_regs[3]\(5) <= \<const0>\;
  \genr_control_regs[3]\(4) <= \<const0>\;
  \genr_control_regs[3]\(3) <= \<const0>\;
  \genr_control_regs[3]\(2) <= \<const0>\;
  \genr_control_regs[3]\(1) <= \<const0>\;
  \genr_control_regs[3]\(0) <= \<const0>\;
  \genr_control_regs[4]\(31) <= \<const0>\;
  \genr_control_regs[4]\(30) <= \<const0>\;
  \genr_control_regs[4]\(29) <= \<const0>\;
  \genr_control_regs[4]\(28) <= \<const0>\;
  \genr_control_regs[4]\(27) <= \<const0>\;
  \genr_control_regs[4]\(26) <= \<const0>\;
  \genr_control_regs[4]\(25) <= \<const0>\;
  \genr_control_regs[4]\(24) <= \<const0>\;
  \genr_control_regs[4]\(23) <= \<const0>\;
  \genr_control_regs[4]\(22) <= \<const0>\;
  \genr_control_regs[4]\(21) <= \<const0>\;
  \genr_control_regs[4]\(20) <= \<const0>\;
  \genr_control_regs[4]\(19) <= \<const0>\;
  \genr_control_regs[4]\(18) <= \<const0>\;
  \genr_control_regs[4]\(17) <= \<const0>\;
  \genr_control_regs[4]\(16) <= \<const0>\;
  \genr_control_regs[4]\(15) <= \<const0>\;
  \genr_control_regs[4]\(14) <= \<const0>\;
  \genr_control_regs[4]\(13) <= \<const0>\;
  \genr_control_regs[4]\(12) <= \<const0>\;
  \genr_control_regs[4]\(11) <= \<const0>\;
  \genr_control_regs[4]\(10) <= \<const0>\;
  \genr_control_regs[4]\(9) <= \<const0>\;
  \genr_control_regs[4]\(8) <= \<const0>\;
  \genr_control_regs[4]\(7) <= \<const0>\;
  \genr_control_regs[4]\(6) <= \<const0>\;
  \genr_control_regs[4]\(5) <= \<const0>\;
  \genr_control_regs[4]\(4) <= \<const0>\;
  \genr_control_regs[4]\(3) <= \<const0>\;
  \genr_control_regs[4]\(2) <= \<const0>\;
  \genr_control_regs[4]\(1) <= \<const0>\;
  \genr_control_regs[4]\(0) <= \<const0>\;
  \genr_control_regs[5]\(31) <= \<const0>\;
  \genr_control_regs[5]\(30) <= \<const0>\;
  \genr_control_regs[5]\(29) <= \<const0>\;
  \genr_control_regs[5]\(28) <= \<const0>\;
  \genr_control_regs[5]\(27) <= \<const0>\;
  \genr_control_regs[5]\(26) <= \<const0>\;
  \genr_control_regs[5]\(25) <= \<const0>\;
  \genr_control_regs[5]\(24) <= \<const0>\;
  \genr_control_regs[5]\(23) <= \<const0>\;
  \genr_control_regs[5]\(22) <= \<const0>\;
  \genr_control_regs[5]\(21) <= \<const0>\;
  \genr_control_regs[5]\(20) <= \<const0>\;
  \genr_control_regs[5]\(19) <= \<const0>\;
  \genr_control_regs[5]\(18) <= \<const0>\;
  \genr_control_regs[5]\(17) <= \<const0>\;
  \genr_control_regs[5]\(16) <= \<const0>\;
  \genr_control_regs[5]\(15) <= \<const0>\;
  \genr_control_regs[5]\(14) <= \<const0>\;
  \genr_control_regs[5]\(13) <= \<const0>\;
  \genr_control_regs[5]\(12) <= \<const0>\;
  \genr_control_regs[5]\(11) <= \<const0>\;
  \genr_control_regs[5]\(10) <= \<const0>\;
  \genr_control_regs[5]\(9) <= \<const0>\;
  \genr_control_regs[5]\(8) <= \<const0>\;
  \genr_control_regs[5]\(7) <= \<const0>\;
  \genr_control_regs[5]\(6) <= \<const0>\;
  \genr_control_regs[5]\(5) <= \<const0>\;
  \genr_control_regs[5]\(4) <= \<const0>\;
  \genr_control_regs[5]\(3) <= \<const0>\;
  \genr_control_regs[5]\(2) <= \<const0>\;
  \genr_control_regs[5]\(1) <= \<const0>\;
  \genr_control_regs[5]\(0) <= \<const0>\;
  \genr_control_regs[6]\(31) <= \<const0>\;
  \genr_control_regs[6]\(30) <= \<const0>\;
  \genr_control_regs[6]\(29) <= \<const0>\;
  \genr_control_regs[6]\(28) <= \<const0>\;
  \genr_control_regs[6]\(27) <= \<const0>\;
  \genr_control_regs[6]\(26) <= \<const0>\;
  \genr_control_regs[6]\(25) <= \<const0>\;
  \genr_control_regs[6]\(24) <= \<const0>\;
  \genr_control_regs[6]\(23) <= \<const0>\;
  \genr_control_regs[6]\(22) <= \<const0>\;
  \genr_control_regs[6]\(21) <= \<const0>\;
  \genr_control_regs[6]\(20) <= \<const0>\;
  \genr_control_regs[6]\(19) <= \<const0>\;
  \genr_control_regs[6]\(18) <= \<const0>\;
  \genr_control_regs[6]\(17) <= \<const0>\;
  \genr_control_regs[6]\(16) <= \<const0>\;
  \genr_control_regs[6]\(15) <= \<const0>\;
  \genr_control_regs[6]\(14) <= \<const0>\;
  \genr_control_regs[6]\(13) <= \<const0>\;
  \genr_control_regs[6]\(12) <= \<const0>\;
  \genr_control_regs[6]\(11) <= \<const0>\;
  \genr_control_regs[6]\(10) <= \<const0>\;
  \genr_control_regs[6]\(9) <= \<const0>\;
  \genr_control_regs[6]\(8) <= \<const0>\;
  \genr_control_regs[6]\(7) <= \<const0>\;
  \genr_control_regs[6]\(6) <= \<const0>\;
  \genr_control_regs[6]\(5) <= \<const0>\;
  \genr_control_regs[6]\(4) <= \<const0>\;
  \genr_control_regs[6]\(3) <= \<const0>\;
  \genr_control_regs[6]\(2) <= \<const0>\;
  \genr_control_regs[6]\(1) <= \<const0>\;
  \genr_control_regs[6]\(0) <= \<const0>\;
  \genr_control_regs[7]\(31) <= \<const0>\;
  \genr_control_regs[7]\(30) <= \<const0>\;
  \genr_control_regs[7]\(29) <= \<const0>\;
  \genr_control_regs[7]\(28) <= \<const0>\;
  \genr_control_regs[7]\(27) <= \<const0>\;
  \genr_control_regs[7]\(26) <= \<const0>\;
  \genr_control_regs[7]\(25) <= \<const0>\;
  \genr_control_regs[7]\(24) <= \<const0>\;
  \genr_control_regs[7]\(23) <= \<const0>\;
  \genr_control_regs[7]\(22) <= \<const0>\;
  \genr_control_regs[7]\(21) <= \<const0>\;
  \genr_control_regs[7]\(20) <= \<const0>\;
  \genr_control_regs[7]\(19) <= \<const0>\;
  \genr_control_regs[7]\(18) <= \<const0>\;
  \genr_control_regs[7]\(17) <= \<const0>\;
  \genr_control_regs[7]\(16) <= \<const0>\;
  \genr_control_regs[7]\(15) <= \<const0>\;
  \genr_control_regs[7]\(14) <= \<const0>\;
  \genr_control_regs[7]\(13) <= \<const0>\;
  \genr_control_regs[7]\(12) <= \<const0>\;
  \genr_control_regs[7]\(11) <= \<const0>\;
  \genr_control_regs[7]\(10) <= \<const0>\;
  \genr_control_regs[7]\(9) <= \<const0>\;
  \genr_control_regs[7]\(8) <= \<const0>\;
  \genr_control_regs[7]\(7) <= \<const0>\;
  \genr_control_regs[7]\(6) <= \<const0>\;
  \genr_control_regs[7]\(5) <= \<const0>\;
  \genr_control_regs[7]\(4) <= \<const0>\;
  \genr_control_regs[7]\(3) <= \<const0>\;
  \genr_control_regs[7]\(2) <= \<const0>\;
  \genr_control_regs[7]\(1) <= \<const0>\;
  \genr_control_regs[7]\(0) <= \<const0>\;
  ipif_cs_out <= \<const0>\;
  ipif_data_out(31) <= \<const0>\;
  ipif_data_out(30) <= \<const0>\;
  ipif_data_out(29) <= \<const0>\;
  ipif_data_out(28) <= \<const0>\;
  ipif_data_out(27) <= \<const0>\;
  ipif_data_out(26) <= \<const0>\;
  ipif_data_out(25) <= \<const0>\;
  ipif_data_out(24) <= \<const0>\;
  ipif_data_out(23) <= \<const0>\;
  ipif_data_out(22) <= \<const0>\;
  ipif_data_out(21) <= \<const0>\;
  ipif_data_out(20) <= \<const0>\;
  ipif_data_out(19) <= \<const0>\;
  ipif_data_out(18) <= \<const0>\;
  ipif_data_out(17) <= \<const0>\;
  ipif_data_out(16) <= \<const0>\;
  ipif_data_out(15) <= \<const0>\;
  ipif_data_out(14) <= \<const0>\;
  ipif_data_out(13) <= \<const0>\;
  ipif_data_out(12) <= \<const0>\;
  ipif_data_out(11) <= \<const0>\;
  ipif_data_out(10) <= \<const0>\;
  ipif_data_out(9) <= \<const0>\;
  ipif_data_out(8) <= \<const0>\;
  ipif_data_out(7) <= \<const0>\;
  ipif_data_out(6) <= \<const0>\;
  ipif_data_out(5) <= \<const0>\;
  ipif_data_out(4) <= \<const0>\;
  ipif_data_out(3) <= \<const0>\;
  ipif_data_out(2) <= \<const0>\;
  ipif_data_out(1) <= \<const0>\;
  ipif_data_out(0) <= \<const0>\;
  ipif_rnw_out <= \<const1>\;
  irq <= \<const0>\;
  resetn_out <= \^vid_aresetn\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  \time_control_regs[0]\(31) <= \<const0>\;
  \time_control_regs[0]\(30) <= \<const0>\;
  \time_control_regs[0]\(29) <= \<const0>\;
  \time_control_regs[0]\(28) <= \<const0>\;
  \time_control_regs[0]\(27) <= \<const0>\;
  \time_control_regs[0]\(26) <= \<const0>\;
  \time_control_regs[0]\(25) <= \<const1>\;
  \time_control_regs[0]\(24) <= \<const0>\;
  \time_control_regs[0]\(23) <= \<const1>\;
  \time_control_regs[0]\(22) <= \<const1>\;
  \time_control_regs[0]\(21) <= \<const0>\;
  \time_control_regs[0]\(20) <= \<const1>\;
  \time_control_regs[0]\(19) <= \<const0>\;
  \time_control_regs[0]\(18) <= \<const0>\;
  \time_control_regs[0]\(17) <= \<const0>\;
  \time_control_regs[0]\(16) <= \<const0>\;
  \time_control_regs[0]\(15) <= \<const0>\;
  \time_control_regs[0]\(14) <= \<const0>\;
  \time_control_regs[0]\(13) <= \<const0>\;
  \time_control_regs[0]\(12) <= \<const0>\;
  \time_control_regs[0]\(11) <= \<const0>\;
  \time_control_regs[0]\(10) <= \<const1>\;
  \time_control_regs[0]\(9) <= \<const0>\;
  \time_control_regs[0]\(8) <= \<const1>\;
  \time_control_regs[0]\(7) <= \<const0>\;
  \time_control_regs[0]\(6) <= \<const0>\;
  \time_control_regs[0]\(5) <= \<const0>\;
  \time_control_regs[0]\(4) <= \<const0>\;
  \time_control_regs[0]\(3) <= \<const0>\;
  \time_control_regs[0]\(2) <= \<const0>\;
  \time_control_regs[0]\(1) <= \<const0>\;
  \time_control_regs[0]\(0) <= \<const0>\;
  \time_control_regs[1]\(31) <= \<const0>\;
  \time_control_regs[1]\(30) <= \<const0>\;
  \time_control_regs[1]\(29) <= \<const0>\;
  \time_control_regs[1]\(28) <= \<const0>\;
  \time_control_regs[1]\(27) <= \<const0>\;
  \time_control_regs[1]\(26) <= \<const0>\;
  \time_control_regs[1]\(25) <= \<const0>\;
  \time_control_regs[1]\(24) <= \<const0>\;
  \time_control_regs[1]\(23) <= \<const0>\;
  \time_control_regs[1]\(22) <= \<const0>\;
  \time_control_regs[1]\(21) <= \<const0>\;
  \time_control_regs[1]\(20) <= \<const0>\;
  \time_control_regs[1]\(19) <= \<const0>\;
  \time_control_regs[1]\(18) <= \<const0>\;
  \time_control_regs[1]\(17) <= \<const0>\;
  \time_control_regs[1]\(16) <= \<const0>\;
  \time_control_regs[1]\(15) <= \<const0>\;
  \time_control_regs[1]\(14) <= \<const0>\;
  \time_control_regs[1]\(13) <= \<const0>\;
  \time_control_regs[1]\(12) <= \<const0>\;
  \time_control_regs[1]\(11) <= \<const0>\;
  \time_control_regs[1]\(10) <= \<const0>\;
  \time_control_regs[1]\(9) <= \<const0>\;
  \time_control_regs[1]\(8) <= \<const0>\;
  \time_control_regs[1]\(7) <= \<const0>\;
  \time_control_regs[1]\(6) <= \<const0>\;
  \time_control_regs[1]\(5) <= \<const0>\;
  \time_control_regs[1]\(4) <= \<const0>\;
  \time_control_regs[1]\(3) <= \<const0>\;
  \time_control_regs[1]\(2) <= \<const0>\;
  \time_control_regs[1]\(1) <= \<const0>\;
  \time_control_regs[1]\(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(8)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(7)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(6)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(5)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(4)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(3)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(2)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ipif_addr_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat is
  port (
    \needs_delay.shift_register_reg[1][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat : entity is "max_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat is
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal reg_n_0 : STD_LOGIC;
  signal reg_n_1 : STD_LOGIC;
  signal reg_n_20 : STD_LOGIC;
  signal reg_n_21 : STD_LOGIC;
  signal reg_n_22 : STD_LOGIC;
  signal reg_n_23 : STD_LOGIC;
  signal reg_n_24 : STD_LOGIC;
  signal reg_n_25 : STD_LOGIC;
  signal reg_n_26 : STD_LOGIC;
  signal reg_n_27 : STD_LOGIC;
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair33";
begin
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => reg_n_24,
      DI(2) => reg_n_25,
      DI(1) => reg_n_26,
      DI(0) => reg_n_27,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => reg_n_20,
      S(2) => reg_n_21,
      S(1) => reg_n_22,
      S(0) => reg_n_23
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => reg_n_0,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => reg_n_1
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(0),
      I1 => p(0),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(1),
      I1 => p(1),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(2),
      I1 => p(2),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(3),
      I1 => p(3),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(4),
      I1 => p(4),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(5),
      I1 => p(5),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(6),
      I1 => p(6),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[2]\(7),
      I1 => p(7),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(8),
      I1 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(9),
      I1 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_8\
     port map (
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      DI(0) => reg_n_0,
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      S(0) => reg_n_1,
      aclk => aclk,
      \core_control_regs[2]\(7 downto 0) => \core_control_regs[2]\(7 downto 0),
      \core_control_regs[3]\(7 downto 0) => \core_control_regs[3]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]_0\(0) => \needs_delay.shift_register_reg[1][7]\(0),
      \needs_delay.shift_register_reg[1][7]_1\(3 downto 0) => S(3 downto 0),
      \needs_delay.shift_register_reg[1][7]_2\(3 downto 0) => DI(3 downto 0),
      \needs_delay.shift_register_reg[1][9]_0\(3) => reg_n_20,
      \needs_delay.shift_register_reg[1][9]_0\(2) => reg_n_21,
      \needs_delay.shift_register_reg[1][9]_0\(1) => reg_n_22,
      \needs_delay.shift_register_reg[1][9]_0\(0) => reg_n_23,
      \needs_delay.shift_register_reg[1][9]_1\(3) => reg_n_24,
      \needs_delay.shift_register_reg[1][9]_1\(2) => reg_n_25,
      \needs_delay.shift_register_reg[1][9]_1\(1) => reg_n_26,
      \needs_delay.shift_register_reg[1][9]_1\(0) => reg_n_27,
      p(9 downto 0) => p(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_2 is
  port (
    \needs_delay.shift_register_reg[1][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_2 : entity is "max_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_2;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_2 is
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_1_n_0\ : STD_LOGIC;
  signal reg_n_0 : STD_LOGIC;
  signal reg_n_1 : STD_LOGIC;
  signal reg_n_20 : STD_LOGIC;
  signal reg_n_21 : STD_LOGIC;
  signal reg_n_22 : STD_LOGIC;
  signal reg_n_23 : STD_LOGIC;
  signal reg_n_24 : STD_LOGIC;
  signal reg_n_25 : STD_LOGIC;
  signal reg_n_26 : STD_LOGIC;
  signal reg_n_27 : STD_LOGIC;
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair38";
begin
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => reg_n_24,
      DI(2) => reg_n_25,
      DI(1) => reg_n_26,
      DI(0) => reg_n_27,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => reg_n_20,
      S(2) => reg_n_21,
      S(1) => reg_n_22,
      S(0) => reg_n_23
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => reg_n_0,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => reg_n_1
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(0),
      I1 => p(0),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(1),
      I1 => p(1),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(2),
      I1 => p(2),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(3),
      I1 => p(3),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(4),
      I1 => p(4),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(5),
      I1 => p(5),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(6),
      I1 => p(6),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[4]\(7),
      I1 => p(7),
      I2 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(8),
      I1 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][8]_i_1_n_0\
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p(9),
      I1 => \gtOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][9]_i_1_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5_7\
     port map (
      D(9) => \needs_delay.shift_register[1][9]_i_1_n_0\,
      D(8) => \needs_delay.shift_register[1][8]_i_1_n_0\,
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      DI(0) => reg_n_0,
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      S(0) => reg_n_1,
      aclk => aclk,
      \core_control_regs[4]\(7 downto 0) => \core_control_regs[4]\(7 downto 0),
      \core_control_regs[5]\(7 downto 0) => \core_control_regs[5]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]_0\(0) => \needs_delay.shift_register_reg[1][7]\(0),
      \needs_delay.shift_register_reg[1][7]_1\(3 downto 0) => S(3 downto 0),
      \needs_delay.shift_register_reg[1][7]_2\(3 downto 0) => DI(3 downto 0),
      \needs_delay.shift_register_reg[1][9]_0\(3) => reg_n_20,
      \needs_delay.shift_register_reg[1][9]_0\(2) => reg_n_21,
      \needs_delay.shift_register_reg[1][9]_0\(1) => reg_n_22,
      \needs_delay.shift_register_reg[1][9]_0\(0) => reg_n_23,
      \needs_delay.shift_register_reg[1][9]_1\(3) => reg_n_24,
      \needs_delay.shift_register_reg[1][9]_1\(2) => reg_n_25,
      \needs_delay.shift_register_reg[1][9]_1\(1) => reg_n_26,
      \needs_delay.shift_register_reg[1][9]_1\(0) => reg_n_27,
      p(9 downto 0) => p(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_3 is
  port (
    \needs_delay.shift_register_reg[1][7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[1][7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \needs_delay.shift_register_reg[3][8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[3][8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \needs_delay.shift_register_reg[3][0]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][1]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][2]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][3]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][4]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][5]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][6]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][7]\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][8]_1\ : in STD_LOGIC;
    \needs_delay.shift_register_reg[3][9]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_3 : entity is "max_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_3;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_3 is
  signal c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gtOp : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][9]_i_1\ : label is "soft_lutpair43";
begin
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3 downto 1) => \NLW_gtOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => gtOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \needs_delay.shift_register_reg[3][8]\(0),
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \needs_delay.shift_register_reg[3][8]_0\(0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(0),
      I1 => \needs_delay.shift_register_reg[3][0]\,
      I2 => gtOp,
      O => c(0)
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(1),
      I1 => \needs_delay.shift_register_reg[3][1]\,
      I2 => gtOp,
      O => c(1)
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(2),
      I1 => \needs_delay.shift_register_reg[3][2]\,
      I2 => gtOp,
      O => c(2)
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(3),
      I1 => \needs_delay.shift_register_reg[3][3]\,
      I2 => gtOp,
      O => c(3)
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(4),
      I1 => \needs_delay.shift_register_reg[3][4]\,
      I2 => gtOp,
      O => c(4)
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(5),
      I1 => \needs_delay.shift_register_reg[3][5]\,
      I2 => gtOp,
      O => c(5)
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(6),
      I1 => \needs_delay.shift_register_reg[3][6]\,
      I2 => gtOp,
      O => c(6)
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[0]\(7),
      I1 => \needs_delay.shift_register_reg[3][7]\,
      I2 => gtOp,
      O => c(7)
    );
\needs_delay.shift_register[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[3][8]_1\,
      I1 => gtOp,
      O => c(8)
    );
\needs_delay.shift_register[1][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[3][9]\,
      I1 => gtOp,
      O => c(9)
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized5\
     port map (
      D(9 downto 0) => c(9 downto 0),
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      aclk => aclk,
      \core_control_regs[1]\(7 downto 0) => \core_control_regs[1]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]_0\(0) => \needs_delay.shift_register_reg[1][7]\(0),
      \needs_delay.shift_register_reg[1][7]_1\(3 downto 0) => \needs_delay.shift_register_reg[1][7]_0\(3 downto 0),
      \needs_delay.shift_register_reg[1][7]_2\(3 downto 0) => \needs_delay.shift_register_reg[1][7]_1\(3 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat : entity is "min_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat is
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair20";
begin
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3 downto 1) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \needs_delay.shift_register_reg[1][8]\(0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(0),
      I1 => Q(0),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(1),
      I1 => Q(1),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(2),
      I1 => Q(2),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(3),
      I1 => Q(3),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(4),
      I1 => Q(4),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(5),
      I1 => Q(5),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(6),
      I1 => Q(6),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[3]\(7),
      I1 => Q(7),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_10\
     port map (
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(7 downto 0) => da(7 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_0 is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_0 : entity is "min_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_0;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_0 is
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair24";
begin
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3 downto 1) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \needs_delay.shift_register_reg[1][8]\(0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(0),
      I1 => Q(0),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(1),
      I1 => Q(1),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(2),
      I1 => Q(2),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(3),
      I1 => Q(3),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(4),
      I1 => Q(4),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(5),
      I1 => Q(5),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(6),
      I1 => Q(6),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[5]\(7),
      I1 => Q(7),
      I2 => \ltOp_carry__0_n_3\,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6_9\
     port map (
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(7 downto 0) => da(7 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_1 is
  port (
    da : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_1 : entity is "min_sat";
end Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_1;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_1 is
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal \needs_delay.shift_register[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][4]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \needs_delay.shift_register[1][7]_i_1\ : label is "soft_lutpair28";
begin
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3 downto 1) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \needs_delay.shift_register_reg[1][8]\(0)
    );
\needs_delay.shift_register[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(0),
      I1 => Q(0),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][0]_i_1_n_0\
    );
\needs_delay.shift_register[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(1),
      I1 => Q(1),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][1]_i_1_n_0\
    );
\needs_delay.shift_register[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(2),
      I1 => Q(2),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][2]_i_1_n_0\
    );
\needs_delay.shift_register[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(3),
      I1 => Q(3),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][3]_i_1_n_0\
    );
\needs_delay.shift_register[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(4),
      I1 => Q(4),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][4]_i_1_n_0\
    );
\needs_delay.shift_register[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(5),
      I1 => Q(5),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][5]_i_1_n_0\
    );
\needs_delay.shift_register[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(6),
      I1 => Q(6),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][6]_i_1_n_0\
    );
\needs_delay.shift_register[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \core_control_regs[1]\(7),
      I1 => Q(7),
      I2 => ltOp,
      O => \needs_delay.shift_register[1][7]_i_1_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized6\
     port map (
      D(7) => \needs_delay.shift_register[1][7]_i_1_n_0\,
      D(6) => \needs_delay.shift_register[1][6]_i_1_n_0\,
      D(5) => \needs_delay.shift_register[1][5]_i_1_n_0\,
      D(4) => \needs_delay.shift_register[1][4]_i_1_n_0\,
      D(3) => \needs_delay.shift_register[1][3]_i_1_n_0\,
      D(2) => \needs_delay.shift_register[1][2]_i_1_n_0\,
      D(1) => \needs_delay.shift_register[1][1]_i_1_n_0\,
      D(0) => \needs_delay.shift_register[1][0]_i_1_n_0\,
      E(0) => E(0),
      aclk => aclk,
      da(7 downto 0) => da(7 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_mult is
  port (
    c : out STD_LOGIC_VECTOR ( 25 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    sclr : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_mult : entity is "mult";
end Arty_Z7_20_v_rgb2ycrcb_0_0_mult;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_mult is
begin
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized0\
     port map (
      E(0) => E(0),
      aclk => aclk,
      c(25 downto 0) => c(25 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      s(8 downto 0) => s(8 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no is
  port (
    s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no : entity is "radd_sub_sclr_no";
end Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no is
  signal out_s : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
begin
  s(8 downto 0) <= out_s(8 downto 0);
reg: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr
     port map (
      E(0) => E(0),
      Q(15 downto 0) => Q(15 downto 0),
      aclk => aclk,
      out_s(8 downto 0) => out_s(8 downto 0),
      p_0_in(0) => p_0_in(0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no_5 is
  port (
    s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no_5 : entity is "radd_sub_sclr_no";
end Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no_5;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no_5 is
  signal out_s : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
begin
  s(8 downto 0) <= out_s(8 downto 0);
reg: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr_6
     port map (
      E(0) => E(0),
      Q(14 downto 0) => Q(14 downto 0),
      aclk => aclk,
      out_s(8 downto 0) => out_s(8 downto 0),
      p_0_in(0) => p_0_in(0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    a : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][3]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[5][7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    y_intb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ : entity is "radd_sub_sclr_no";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\ is
  signal \needs_delay.shift_register[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][9]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][9]_i_1_n_3\ : STD_LOGIC;
  signal out_s : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reg_n_0 : STD_LOGIC;
  signal reg_n_1 : STD_LOGIC;
  signal \NLW_needs_delay.shift_register_reg[1][9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_needs_delay.shift_register_reg[1][9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  \^s\(8 downto 0) <= out_s(8 downto 0);
\needs_delay.shift_register[1][10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_s(9),
      O => DI(0)
    );
\needs_delay.shift_register[1][10]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => out_s(9),
      I1 => \core_control_regs[6]\(0),
      O => S(0)
    );
\needs_delay.shift_register[1][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(3),
      I1 => y_intb(3),
      O => \needs_delay.shift_register[1][3]_i_2_n_0\
    );
\needs_delay.shift_register[1][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(2),
      I1 => y_intb(2),
      O => \needs_delay.shift_register[1][3]_i_3_n_0\
    );
\needs_delay.shift_register[1][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(1),
      I1 => y_intb(1),
      O => \needs_delay.shift_register[1][3]_i_4_n_0\
    );
\needs_delay.shift_register[1][3]_i_5__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_s(0),
      O => a(0)
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(7),
      I1 => y_intb(7),
      O => \needs_delay.shift_register[1][7]_i_2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(6),
      I1 => y_intb(6),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(5),
      I1 => y_intb(5),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p(4),
      I1 => y_intb(4),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register[1][9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p(8),
      O => \needs_delay.shift_register[1][9]_i_2_n_0\
    );
\needs_delay.shift_register_reg[1][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1_n_3\,
      CYINIT => y_intb(0),
      DI(3 downto 0) => p(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \needs_delay.shift_register[1][3]_i_2_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_4_n_0\,
      S(0) => reg_n_1
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p(7 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \needs_delay.shift_register[1][7]_i_2_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_needs_delay.shift_register_reg[1][9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \needs_delay.shift_register_reg[1][9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \needs_delay.shift_register[1][9]_i_2_n_0\,
      O(3 downto 2) => \NLW_needs_delay.shift_register_reg[1][9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp(9 downto 8),
      S(3 downto 1) => B"001",
      S(0) => reg_n_0
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized1\
     port map (
      CO(0) => CO(0),
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(9 downto 0) => out_s(9 downto 0),
      a(1) => reg_n_0,
      a(0) => reg_n_1,
      aclk => aclk,
      \needs_delay.shift_register_reg[1][10]\(2 downto 0) => \needs_delay.shift_register_reg[1][10]\(2 downto 0),
      \needs_delay.shift_register_reg[1][3]_0\ => \needs_delay.shift_register_reg[1][3]\,
      \needs_delay.shift_register_reg[5][7]\(0) => \needs_delay.shift_register_reg[5][7]\(0),
      \out\(2 downto 1) => out_s(9 downto 8),
      \out\(0) => out_s(0),
      p(1) => p(8),
      p(0) => p(0),
      plusOp(9 downto 0) => plusOp(9 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ : entity is "radd_sub_sclr_no";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\ is
  signal out_s : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
begin
  \out\(10 downto 0) <= out_s(10 downto 0);
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized2\
     port map (
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      Q(10 downto 0) => out_s(10 downto 0),
      aclk => aclk,
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ : entity is "radd_sub_sclr_no";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\ is
  signal out_s : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
begin
  \out\(10 downto 0) <= out_s(10 downto 0);
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized3\
     port map (
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      Q(10 downto 0) => out_s(10 downto 0),
      aclk => aclk,
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized3\ is
  port (
    sclr : out STD_LOGIC;
    \^s\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized3\ : entity is "radd_sub_sclr_no";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized3\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized3\ is
  signal \needs_delay.shift_register[1][10]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][10]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][3]_i_1_n_3\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_1\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_2\ : STD_LOGIC;
  signal \needs_delay.shift_register_reg[1][7]_i_1_n_3\ : STD_LOGIC;
  signal out_s : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of out_s : signal is "true";
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of out_s : signal is "no";
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \^s\(9 downto 0) <= out_s(9 downto 0);
\needs_delay.shift_register[1][10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(8),
      I1 => \core_control_regs[6]\(8),
      O => \needs_delay.shift_register[1][10]_i_4_n_0\
    );
\needs_delay.shift_register[1][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(3),
      I1 => \core_control_regs[6]\(3),
      O => \needs_delay.shift_register[1][3]_i_2_n_0\
    );
\needs_delay.shift_register[1][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(2),
      I1 => \core_control_regs[6]\(2),
      O => \needs_delay.shift_register[1][3]_i_3_n_0\
    );
\needs_delay.shift_register[1][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(1),
      I1 => \core_control_regs[6]\(1),
      O => \needs_delay.shift_register[1][3]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(7),
      I1 => \core_control_regs[6]\(7),
      O => \needs_delay.shift_register[1][7]_i_2_n_0\
    );
\needs_delay.shift_register[1][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(6),
      I1 => \core_control_regs[6]\(6),
      O => \needs_delay.shift_register[1][7]_i_3_n_0\
    );
\needs_delay.shift_register[1][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(5),
      I1 => \core_control_regs[6]\(5),
      O => \needs_delay.shift_register[1][7]_i_4_n_0\
    );
\needs_delay.shift_register[1][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \needs_delay.shift_register_reg[1][8]\(4),
      I1 => \core_control_regs[6]\(4),
      O => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
\needs_delay.shift_register_reg[1][10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \needs_delay.shift_register_reg[1][10]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => DI(0),
      DI(0) => \needs_delay.shift_register_reg[1][8]\(8),
      O(3) => \NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(10 downto 8),
      S(3 downto 2) => B"01",
      S(1) => S(0),
      S(0) => \needs_delay.shift_register[1][10]_i_4_n_0\
    );
\needs_delay.shift_register_reg[1][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][3]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][3]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][3]_i_1_n_3\,
      CYINIT => \core_control_regs[6]\(0),
      DI(3 downto 0) => \needs_delay.shift_register_reg[1][8]\(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \needs_delay.shift_register[1][3]_i_2_n_0\,
      S(2) => \needs_delay.shift_register[1][3]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][3]_i_4_n_0\,
      S(0) => a(0)
    );
\needs_delay.shift_register_reg[1][7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \needs_delay.shift_register_reg[1][3]_i_1_n_0\,
      CO(3) => \needs_delay.shift_register_reg[1][7]_i_1_n_0\,
      CO(2) => \needs_delay.shift_register_reg[1][7]_i_1_n_1\,
      CO(1) => \needs_delay.shift_register_reg[1][7]_i_1_n_2\,
      CO(0) => \needs_delay.shift_register_reg[1][7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \needs_delay.shift_register_reg[1][8]\(7 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \needs_delay.shift_register[1][7]_i_2_n_0\,
      S(2) => \needs_delay.shift_register[1][7]_i_3_n_0\,
      S(1) => \needs_delay.shift_register[1][7]_i_4_n_0\,
      S(0) => \needs_delay.shift_register[1][7]_i_5_n_0\
    );
reg: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay_sclr__parameterized4\
     port map (
      E(0) => E(0),
      Q(10 downto 0) => out_s(10 downto 0),
      SR(0) => sclr,
      aclk => aclk,
      plusOp(10 downto 0) => plusOp(10 downto 0),
      resetn_out => resetn_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo is
  port (
    empty_match_reg_0 : out STD_LOGIC;
    empty_match_reg_1 : out STD_LOGIC;
    s_axis_tready_int_reg : out STD_LOGIC;
    \col_cnt_reg[12]\ : out STD_LOGIC;
    reg_update : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    fifo_rd_i_reg : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclken : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo : entity is "synch_fifo";
end Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo is
  signal addra : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal depth_match_i_1_n_0 : STD_LOGIC;
  signal depth_match_i_2_n_0 : STD_LOGIC;
  signal depth_match_reg_n_0 : STD_LOGIC;
  signal empty_match_i_1_n_0 : STD_LOGIC;
  signal empty_match_i_2_n_0 : STD_LOGIC;
  signal \^empty_match_reg_0\ : STD_LOGIC;
  signal \^empty_match_reg_1\ : STD_LOGIC;
  signal mem1_n_4 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \read_ptr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \word_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \word_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \word_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_count_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of depth_match_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of empty_match_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \word_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \word_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_ptr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_ptr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_ptr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_ptr[3]_i_1\ : label is "soft_lutpair9";
begin
  empty_match_reg_0 <= \^empty_match_reg_0\;
  empty_match_reg_1 <= \^empty_match_reg_1\;
\col_cnt[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \^empty_match_reg_0\,
      I1 => fifo_rd_i_reg,
      I2 => \word_count_reg_n_0_[4]\,
      I3 => \word_count_reg_n_0_[1]\,
      I4 => \word_count_reg_n_0_[3]\,
      I5 => \word_count_reg_n_0_[2]\,
      O => \col_cnt_reg[12]\
    );
depth_match_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0B0A000A0A0"
    )
        port map (
      I0 => depth_match_reg_n_0,
      I1 => empty_match_i_2_n_0,
      I2 => resetn_out,
      I3 => depth_match_i_2_n_0,
      I4 => \word_count_reg_n_0_[0]\,
      I5 => fifo_rd_i_reg,
      O => depth_match_i_1_n_0
    );
depth_match_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[2]\,
      I2 => \word_count_reg_n_0_[3]\,
      I3 => \word_count_reg_n_0_[1]\,
      O => depth_match_i_2_n_0
    );
depth_match_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => depth_match_i_1_n_0,
      Q => depth_match_reg_n_0,
      R => '0'
    );
empty_match_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFF4000"
    )
        port map (
      I0 => fifo_rd_i_reg,
      I1 => \word_count_reg_n_0_[0]\,
      I2 => empty_match_i_2_n_0,
      I3 => \^empty_match_reg_1\,
      I4 => \^empty_match_reg_0\,
      O => empty_match_i_1_n_0
    );
empty_match_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s_axis_video_tready,
      I1 => s_axis_video_tvalid,
      I2 => aclken,
      I3 => \genr_control_regs[0]\(0),
      I4 => resetn_out,
      O => empty_match_i_2_n_0
    );
empty_match_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[1]\,
      I2 => \word_count_reg_n_0_[3]\,
      I3 => \word_count_reg_n_0_[2]\,
      O => \^empty_match_reg_1\
    );
empty_match_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => empty_match_i_1_n_0,
      Q => \^empty_match_reg_0\,
      S => SR(0)
    );
mem1: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram_11
     port map (
      D(3 downto 0) => addrb(3 downto 0),
      Q(3 downto 0) => \read_ptr_reg__0\(3 downto 0),
      aclk => aclk,
      aclken => aclken,
      da(25 downto 0) => da(25 downto 0),
      depth_match_reg => depth_match_reg_n_0,
      empty_match_reg => \^empty_match_reg_0\,
      fifo_rd_i_reg => fifo_rd_i_reg,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      p_0_in => p_0_in,
      \read_ptr_reg[0]\ => mem1_n_4,
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      sof_late_i_reg(25 downto 0) => Q(25 downto 0),
      \write_ptr_reg[3]\(3 downto 0) => addra(3 downto 0)
    );
\read_ptr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(0),
      Q => \read_ptr_reg__0\(0),
      S => SR(0)
    );
\read_ptr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(1),
      Q => \read_ptr_reg__0\(1),
      S => SR(0)
    );
\read_ptr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(2),
      Q => \read_ptr_reg__0\(2),
      S => SR(0)
    );
\read_ptr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => addrb(3),
      Q => \read_ptr_reg__0\(3),
      S => SR(0)
    );
s_axis_tready_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[2]\,
      I2 => \word_count_reg_n_0_[3]\,
      I3 => \word_count_reg_n_0_[1]\,
      O => s_axis_tready_int_reg
    );
\word_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      O => \word_count[0]_i_1_n_0\
    );
\word_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => mem1_n_4,
      I2 => p_0_in,
      I3 => \word_count_reg_n_0_[1]\,
      O => \word_count[1]_i_1_n_0\
    );
\word_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF20F20D"
    )
        port map (
      I0 => p_0_in,
      I1 => mem1_n_4,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => \word_count_reg_n_0_[2]\,
      I4 => \word_count_reg_n_0_[1]\,
      O => \word_count[2]_i_1_n_0\
    );
\word_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFBA0045"
    )
        port map (
      I0 => \word_count_reg_n_0_[0]\,
      I1 => mem1_n_4,
      I2 => p_0_in,
      I3 => \word_count_reg_n_0_[1]\,
      I4 => \word_count_reg_n_0_[3]\,
      I5 => \word_count_reg_n_0_[2]\,
      O => \word_count[3]_i_1_n_0\
    );
\word_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => mem1_n_4,
      O => \word_count[4]_i_1_n_0\
    );
\word_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \word_count_reg_n_0_[4]\,
      I1 => \word_count_reg_n_0_[3]\,
      I2 => \word_count_reg_n_0_[0]\,
      I3 => \word_count[4]_i_3_n_0\,
      I4 => \word_count_reg_n_0_[1]\,
      I5 => \word_count_reg_n_0_[2]\,
      O => \word_count[4]_i_2_n_0\
    );
\word_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => mem1_n_4,
      I1 => p_0_in,
      O => \word_count[4]_i_3_n_0\
    );
\word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[0]_i_1_n_0\,
      Q => \word_count_reg_n_0_[0]\,
      R => SR(0)
    );
\word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[1]_i_1_n_0\,
      Q => \word_count_reg_n_0_[1]\,
      R => SR(0)
    );
\word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[2]_i_1_n_0\,
      Q => \word_count_reg_n_0_[2]\,
      R => SR(0)
    );
\word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[3]_i_1_n_0\,
      Q => \word_count_reg_n_0_[3]\,
      R => SR(0)
    );
\word_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \word_count[4]_i_1_n_0\,
      D => \word_count[4]_i_2_n_0\,
      Q => \word_count_reg_n_0_[4]\,
      R => SR(0)
    );
\write_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(0),
      O => \plusOp__0\(0)
    );
\write_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra(0),
      I1 => addra(1),
      O => \plusOp__0\(1)
    );
\write_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(0),
      O => \plusOp__0\(2)
    );
\write_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addra(3),
      I1 => addra(0),
      I2 => addra(1),
      I3 => addra(2),
      O => \plusOp__0\(3)
    );
\write_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(0),
      Q => addra(0),
      R => SR(0)
    );
\write_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(1),
      Q => addra(1),
      R => SR(0)
    );
\write_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(2),
      Q => addra(2),
      R => SR(0)
    );
\write_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_0_in,
      D => \plusOp__0\(3),
      Q => addra(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo_fallthru is
  port (
    \write_ptr_int_reg[0]_0\ : out STD_LOGIC;
    \col_cnt_reg[12]\ : out STD_LOGIC;
    \col_cnt_reg[12]_0\ : out STD_LOGIC;
    \col_cnt_reg[12]_1\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    empty_match_reg : in STD_LOGIC;
    empty_match_reg_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    wen : in STD_LOGIC;
    fifo_wr_i : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    eol_late_i_reg : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo_fallthru : entity is "synch_fifo_fallthru";
end Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo_fallthru;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo_fallthru is
  signal L : STD_LOGIC_VECTOR ( 1 to 4 );
  signal axi_fifo_empty : STD_LOGIC;
  signal \col_cnt[12]_i_10_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_11_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_12_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_13_n_0\ : STD_LOGIC;
  signal \col_cnt[12]_i_14_n_0\ : STD_LOGIC;
  signal \^col_cnt_reg[12]_0\ : STD_LOGIC;
  signal \^col_cnt_reg[12]_1\ : STD_LOGIC;
  signal empty_int_i_1_n_0 : STD_LOGIC;
  signal empty_int_i_2_n_0 : STD_LOGIC;
  signal empty_int_i_3_n_0 : STD_LOGIC;
  signal empty_int_i_4_n_0 : STD_LOGIC;
  signal empty_int_i_5_n_0 : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal full_int_i_2_n_0 : STD_LOGIC;
  signal full_int_i_3_n_0 : STD_LOGIC;
  signal mem1_n_0 : STD_LOGIC;
  signal mem1_n_1 : STD_LOGIC;
  signal mem1_n_2 : STD_LOGIC;
  signal mem1_n_3 : STD_LOGIC;
  signal mem1_n_4 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_ptr_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \write_ptr_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_ptr_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \^write_ptr_int_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_cnt[12]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \col_cnt[12]_i_12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \col_cnt[12]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \col_cnt[12]_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of empty_int_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of empty_int_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of full_int_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_axis_video_tvalid_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_ptr_int[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \write_ptr_int[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_ptr_int[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_ptr_int[3]_i_1\ : label is "soft_lutpair12";
begin
  \col_cnt_reg[12]_0\ <= \^col_cnt_reg[12]_0\;
  \col_cnt_reg[12]_1\ <= \^col_cnt_reg[12]_1\;
  \write_ptr_int_reg[0]_0\ <= \^write_ptr_int_reg[0]_0\;
\col_cnt[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE8AAEAEAEAEEFAE"
    )
        port map (
      I0 => empty_int_i_4_n_0,
      I1 => \read_ptr_int_reg_n_0_[1]\,
      I2 => L(3),
      I3 => \read_ptr_int_reg_n_0_[0]\,
      I4 => wen,
      I5 => L(4),
      O => \col_cnt[12]_i_10_n_0\
    );
\col_cnt[12]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in1_in,
      O => \col_cnt[12]_i_11_n_0\
    );
\col_cnt[12]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => wen,
      I1 => L(4),
      I2 => \read_ptr_int_reg_n_0_[0]\,
      O => \col_cnt[12]_i_12_n_0\
    );
\col_cnt[12]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[2]\,
      I1 => L(3),
      I2 => wen,
      I3 => L(4),
      I4 => L(2),
      O => \col_cnt[12]_i_13_n_0\
    );
\col_cnt[12]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => L(1),
      I1 => \read_ptr_int_reg_n_0_[3]\,
      I2 => L(2),
      I3 => \read_ptr_int_reg_n_0_[2]\,
      O => \col_cnt[12]_i_14_n_0\
    );
\col_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF0101"
    )
        port map (
      I0 => \^col_cnt_reg[12]_0\,
      I1 => \^col_cnt_reg[12]_1\,
      I2 => empty_match_reg,
      I3 => empty_match_reg_0,
      I4 => CO(0),
      I5 => aclken_0,
      O => \col_cnt_reg[12]\
    );
\col_cnt[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FD002FDFD022FD0"
    )
        port map (
      I0 => L(2),
      I1 => \read_ptr_int_reg_n_0_[2]\,
      I2 => \col_cnt[12]_i_10_n_0\,
      I3 => \col_cnt[12]_i_11_n_0\,
      I4 => L(1),
      I5 => \read_ptr_int_reg_n_0_[3]\,
      O => \^col_cnt_reg[12]_0\
    );
\col_cnt[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4920000049204920"
    )
        port map (
      I0 => \col_cnt[12]_i_12_n_0\,
      I1 => \read_ptr_int_reg_n_0_[1]\,
      I2 => \write_ptr_int[1]_i_1_n_0\,
      I3 => \col_cnt[12]_i_13_n_0\,
      I4 => \col_cnt[12]_i_14_n_0\,
      I5 => \col_cnt[12]_i_10_n_0\,
      O => \^col_cnt_reg[12]_1\
    );
empty_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0441100010000441"
    )
        port map (
      I0 => empty_int_i_2_n_0,
      I1 => L(1),
      I2 => empty_int_i_3_n_0,
      I3 => \read_ptr_int_reg_n_0_[3]\,
      I4 => p_0_in,
      I5 => p_1_in1_in,
      O => empty_int_i_1_n_0
    );
empty_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBE7DFFBEFFFFBE"
    )
        port map (
      I0 => empty_int_i_4_n_0,
      I1 => L(4),
      I2 => mem1_n_4,
      I3 => \read_ptr_int_reg_n_0_[1]\,
      I4 => L(3),
      I5 => empty_int_i_5_n_0,
      O => empty_int_i_2_n_0
    );
empty_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[1]\,
      I1 => axi_fifo_empty,
      I2 => m_axis_video_tready,
      I3 => aclken_0,
      I4 => \read_ptr_int_reg_n_0_[0]\,
      I5 => \read_ptr_int_reg_n_0_[2]\,
      O => empty_int_i_3_n_0
    );
empty_int_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(2),
      I1 => \read_ptr_int_reg_n_0_[2]\,
      O => empty_int_i_4_n_0
    );
empty_int_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => axi_fifo_empty,
      I1 => m_axis_video_tready,
      I2 => aclken,
      I3 => \genr_control_regs[0]\(0),
      I4 => \read_ptr_int_reg_n_0_[0]\,
      O => empty_int_i_5_n_0
    );
empty_int_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => empty_int_i_1_n_0,
      Q => axi_fifo_empty,
      S => SR(0)
    );
full_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4008080404808040"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[3]\,
      I1 => full_int_i_2_n_0,
      I2 => p_0_in,
      I3 => L(1),
      I4 => full_int_i_3_n_0,
      I5 => p_1_in1_in,
      O => eqOp0_out
    );
full_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090900060000090"
    )
        port map (
      I0 => \read_ptr_int_reg_n_0_[1]\,
      I1 => L(3),
      I2 => \col_cnt[12]_i_13_n_0\,
      I3 => L(4),
      I4 => wen,
      I5 => \read_ptr_int_reg_n_0_[0]\,
      O => full_int_i_2_n_0
    );
full_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => L(2),
      I1 => L(4),
      I2 => wen,
      I3 => L(3),
      O => full_int_i_3_n_0
    );
full_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => eqOp0_out,
      Q => \^write_ptr_int_reg[0]_0\,
      R => SR(0)
    );
m_axis_video_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_fifo_empty,
      O => m_axis_video_tvalid
    );
mem1: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_dp_ram
     port map (
      ADDRA(3) => mem1_n_1,
      ADDRA(2) => mem1_n_2,
      ADDRA(1) => mem1_n_3,
      ADDRA(0) => mem1_n_4,
      Q(3) => \read_ptr_int_reg_n_0_[3]\,
      Q(2) => \read_ptr_int_reg_n_0_[2]\,
      Q(1) => \read_ptr_int_reg_n_0_[1]\,
      Q(0) => \read_ptr_int_reg_n_0_[0]\,
      aclk => aclk,
      aclken => aclken,
      aclken_0 => aclken_0,
      axi_fifo_empty => axi_fifo_empty,
      da(25 downto 0) => da(25 downto 0),
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser_sof(25 downto 0) => Q(25 downto 0),
      \read_ptr_int_reg[3]\ => mem1_n_0,
      wen => wen,
      \write_ptr_int_reg[3]\(3) => L(1),
      \write_ptr_int_reg[3]\(2) => L(2),
      \write_ptr_int_reg[3]\(1) => L(3),
      \write_ptr_int_reg[3]\(0) => L(4)
    );
\read_ptr_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => p_0_in,
      I1 => \read_ptr_int_reg_n_0_[3]\,
      I2 => mem1_n_0,
      I3 => \read_ptr_int_reg_n_0_[2]\,
      O => p_0_in0_in
    );
\read_ptr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_4,
      Q => \read_ptr_int_reg_n_0_[0]\,
      R => SR(0)
    );
\read_ptr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_3,
      Q => \read_ptr_int_reg_n_0_[1]\,
      R => SR(0)
    );
\read_ptr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_2,
      Q => \read_ptr_int_reg_n_0_[2]\,
      R => SR(0)
    );
\read_ptr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mem1_n_1,
      Q => \read_ptr_int_reg_n_0_[3]\,
      R => SR(0)
    );
\read_ptr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in0_in,
      Q => p_0_in,
      R => SR(0)
    );
\write_ptr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA6"
    )
        port map (
      I0 => L(4),
      I1 => fifo_wr_i,
      I2 => core_d_out,
      I3 => \^write_ptr_int_reg[0]_0\,
      I4 => eol_late_i_reg,
      I5 => aclken_0,
      O => \write_ptr_int[0]_i_1_n_0\
    );
\write_ptr_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => L(3),
      I1 => wen,
      I2 => L(4),
      O => \write_ptr_int[1]_i_1_n_0\
    );
\write_ptr_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => L(2),
      I1 => L(4),
      I2 => wen,
      I3 => L(3),
      O => \write_ptr_int[2]_i_1_n_0\
    );
\write_ptr_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => L(1),
      I1 => L(3),
      I2 => wen,
      I3 => L(4),
      I4 => L(2),
      O => \write_ptr_int[3]_i_1_n_0\
    );
\write_ptr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => L(2),
      I2 => L(4),
      I3 => wen,
      I4 => L(3),
      I5 => L(1),
      O => p_1_in
    );
\write_ptr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[0]_i_1_n_0\,
      Q => L(4),
      R => SR(0)
    );
\write_ptr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[1]_i_1_n_0\,
      Q => L(3),
      R => SR(0)
    );
\write_ptr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[2]_i_1_n_0\,
      Q => L(2),
      R => SR(0)
    );
\write_ptr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_ptr_int[3]_i_1_n_0\,
      Q => L(1),
      R => SR(0)
    );
\write_ptr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_1_in,
      Q => p_1_in1_in,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_axis_input_buffer is
  port (
    s_axis_video_tready : out STD_LOGIC;
    vid_empty : out STD_LOGIC;
    empty_match_reg : out STD_LOGIC;
    \col_cnt_reg[12]\ : out STD_LOGIC;
    reg_update : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    master_en : in STD_LOGIC;
    aclk : in STD_LOGIC;
    fifo_rd_i_reg : in STD_LOGIC;
    resetn_out : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclken : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_axis_input_buffer : entity is "axis_input_buffer";
end Arty_Z7_20_v_rgb2ycrcb_0_0_axis_input_buffer;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_axis_input_buffer is
  signal U_AXIS_SYNC_FIFO_n_2 : STD_LOGIC;
  signal \^s_axis_video_tready\ : STD_LOGIC;
begin
  s_axis_video_tready <= \^s_axis_video_tready\;
U_AXIS_SYNC_FIFO: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo
     port map (
      Q(25 downto 0) => Q(25 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aclken => aclken,
      \col_cnt_reg[12]\ => \col_cnt_reg[12]\,
      da(25 downto 0) => da(25 downto 0),
      empty_match_reg_0 => vid_empty,
      empty_match_reg_1 => empty_match_reg,
      fifo_rd_i_reg => fifo_rd_i_reg,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_tready_int_reg => U_AXIS_SYNC_FIFO_n_2,
      s_axis_video_tready => \^s_axis_video_tready\,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
s_axis_tready_int_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => master_en,
      D => U_AXIS_SYNC_FIFO_n_2,
      Q => \^s_axis_video_tready\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_axis_output_buffer is
  port (
    \write_ptr_int_reg[0]\ : out STD_LOGIC;
    \col_cnt_reg[12]\ : out STD_LOGIC;
    \col_cnt_reg[12]_0\ : out STD_LOGIC;
    \col_cnt_reg[12]_1\ : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    aclken_0 : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    empty_match_reg : in STD_LOGIC;
    empty_match_reg_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    wen : in STD_LOGIC;
    fifo_wr_i : in STD_LOGIC;
    core_d_out : in STD_LOGIC;
    eol_late_i_reg : in STD_LOGIC;
    da : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_axis_output_buffer : entity is "axis_output_buffer";
end Arty_Z7_20_v_rgb2ycrcb_0_0_axis_output_buffer;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_axis_output_buffer is
begin
UOSD_AXIS_SYNC_FIFO: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_synch_fifo_fallthru
     port map (
      CO(0) => CO(0),
      Q(25 downto 0) => Q(25 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aclken => aclken,
      aclken_0 => aclken_0,
      \col_cnt_reg[12]\ => \col_cnt_reg[12]\,
      \col_cnt_reg[12]_0\ => \col_cnt_reg[12]_0\,
      \col_cnt_reg[12]_1\ => \col_cnt_reg[12]_1\,
      core_d_out => core_d_out,
      da(25 downto 0) => da(25 downto 0),
      empty_match_reg => empty_match_reg,
      empty_match_reg_0 => empty_match_reg_0,
      eol_late_i_reg => eol_late_i_reg,
      fifo_wr_i => fifo_wr_i,
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      wen => wen,
      \write_ptr_int_reg[0]_0\ => \write_ptr_int_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr is
  port (
    s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr : entity is "radd_sub_sclr";
end Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr is
begin
\use_fabric.adder\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no_5
     port map (
      E(0) => E(0),
      Q(14 downto 0) => Q(14 downto 0),
      aclk => aclk,
      p_0_in(0) => p_0_in(0),
      s(8 downto 0) => s(8 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_4 is
  port (
    s : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_4 : entity is "radd_sub_sclr";
end Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_4;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_4 is
begin
\use_fabric.adder\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no
     port map (
      E(0) => E(0),
      Q(15 downto 0) => Q(15 downto 0),
      aclk => aclk,
      p_0_in(0) => p_0_in(0),
      s(8 downto 0) => s(8 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    a : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \needs_delay.shift_register_reg[1][3]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \needs_delay.shift_register_reg[5][7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    y_intb : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ : entity is "radd_sub_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\ is
begin
\use_fabric.adder\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0\
     port map (
      CO(0) => CO(0),
      D(2 downto 0) => D(2 downto 0),
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      a(0) => a(0),
      aclk => aclk,
      \core_control_regs[6]\(0) => \core_control_regs[6]\(0),
      \needs_delay.shift_register_reg[1][10]\(2 downto 0) => \needs_delay.shift_register_reg[1][10]\(2 downto 0),
      \needs_delay.shift_register_reg[1][3]\ => \needs_delay.shift_register_reg[1][3]\,
      \needs_delay.shift_register_reg[5][7]\(0) => \needs_delay.shift_register_reg[5][7]\(0),
      p(8 downto 0) => p(8 downto 0),
      \^s\(8 downto 0) => \^s\(8 downto 0),
      sclr => sclr,
      y_intb(7 downto 0) => y_intb(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ : entity is "radd_sub_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\ is
begin
\use_fabric.adder\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1\
     port map (
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      aclk => aclk,
      \out\(10 downto 0) => \out\(10 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sclr : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ : entity is "radd_sub_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\ is
begin
\use_fabric.adder\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2\
     port map (
      D(10 downto 0) => D(10 downto 0),
      E(0) => E(0),
      aclk => aclk,
      \out\(10 downto 0) => \out\(10 downto 0),
      sclr => sclr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized3\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \^s\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized3\ : entity is "radd_sub_sclr";
end \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized3\;

architecture STRUCTURE of \Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized3\ is
begin
\use_fabric.adder\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized3\
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      a(0) => a(0),
      aclk => aclk,
      \core_control_regs[6]\(8 downto 0) => \core_control_regs[6]\(8 downto 0),
      \needs_delay.shift_register_reg[1][8]\(8 downto 0) => \needs_delay.shift_register_reg[1][8]\(8 downto 0),
      resetn_out => resetn_out,
      \^s\(9 downto 0) => \^s\(9 downto 0),
      sclr => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_round is
  port (
    sclr : out STD_LOGIC;
    \^s\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    resetn_out : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \needs_delay.shift_register_reg[1][8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_round : entity is "round";
end Arty_Z7_20_v_rgb2ycrcb_0_0_round;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_round is
begin
adder: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized3\
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      S(0) => S(0),
      SR(0) => sclr,
      a(0) => a(0),
      aclk => aclk,
      \core_control_regs[6]\(8 downto 0) => \core_control_regs[6]\(8 downto 0),
      \needs_delay.shift_register_reg[1][8]\(8 downto 0) => \needs_delay.shift_register_reg[1][8]\(8 downto 0),
      resetn_out => resetn_out,
      \^s\(9 downto 0) => \^s\(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_core is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    da : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \core_control_regs[10]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \core_control_regs[12]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[7]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[11]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    resetn_out : in STD_LOGIC;
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_core : entity is "rgb2ycrcb_core";
end Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_core;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_core is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_aRG_bBG_G_n_0 : STD_LOGIC;
  signal add_aRG_bBG_G_n_10 : STD_LOGIC;
  signal add_aRG_bBG_G_n_11 : STD_LOGIC;
  signal add_aRG_bBG_G_n_12 : STD_LOGIC;
  signal add_aRG_bBG_G_n_13 : STD_LOGIC;
  signal add_aRG_bBG_G_n_14 : STD_LOGIC;
  signal add_aRG_bBG_G_n_15 : STD_LOGIC;
  signal add_aRG_bBG_G_n_16 : STD_LOGIC;
  signal add_aRG_bBG_G_n_17 : STD_LOGIC;
  signal add_aRG_bBG_G_n_18 : STD_LOGIC;
  signal bg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal by : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \clip.max_Cb_n_0\ : STD_LOGIC;
  signal \clip.max_Cb_n_1\ : STD_LOGIC;
  signal \clip.max_Cb_n_10\ : STD_LOGIC;
  signal \clip.max_Cb_n_11\ : STD_LOGIC;
  signal \clip.max_Cb_n_12\ : STD_LOGIC;
  signal \clip.max_Cb_n_13\ : STD_LOGIC;
  signal \clip.max_Cb_n_14\ : STD_LOGIC;
  signal \clip.max_Cb_n_15\ : STD_LOGIC;
  signal \clip.max_Cb_n_16\ : STD_LOGIC;
  signal \clip.max_Cb_n_17\ : STD_LOGIC;
  signal \clip.max_Cb_n_2\ : STD_LOGIC;
  signal \clip.max_Cb_n_3\ : STD_LOGIC;
  signal \clip.max_Cb_n_4\ : STD_LOGIC;
  signal \clip.max_Cb_n_5\ : STD_LOGIC;
  signal \clip.max_Cb_n_6\ : STD_LOGIC;
  signal \clip.max_Cb_n_7\ : STD_LOGIC;
  signal \clip.max_Cb_n_8\ : STD_LOGIC;
  signal \clip.max_Cb_n_9\ : STD_LOGIC;
  signal \clip.max_Cr_n_0\ : STD_LOGIC;
  signal \clip.max_Cr_n_1\ : STD_LOGIC;
  signal \clip.max_Cr_n_10\ : STD_LOGIC;
  signal \clip.max_Cr_n_11\ : STD_LOGIC;
  signal \clip.max_Cr_n_12\ : STD_LOGIC;
  signal \clip.max_Cr_n_13\ : STD_LOGIC;
  signal \clip.max_Cr_n_14\ : STD_LOGIC;
  signal \clip.max_Cr_n_15\ : STD_LOGIC;
  signal \clip.max_Cr_n_16\ : STD_LOGIC;
  signal \clip.max_Cr_n_17\ : STD_LOGIC;
  signal \clip.max_Cr_n_2\ : STD_LOGIC;
  signal \clip.max_Cr_n_3\ : STD_LOGIC;
  signal \clip.max_Cr_n_4\ : STD_LOGIC;
  signal \clip.max_Cr_n_5\ : STD_LOGIC;
  signal \clip.max_Cr_n_6\ : STD_LOGIC;
  signal \clip.max_Cr_n_7\ : STD_LOGIC;
  signal \clip.max_Cr_n_8\ : STD_LOGIC;
  signal \clip.max_Cr_n_9\ : STD_LOGIC;
  signal \clip.max_Y_n_0\ : STD_LOGIC;
  signal \clip.max_Y_n_1\ : STD_LOGIC;
  signal \clip.max_Y_n_10\ : STD_LOGIC;
  signal \clip.max_Y_n_11\ : STD_LOGIC;
  signal \clip.max_Y_n_12\ : STD_LOGIC;
  signal \clip.max_Y_n_13\ : STD_LOGIC;
  signal \clip.max_Y_n_14\ : STD_LOGIC;
  signal \clip.max_Y_n_15\ : STD_LOGIC;
  signal \clip.max_Y_n_16\ : STD_LOGIC;
  signal \clip.max_Y_n_17\ : STD_LOGIC;
  signal \clip.max_Y_n_2\ : STD_LOGIC;
  signal \clip.max_Y_n_3\ : STD_LOGIC;
  signal \clip.max_Y_n_4\ : STD_LOGIC;
  signal \clip.max_Y_n_5\ : STD_LOGIC;
  signal \clip.max_Y_n_6\ : STD_LOGIC;
  signal \clip.max_Y_n_7\ : STD_LOGIC;
  signal \clip.max_Y_n_8\ : STD_LOGIC;
  signal \clip.max_Y_n_9\ : STD_LOGIC;
  signal del_B_n_0 : STD_LOGIC;
  signal del_B_n_1 : STD_LOGIC;
  signal del_B_n_2 : STD_LOGIC;
  signal del_B_n_3 : STD_LOGIC;
  signal del_B_n_4 : STD_LOGIC;
  signal del_B_n_5 : STD_LOGIC;
  signal del_B_n_6 : STD_LOGIC;
  signal del_B_n_7 : STD_LOGIC;
  signal del_B_n_8 : STD_LOGIC;
  signal del_R_n_0 : STD_LOGIC;
  signal del_R_n_1 : STD_LOGIC;
  signal del_R_n_2 : STD_LOGIC;
  signal del_R_n_3 : STD_LOGIC;
  signal del_R_n_4 : STD_LOGIC;
  signal del_R_n_5 : STD_LOGIC;
  signal del_R_n_6 : STD_LOGIC;
  signal del_R_n_7 : STD_LOGIC;
  signal del_R_n_8 : STD_LOGIC;
  signal del_Y_n_0 : STD_LOGIC;
  signal del_Y_n_1 : STD_LOGIC;
  signal del_Y_n_10 : STD_LOGIC;
  signal del_Y_n_11 : STD_LOGIC;
  signal del_Y_n_12 : STD_LOGIC;
  signal del_Y_n_13 : STD_LOGIC;
  signal del_Y_n_14 : STD_LOGIC;
  signal del_Y_n_15 : STD_LOGIC;
  signal del_Y_n_16 : STD_LOGIC;
  signal del_Y_n_17 : STD_LOGIC;
  signal del_Y_n_18 : STD_LOGIC;
  signal del_Y_n_19 : STD_LOGIC;
  signal del_Y_n_2 : STD_LOGIC;
  signal del_Y_n_3 : STD_LOGIC;
  signal del_Y_n_4 : STD_LOGIC;
  signal del_Y_n_5 : STD_LOGIC;
  signal del_Y_n_6 : STD_LOGIC;
  signal del_Y_n_7 : STD_LOGIC;
  signal del_Y_n_8 : STD_LOGIC;
  signal del_Y_n_9 : STD_LOGIC;
  signal rg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rgm : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ry : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \use_fabric.adder/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \v4_mac23.mac_cBY_n_10\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_11\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_2\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_3\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_4\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_5\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_6\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_7\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_8\ : STD_LOGIC;
  signal \v4_mac23.mac_cBY_n_9\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_10\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_11\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_2\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_3\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_4\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_5\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_6\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_7\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_8\ : STD_LOGIC;
  signal \v4_mac23.mac_cRY_n_9\ : STD_LOGIC;
  signal y_int : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal y_int_round : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal y_inta_raw : STD_LOGIC_VECTOR ( 24 downto 16 );
  signal y_intb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \NLW_v4_mac23.mac_cBY_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal \NLW_v4_mac23.mac_cRY_p_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 10 );
  attribute CREG : integer;
  attribute CREG of \v4_mac1.mult_aCr\ : label is 0;
  attribute HAS_C : integer;
  attribute HAS_C of \v4_mac1.mult_aCr\ : label is 1;
  attribute IWIDTHA : integer;
  attribute IWIDTHA of \v4_mac1.mult_aCr\ : label is 9;
  attribute IWIDTHB : integer;
  attribute IWIDTHB of \v4_mac1.mult_aCr\ : label is 17;
  attribute OWIDTH : integer;
  attribute OWIDTH of \v4_mac1.mult_aCr\ : label is 26;
  attribute ROUND_MODE : integer;
  attribute ROUND_MODE of \v4_mac1.mult_aCr\ : label is 0;
  attribute USE_DSP48 : string;
  attribute USE_DSP48 of \v4_mac1.mult_aCr\ : label is "yes";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \v4_mac1.mult_aCr\ : label is "yes";
  attribute mult_style : string;
  attribute mult_style of \v4_mac1.mult_aCr\ : label is "pipe_block";
  attribute register_balancing : string;
  attribute register_balancing of \v4_mac1.mult_aCr\ : label is "yes";
  attribute CREG of \v4_mac23.mac_cBY\ : label is 0;
  attribute HAS_C of \v4_mac23.mac_cBY\ : label is 1;
  attribute IWIDTHA of \v4_mac23.mac_cBY\ : label is 11;
  attribute IWIDTHB of \v4_mac23.mac_cBY\ : label is 17;
  attribute OWIDTH of \v4_mac23.mac_cBY\ : label is 12;
  attribute ROUND_MODE of \v4_mac23.mac_cBY\ : label is 0;
  attribute USE_DSP48 of \v4_mac23.mac_cBY\ : label is "yes";
  attribute downgradeipidentifiedwarnings of \v4_mac23.mac_cBY\ : label is "yes";
  attribute mult_style of \v4_mac23.mac_cBY\ : label is "pipe_block";
  attribute register_balancing of \v4_mac23.mac_cBY\ : label is "yes";
  attribute CREG of \v4_mac23.mac_cRY\ : label is 0;
  attribute HAS_C of \v4_mac23.mac_cRY\ : label is 1;
  attribute IWIDTHA of \v4_mac23.mac_cRY\ : label is 11;
  attribute IWIDTHB of \v4_mac23.mac_cRY\ : label is 17;
  attribute OWIDTH of \v4_mac23.mac_cRY\ : label is 12;
  attribute ROUND_MODE of \v4_mac23.mac_cRY\ : label is 0;
  attribute USE_DSP48 of \v4_mac23.mac_cRY\ : label is "yes";
  attribute downgradeipidentifiedwarnings of \v4_mac23.mac_cRY\ : label is "yes";
  attribute mult_style of \v4_mac23.mac_cRY\ : label is "pipe_block";
  attribute register_balancing of \v4_mac23.mac_cRY\ : label is "yes";
begin
  SR(0) <= \^sr\(0);
add_aRG_bBG_G: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0\
     port map (
      CO(0) => del_B_n_8,
      D(2) => add_aRG_bBG_G_n_11,
      D(1) => add_aRG_bBG_G_n_12,
      D(0) => add_aRG_bBG_G_n_13,
      DI(0) => add_aRG_bBG_G_n_18,
      E(0) => E(0),
      S(0) => add_aRG_bBG_G_n_0,
      a(0) => add_aRG_bBG_G_n_10,
      aclk => aclk,
      \core_control_regs[6]\(0) => \core_control_regs[6]\(8),
      \needs_delay.shift_register_reg[1][10]\(2) => add_aRG_bBG_G_n_14,
      \needs_delay.shift_register_reg[1][10]\(1) => add_aRG_bBG_G_n_15,
      \needs_delay.shift_register_reg[1][10]\(0) => add_aRG_bBG_G_n_16,
      \needs_delay.shift_register_reg[1][3]\ => add_aRG_bBG_G_n_17,
      \needs_delay.shift_register_reg[5][7]\(0) => del_R_n_8,
      p(8 downto 0) => y_inta_raw(24 downto 16),
      \^s\(8 downto 0) => y_int(8 downto 0),
      sclr => \^sr\(0),
      y_intb(7 downto 0) => y_intb(7 downto 0)
    );
\clamp.min_Cb\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat
     port map (
      DI(3) => \clip.max_Cb_n_14\,
      DI(2) => \clip.max_Cb_n_15\,
      DI(1) => \clip.max_Cb_n_16\,
      DI(0) => \clip.max_Cb_n_17\,
      E(0) => E(0),
      Q(8) => \clip.max_Cb_n_1\,
      Q(7) => \clip.max_Cb_n_2\,
      Q(6) => \clip.max_Cb_n_3\,
      Q(5) => \clip.max_Cb_n_4\,
      Q(4) => \clip.max_Cb_n_5\,
      Q(3) => \clip.max_Cb_n_6\,
      Q(2) => \clip.max_Cb_n_7\,
      Q(1) => \clip.max_Cb_n_8\,
      Q(0) => \clip.max_Cb_n_9\,
      S(3) => \clip.max_Cb_n_10\,
      S(2) => \clip.max_Cb_n_11\,
      S(1) => \clip.max_Cb_n_12\,
      S(0) => \clip.max_Cb_n_13\,
      aclk => aclk,
      \core_control_regs[3]\(7 downto 0) => \core_control_regs[3]\(7 downto 0),
      da(7 downto 0) => da(15 downto 8),
      \needs_delay.shift_register_reg[1][8]\(0) => \clip.max_Cb_n_0\,
      sclr => \^sr\(0)
    );
\clamp.min_Cr\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_0
     port map (
      DI(3) => \clip.max_Cr_n_14\,
      DI(2) => \clip.max_Cr_n_15\,
      DI(1) => \clip.max_Cr_n_16\,
      DI(0) => \clip.max_Cr_n_17\,
      E(0) => E(0),
      Q(8) => \clip.max_Cr_n_1\,
      Q(7) => \clip.max_Cr_n_2\,
      Q(6) => \clip.max_Cr_n_3\,
      Q(5) => \clip.max_Cr_n_4\,
      Q(4) => \clip.max_Cr_n_5\,
      Q(3) => \clip.max_Cr_n_6\,
      Q(2) => \clip.max_Cr_n_7\,
      Q(1) => \clip.max_Cr_n_8\,
      Q(0) => \clip.max_Cr_n_9\,
      S(3) => \clip.max_Cr_n_10\,
      S(2) => \clip.max_Cr_n_11\,
      S(1) => \clip.max_Cr_n_12\,
      S(0) => \clip.max_Cr_n_13\,
      aclk => aclk,
      \core_control_regs[5]\(7 downto 0) => \core_control_regs[5]\(7 downto 0),
      da(7 downto 0) => da(23 downto 16),
      \needs_delay.shift_register_reg[1][8]\(0) => \clip.max_Cr_n_0\,
      sclr => \^sr\(0)
    );
\clamp.min_Y\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_min_sat_1
     port map (
      DI(3) => \clip.max_Y_n_14\,
      DI(2) => \clip.max_Y_n_15\,
      DI(1) => \clip.max_Y_n_16\,
      DI(0) => \clip.max_Y_n_17\,
      E(0) => E(0),
      Q(8) => \clip.max_Y_n_1\,
      Q(7) => \clip.max_Y_n_2\,
      Q(6) => \clip.max_Y_n_3\,
      Q(5) => \clip.max_Y_n_4\,
      Q(4) => \clip.max_Y_n_5\,
      Q(3) => \clip.max_Y_n_6\,
      Q(2) => \clip.max_Y_n_7\,
      Q(1) => \clip.max_Y_n_8\,
      Q(0) => \clip.max_Y_n_9\,
      S(3) => \clip.max_Y_n_10\,
      S(2) => \clip.max_Y_n_11\,
      S(1) => \clip.max_Y_n_12\,
      S(0) => \clip.max_Y_n_13\,
      aclk => aclk,
      \core_control_regs[1]\(7 downto 0) => \core_control_regs[1]\(7 downto 0),
      da(7 downto 0) => da(7 downto 0),
      \needs_delay.shift_register_reg[1][8]\(0) => \clip.max_Y_n_0\,
      sclr => \^sr\(0)
    );
\clip.max_Cb\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat
     port map (
      DI(3) => \clip.max_Cb_n_14\,
      DI(2) => \clip.max_Cb_n_15\,
      DI(1) => \clip.max_Cb_n_16\,
      DI(0) => \clip.max_Cb_n_17\,
      E(0) => E(0),
      Q(8) => \clip.max_Cb_n_1\,
      Q(7) => \clip.max_Cb_n_2\,
      Q(6) => \clip.max_Cb_n_3\,
      Q(5) => \clip.max_Cb_n_4\,
      Q(4) => \clip.max_Cb_n_5\,
      Q(3) => \clip.max_Cb_n_6\,
      Q(2) => \clip.max_Cb_n_7\,
      Q(1) => \clip.max_Cb_n_8\,
      Q(0) => \clip.max_Cb_n_9\,
      S(3) => \clip.max_Cb_n_10\,
      S(2) => \clip.max_Cb_n_11\,
      S(1) => \clip.max_Cb_n_12\,
      S(0) => \clip.max_Cb_n_13\,
      aclk => aclk,
      \core_control_regs[2]\(7 downto 0) => \core_control_regs[2]\(7 downto 0),
      \core_control_regs[3]\(7 downto 0) => \core_control_regs[3]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]\(0) => \clip.max_Cb_n_0\,
      p(9) => \v4_mac23.mac_cBY_n_2\,
      p(8) => \v4_mac23.mac_cBY_n_3\,
      p(7) => \v4_mac23.mac_cBY_n_4\,
      p(6) => \v4_mac23.mac_cBY_n_5\,
      p(5) => \v4_mac23.mac_cBY_n_6\,
      p(4) => \v4_mac23.mac_cBY_n_7\,
      p(3) => \v4_mac23.mac_cBY_n_8\,
      p(2) => \v4_mac23.mac_cBY_n_9\,
      p(1) => \v4_mac23.mac_cBY_n_10\,
      p(0) => \v4_mac23.mac_cBY_n_11\,
      sclr => \^sr\(0)
    );
\clip.max_Cr\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_2
     port map (
      DI(3) => \clip.max_Cr_n_14\,
      DI(2) => \clip.max_Cr_n_15\,
      DI(1) => \clip.max_Cr_n_16\,
      DI(0) => \clip.max_Cr_n_17\,
      E(0) => E(0),
      Q(8) => \clip.max_Cr_n_1\,
      Q(7) => \clip.max_Cr_n_2\,
      Q(6) => \clip.max_Cr_n_3\,
      Q(5) => \clip.max_Cr_n_4\,
      Q(4) => \clip.max_Cr_n_5\,
      Q(3) => \clip.max_Cr_n_6\,
      Q(2) => \clip.max_Cr_n_7\,
      Q(1) => \clip.max_Cr_n_8\,
      Q(0) => \clip.max_Cr_n_9\,
      S(3) => \clip.max_Cr_n_10\,
      S(2) => \clip.max_Cr_n_11\,
      S(1) => \clip.max_Cr_n_12\,
      S(0) => \clip.max_Cr_n_13\,
      aclk => aclk,
      \core_control_regs[4]\(7 downto 0) => \core_control_regs[4]\(7 downto 0),
      \core_control_regs[5]\(7 downto 0) => \core_control_regs[5]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]\(0) => \clip.max_Cr_n_0\,
      p(9) => \v4_mac23.mac_cRY_n_2\,
      p(8) => \v4_mac23.mac_cRY_n_3\,
      p(7) => \v4_mac23.mac_cRY_n_4\,
      p(6) => \v4_mac23.mac_cRY_n_5\,
      p(5) => \v4_mac23.mac_cRY_n_6\,
      p(4) => \v4_mac23.mac_cRY_n_7\,
      p(3) => \v4_mac23.mac_cRY_n_8\,
      p(2) => \v4_mac23.mac_cRY_n_9\,
      p(1) => \v4_mac23.mac_cRY_n_10\,
      p(0) => \v4_mac23.mac_cRY_n_11\,
      sclr => \^sr\(0)
    );
\clip.max_Y\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_max_sat_3
     port map (
      DI(3) => del_Y_n_16,
      DI(2) => del_Y_n_17,
      DI(1) => del_Y_n_18,
      DI(0) => del_Y_n_19,
      E(0) => E(0),
      Q(8) => \clip.max_Y_n_1\,
      Q(7) => \clip.max_Y_n_2\,
      Q(6) => \clip.max_Y_n_3\,
      Q(5) => \clip.max_Y_n_4\,
      Q(4) => \clip.max_Y_n_5\,
      Q(3) => \clip.max_Y_n_6\,
      Q(2) => \clip.max_Y_n_7\,
      Q(1) => \clip.max_Y_n_8\,
      Q(0) => \clip.max_Y_n_9\,
      S(3) => del_Y_n_12,
      S(2) => del_Y_n_13,
      S(1) => del_Y_n_14,
      S(0) => del_Y_n_15,
      aclk => aclk,
      \core_control_regs[0]\(7 downto 0) => \core_control_regs[0]\(7 downto 0),
      \core_control_regs[1]\(7 downto 0) => \core_control_regs[1]\(7 downto 0),
      \needs_delay.shift_register_reg[1][7]\(0) => \clip.max_Y_n_0\,
      \needs_delay.shift_register_reg[1][7]_0\(3) => \clip.max_Y_n_10\,
      \needs_delay.shift_register_reg[1][7]_0\(2) => \clip.max_Y_n_11\,
      \needs_delay.shift_register_reg[1][7]_0\(1) => \clip.max_Y_n_12\,
      \needs_delay.shift_register_reg[1][7]_0\(0) => \clip.max_Y_n_13\,
      \needs_delay.shift_register_reg[1][7]_1\(3) => \clip.max_Y_n_14\,
      \needs_delay.shift_register_reg[1][7]_1\(2) => \clip.max_Y_n_15\,
      \needs_delay.shift_register_reg[1][7]_1\(1) => \clip.max_Y_n_16\,
      \needs_delay.shift_register_reg[1][7]_1\(0) => \clip.max_Y_n_17\,
      \needs_delay.shift_register_reg[3][0]\ => del_Y_n_9,
      \needs_delay.shift_register_reg[3][1]\ => del_Y_n_8,
      \needs_delay.shift_register_reg[3][2]\ => del_Y_n_7,
      \needs_delay.shift_register_reg[3][3]\ => del_Y_n_6,
      \needs_delay.shift_register_reg[3][4]\ => del_Y_n_5,
      \needs_delay.shift_register_reg[3][5]\ => del_Y_n_4,
      \needs_delay.shift_register_reg[3][6]\ => del_Y_n_3,
      \needs_delay.shift_register_reg[3][7]\ => del_Y_n_2,
      \needs_delay.shift_register_reg[3][8]\(0) => del_Y_n_10,
      \needs_delay.shift_register_reg[3][8]_0\(0) => del_Y_n_11,
      \needs_delay.shift_register_reg[3][8]_1\ => del_Y_n_1,
      \needs_delay.shift_register_reg[3][9]\ => del_Y_n_0,
      sclr => \^sr\(0)
    );
del_B: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized0\
     port map (
      CO(0) => del_B_n_8,
      D(7) => del_B_n_0,
      D(6) => del_B_n_1,
      D(5) => del_B_n_2,
      D(4) => del_B_n_3,
      D(3) => del_B_n_4,
      D(2) => del_B_n_5,
      D(1) => del_B_n_6,
      D(0) => del_B_n_7,
      E(0) => E(0),
      Q(7 downto 0) => Q(15 downto 8),
      aclk => aclk,
      \needs_delay.shift_register_reg[1][0]\ => add_aRG_bBG_G_n_17,
      s(6 downto 0) => y_int(7 downto 1)
    );
del_G: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_delay
     port map (
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      aclk => aclk,
      y_intb(7 downto 0) => y_intb(7 downto 0)
    );
del_R: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized1\
     port map (
      D(7) => del_R_n_0,
      D(6) => del_R_n_1,
      D(5) => del_R_n_2,
      D(4) => del_R_n_3,
      D(3) => del_R_n_4,
      D(2) => del_R_n_5,
      D(1) => del_R_n_6,
      D(0) => del_R_n_7,
      E(0) => E(0),
      Q(7 downto 0) => Q(23 downto 16),
      aclk => aclk,
      \needs_delay.shift_register_reg[1][0]\ => add_aRG_bBG_G_n_17,
      \needs_delay.shift_register_reg[1][10]\(0) => del_R_n_8,
      s(6 downto 0) => y_int(7 downto 1)
    );
del_Y: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_delay__parameterized2\
     port map (
      DI(3) => del_Y_n_16,
      DI(2) => del_Y_n_17,
      DI(1) => del_Y_n_18,
      DI(0) => del_Y_n_19,
      E(0) => E(0),
      S(3) => del_Y_n_12,
      S(2) => del_Y_n_13,
      S(1) => del_Y_n_14,
      S(0) => del_Y_n_15,
      aclk => aclk,
      \core_control_regs[0]\(7 downto 0) => \core_control_regs[0]\(7 downto 0),
      \needs_delay.shift_register_reg[1][0]\ => del_Y_n_9,
      \needs_delay.shift_register_reg[1][1]\ => del_Y_n_8,
      \needs_delay.shift_register_reg[1][2]\ => del_Y_n_7,
      \needs_delay.shift_register_reg[1][3]\ => del_Y_n_6,
      \needs_delay.shift_register_reg[1][4]\ => del_Y_n_5,
      \needs_delay.shift_register_reg[1][5]\ => del_Y_n_4,
      \needs_delay.shift_register_reg[1][6]\ => del_Y_n_3,
      \needs_delay.shift_register_reg[1][7]\ => del_Y_n_2,
      \needs_delay.shift_register_reg[1][8]\ => del_Y_n_1,
      \needs_delay.shift_register_reg[1][9]\ => del_Y_n_0,
      \needs_delay.shift_register_reg[1][9]_0\(0) => del_Y_n_10,
      \needs_delay.shift_register_reg[1][9]_1\(0) => del_Y_n_11,
      \^s\(9 downto 0) => y_int_round(9 downto 0)
    );
mult_aRG: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_mult
     port map (
      E(0) => E(0),
      aclk => aclk,
      c(25 downto 0) => rgm(25 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      s(8 downto 0) => rg(8 downto 0),
      sclr => \^sr\(0)
    );
sub_BG: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr
     port map (
      E(0) => E(0),
      Q(14 downto 0) => Q(15 downto 1),
      aclk => aclk,
      p_0_in(0) => \use_fabric.adder/p_0_in\(0),
      s(8 downto 0) => bg(8 downto 0),
      sclr => \^sr\(0)
    );
sub_BY: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1\
     port map (
      D(10) => add_aRG_bBG_G_n_11,
      D(9) => add_aRG_bBG_G_n_12,
      D(8) => add_aRG_bBG_G_n_13,
      D(7) => del_B_n_0,
      D(6) => del_B_n_1,
      D(5) => del_B_n_2,
      D(4) => del_B_n_3,
      D(3) => del_B_n_4,
      D(2) => del_B_n_5,
      D(1) => del_B_n_6,
      D(0) => del_B_n_7,
      E(0) => E(0),
      aclk => aclk,
      \out\(10 downto 0) => by(10 downto 0),
      sclr => \^sr\(0)
    );
sub_RG: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr_4
     port map (
      E(0) => E(0),
      Q(15 downto 8) => Q(23 downto 16),
      Q(7 downto 0) => Q(7 downto 0),
      aclk => aclk,
      p_0_in(0) => \use_fabric.adder/p_0_in\(0),
      s(8 downto 0) => rg(8 downto 0),
      sclr => \^sr\(0)
    );
sub_RY: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2\
     port map (
      D(10) => add_aRG_bBG_G_n_14,
      D(9) => add_aRG_bBG_G_n_15,
      D(8) => add_aRG_bBG_G_n_16,
      D(7) => del_R_n_0,
      D(6) => del_R_n_1,
      D(5) => del_R_n_2,
      D(4) => del_R_n_3,
      D(3) => del_R_n_4,
      D(2) => del_R_n_5,
      D(1) => del_R_n_6,
      D(0) => del_R_n_7,
      E(0) => E(0),
      aclk => aclk,
      \out\(10 downto 0) => ry(10 downto 0),
      sclr => \^sr\(0)
    );
\v4_mac1.mult_aCr\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_mac
     port map (
      a(8 downto 0) => bg(8 downto 0),
      b(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      c(25 downto 0) => rgm(25 downto 0),
      ce => E(0),
      clk => aclk,
      p(25) => \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\(25),
      p(24 downto 16) => y_inta_raw(24 downto 16),
      p(15 downto 0) => \NLW_v4_mac1.mult_aCr_p_UNCONNECTED\(15 downto 0),
      sclr => \^sr\(0)
    );
\v4_mac23.mac_cBY\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized0\
     port map (
      a(10 downto 0) => by(10 downto 0),
      b(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      c(11) => \core_control_regs[7]\(8),
      c(10) => \core_control_regs[7]\(8),
      c(9) => \core_control_regs[7]\(8),
      c(8 downto 0) => \core_control_regs[7]\(8 downto 0),
      ce => E(0),
      clk => aclk,
      p(11 downto 10) => \NLW_v4_mac23.mac_cBY_p_UNCONNECTED\(11 downto 10),
      p(9) => \v4_mac23.mac_cBY_n_2\,
      p(8) => \v4_mac23.mac_cBY_n_3\,
      p(7) => \v4_mac23.mac_cBY_n_4\,
      p(6) => \v4_mac23.mac_cBY_n_5\,
      p(5) => \v4_mac23.mac_cBY_n_6\,
      p(4) => \v4_mac23.mac_cBY_n_7\,
      p(3) => \v4_mac23.mac_cBY_n_8\,
      p(2) => \v4_mac23.mac_cBY_n_9\,
      p(1) => \v4_mac23.mac_cBY_n_10\,
      p(0) => \v4_mac23.mac_cBY_n_11\,
      sclr => \^sr\(0)
    );
\v4_mac23.mac_cRY\: entity work.\Arty_Z7_20_v_rgb2ycrcb_0_0_mac__parameterized1\
     port map (
      a(10 downto 0) => ry(10 downto 0),
      b(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      c(11) => \core_control_regs[8]\(8),
      c(10) => \core_control_regs[8]\(8),
      c(9) => \core_control_regs[8]\(8),
      c(8 downto 0) => \core_control_regs[8]\(8 downto 0),
      ce => E(0),
      clk => aclk,
      p(11 downto 10) => \NLW_v4_mac23.mac_cRY_p_UNCONNECTED\(11 downto 10),
      p(9) => \v4_mac23.mac_cRY_n_2\,
      p(8) => \v4_mac23.mac_cRY_n_3\,
      p(7) => \v4_mac23.mac_cRY_n_4\,
      p(6) => \v4_mac23.mac_cRY_n_5\,
      p(5) => \v4_mac23.mac_cRY_n_6\,
      p(4) => \v4_mac23.mac_cRY_n_7\,
      p(3) => \v4_mac23.mac_cRY_n_8\,
      p(2) => \v4_mac23.mac_cRY_n_9\,
      p(1) => \v4_mac23.mac_cRY_n_10\,
      p(0) => \v4_mac23.mac_cRY_n_11\,
      sclr => \^sr\(0)
    );
\y_needs_round.round_Y\: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_round
     port map (
      DI(0) => add_aRG_bBG_G_n_18,
      E(0) => E(0),
      S(0) => add_aRG_bBG_G_n_0,
      a(0) => add_aRG_bBG_G_n_10,
      aclk => aclk,
      \core_control_regs[6]\(8 downto 0) => \core_control_regs[6]\(8 downto 0),
      \needs_delay.shift_register_reg[1][8]\(8 downto 0) => y_int(8 downto 0),
      resetn_out => resetn_out,
      \^s\(9 downto 0) => y_int_round(9 downto 0),
      sclr => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_top is
  port (
    \needs_delay.shift_register_reg[1][0]\ : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    eol_late_i_reg : out STD_LOGIC;
    sof_early_i_reg : out STD_LOGIC;
    sof_early_i_reg_0 : out STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 );
    reg_update : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    \core_control_regs[10]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    aclk : in STD_LOGIC;
    \core_control_regs[12]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[7]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[11]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \core_control_regs[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \core_control_regs[9]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    resetn_out : in STD_LOGIC;
    \genr_control_regs[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclken : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    \core_control_regs[6]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \time_control_regs[0]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \core_control_regs[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[1]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[3]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[4]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \core_control_regs[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    da : in STD_LOGIC_VECTOR ( 25 downto 0 );
    core_d_out : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_top : entity is "rgb2ycrcb_top";
end Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_top;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_top is
  signal \UOSD_AXIS_SYNC_FIFO/wen\ : STD_LOGIC;
  signal axi_control_n_13 : STD_LOGIC;
  signal axi_control_n_16 : STD_LOGIC;
  signal axi_control_n_17 : STD_LOGIC;
  signal axi_in_fifo_n_10 : STD_LOGIC;
  signal axi_in_fifo_n_11 : STD_LOGIC;
  signal axi_in_fifo_n_12 : STD_LOGIC;
  signal axi_in_fifo_n_13 : STD_LOGIC;
  signal axi_in_fifo_n_14 : STD_LOGIC;
  signal axi_in_fifo_n_15 : STD_LOGIC;
  signal axi_in_fifo_n_16 : STD_LOGIC;
  signal axi_in_fifo_n_17 : STD_LOGIC;
  signal axi_in_fifo_n_18 : STD_LOGIC;
  signal axi_in_fifo_n_19 : STD_LOGIC;
  signal axi_in_fifo_n_2 : STD_LOGIC;
  signal axi_in_fifo_n_20 : STD_LOGIC;
  signal axi_in_fifo_n_21 : STD_LOGIC;
  signal axi_in_fifo_n_22 : STD_LOGIC;
  signal axi_in_fifo_n_23 : STD_LOGIC;
  signal axi_in_fifo_n_24 : STD_LOGIC;
  signal axi_in_fifo_n_25 : STD_LOGIC;
  signal axi_in_fifo_n_26 : STD_LOGIC;
  signal axi_in_fifo_n_27 : STD_LOGIC;
  signal axi_in_fifo_n_28 : STD_LOGIC;
  signal axi_in_fifo_n_29 : STD_LOGIC;
  signal axi_in_fifo_n_3 : STD_LOGIC;
  signal axi_in_fifo_n_30 : STD_LOGIC;
  signal axi_in_fifo_n_7 : STD_LOGIC;
  signal axi_in_fifo_n_8 : STD_LOGIC;
  signal axi_in_fifo_n_9 : STD_LOGIC;
  signal axi_out_fifo_n_0 : STD_LOGIC;
  signal axi_out_fifo_n_1 : STD_LOGIC;
  signal axi_out_fifo_n_2 : STD_LOGIC;
  signal axi_out_fifo_n_3 : STD_LOGIC;
  signal \^eol_late_i_reg\ : STD_LOGIC;
  signal fifo_wr_i : STD_LOGIC;
  signal intcore_n_1 : STD_LOGIC;
  signal intcore_n_10 : STD_LOGIC;
  signal intcore_n_11 : STD_LOGIC;
  signal intcore_n_12 : STD_LOGIC;
  signal intcore_n_13 : STD_LOGIC;
  signal intcore_n_14 : STD_LOGIC;
  signal intcore_n_15 : STD_LOGIC;
  signal intcore_n_16 : STD_LOGIC;
  signal intcore_n_17 : STD_LOGIC;
  signal intcore_n_18 : STD_LOGIC;
  signal intcore_n_19 : STD_LOGIC;
  signal intcore_n_2 : STD_LOGIC;
  signal intcore_n_20 : STD_LOGIC;
  signal intcore_n_21 : STD_LOGIC;
  signal intcore_n_22 : STD_LOGIC;
  signal intcore_n_23 : STD_LOGIC;
  signal intcore_n_24 : STD_LOGIC;
  signal intcore_n_3 : STD_LOGIC;
  signal intcore_n_4 : STD_LOGIC;
  signal intcore_n_5 : STD_LOGIC;
  signal intcore_n_6 : STD_LOGIC;
  signal intcore_n_7 : STD_LOGIC;
  signal intcore_n_8 : STD_LOGIC;
  signal intcore_n_9 : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal master_en : STD_LOGIC;
  signal \^needs_delay.shift_register_reg[1][0]\ : STD_LOGIC;
  signal out_fifo_eol : STD_LOGIC;
  signal out_fifo_sof : STD_LOGIC;
  signal sclr : STD_LOGIC;
  signal vid_data_in_r : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vid_empty : STD_LOGIC;
  signal vid_eol_in : STD_LOGIC;
  signal vid_sof_in : STD_LOGIC;
begin
  eol_late_i_reg <= \^eol_late_i_reg\;
  \needs_delay.shift_register_reg[1][0]\ <= \^needs_delay.shift_register_reg[1][0]\;
axi_control: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_axi4s_control
     port map (
      CO(0) => ltOp,
      E(0) => \^needs_delay.shift_register_reg[1][0]\,
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      \col_cnt_reg[12]_0\ => axi_control_n_17,
      \col_cnt_reg[1]_0\ => axi_control_n_13,
      core_d_out => core_d_out,
      da(1) => out_fifo_sof,
      da(0) => out_fifo_eol,
      empty_match_reg => axi_in_fifo_n_3,
      eol_late_i_reg_0 => \^eol_late_i_reg\,
      fifo_wr_i => fifo_wr_i,
      full_int_reg => axi_out_fifo_n_0,
      \genr_control_regs[0]\(1) => \genr_control_regs[0]\(2),
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      in_fifo_reset_reg_0 => axi_control_n_16,
      intc_if(4 downto 0) => intc_if(4 downto 0),
      master_en => master_en,
      \read_ptr_int_reg[1]\ => axi_out_fifo_n_3,
      resetn_out => resetn_out,
      sof_early_i_reg_0 => sof_early_i_reg,
      sof_early_i_reg_1 => sof_early_i_reg_0,
      t_qb(1) => vid_sof_in,
      t_qb(0) => vid_eol_in,
      \time_control_regs[0]\(25 downto 0) => \time_control_regs[0]\(25 downto 0),
      vid_empty => vid_empty,
      wen => \UOSD_AXIS_SYNC_FIFO/wen\,
      \word_count_reg[4]\ => axi_in_fifo_n_2,
      \write_ptr_int_reg[2]\ => axi_out_fifo_n_1,
      \write_ptr_int_reg[2]_0\ => axi_out_fifo_n_2
    );
axi_in_fifo: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_axis_input_buffer
     port map (
      Q(25) => vid_sof_in,
      Q(24) => vid_eol_in,
      Q(23) => axi_in_fifo_n_7,
      Q(22) => axi_in_fifo_n_8,
      Q(21) => axi_in_fifo_n_9,
      Q(20) => axi_in_fifo_n_10,
      Q(19) => axi_in_fifo_n_11,
      Q(18) => axi_in_fifo_n_12,
      Q(17) => axi_in_fifo_n_13,
      Q(16) => axi_in_fifo_n_14,
      Q(15) => axi_in_fifo_n_15,
      Q(14) => axi_in_fifo_n_16,
      Q(13) => axi_in_fifo_n_17,
      Q(12) => axi_in_fifo_n_18,
      Q(11) => axi_in_fifo_n_19,
      Q(10) => axi_in_fifo_n_20,
      Q(9) => axi_in_fifo_n_21,
      Q(8) => axi_in_fifo_n_22,
      Q(7) => axi_in_fifo_n_23,
      Q(6) => axi_in_fifo_n_24,
      Q(5) => axi_in_fifo_n_25,
      Q(4) => axi_in_fifo_n_26,
      Q(3) => axi_in_fifo_n_27,
      Q(2) => axi_in_fifo_n_28,
      Q(1) => axi_in_fifo_n_29,
      Q(0) => axi_in_fifo_n_30,
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      \col_cnt_reg[12]\ => axi_in_fifo_n_3,
      da(25 downto 0) => da(25 downto 0),
      empty_match_reg => axi_in_fifo_n_2,
      fifo_rd_i_reg => axi_control_n_16,
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      master_en => master_en,
      reg_update => reg_update,
      resetn_out => resetn_out,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      vid_empty => vid_empty
    );
axi_out_fifo: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_axis_output_buffer
     port map (
      CO(0) => ltOp,
      Q(25 downto 0) => Q(25 downto 0),
      SR(0) => sclr,
      aclk => aclk,
      aclken => aclken,
      aclken_0 => axi_control_n_13,
      \col_cnt_reg[12]\ => axi_out_fifo_n_1,
      \col_cnt_reg[12]_0\ => axi_out_fifo_n_2,
      \col_cnt_reg[12]_1\ => axi_out_fifo_n_3,
      core_d_out => core_d_out,
      da(25) => out_fifo_sof,
      da(24) => out_fifo_eol,
      da(23) => intcore_n_1,
      da(22) => intcore_n_2,
      da(21) => intcore_n_3,
      da(20) => intcore_n_4,
      da(19) => intcore_n_5,
      da(18) => intcore_n_6,
      da(17) => intcore_n_7,
      da(16) => intcore_n_8,
      da(15) => intcore_n_9,
      da(14) => intcore_n_10,
      da(13) => intcore_n_11,
      da(12) => intcore_n_12,
      da(11) => intcore_n_13,
      da(10) => intcore_n_14,
      da(9) => intcore_n_15,
      da(8) => intcore_n_16,
      da(7) => intcore_n_17,
      da(6) => intcore_n_18,
      da(5) => intcore_n_19,
      da(4) => intcore_n_20,
      da(3) => intcore_n_21,
      da(2) => intcore_n_22,
      da(1) => intcore_n_23,
      da(0) => intcore_n_24,
      empty_match_reg => axi_control_n_17,
      empty_match_reg_0 => axi_in_fifo_n_3,
      eol_late_i_reg => \^eol_late_i_reg\,
      fifo_wr_i => fifo_wr_i,
      \genr_control_regs[0]\(0) => \genr_control_regs[0]\(0),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      wen => \UOSD_AXIS_SYNC_FIFO/wen\,
      \write_ptr_int_reg[0]\ => axi_out_fifo_n_0
    );
intcore: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_core
     port map (
      E(0) => \^needs_delay.shift_register_reg[1][0]\,
      Q(23 downto 0) => vid_data_in_r(23 downto 0),
      SR(0) => sclr,
      aclk => aclk,
      \core_control_regs[0]\(7 downto 0) => \core_control_regs[0]\(7 downto 0),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(7 downto 0) => \core_control_regs[1]\(7 downto 0),
      \core_control_regs[2]\(7 downto 0) => \core_control_regs[2]\(7 downto 0),
      \core_control_regs[3]\(7 downto 0) => \core_control_regs[3]\(7 downto 0),
      \core_control_regs[4]\(7 downto 0) => \core_control_regs[4]\(7 downto 0),
      \core_control_regs[5]\(7 downto 0) => \core_control_regs[5]\(7 downto 0),
      \core_control_regs[6]\(8 downto 0) => \core_control_regs[6]\(8 downto 0),
      \core_control_regs[7]\(8 downto 0) => \core_control_regs[7]\(8 downto 0),
      \core_control_regs[8]\(8 downto 0) => \core_control_regs[8]\(8 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      da(23) => intcore_n_1,
      da(22) => intcore_n_2,
      da(21) => intcore_n_3,
      da(20) => intcore_n_4,
      da(19) => intcore_n_5,
      da(18) => intcore_n_6,
      da(17) => intcore_n_7,
      da(16) => intcore_n_8,
      da(15) => intcore_n_9,
      da(14) => intcore_n_10,
      da(13) => intcore_n_11,
      da(12) => intcore_n_12,
      da(11) => intcore_n_13,
      da(10) => intcore_n_14,
      da(9) => intcore_n_15,
      da(8) => intcore_n_16,
      da(7) => intcore_n_17,
      da(6) => intcore_n_18,
      da(5) => intcore_n_19,
      da(4) => intcore_n_20,
      da(3) => intcore_n_21,
      da(2) => intcore_n_22,
      da(1) => intcore_n_23,
      da(0) => intcore_n_24,
      resetn_out => resetn_out
    );
\vid_data_in_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_30,
      Q => vid_data_in_r(0),
      R => '0'
    );
\vid_data_in_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_20,
      Q => vid_data_in_r(10),
      R => '0'
    );
\vid_data_in_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_19,
      Q => vid_data_in_r(11),
      R => '0'
    );
\vid_data_in_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_18,
      Q => vid_data_in_r(12),
      R => '0'
    );
\vid_data_in_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_17,
      Q => vid_data_in_r(13),
      R => '0'
    );
\vid_data_in_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_16,
      Q => vid_data_in_r(14),
      R => '0'
    );
\vid_data_in_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_15,
      Q => vid_data_in_r(15),
      R => '0'
    );
\vid_data_in_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_14,
      Q => vid_data_in_r(16),
      R => '0'
    );
\vid_data_in_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_13,
      Q => vid_data_in_r(17),
      R => '0'
    );
\vid_data_in_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_12,
      Q => vid_data_in_r(18),
      R => '0'
    );
\vid_data_in_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_11,
      Q => vid_data_in_r(19),
      R => '0'
    );
\vid_data_in_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_29,
      Q => vid_data_in_r(1),
      R => '0'
    );
\vid_data_in_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_10,
      Q => vid_data_in_r(20),
      R => '0'
    );
\vid_data_in_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_9,
      Q => vid_data_in_r(21),
      R => '0'
    );
\vid_data_in_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_8,
      Q => vid_data_in_r(22),
      R => '0'
    );
\vid_data_in_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_7,
      Q => vid_data_in_r(23),
      R => '0'
    );
\vid_data_in_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_28,
      Q => vid_data_in_r(2),
      R => '0'
    );
\vid_data_in_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_27,
      Q => vid_data_in_r(3),
      R => '0'
    );
\vid_data_in_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_26,
      Q => vid_data_in_r(4),
      R => '0'
    );
\vid_data_in_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_25,
      Q => vid_data_in_r(5),
      R => '0'
    );
\vid_data_in_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_24,
      Q => vid_data_in_r(6),
      R => '0'
    );
\vid_data_in_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_23,
      Q => vid_data_in_r(7),
      R => '0'
    );
\vid_data_in_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_22,
      Q => vid_data_in_r(8),
      R => '0'
    );
\vid_data_in_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^needs_delay.shift_register_reg[1][0]\,
      D => axi_in_fifo_n_21,
      Q => vid_data_in_r(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aclken : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    intc_if : out STD_LOGIC_VECTOR ( 8 downto 0 );
    irq : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser_sof : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser_sof : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_ACOEF : integer;
  attribute C_ACOEF of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 19595;
  attribute C_ACTIVE_COLS : integer;
  attribute C_ACTIVE_COLS of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1280;
  attribute C_ACTIVE_ROWS : integer;
  attribute C_ACTIVE_ROWS of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 720;
  attribute C_BCOEF : integer;
  attribute C_BCOEF of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 7471;
  attribute C_CBMAX : integer;
  attribute C_CBMAX of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 240;
  attribute C_CBMIN : integer;
  attribute C_CBMIN of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 16;
  attribute C_CBOFFSET : integer;
  attribute C_CBOFFSET of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 128;
  attribute C_CCOEF : integer;
  attribute C_CCOEF of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 46727;
  attribute C_CRMAX : integer;
  attribute C_CRMAX of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 240;
  attribute C_CRMIN : integer;
  attribute C_CRMIN of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 16;
  attribute C_CROFFSET : integer;
  attribute C_CROFFSET of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 128;
  attribute C_DCOEF : integer;
  attribute C_DCOEF of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 36962;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "zynq";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_HAS_CLAMP : integer;
  attribute C_HAS_CLAMP of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_HAS_CLIP : integer;
  attribute C_HAS_CLIP of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_HAS_DEBUG : integer;
  attribute C_HAS_DEBUG of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 0;
  attribute C_MAX_COLS : integer;
  attribute C_MAX_COLS of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1280;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 8;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 1;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 24;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 8;
  attribute C_S_AXIS_VIDEO_FORMAT : integer;
  attribute C_S_AXIS_VIDEO_FORMAT of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 2;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 24;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 32;
  attribute C_YMAX : integer;
  attribute C_YMAX of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 240;
  attribute C_YMIN : integer;
  attribute C_YMIN of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 16;
  attribute C_YOFFSET : integer;
  attribute C_YOFFSET of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is 16;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "v_rgb2ycrcb";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb : entity is "yes";
end Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb is
  signal U_VIDEO_CTRL_n_318 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_319 : STD_LOGIC;
  signal U_VIDEO_CTRL_n_320 : STD_LOGIC;
  signal \core_control_regs[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[10]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[11]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[12]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \core_control_regs[6]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[7]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[8]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \core_control_regs[9]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal core_d : STD_LOGIC;
  signal \genr_control_regs[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^intc_if\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal reg_update : STD_LOGIC;
  signal resetn : STD_LOGIC;
  signal \time_control_regs[0]\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED : STD_LOGIC;
  signal NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED : STD_LOGIC;
  signal \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_COREGEN_PATCH : integer;
  attribute C_COREGEN_PATCH of U_VIDEO_CTRL : label is 0;
  attribute C_CORE_AXI_WRITE : string;
  attribute C_CORE_AXI_WRITE of U_VIDEO_CTRL : label is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111";
  attribute C_CORE_DBUFFER : string;
  attribute C_CORE_DBUFFER of U_VIDEO_CTRL : label is "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111";
  attribute C_CORE_DEFAULT : string;
  attribute C_CORE_DEFAULT of U_VIDEO_CTRL : label is "416'b00000000000000000000000011110000000000000000000000000000000100000000000000000000000000001111000000000000000000000000000000010000000000000000000000000000111100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000100000000000000000000000000000001000000000000000000000000100110010001011000000000000000000011101001011110000000000000000101101101000011100000000000000001001000001100010";
  attribute C_CORE_NUM_REGS : integer;
  attribute C_CORE_NUM_REGS of U_VIDEO_CTRL : label is 13;
  attribute C_FAMILY of U_VIDEO_CTRL : label is "zynq";
  attribute C_GENR_AXI_WRITE : string;
  attribute C_GENR_AXI_WRITE of U_VIDEO_CTRL : label is "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DBUFFER : string;
  attribute C_GENR_DBUFFER of U_VIDEO_CTRL : label is "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_DEFAULT : string;
  attribute C_GENR_DEFAULT of U_VIDEO_CTRL : label is "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_GENR_NUM_REGS : integer;
  attribute C_GENR_NUM_REGS of U_VIDEO_CTRL : label is 8;
  attribute C_GENR_SELFCLR : string;
  attribute C_GENR_SELFCLR of U_VIDEO_CTRL : label is "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_HAS_AXI4_LITE of U_VIDEO_CTRL : label is 0;
  attribute C_HAS_IRQ : integer;
  attribute C_HAS_IRQ of U_VIDEO_CTRL : label is 1;
  attribute C_IS_EVAL : string;
  attribute C_IS_EVAL of U_VIDEO_CTRL : label is "FALSE";
  attribute C_REVISION_NUMBER : integer;
  attribute C_REVISION_NUMBER of U_VIDEO_CTRL : label is 1;
  attribute C_SRESET_LENGTH : integer;
  attribute C_SRESET_LENGTH of U_VIDEO_CTRL : label is 1;
  attribute C_S_AXI_ADDR_WIDTH of U_VIDEO_CTRL : label is 9;
  attribute C_S_AXI_DATA_WIDTH of U_VIDEO_CTRL : label is 32;
  attribute C_TIMEOUT_HOURS : integer;
  attribute C_TIMEOUT_HOURS of U_VIDEO_CTRL : label is 8;
  attribute C_TIMEOUT_MINS : integer;
  attribute C_TIMEOUT_MINS of U_VIDEO_CTRL : label is 0;
  attribute C_TIME_AXI_WRITE : string;
  attribute C_TIME_AXI_WRITE of U_VIDEO_CTRL : label is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DBUFFER : string;
  attribute C_TIME_DBUFFER of U_VIDEO_CTRL : label is "64'b1111111111111111111111111111111100000000000000000000000000000111";
  attribute C_TIME_DEFAULT : string;
  attribute C_TIME_DEFAULT of U_VIDEO_CTRL : label is "64'b0000001011010000000001010000000000000000000000000000000000000000";
  attribute C_TIME_NUM_REGS : integer;
  attribute C_TIME_NUM_REGS of U_VIDEO_CTRL : label is 2;
  attribute C_VERSION_MAJOR : integer;
  attribute C_VERSION_MAJOR of U_VIDEO_CTRL : label is 7;
  attribute C_VERSION_MINOR : integer;
  attribute C_VERSION_MINOR of U_VIDEO_CTRL : label is 1;
  attribute C_VERSION_REVISION : integer;
  attribute C_VERSION_REVISION of U_VIDEO_CTRL : label is 0;
  attribute downgradeipidentifiedwarnings of U_VIDEO_CTRL : label is "yes";
begin
  intc_if(8 downto 0) <= \^intc_if\(8 downto 0);
U_VIDEO_CTRL: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_video_ctrl
     port map (
      aclk => s_axi_aclk,
      aclk_en => s_axi_aclken,
      aresetn => s_axi_aresetn,
      \core_control_regs[0]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED\(31 downto 16),
      \core_control_regs[0]\(15 downto 0) => \core_control_regs[0]\(15 downto 0),
      \core_control_regs[10]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED\(31 downto 17),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED\(31 downto 17),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED\(31 downto 17),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED\(31 downto 16),
      \core_control_regs[1]\(15 downto 0) => \core_control_regs[1]\(15 downto 0),
      \core_control_regs[2]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED\(31 downto 16),
      \core_control_regs[2]\(15 downto 0) => \core_control_regs[2]\(15 downto 0),
      \core_control_regs[3]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED\(31 downto 16),
      \core_control_regs[3]\(15 downto 0) => \core_control_regs[3]\(15 downto 0),
      \core_control_regs[4]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED\(31 downto 16),
      \core_control_regs[4]\(15 downto 0) => \core_control_regs[4]\(15 downto 0),
      \core_control_regs[5]\(31 downto 16) => \NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED\(31 downto 16),
      \core_control_regs[5]\(15 downto 0) => \core_control_regs[5]\(15 downto 0),
      \core_control_regs[6]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED\(31 downto 17),
      \core_control_regs[6]\(16 downto 0) => \core_control_regs[6]\(16 downto 0),
      \core_control_regs[7]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED\(31 downto 17),
      \core_control_regs[7]\(16 downto 0) => \core_control_regs[7]\(16 downto 0),
      \core_control_regs[8]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED\(31 downto 17),
      \core_control_regs[8]\(16 downto 0) => \core_control_regs[8]\(16 downto 0),
      \core_control_regs[9]\(31 downto 17) => \NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED\(31 downto 17),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      core_d_out => core_d,
      \core_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[10]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[11]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[12]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[1]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[2]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[8]\(31 downto 0) => B"00000000000000000000000000000000",
      \core_status_regs[9]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_control_regs[0]\(31 downto 0) => \genr_control_regs[0]\(31 downto 0),
      \genr_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[2]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[3]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[4]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[5]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[6]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED\(31 downto 0),
      \genr_control_regs[7]\(31 downto 0) => \NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED\(31 downto 0),
      \genr_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[1]\(31 downto 17) => B"000000000000000",
      \genr_status_regs[1]\(16) => \^intc_if\(4),
      \genr_status_regs[1]\(15 downto 4) => B"000000000000",
      \genr_status_regs[1]\(3 downto 0) => \^intc_if\(3 downto 0),
      \genr_status_regs[2]\(31 downto 4) => B"0000000000000000000000000000",
      \genr_status_regs[2]\(3 downto 0) => \^intc_if\(8 downto 5),
      \genr_status_regs[3]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[4]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[5]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[6]\(31 downto 0) => B"00000000000000000000000000000000",
      \genr_status_regs[7]\(31 downto 0) => B"00000000000000000000000000000000",
      ipif_addr_out(8 downto 0) => NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED(8 downto 0),
      ipif_cs_out => NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED,
      ipif_data_out(31 downto 0) => NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED(31 downto 0),
      ipif_rnw_out => NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED,
      irq => irq,
      reg_update => reg_update,
      resetn_out => resetn,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \time_control_regs[0]\(31 downto 29) => \NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED\(31 downto 29),
      \time_control_regs[0]\(28 downto 16) => \time_control_regs[0]\(28 downto 16),
      \time_control_regs[0]\(15) => U_VIDEO_CTRL_n_318,
      \time_control_regs[0]\(14) => U_VIDEO_CTRL_n_319,
      \time_control_regs[0]\(13) => U_VIDEO_CTRL_n_320,
      \time_control_regs[0]\(12 downto 0) => \time_control_regs[0]\(12 downto 0),
      \time_control_regs[1]\(31 downto 0) => \NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED\(31 downto 0),
      \time_status_regs[0]\(31 downto 0) => B"00000000000000000000000000000000",
      \time_status_regs[1]\(31 downto 0) => B"00000000000000000000000000000000",
      vid_aclk => aclk,
      vid_aclk_en => aclken,
      vid_aresetn => aresetn
    );
rgb2ycrcb_top_inst: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_rgb2ycrcb_top
     port map (
      Q(25) => m_axis_video_tuser_sof,
      Q(24) => m_axis_video_tlast,
      Q(23 downto 0) => m_axis_video_tdata(23 downto 0),
      aclk => aclk,
      aclken => aclken,
      \core_control_regs[0]\(7 downto 0) => \core_control_regs[0]\(7 downto 0),
      \core_control_regs[10]\(16 downto 0) => \core_control_regs[10]\(16 downto 0),
      \core_control_regs[11]\(16 downto 0) => \core_control_regs[11]\(16 downto 0),
      \core_control_regs[12]\(16 downto 0) => \core_control_regs[12]\(16 downto 0),
      \core_control_regs[1]\(7 downto 0) => \core_control_regs[1]\(7 downto 0),
      \core_control_regs[2]\(7 downto 0) => \core_control_regs[2]\(7 downto 0),
      \core_control_regs[3]\(7 downto 0) => \core_control_regs[3]\(7 downto 0),
      \core_control_regs[4]\(7 downto 0) => \core_control_regs[4]\(7 downto 0),
      \core_control_regs[5]\(7 downto 0) => \core_control_regs[5]\(7 downto 0),
      \core_control_regs[6]\(8 downto 0) => \core_control_regs[6]\(8 downto 0),
      \core_control_regs[7]\(8 downto 0) => \core_control_regs[7]\(8 downto 0),
      \core_control_regs[8]\(8 downto 0) => \core_control_regs[8]\(8 downto 0),
      \core_control_regs[9]\(16 downto 0) => \core_control_regs[9]\(16 downto 0),
      core_d_out => core_d,
      da(25) => s_axis_video_tuser_sof,
      da(24) => s_axis_video_tlast,
      da(23 downto 0) => s_axis_video_tdata(23 downto 0),
      eol_late_i_reg => \^intc_if\(6),
      \genr_control_regs[0]\(2) => \genr_control_regs[0]\(4),
      \genr_control_regs[0]\(1 downto 0) => \genr_control_regs[0]\(1 downto 0),
      intc_if(4 downto 0) => \^intc_if\(5 downto 1),
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tvalid => m_axis_video_tvalid,
      \needs_delay.shift_register_reg[1][0]\ => \^intc_if\(0),
      reg_update => reg_update,
      resetn_out => resetn,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      sof_early_i_reg => \^intc_if\(7),
      sof_early_i_reg_0 => \^intc_if\(8),
      \time_control_regs[0]\(25 downto 13) => \time_control_regs[0]\(28 downto 16),
      \time_control_regs[0]\(12 downto 0) => \time_control_regs[0]\(12 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Arty_Z7_20_v_rgb2ycrcb_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser_sof : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser_sof : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Arty_Z7_20_v_rgb2ycrcb_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Arty_Z7_20_v_rgb2ycrcb_0_0 : entity is "Arty_Z7_20_v_rgb2ycrcb_0_0,v_rgb2ycrcb,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Arty_Z7_20_v_rgb2ycrcb_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Arty_Z7_20_v_rgb2ycrcb_0_0 : entity is "v_rgb2ycrcb,Vivado 2016.4";
end Arty_Z7_20_v_rgb2ycrcb_0_0;

architecture STRUCTURE of Arty_Z7_20_v_rgb2ycrcb_0_0 is
  signal NLW_U0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_intc_if_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ACOEF : integer;
  attribute C_ACOEF of U0 : label is 19595;
  attribute C_ACTIVE_COLS : integer;
  attribute C_ACTIVE_COLS of U0 : label is 1280;
  attribute C_ACTIVE_ROWS : integer;
  attribute C_ACTIVE_ROWS of U0 : label is 720;
  attribute C_BCOEF : integer;
  attribute C_BCOEF of U0 : label is 7471;
  attribute C_CBMAX : integer;
  attribute C_CBMAX of U0 : label is 240;
  attribute C_CBMIN : integer;
  attribute C_CBMIN of U0 : label is 16;
  attribute C_CBOFFSET : integer;
  attribute C_CBOFFSET of U0 : label is 128;
  attribute C_CCOEF : integer;
  attribute C_CCOEF of U0 : label is 46727;
  attribute C_CRMAX : integer;
  attribute C_CRMAX of U0 : label is 240;
  attribute C_CRMIN : integer;
  attribute C_CRMIN of U0 : label is 16;
  attribute C_CROFFSET : integer;
  attribute C_CROFFSET of U0 : label is 128;
  attribute C_DCOEF : integer;
  attribute C_DCOEF of U0 : label is 36962;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI4_LITE : integer;
  attribute C_HAS_AXI4_LITE of U0 : label is 0;
  attribute C_HAS_CLAMP : integer;
  attribute C_HAS_CLAMP of U0 : label is 1;
  attribute C_HAS_CLIP : integer;
  attribute C_HAS_CLIP of U0 : label is 1;
  attribute C_HAS_DEBUG : integer;
  attribute C_HAS_DEBUG of U0 : label is 0;
  attribute C_HAS_INTC_IF : integer;
  attribute C_HAS_INTC_IF of U0 : label is 0;
  attribute C_MAX_COLS : integer;
  attribute C_MAX_COLS of U0 : label is 1280;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of U0 : label is 8;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of U0 : label is 1;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of U0 : label is 24;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_DATA_WIDTH of U0 : label is 8;
  attribute C_S_AXIS_VIDEO_FORMAT : integer;
  attribute C_S_AXIS_VIDEO_FORMAT of U0 : label is 2;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_S_AXIS_VIDEO_TDATA_WIDTH of U0 : label is 24;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_CLK_FREQ_HZ : integer;
  attribute C_S_AXI_CLK_FREQ_HZ of U0 : label is 100000000;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_YMAX : integer;
  attribute C_YMAX of U0 : label is 240;
  attribute C_YMIN : integer;
  attribute C_YMIN of U0 : label is 16;
  attribute C_YOFFSET : integer;
  attribute C_YOFFSET of U0 : label is 16;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.Arty_Z7_20_v_rgb2ycrcb_0_0_v_rgb2ycrcb
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      intc_if(8 downto 0) => NLW_U0_intc_if_UNCONNECTED(8 downto 0),
      irq => NLW_U0_irq_UNCONNECTED,
      m_axis_video_tdata(23 downto 0) => m_axis_video_tdata(23 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser_sof => m_axis_video_tuser_sof,
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axi_aclk => '0',
      s_axi_aclken => '1',
      s_axi_araddr(8 downto 0) => B"000000000",
      s_axi_aresetn => '1',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(8 downto 0) => B"000000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      s_axis_video_tdata(23 downto 0) => s_axis_video_tdata(23 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser_sof => s_axis_video_tuser_sof,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
