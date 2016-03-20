-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/20/2016 00:56:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CacheController IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	MreIn : IN std_logic;
	MweIn : IN std_logic;
	addressIN : IN std_logic_vector(11 DOWNTO 0);
	addressOUT : OUT std_logic_vector(11 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out_cpu : OUT std_logic_vector(15 DOWNTO 0);
	replaceStatusIn : IN std_logic;
	replaceStatusOut : OUT std_logic;
	data_block_in : IN std_logic_vector(63 DOWNTO 0);
	address_block_in : IN std_logic_vector(11 DOWNTO 0);
	delayReq : OUT std_logic
	);
END CacheController;

-- Design Ports Information
-- addressOUT[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressOUT[11]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[12]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[13]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[14]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_cpu[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- replaceStatusOut	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[5]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[6]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[9]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[12]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[13]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[14]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[15]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[16]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[18]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[19]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[20]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[21]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[23]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[24]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[25]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[26]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[27]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[29]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[30]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[31]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[32]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[33]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[34]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[35]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[36]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[37]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[38]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[39]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[40]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[41]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[42]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[43]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[44]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[45]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[46]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[47]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[48]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[49]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[50]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[51]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[52]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[53]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[54]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[55]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[56]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[57]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[58]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[59]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[60]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[61]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[62]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_block_in[63]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[1]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[5]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[7]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[8]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[9]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[10]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_block_in[11]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- delayReq	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[5]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[9]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addressIN[11]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MreIn	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MweIn	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- replaceStatusIn	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CacheController IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_MreIn : std_logic;
SIGNAL ww_MweIn : std_logic;
SIGNAL ww_addressIN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_addressOUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out_cpu : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_replaceStatusIn : std_logic;
SIGNAL ww_replaceStatusOut : std_logic;
SIGNAL ww_data_block_in : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_address_block_in : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_delayReq : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_block_in[0]~input_o\ : std_logic;
SIGNAL \data_block_in[1]~input_o\ : std_logic;
SIGNAL \data_block_in[2]~input_o\ : std_logic;
SIGNAL \data_block_in[3]~input_o\ : std_logic;
SIGNAL \data_block_in[4]~input_o\ : std_logic;
SIGNAL \data_block_in[5]~input_o\ : std_logic;
SIGNAL \data_block_in[6]~input_o\ : std_logic;
SIGNAL \data_block_in[7]~input_o\ : std_logic;
SIGNAL \data_block_in[8]~input_o\ : std_logic;
SIGNAL \data_block_in[9]~input_o\ : std_logic;
SIGNAL \data_block_in[10]~input_o\ : std_logic;
SIGNAL \data_block_in[11]~input_o\ : std_logic;
SIGNAL \data_block_in[12]~input_o\ : std_logic;
SIGNAL \data_block_in[13]~input_o\ : std_logic;
SIGNAL \data_block_in[14]~input_o\ : std_logic;
SIGNAL \data_block_in[15]~input_o\ : std_logic;
SIGNAL \data_block_in[16]~input_o\ : std_logic;
SIGNAL \data_block_in[17]~input_o\ : std_logic;
SIGNAL \data_block_in[18]~input_o\ : std_logic;
SIGNAL \data_block_in[19]~input_o\ : std_logic;
SIGNAL \data_block_in[20]~input_o\ : std_logic;
SIGNAL \data_block_in[21]~input_o\ : std_logic;
SIGNAL \data_block_in[22]~input_o\ : std_logic;
SIGNAL \data_block_in[23]~input_o\ : std_logic;
SIGNAL \data_block_in[24]~input_o\ : std_logic;
SIGNAL \data_block_in[25]~input_o\ : std_logic;
SIGNAL \data_block_in[26]~input_o\ : std_logic;
SIGNAL \data_block_in[27]~input_o\ : std_logic;
SIGNAL \data_block_in[28]~input_o\ : std_logic;
SIGNAL \data_block_in[29]~input_o\ : std_logic;
SIGNAL \data_block_in[30]~input_o\ : std_logic;
SIGNAL \data_block_in[31]~input_o\ : std_logic;
SIGNAL \data_block_in[32]~input_o\ : std_logic;
SIGNAL \data_block_in[33]~input_o\ : std_logic;
SIGNAL \data_block_in[34]~input_o\ : std_logic;
SIGNAL \data_block_in[35]~input_o\ : std_logic;
SIGNAL \data_block_in[36]~input_o\ : std_logic;
SIGNAL \data_block_in[37]~input_o\ : std_logic;
SIGNAL \data_block_in[38]~input_o\ : std_logic;
SIGNAL \data_block_in[39]~input_o\ : std_logic;
SIGNAL \data_block_in[40]~input_o\ : std_logic;
SIGNAL \data_block_in[41]~input_o\ : std_logic;
SIGNAL \data_block_in[42]~input_o\ : std_logic;
SIGNAL \data_block_in[43]~input_o\ : std_logic;
SIGNAL \data_block_in[44]~input_o\ : std_logic;
SIGNAL \data_block_in[45]~input_o\ : std_logic;
SIGNAL \data_block_in[46]~input_o\ : std_logic;
SIGNAL \data_block_in[47]~input_o\ : std_logic;
SIGNAL \data_block_in[48]~input_o\ : std_logic;
SIGNAL \data_block_in[49]~input_o\ : std_logic;
SIGNAL \data_block_in[50]~input_o\ : std_logic;
SIGNAL \data_block_in[51]~input_o\ : std_logic;
SIGNAL \data_block_in[52]~input_o\ : std_logic;
SIGNAL \data_block_in[53]~input_o\ : std_logic;
SIGNAL \data_block_in[54]~input_o\ : std_logic;
SIGNAL \data_block_in[55]~input_o\ : std_logic;
SIGNAL \data_block_in[56]~input_o\ : std_logic;
SIGNAL \data_block_in[57]~input_o\ : std_logic;
SIGNAL \data_block_in[58]~input_o\ : std_logic;
SIGNAL \data_block_in[59]~input_o\ : std_logic;
SIGNAL \data_block_in[60]~input_o\ : std_logic;
SIGNAL \data_block_in[61]~input_o\ : std_logic;
SIGNAL \data_block_in[62]~input_o\ : std_logic;
SIGNAL \data_block_in[63]~input_o\ : std_logic;
SIGNAL \address_block_in[0]~input_o\ : std_logic;
SIGNAL \address_block_in[1]~input_o\ : std_logic;
SIGNAL \address_block_in[2]~input_o\ : std_logic;
SIGNAL \address_block_in[3]~input_o\ : std_logic;
SIGNAL \address_block_in[4]~input_o\ : std_logic;
SIGNAL \address_block_in[5]~input_o\ : std_logic;
SIGNAL \address_block_in[6]~input_o\ : std_logic;
SIGNAL \address_block_in[7]~input_o\ : std_logic;
SIGNAL \address_block_in[8]~input_o\ : std_logic;
SIGNAL \address_block_in[9]~input_o\ : std_logic;
SIGNAL \address_block_in[10]~input_o\ : std_logic;
SIGNAL \address_block_in[11]~input_o\ : std_logic;
SIGNAL \addressOUT[0]~output_o\ : std_logic;
SIGNAL \addressOUT[1]~output_o\ : std_logic;
SIGNAL \addressOUT[2]~output_o\ : std_logic;
SIGNAL \addressOUT[3]~output_o\ : std_logic;
SIGNAL \addressOUT[4]~output_o\ : std_logic;
SIGNAL \addressOUT[5]~output_o\ : std_logic;
SIGNAL \addressOUT[6]~output_o\ : std_logic;
SIGNAL \addressOUT[7]~output_o\ : std_logic;
SIGNAL \addressOUT[8]~output_o\ : std_logic;
SIGNAL \addressOUT[9]~output_o\ : std_logic;
SIGNAL \addressOUT[10]~output_o\ : std_logic;
SIGNAL \addressOUT[11]~output_o\ : std_logic;
SIGNAL \data_out_cpu[0]~output_o\ : std_logic;
SIGNAL \data_out_cpu[1]~output_o\ : std_logic;
SIGNAL \data_out_cpu[2]~output_o\ : std_logic;
SIGNAL \data_out_cpu[3]~output_o\ : std_logic;
SIGNAL \data_out_cpu[4]~output_o\ : std_logic;
SIGNAL \data_out_cpu[5]~output_o\ : std_logic;
SIGNAL \data_out_cpu[6]~output_o\ : std_logic;
SIGNAL \data_out_cpu[7]~output_o\ : std_logic;
SIGNAL \data_out_cpu[8]~output_o\ : std_logic;
SIGNAL \data_out_cpu[9]~output_o\ : std_logic;
SIGNAL \data_out_cpu[10]~output_o\ : std_logic;
SIGNAL \data_out_cpu[11]~output_o\ : std_logic;
SIGNAL \data_out_cpu[12]~output_o\ : std_logic;
SIGNAL \data_out_cpu[13]~output_o\ : std_logic;
SIGNAL \data_out_cpu[14]~output_o\ : std_logic;
SIGNAL \data_out_cpu[15]~output_o\ : std_logic;
SIGNAL \replaceStatusOut~output_o\ : std_logic;
SIGNAL \delayReq~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \addressIN[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \MreIn~input_o\ : std_logic;
SIGNAL \MweIn~input_o\ : std_logic;
SIGNAL \replaceStatusIn~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \read_tag~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \write_tag~q\ : std_logic;
SIGNAL \unit1|hit~1_combout\ : std_logic;
SIGNAL \addressIN[4]~input_o\ : std_logic;
SIGNAL \addressIN[9]~input_o\ : std_logic;
SIGNAL \unit1|memory[2][4]~feeder_combout\ : std_logic;
SIGNAL \addressIN[3]~input_o\ : std_logic;
SIGNAL \unit1|write~0_combout\ : std_logic;
SIGNAL \addressIN[2]~input_o\ : std_logic;
SIGNAL \unit1|memory[2][6]~0_combout\ : std_logic;
SIGNAL \unit1|memory[2][4]~q\ : std_logic;
SIGNAL \unit1|memory[3][6]~3_combout\ : std_logic;
SIGNAL \unit1|memory[3][4]~q\ : std_logic;
SIGNAL \unit1|memory[0][6]~2_combout\ : std_logic;
SIGNAL \unit1|memory[0][4]~q\ : std_logic;
SIGNAL \unit1|memory[1][4]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[1][6]~1_combout\ : std_logic;
SIGNAL \unit1|memory[1][4]~q\ : std_logic;
SIGNAL \unit1|Mux2~0_combout\ : std_logic;
SIGNAL \unit1|Mux2~1_combout\ : std_logic;
SIGNAL \unit1|memory[5][4]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[5][6]~4_combout\ : std_logic;
SIGNAL \unit1|memory[5][4]~q\ : std_logic;
SIGNAL \unit1|memory[7][6]~7_combout\ : std_logic;
SIGNAL \unit1|memory[7][4]~q\ : std_logic;
SIGNAL \unit1|memory[4][6]~6_combout\ : std_logic;
SIGNAL \unit1|memory[4][4]~q\ : std_logic;
SIGNAL \unit1|memory[6][4]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][6]~5_combout\ : std_logic;
SIGNAL \unit1|memory[6][4]~q\ : std_logic;
SIGNAL \unit1|Mux2~2_combout\ : std_logic;
SIGNAL \unit1|Mux2~3_combout\ : std_logic;
SIGNAL \unit1|Equal0~4_combout\ : std_logic;
SIGNAL \addressIN[11]~input_o\ : std_logic;
SIGNAL \unit1|memory[4][6]~q\ : std_logic;
SIGNAL \unit1|memory[6][6]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][6]~q\ : std_logic;
SIGNAL \unit1|Mux0~2_combout\ : std_logic;
SIGNAL \unit1|memory[7][6]~q\ : std_logic;
SIGNAL \unit1|memory[5][6]~q\ : std_logic;
SIGNAL \unit1|Mux0~3_combout\ : std_logic;
SIGNAL \unit1|memory[2][6]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[2][6]~q\ : std_logic;
SIGNAL \unit1|memory[1][6]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[1][6]~q\ : std_logic;
SIGNAL \unit1|memory[0][6]~q\ : std_logic;
SIGNAL \unit1|Mux0~0_combout\ : std_logic;
SIGNAL \unit1|memory[3][6]~q\ : std_logic;
SIGNAL \unit1|Mux0~1_combout\ : std_logic;
SIGNAL \unit1|Equal0~6_combout\ : std_logic;
SIGNAL \addressIN[10]~input_o\ : std_logic;
SIGNAL \unit1|memory[5][5]~q\ : std_logic;
SIGNAL \unit1|memory[7][5]~q\ : std_logic;
SIGNAL \unit1|memory[4][5]~q\ : std_logic;
SIGNAL \unit1|memory[6][5]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][5]~q\ : std_logic;
SIGNAL \unit1|Mux1~2_combout\ : std_logic;
SIGNAL \unit1|Mux1~3_combout\ : std_logic;
SIGNAL \unit1|memory[2][5]~q\ : std_logic;
SIGNAL \unit1|memory[3][5]~q\ : std_logic;
SIGNAL \unit1|memory[0][5]~q\ : std_logic;
SIGNAL \unit1|memory[1][5]~q\ : std_logic;
SIGNAL \unit1|Mux1~0_combout\ : std_logic;
SIGNAL \unit1|Mux1~1_combout\ : std_logic;
SIGNAL \unit1|Equal0~5_combout\ : std_logic;
SIGNAL \unit1|hit~2_combout\ : std_logic;
SIGNAL \addressIN[5]~input_o\ : std_logic;
SIGNAL \unit1|memory[5][0]~q\ : std_logic;
SIGNAL \unit1|memory[7][0]~q\ : std_logic;
SIGNAL \unit1|memory[4][0]~q\ : std_logic;
SIGNAL \unit1|memory[6][0]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][0]~q\ : std_logic;
SIGNAL \unit1|Mux6~2_combout\ : std_logic;
SIGNAL \unit1|Mux6~3_combout\ : std_logic;
SIGNAL \unit1|memory[2][0]~q\ : std_logic;
SIGNAL \unit1|memory[3][0]~q\ : std_logic;
SIGNAL \unit1|memory[0][0]~q\ : std_logic;
SIGNAL \unit1|memory[1][0]~q\ : std_logic;
SIGNAL \unit1|Mux6~0_combout\ : std_logic;
SIGNAL \unit1|Mux6~1_combout\ : std_logic;
SIGNAL \unit1|Equal0~0_combout\ : std_logic;
SIGNAL \addressIN[6]~input_o\ : std_logic;
SIGNAL \unit1|memory[2][1]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[2][1]~q\ : std_logic;
SIGNAL \unit1|memory[3][1]~q\ : std_logic;
SIGNAL \unit1|memory[0][1]~q\ : std_logic;
SIGNAL \unit1|memory[1][1]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[1][1]~q\ : std_logic;
SIGNAL \unit1|Mux5~0_combout\ : std_logic;
SIGNAL \unit1|Mux5~1_combout\ : std_logic;
SIGNAL \unit1|memory[6][1]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][1]~q\ : std_logic;
SIGNAL \unit1|memory[4][1]~q\ : std_logic;
SIGNAL \unit1|Mux5~2_combout\ : std_logic;
SIGNAL \unit1|memory[7][1]~q\ : std_logic;
SIGNAL \unit1|memory[5][1]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[5][1]~q\ : std_logic;
SIGNAL \unit1|Mux5~3_combout\ : std_logic;
SIGNAL \unit1|Equal0~1_combout\ : std_logic;
SIGNAL \addressIN[7]~input_o\ : std_logic;
SIGNAL \unit1|memory[5][2]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[5][2]~q\ : std_logic;
SIGNAL \unit1|memory[7][2]~q\ : std_logic;
SIGNAL \unit1|memory[4][2]~q\ : std_logic;
SIGNAL \unit1|memory[6][2]~q\ : std_logic;
SIGNAL \unit1|Mux4~2_combout\ : std_logic;
SIGNAL \unit1|Mux4~3_combout\ : std_logic;
SIGNAL \unit1|memory[2][2]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[2][2]~q\ : std_logic;
SIGNAL \unit1|memory[3][2]~q\ : std_logic;
SIGNAL \unit1|memory[0][2]~q\ : std_logic;
SIGNAL \unit1|memory[1][2]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[1][2]~q\ : std_logic;
SIGNAL \unit1|Mux4~0_combout\ : std_logic;
SIGNAL \unit1|Mux4~1_combout\ : std_logic;
SIGNAL \unit1|Equal0~2_combout\ : std_logic;
SIGNAL \addressIN[8]~input_o\ : std_logic;
SIGNAL \unit1|memory[2][3]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[2][3]~q\ : std_logic;
SIGNAL \unit1|memory[3][3]~q\ : std_logic;
SIGNAL \unit1|memory[0][3]~q\ : std_logic;
SIGNAL \unit1|memory[1][3]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[1][3]~q\ : std_logic;
SIGNAL \unit1|Mux3~0_combout\ : std_logic;
SIGNAL \unit1|Mux3~1_combout\ : std_logic;
SIGNAL \unit1|memory[5][3]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[5][3]~q\ : std_logic;
SIGNAL \unit1|memory[7][3]~q\ : std_logic;
SIGNAL \unit1|memory[4][3]~q\ : std_logic;
SIGNAL \unit1|memory[6][3]~feeder_combout\ : std_logic;
SIGNAL \unit1|memory[6][3]~q\ : std_logic;
SIGNAL \unit1|Mux3~2_combout\ : std_logic;
SIGNAL \unit1|Mux3~3_combout\ : std_logic;
SIGNAL \unit1|Equal0~3_combout\ : std_logic;
SIGNAL \unit1|hit~0_combout\ : std_logic;
SIGNAL \unit1|hit~3_combout\ : std_logic;
SIGNAL \unit1|hit~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \addressOUT[0]~0_combout\ : std_logic;
SIGNAL \addressOUT[0]~reg0_q\ : std_logic;
SIGNAL \addressIN[1]~input_o\ : std_logic;
SIGNAL \addressOUT[1]~reg0_q\ : std_logic;
SIGNAL \addressOUT[2]~reg0feeder_combout\ : std_logic;
SIGNAL \addressOUT[2]~reg0_q\ : std_logic;
SIGNAL \addressOUT[3]~reg0feeder_combout\ : std_logic;
SIGNAL \addressOUT[3]~reg0_q\ : std_logic;
SIGNAL \addressOUT[4]~reg0_q\ : std_logic;
SIGNAL \addressOUT[5]~reg0_q\ : std_logic;
SIGNAL \addressOUT[6]~reg0feeder_combout\ : std_logic;
SIGNAL \addressOUT[6]~reg0_q\ : std_logic;
SIGNAL \addressOUT[7]~reg0feeder_combout\ : std_logic;
SIGNAL \addressOUT[7]~reg0_q\ : std_logic;
SIGNAL \addressOUT[8]~reg0_q\ : std_logic;
SIGNAL \addressOUT[9]~reg0feeder_combout\ : std_logic;
SIGNAL \addressOUT[9]~reg0_q\ : std_logic;
SIGNAL \addressOUT[10]~reg0_q\ : std_logic;
SIGNAL \addressOUT[11]~reg0_q\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \tempDataIn[0]~feeder_combout\ : std_logic;
SIGNAL \tempDataIn[0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][0]~feeder_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \read_data~0_combout\ : std_logic;
SIGNAL \read_data~1_combout\ : std_logic;
SIGNAL \read_data~q\ : std_logic;
SIGNAL \unit2|memory[7][3][0]~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \write_data~q\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \state.s6b~q\ : std_logic;
SIGNAL \state.s7~0_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \data_enable~q\ : std_logic;
SIGNAL \unit2|memory[7][3][0]~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][0]~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][0]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[7][0][0]~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][0]~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~0_combout\ : std_logic;
SIGNAL \unit2|Mux143~1_combout\ : std_logic;
SIGNAL \unit2|memory[7][0][0]~2_combout\ : std_logic;
SIGNAL \unit2|memory[7][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][0]~2_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~7_combout\ : std_logic;
SIGNAL \unit2|memory[7][3][0]~2_combout\ : std_logic;
SIGNAL \unit2|memory[7][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][0]~2_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~8_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][0]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[4][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[4][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~4_combout\ : std_logic;
SIGNAL \unit2|Mux143~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][0]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~2_combout\ : std_logic;
SIGNAL \unit2|Mux143~3_combout\ : std_logic;
SIGNAL \unit2|Mux143~6_combout\ : std_logic;
SIGNAL \unit2|Mux143~9_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][0]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[3][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[3][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~17_combout\ : std_logic;
SIGNAL \unit2|Mux143~18_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][0]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[0][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[0][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~14_combout\ : std_logic;
SIGNAL \unit2|Mux143~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][0]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[1][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~12_combout\ : std_logic;
SIGNAL \unit2|Mux143~13_combout\ : std_logic;
SIGNAL \unit2|Mux143~16_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][0]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][0]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[2][0][0]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][0]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][0]~0_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][0]~q\ : std_logic;
SIGNAL \unit2|Mux143~10_combout\ : std_logic;
SIGNAL \unit2|Mux143~11_combout\ : std_logic;
SIGNAL \unit2|Mux143~19_combout\ : std_logic;
SIGNAL \unit2|Mux143~20_combout\ : std_logic;
SIGNAL \unit2|data_out[0]~0_combout\ : std_logic;
SIGNAL \data_out_cpu[0]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[0]~0_combout\ : std_logic;
SIGNAL \data_out_cpu[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \tempDataIn[1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][1]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~17_combout\ : std_logic;
SIGNAL \unit2|Mux142~18_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][1]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~10_combout\ : std_logic;
SIGNAL \unit2|Mux142~11_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][1]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~14_combout\ : std_logic;
SIGNAL \unit2|Mux142~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][1]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~12_combout\ : std_logic;
SIGNAL \unit2|Mux142~13_combout\ : std_logic;
SIGNAL \unit2|Mux142~16_combout\ : std_logic;
SIGNAL \unit2|Mux142~19_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][1]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~7_combout\ : std_logic;
SIGNAL \unit2|Mux142~8_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][1]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~0_combout\ : std_logic;
SIGNAL \unit2|Mux142~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][1]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~2_combout\ : std_logic;
SIGNAL \unit2|Mux142~3_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][1]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][1]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][1]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][1]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][1]~q\ : std_logic;
SIGNAL \unit2|Mux142~4_combout\ : std_logic;
SIGNAL \unit2|Mux142~5_combout\ : std_logic;
SIGNAL \unit2|Mux142~6_combout\ : std_logic;
SIGNAL \unit2|Mux142~9_combout\ : std_logic;
SIGNAL \unit2|Mux142~20_combout\ : std_logic;
SIGNAL \data_out_cpu[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \unit2|memory[3][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][2]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~17_combout\ : std_logic;
SIGNAL \unit2|Mux141~18_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][2]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~10_combout\ : std_logic;
SIGNAL \unit2|Mux141~11_combout\ : std_logic;
SIGNAL \unit2|memory[0][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~14_combout\ : std_logic;
SIGNAL \unit2|memory[0][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][2]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~12_combout\ : std_logic;
SIGNAL \unit2|Mux141~13_combout\ : std_logic;
SIGNAL \unit2|Mux141~16_combout\ : std_logic;
SIGNAL \unit2|Mux141~19_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][2]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~7_combout\ : std_logic;
SIGNAL \unit2|Mux141~8_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][2]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~0_combout\ : std_logic;
SIGNAL \unit2|Mux141~1_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][2][2]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~4_combout\ : std_logic;
SIGNAL \unit2|Mux141~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][2]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][2]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][2]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][2]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][2]~q\ : std_logic;
SIGNAL \unit2|Mux141~2_combout\ : std_logic;
SIGNAL \unit2|Mux141~3_combout\ : std_logic;
SIGNAL \unit2|Mux141~6_combout\ : std_logic;
SIGNAL \unit2|Mux141~9_combout\ : std_logic;
SIGNAL \unit2|Mux141~20_combout\ : std_logic;
SIGNAL \data_out_cpu[2]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \tempDataIn[3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~10_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][3]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][3]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~17_combout\ : std_logic;
SIGNAL \unit2|Mux140~18_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][3]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~12_combout\ : std_logic;
SIGNAL \unit2|Mux140~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][3]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~14_combout\ : std_logic;
SIGNAL \unit2|Mux140~15_combout\ : std_logic;
SIGNAL \unit2|Mux140~16_combout\ : std_logic;
SIGNAL \unit2|Mux140~19_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][3]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][3]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][3]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~0_combout\ : std_logic;
SIGNAL \unit2|Mux140~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][3]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~7_combout\ : std_logic;
SIGNAL \unit2|Mux140~8_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][3]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~4_combout\ : std_logic;
SIGNAL \unit2|Mux140~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][3]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][3]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][3]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][3]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][3]~q\ : std_logic;
SIGNAL \unit2|Mux140~2_combout\ : std_logic;
SIGNAL \unit2|Mux140~3_combout\ : std_logic;
SIGNAL \unit2|Mux140~6_combout\ : std_logic;
SIGNAL \unit2|Mux140~9_combout\ : std_logic;
SIGNAL \unit2|Mux140~20_combout\ : std_logic;
SIGNAL \data_out_cpu[3]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \tempDataIn[4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][3][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~7_combout\ : std_logic;
SIGNAL \unit2|Mux139~8_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][4]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][4]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][4]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~2_combout\ : std_logic;
SIGNAL \unit2|Mux139~3_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~4_combout\ : std_logic;
SIGNAL \unit2|Mux139~5_combout\ : std_logic;
SIGNAL \unit2|Mux139~6_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][4]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][4]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][4]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~0_combout\ : std_logic;
SIGNAL \unit2|Mux139~1_combout\ : std_logic;
SIGNAL \unit2|Mux139~9_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][4]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~10_combout\ : std_logic;
SIGNAL \unit2|Mux139~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][4]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~17_combout\ : std_logic;
SIGNAL \unit2|Mux139~18_combout\ : std_logic;
SIGNAL \unit2|memory[2][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~12_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][4]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][4]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][4]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][4]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][4]~q\ : std_logic;
SIGNAL \unit2|Mux139~14_combout\ : std_logic;
SIGNAL \unit2|Mux139~15_combout\ : std_logic;
SIGNAL \unit2|Mux139~16_combout\ : std_logic;
SIGNAL \unit2|Mux139~19_combout\ : std_logic;
SIGNAL \unit2|Mux139~20_combout\ : std_logic;
SIGNAL \data_out_cpu[4]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \tempDataIn[5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~7_combout\ : std_logic;
SIGNAL \unit2|Mux138~8_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~4_combout\ : std_logic;
SIGNAL \unit2|Mux138~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][5]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][5]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][5]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~2_combout\ : std_logic;
SIGNAL \unit2|Mux138~3_combout\ : std_logic;
SIGNAL \unit2|Mux138~6_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][5]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][5]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][5]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~0_combout\ : std_logic;
SIGNAL \unit2|Mux138~1_combout\ : std_logic;
SIGNAL \unit2|Mux138~9_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][5]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~10_combout\ : std_logic;
SIGNAL \unit2|Mux138~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][5]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~17_combout\ : std_logic;
SIGNAL \unit2|Mux138~18_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][5]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~12_combout\ : std_logic;
SIGNAL \unit2|Mux138~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][5]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][5]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][5]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][5]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][5]~q\ : std_logic;
SIGNAL \unit2|Mux138~14_combout\ : std_logic;
SIGNAL \unit2|Mux138~15_combout\ : std_logic;
SIGNAL \unit2|Mux138~16_combout\ : std_logic;
SIGNAL \unit2|Mux138~19_combout\ : std_logic;
SIGNAL \unit2|Mux138~20_combout\ : std_logic;
SIGNAL \data_out_cpu[5]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \tempDataIn[6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][3][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~7_combout\ : std_logic;
SIGNAL \unit2|Mux137~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][6]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][6]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][6]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~0_combout\ : std_logic;
SIGNAL \unit2|Mux137~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][6]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][6]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][6]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~2_combout\ : std_logic;
SIGNAL \unit2|Mux137~3_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~4_combout\ : std_logic;
SIGNAL \unit2|Mux137~5_combout\ : std_logic;
SIGNAL \unit2|Mux137~6_combout\ : std_logic;
SIGNAL \unit2|Mux137~9_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][6]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~10_combout\ : std_logic;
SIGNAL \unit2|Mux137~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][6]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~17_combout\ : std_logic;
SIGNAL \unit2|Mux137~18_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][6]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~14_combout\ : std_logic;
SIGNAL \unit2|Mux137~15_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][6]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][6]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][6]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][6]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][6]~q\ : std_logic;
SIGNAL \unit2|Mux137~12_combout\ : std_logic;
SIGNAL \unit2|Mux137~13_combout\ : std_logic;
SIGNAL \unit2|Mux137~16_combout\ : std_logic;
SIGNAL \unit2|Mux137~19_combout\ : std_logic;
SIGNAL \unit2|Mux137~20_combout\ : std_logic;
SIGNAL \data_out_cpu[6]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \tempDataIn[7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][7]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~17_combout\ : std_logic;
SIGNAL \unit2|Mux136~18_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][7]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~12_combout\ : std_logic;
SIGNAL \unit2|Mux136~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][7]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~14_combout\ : std_logic;
SIGNAL \unit2|Mux136~15_combout\ : std_logic;
SIGNAL \unit2|Mux136~16_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][7]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~10_combout\ : std_logic;
SIGNAL \unit2|Mux136~11_combout\ : std_logic;
SIGNAL \unit2|Mux136~19_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][7]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~7_combout\ : std_logic;
SIGNAL \unit2|Mux136~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][7]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][7]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][7]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~0_combout\ : std_logic;
SIGNAL \unit2|Mux136~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][7]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~4_combout\ : std_logic;
SIGNAL \unit2|Mux136~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][7]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][7]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][7]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][7]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][7]~q\ : std_logic;
SIGNAL \unit2|Mux136~2_combout\ : std_logic;
SIGNAL \unit2|Mux136~3_combout\ : std_logic;
SIGNAL \unit2|Mux136~6_combout\ : std_logic;
SIGNAL \unit2|Mux136~9_combout\ : std_logic;
SIGNAL \unit2|Mux136~20_combout\ : std_logic;
SIGNAL \data_out_cpu[7]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[7]~reg0_q\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \tempDataIn[8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~7_combout\ : std_logic;
SIGNAL \unit2|Mux135~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][8]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][8]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][8]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~0_combout\ : std_logic;
SIGNAL \unit2|Mux135~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~4_combout\ : std_logic;
SIGNAL \unit2|Mux135~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][8]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][8]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][8]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~2_combout\ : std_logic;
SIGNAL \unit2|Mux135~3_combout\ : std_logic;
SIGNAL \unit2|Mux135~6_combout\ : std_logic;
SIGNAL \unit2|Mux135~9_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][8]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~17_combout\ : std_logic;
SIGNAL \unit2|Mux135~18_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][8]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~10_combout\ : std_logic;
SIGNAL \unit2|Mux135~11_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][8]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~14_combout\ : std_logic;
SIGNAL \unit2|Mux135~15_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][8]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][8]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][8]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][8]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][8]~q\ : std_logic;
SIGNAL \unit2|Mux135~12_combout\ : std_logic;
SIGNAL \unit2|Mux135~13_combout\ : std_logic;
SIGNAL \unit2|Mux135~16_combout\ : std_logic;
SIGNAL \unit2|Mux135~19_combout\ : std_logic;
SIGNAL \unit2|Mux135~20_combout\ : std_logic;
SIGNAL \data_out_cpu[8]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[8]~reg0_q\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \tempDataIn[9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][9]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~10_combout\ : std_logic;
SIGNAL \unit2|Mux134~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][9]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~17_combout\ : std_logic;
SIGNAL \unit2|Mux134~18_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][9]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~14_combout\ : std_logic;
SIGNAL \unit2|Mux134~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][9]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~12_combout\ : std_logic;
SIGNAL \unit2|Mux134~13_combout\ : std_logic;
SIGNAL \unit2|Mux134~16_combout\ : std_logic;
SIGNAL \unit2|Mux134~19_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][9]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][9]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][9]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~0_combout\ : std_logic;
SIGNAL \unit2|Mux134~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][9]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~4_combout\ : std_logic;
SIGNAL \unit2|Mux134~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][9]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][9]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][9]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~2_combout\ : std_logic;
SIGNAL \unit2|Mux134~3_combout\ : std_logic;
SIGNAL \unit2|Mux134~6_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][9]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][9]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][9]~q\ : std_logic;
SIGNAL \unit2|Mux134~7_combout\ : std_logic;
SIGNAL \unit2|Mux134~8_combout\ : std_logic;
SIGNAL \unit2|Mux134~9_combout\ : std_logic;
SIGNAL \unit2|Mux134~20_combout\ : std_logic;
SIGNAL \data_out_cpu[9]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[9]~reg0_q\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \tempDataIn[10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~7_combout\ : std_logic;
SIGNAL \unit2|Mux133~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][10]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][10]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][10]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~0_combout\ : std_logic;
SIGNAL \unit2|Mux133~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][10]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][10]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][10]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~2_combout\ : std_logic;
SIGNAL \unit2|Mux133~3_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~4_combout\ : std_logic;
SIGNAL \unit2|Mux133~5_combout\ : std_logic;
SIGNAL \unit2|Mux133~6_combout\ : std_logic;
SIGNAL \unit2|Mux133~9_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][10]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~10_combout\ : std_logic;
SIGNAL \unit2|Mux133~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][10]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~17_combout\ : std_logic;
SIGNAL \unit2|Mux133~18_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][10]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~12_combout\ : std_logic;
SIGNAL \unit2|Mux133~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][10]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][10]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][10]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][10]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][10]~q\ : std_logic;
SIGNAL \unit2|Mux133~14_combout\ : std_logic;
SIGNAL \unit2|Mux133~15_combout\ : std_logic;
SIGNAL \unit2|Mux133~16_combout\ : std_logic;
SIGNAL \unit2|Mux133~19_combout\ : std_logic;
SIGNAL \unit2|Mux133~20_combout\ : std_logic;
SIGNAL \data_out_cpu[10]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[10]~reg0_q\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \tempDataIn[11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][11]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][11]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][11]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~0_combout\ : std_logic;
SIGNAL \unit2|Mux132~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~4_combout\ : std_logic;
SIGNAL \unit2|Mux132~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][11]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][11]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][11]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~2_combout\ : std_logic;
SIGNAL \unit2|Mux132~3_combout\ : std_logic;
SIGNAL \unit2|Mux132~6_combout\ : std_logic;
SIGNAL \unit2|memory[7][3][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~7_combout\ : std_logic;
SIGNAL \unit2|Mux132~8_combout\ : std_logic;
SIGNAL \unit2|Mux132~9_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][11]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~10_combout\ : std_logic;
SIGNAL \unit2|Mux132~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][11]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~17_combout\ : std_logic;
SIGNAL \unit2|Mux132~18_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][11]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~14_combout\ : std_logic;
SIGNAL \unit2|Mux132~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][11]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][11]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][11]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][11]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][11]~q\ : std_logic;
SIGNAL \unit2|Mux132~12_combout\ : std_logic;
SIGNAL \unit2|Mux132~13_combout\ : std_logic;
SIGNAL \unit2|Mux132~16_combout\ : std_logic;
SIGNAL \unit2|Mux132~19_combout\ : std_logic;
SIGNAL \unit2|Mux132~20_combout\ : std_logic;
SIGNAL \data_out_cpu[11]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[11]~reg0_q\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \tempDataIn[12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~17_combout\ : std_logic;
SIGNAL \unit2|memory[3][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~18_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][12]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~10_combout\ : std_logic;
SIGNAL \unit2|Mux131~11_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][12]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~12_combout\ : std_logic;
SIGNAL \unit2|Mux131~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][12]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~14_combout\ : std_logic;
SIGNAL \unit2|Mux131~15_combout\ : std_logic;
SIGNAL \unit2|Mux131~16_combout\ : std_logic;
SIGNAL \unit2|Mux131~19_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][12]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][12]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][12]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~0_combout\ : std_logic;
SIGNAL \unit2|Mux131~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][12]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~7_combout\ : std_logic;
SIGNAL \unit2|Mux131~8_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][12]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~4_combout\ : std_logic;
SIGNAL \unit2|Mux131~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][12]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][12]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][12]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][12]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][12]~q\ : std_logic;
SIGNAL \unit2|Mux131~2_combout\ : std_logic;
SIGNAL \unit2|Mux131~3_combout\ : std_logic;
SIGNAL \unit2|Mux131~6_combout\ : std_logic;
SIGNAL \unit2|Mux131~9_combout\ : std_logic;
SIGNAL \unit2|Mux131~20_combout\ : std_logic;
SIGNAL \data_out_cpu[12]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[12]~reg0_q\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \tempDataIn[13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][13]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][13]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][13]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~0_combout\ : std_logic;
SIGNAL \unit2|Mux130~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~7_combout\ : std_logic;
SIGNAL \unit2|Mux130~8_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~4_combout\ : std_logic;
SIGNAL \unit2|Mux130~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][13]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][13]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][13]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~2_combout\ : std_logic;
SIGNAL \unit2|Mux130~3_combout\ : std_logic;
SIGNAL \unit2|Mux130~6_combout\ : std_logic;
SIGNAL \unit2|Mux130~9_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][13]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~10_combout\ : std_logic;
SIGNAL \unit2|Mux130~11_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][13]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~14_combout\ : std_logic;
SIGNAL \unit2|Mux130~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][13]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~12_combout\ : std_logic;
SIGNAL \unit2|Mux130~13_combout\ : std_logic;
SIGNAL \unit2|Mux130~16_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][13]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][13]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][13]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][13]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][13]~q\ : std_logic;
SIGNAL \unit2|Mux130~17_combout\ : std_logic;
SIGNAL \unit2|Mux130~18_combout\ : std_logic;
SIGNAL \unit2|Mux130~19_combout\ : std_logic;
SIGNAL \unit2|Mux130~20_combout\ : std_logic;
SIGNAL \data_out_cpu[13]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[13]~reg0_q\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \tempDataIn[14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[6][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][3][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~7_combout\ : std_logic;
SIGNAL \unit2|Mux129~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[6][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[4][1][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~0_combout\ : std_logic;
SIGNAL \unit2|Mux129~1_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][14]~q\ : std_logic;
SIGNAL \unit2|memory[7][2][14]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][14]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][2][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~2_combout\ : std_logic;
SIGNAL \unit2|Mux129~3_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[5][0][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~4_combout\ : std_logic;
SIGNAL \unit2|Mux129~5_combout\ : std_logic;
SIGNAL \unit2|Mux129~6_combout\ : std_logic;
SIGNAL \unit2|Mux129~9_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][14]~q\ : std_logic;
SIGNAL \unit2|memory[1][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][0][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~10_combout\ : std_logic;
SIGNAL \unit2|Mux129~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[3][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~17_combout\ : std_logic;
SIGNAL \unit2|memory[3][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~18_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[2][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][2][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~12_combout\ : std_logic;
SIGNAL \unit2|Mux129~13_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][14]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][14]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][14]~q\ : std_logic;
SIGNAL \unit2|memory[0][2][14]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][14]~q\ : std_logic;
SIGNAL \unit2|Mux129~14_combout\ : std_logic;
SIGNAL \unit2|Mux129~15_combout\ : std_logic;
SIGNAL \unit2|Mux129~16_combout\ : std_logic;
SIGNAL \unit2|Mux129~19_combout\ : std_logic;
SIGNAL \unit2|Mux129~20_combout\ : std_logic;
SIGNAL \data_out_cpu[14]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[14]~reg0_q\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \unit2|memory[6][3][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[7][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[4][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[5][3][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][3][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~7_combout\ : std_logic;
SIGNAL \unit2|Mux128~8_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[7][2][15]~q\ : std_logic;
SIGNAL \unit2|memory[5][2][15]~q\ : std_logic;
SIGNAL \unit2|memory[4][2][15]~q\ : std_logic;
SIGNAL \unit2|memory[6][2][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][2][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~0_combout\ : std_logic;
SIGNAL \unit2|Mux128~1_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[7][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[4][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[6][0][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][0][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~4_combout\ : std_logic;
SIGNAL \unit2|Mux128~5_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[6][1][15]~q\ : std_logic;
SIGNAL \unit2|memory[7][1][15]~q\ : std_logic;
SIGNAL \unit2|memory[4][1][15]~q\ : std_logic;
SIGNAL \unit2|memory[5][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[5][1][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~2_combout\ : std_logic;
SIGNAL \unit2|Mux128~3_combout\ : std_logic;
SIGNAL \unit2|Mux128~6_combout\ : std_logic;
SIGNAL \unit2|Mux128~9_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[2][2][15]~q\ : std_logic;
SIGNAL \unit2|memory[2][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[2][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[2][1][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~10_combout\ : std_logic;
SIGNAL \unit2|Mux128~11_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][1][15]~q\ : std_logic;
SIGNAL \unit2|memory[3][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[3][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[3][2][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[3][2][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~17_combout\ : std_logic;
SIGNAL \unit2|Mux128~18_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][2][15]~q\ : std_logic;
SIGNAL \unit2|memory[0][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[0][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[0][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[0][1][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~14_combout\ : std_logic;
SIGNAL \unit2|Mux128~15_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][1][15]~q\ : std_logic;
SIGNAL \unit2|memory[1][3][15]~q\ : std_logic;
SIGNAL \unit2|memory[1][0][15]~q\ : std_logic;
SIGNAL \unit2|memory[1][2][15]~feeder_combout\ : std_logic;
SIGNAL \unit2|memory[1][2][15]~q\ : std_logic;
SIGNAL \unit2|Mux128~12_combout\ : std_logic;
SIGNAL \unit2|Mux128~13_combout\ : std_logic;
SIGNAL \unit2|Mux128~16_combout\ : std_logic;
SIGNAL \unit2|Mux128~19_combout\ : std_logic;
SIGNAL \unit2|Mux128~20_combout\ : std_logic;
SIGNAL \data_out_cpu[15]~reg0feeder_combout\ : std_logic;
SIGNAL \data_out_cpu[15]~reg0_q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \replaceStatusOut~reg0_q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \delayReq~reg0_q\ : std_logic;
SIGNAL \unit2|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL tempDataIn : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_MreIn <= MreIn;
ww_MweIn <= MweIn;
ww_addressIN <= addressIN;
addressOUT <= ww_addressOUT;
ww_data_in <= data_in;
data_out_cpu <= ww_data_out_cpu;
ww_replaceStatusIn <= replaceStatusIn;
replaceStatusOut <= ww_replaceStatusOut;
ww_data_block_in <= data_block_in;
ww_address_block_in <= address_block_in;
delayReq <= ww_delayReq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y69_N9
\addressOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\addressOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\addressOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\addressOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\addressOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\addressOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\addressOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\addressOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[7]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\addressOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[8]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\addressOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[9]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\addressOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[10]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\addressOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addressOUT[11]~reg0_q\,
	devoe => ww_devoe,
	o => \addressOUT[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\data_out_cpu[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[0]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\data_out_cpu[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\data_out_cpu[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\data_out_cpu[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\data_out_cpu[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\data_out_cpu[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[5]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\data_out_cpu[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\data_out_cpu[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\data_out_cpu[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[8]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\data_out_cpu[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\data_out_cpu[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[10]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\data_out_cpu[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[11]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\data_out_cpu[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\data_out_cpu[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[13]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\data_out_cpu[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[14]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\data_out_cpu[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_cpu[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_cpu[15]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\replaceStatusOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \replaceStatusOut~reg0_q\,
	devoe => ww_devoe,
	o => \replaceStatusOut~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\delayReq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \delayReq~reg0_q\,
	devoe => ww_devoe,
	o => \delayReq~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y48_N8
\addressIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(0),
	o => \addressIN[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\MreIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MreIn,
	o => \MreIn~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\MweIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MweIn,
	o => \MweIn~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\replaceStatusIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_replaceStatusIn,
	o => \replaceStatusIn~input_o\);

-- Location: LCCOMB_X8_Y52_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s4~q\ & (!\replaceStatusIn~input_o\)) # (!\state.s4~q\ & (((!\unit1|hit~q\ & \state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \replaceStatusIn~input_o\,
	datab => \unit1|hit~q\,
	datac => \state.s4~q\,
	datad => \state.s1~q\,
	combout => \Selector6~0_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X8_Y52_N3
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X8_Y52_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\replaceStatusIn~input_o\ & \state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \replaceStatusIn~input_o\,
	datad => \state.s4~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X8_Y52_N17
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X2_Y52_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\read_tag~q\ & !\state.s5~q\)) # (!\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datac => \read_tag~q\,
	datad => \state.s5~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X2_Y52_N31
read_tag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_tag~q\);

-- Location: LCCOMB_X2_Y52_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s5~q\) # ((\state.s0~q\ & \write_tag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datac => \write_tag~q\,
	datad => \state.s5~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y52_N29
write_tag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_tag~q\);

-- Location: LCCOMB_X2_Y52_N14
\unit1|hit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|hit~1_combout\ = (\read_tag~q\ & !\write_tag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \read_tag~q\,
	datad => \write_tag~q\,
	combout => \unit1|hit~1_combout\);

-- Location: IOIBUF_X0_Y55_N22
\addressIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(4),
	o => \addressIN[4]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\addressIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(9),
	o => \addressIN[9]~input_o\);

-- Location: LCCOMB_X1_Y55_N0
\unit1|memory[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][4]~feeder_combout\ = \addressIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[9]~input_o\,
	combout => \unit1|memory[2][4]~feeder_combout\);

-- Location: IOIBUF_X0_Y49_N8
\addressIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(3),
	o => \addressIN[3]~input_o\);

-- Location: LCCOMB_X2_Y52_N4
\unit1|write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|write~0_combout\ = (!\read_tag~q\ & \write_tag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \read_tag~q\,
	datad => \write_tag~q\,
	combout => \unit1|write~0_combout\);

-- Location: IOIBUF_X0_Y54_N8
\addressIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(2),
	o => \addressIN[2]~input_o\);

-- Location: LCCOMB_X2_Y52_N26
\unit1|memory[2][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][6]~0_combout\ = (\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & (\unit1|write~0_combout\ & !\addressIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit1|write~0_combout\,
	datad => \addressIN[2]~input_o\,
	combout => \unit1|memory[2][6]~0_combout\);

-- Location: FF_X1_Y55_N1
\unit1|memory[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][4]~q\);

-- Location: LCCOMB_X2_Y55_N22
\unit1|memory[3][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[3][6]~3_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit1|write~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit1|write~0_combout\,
	combout => \unit1|memory[3][6]~3_combout\);

-- Location: FF_X2_Y55_N7
\unit1|memory[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][4]~q\);

-- Location: LCCOMB_X2_Y55_N4
\unit1|memory[0][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[0][6]~2_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit1|write~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit1|write~0_combout\,
	combout => \unit1|memory[0][6]~2_combout\);

-- Location: FF_X2_Y55_N25
\unit1|memory[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][4]~q\);

-- Location: LCCOMB_X1_Y55_N22
\unit1|memory[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][4]~feeder_combout\ = \addressIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[9]~input_o\,
	combout => \unit1|memory[1][4]~feeder_combout\);

-- Location: LCCOMB_X1_Y55_N28
\unit1|memory[1][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][6]~1_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (!\addressIN[3]~input_o\ & \unit1|write~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit1|write~0_combout\,
	combout => \unit1|memory[1][6]~1_combout\);

-- Location: FF_X1_Y55_N23
\unit1|memory[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][4]~q\);

-- Location: LCCOMB_X2_Y55_N24
\unit1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux2~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][4]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][4]~q\,
	datad => \unit1|memory[1][4]~q\,
	combout => \unit1|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y55_N6
\unit1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux2~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux2~0_combout\ & ((\unit1|memory[3][4]~q\))) # (!\unit1|Mux2~0_combout\ & (\unit1|memory[2][4]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|memory[2][4]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[3][4]~q\,
	datad => \unit1|Mux2~0_combout\,
	combout => \unit1|Mux2~1_combout\);

-- Location: LCCOMB_X3_Y56_N20
\unit1|memory[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[5][4]~feeder_combout\ = \addressIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[9]~input_o\,
	combout => \unit1|memory[5][4]~feeder_combout\);

-- Location: LCCOMB_X3_Y56_N14
\unit1|memory[5][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[5][6]~4_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & \unit1|write~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit1|write~0_combout\,
	combout => \unit1|memory[5][6]~4_combout\);

-- Location: FF_X3_Y56_N21
\unit1|memory[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[5][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][4]~q\);

-- Location: LCCOMB_X2_Y52_N24
\unit1|memory[7][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[7][6]~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & (\unit1|write~0_combout\ & \addressIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit1|write~0_combout\,
	datad => \addressIN[2]~input_o\,
	combout => \unit1|memory[7][6]~7_combout\);

-- Location: FF_X3_Y55_N11
\unit1|memory[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][4]~q\);

-- Location: LCCOMB_X4_Y55_N6
\unit1|memory[4][6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[4][6]~6_combout\ = (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & (\unit1|write~0_combout\ & !\addressIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit1|write~0_combout\,
	datad => \addressIN[2]~input_o\,
	combout => \unit1|memory[4][6]~6_combout\);

-- Location: FF_X4_Y55_N31
\unit1|memory[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][4]~q\);

-- Location: LCCOMB_X4_Y55_N0
\unit1|memory[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][4]~feeder_combout\ = \addressIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[9]~input_o\,
	combout => \unit1|memory[6][4]~feeder_combout\);

-- Location: LCCOMB_X4_Y55_N20
\unit1|memory[6][6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][6]~5_combout\ = (\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & (\unit1|write~0_combout\ & !\addressIN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit1|write~0_combout\,
	datad => \addressIN[2]~input_o\,
	combout => \unit1|memory[6][6]~5_combout\);

-- Location: FF_X4_Y55_N1
\unit1|memory[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][4]~q\);

-- Location: LCCOMB_X4_Y55_N30
\unit1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux2~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][4]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][4]~q\,
	datad => \unit1|memory[6][4]~q\,
	combout => \unit1|Mux2~2_combout\);

-- Location: LCCOMB_X3_Y55_N10
\unit1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux2~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux2~2_combout\ & ((\unit1|memory[7][4]~q\))) # (!\unit1|Mux2~2_combout\ & (\unit1|memory[5][4]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[5][4]~q\,
	datac => \unit1|memory[7][4]~q\,
	datad => \unit1|Mux2~2_combout\,
	combout => \unit1|Mux2~3_combout\);

-- Location: LCCOMB_X3_Y55_N16
\unit1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~4_combout\ = \addressIN[9]~input_o\ $ (((\addressIN[4]~input_o\ & ((\unit1|Mux2~3_combout\))) # (!\addressIN[4]~input_o\ & (\unit1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \unit1|Mux2~1_combout\,
	datac => \addressIN[9]~input_o\,
	datad => \unit1|Mux2~3_combout\,
	combout => \unit1|Equal0~4_combout\);

-- Location: IOIBUF_X0_Y61_N22
\addressIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(11),
	o => \addressIN[11]~input_o\);

-- Location: FF_X4_Y55_N11
\unit1|memory[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][6]~q\);

-- Location: LCCOMB_X4_Y55_N8
\unit1|memory[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][6]~feeder_combout\ = \addressIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[11]~input_o\,
	combout => \unit1|memory[6][6]~feeder_combout\);

-- Location: FF_X4_Y55_N9
\unit1|memory[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][6]~q\);

-- Location: LCCOMB_X4_Y55_N10
\unit1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux0~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][6]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][6]~q\,
	datad => \unit1|memory[6][6]~q\,
	combout => \unit1|Mux0~2_combout\);

-- Location: FF_X3_Y55_N23
\unit1|memory[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][6]~q\);

-- Location: FF_X3_Y56_N17
\unit1|memory[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][6]~q\);

-- Location: LCCOMB_X3_Y55_N22
\unit1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux0~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux0~2_combout\ & (\unit1|memory[7][6]~q\)) # (!\unit1|Mux0~2_combout\ & ((\unit1|memory[5][6]~q\))))) # (!\addressIN[2]~input_o\ & (\unit1|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|Mux0~2_combout\,
	datac => \unit1|memory[7][6]~q\,
	datad => \unit1|memory[5][6]~q\,
	combout => \unit1|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y55_N12
\unit1|memory[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][6]~feeder_combout\ = \addressIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[11]~input_o\,
	combout => \unit1|memory[2][6]~feeder_combout\);

-- Location: FF_X1_Y55_N13
\unit1|memory[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][6]~q\);

-- Location: LCCOMB_X1_Y55_N6
\unit1|memory[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][6]~feeder_combout\ = \addressIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[11]~input_o\,
	combout => \unit1|memory[1][6]~feeder_combout\);

-- Location: FF_X1_Y55_N7
\unit1|memory[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][6]~q\);

-- Location: FF_X2_Y55_N9
\unit1|memory[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][6]~q\);

-- Location: LCCOMB_X2_Y55_N8
\unit1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux0~0_combout\ = (\addressIN[2]~input_o\ & ((\unit1|memory[1][6]~q\) # ((\addressIN[3]~input_o\)))) # (!\addressIN[2]~input_o\ & (((\unit1|memory[0][6]~q\ & !\addressIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[1][6]~q\,
	datac => \unit1|memory[0][6]~q\,
	datad => \addressIN[3]~input_o\,
	combout => \unit1|Mux0~0_combout\);

-- Location: FF_X2_Y55_N3
\unit1|memory[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][6]~q\);

-- Location: LCCOMB_X2_Y55_N2
\unit1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux0~1_combout\ = (\unit1|Mux0~0_combout\ & (((\unit1|memory[3][6]~q\) # (!\addressIN[3]~input_o\)))) # (!\unit1|Mux0~0_combout\ & (\unit1|memory[2][6]~q\ & ((\addressIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|memory[2][6]~q\,
	datab => \unit1|Mux0~0_combout\,
	datac => \unit1|memory[3][6]~q\,
	datad => \addressIN[3]~input_o\,
	combout => \unit1|Mux0~1_combout\);

-- Location: LCCOMB_X3_Y55_N8
\unit1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~6_combout\ = \addressIN[11]~input_o\ $ (((\addressIN[4]~input_o\ & (\unit1|Mux0~3_combout\)) # (!\addressIN[4]~input_o\ & ((\unit1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[11]~input_o\,
	datac => \unit1|Mux0~3_combout\,
	datad => \unit1|Mux0~1_combout\,
	combout => \unit1|Equal0~6_combout\);

-- Location: IOIBUF_X0_Y57_N22
\addressIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(10),
	o => \addressIN[10]~input_o\);

-- Location: FF_X3_Y56_N23
\unit1|memory[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][5]~q\);

-- Location: FF_X3_Y55_N31
\unit1|memory[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][5]~q\);

-- Location: FF_X4_Y55_N27
\unit1|memory[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][5]~q\);

-- Location: LCCOMB_X4_Y55_N24
\unit1|memory[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][5]~feeder_combout\ = \addressIN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[10]~input_o\,
	combout => \unit1|memory[6][5]~feeder_combout\);

-- Location: FF_X4_Y55_N25
\unit1|memory[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][5]~q\);

-- Location: LCCOMB_X4_Y55_N26
\unit1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux1~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][5]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][5]~q\,
	datad => \unit1|memory[6][5]~q\,
	combout => \unit1|Mux1~2_combout\);

-- Location: LCCOMB_X3_Y55_N30
\unit1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux1~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux1~2_combout\ & ((\unit1|memory[7][5]~q\))) # (!\unit1|Mux1~2_combout\ & (\unit1|memory[5][5]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[5][5]~q\,
	datac => \unit1|memory[7][5]~q\,
	datad => \unit1|Mux1~2_combout\,
	combout => \unit1|Mux1~3_combout\);

-- Location: FF_X1_Y55_N9
\unit1|memory[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][5]~q\);

-- Location: FF_X2_Y55_N31
\unit1|memory[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][5]~q\);

-- Location: FF_X2_Y55_N21
\unit1|memory[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][5]~q\);

-- Location: FF_X1_Y55_N19
\unit1|memory[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][5]~q\);

-- Location: LCCOMB_X2_Y55_N20
\unit1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux1~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][5]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][5]~q\,
	datad => \unit1|memory[1][5]~q\,
	combout => \unit1|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y55_N30
\unit1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux1~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux1~0_combout\ & ((\unit1|memory[3][5]~q\))) # (!\unit1|Mux1~0_combout\ & (\unit1|memory[2][5]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|memory[2][5]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[3][5]~q\,
	datad => \unit1|Mux1~0_combout\,
	combout => \unit1|Mux1~1_combout\);

-- Location: LCCOMB_X3_Y55_N0
\unit1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~5_combout\ = \addressIN[10]~input_o\ $ (((\addressIN[4]~input_o\ & (\unit1|Mux1~3_combout\)) # (!\addressIN[4]~input_o\ & ((\unit1|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[10]~input_o\,
	datac => \unit1|Mux1~3_combout\,
	datad => \unit1|Mux1~1_combout\,
	combout => \unit1|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y55_N18
\unit1|hit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|hit~2_combout\ = (\unit1|hit~1_combout\ & (!\unit1|Equal0~4_combout\ & (!\unit1|Equal0~6_combout\ & !\unit1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|hit~1_combout\,
	datab => \unit1|Equal0~4_combout\,
	datac => \unit1|Equal0~6_combout\,
	datad => \unit1|Equal0~5_combout\,
	combout => \unit1|hit~2_combout\);

-- Location: IOIBUF_X0_Y57_N15
\addressIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(5),
	o => \addressIN[5]~input_o\);

-- Location: FF_X3_Y56_N27
\unit1|memory[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][0]~q\);

-- Location: FF_X3_Y55_N27
\unit1|memory[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][0]~q\);

-- Location: FF_X4_Y55_N19
\unit1|memory[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][0]~q\);

-- Location: LCCOMB_X4_Y55_N28
\unit1|memory[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][0]~feeder_combout\ = \addressIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[5]~input_o\,
	combout => \unit1|memory[6][0]~feeder_combout\);

-- Location: FF_X4_Y55_N29
\unit1|memory[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][0]~q\);

-- Location: LCCOMB_X4_Y55_N18
\unit1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux6~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][0]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][0]~q\,
	datad => \unit1|memory[6][0]~q\,
	combout => \unit1|Mux6~2_combout\);

-- Location: LCCOMB_X3_Y55_N26
\unit1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux6~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux6~2_combout\ & ((\unit1|memory[7][0]~q\))) # (!\unit1|Mux6~2_combout\ & (\unit1|memory[5][0]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[5][0]~q\,
	datac => \unit1|memory[7][0]~q\,
	datad => \unit1|Mux6~2_combout\,
	combout => \unit1|Mux6~3_combout\);

-- Location: FF_X1_Y55_N25
\unit1|memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][0]~q\);

-- Location: FF_X2_Y55_N15
\unit1|memory[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][0]~q\);

-- Location: FF_X2_Y55_N29
\unit1|memory[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][0]~q\);

-- Location: FF_X1_Y55_N15
\unit1|memory[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][0]~q\);

-- Location: LCCOMB_X2_Y55_N28
\unit1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux6~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][0]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][0]~q\,
	datad => \unit1|memory[1][0]~q\,
	combout => \unit1|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y55_N14
\unit1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux6~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux6~0_combout\ & ((\unit1|memory[3][0]~q\))) # (!\unit1|Mux6~0_combout\ & (\unit1|memory[2][0]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit1|memory[2][0]~q\,
	datac => \unit1|memory[3][0]~q\,
	datad => \unit1|Mux6~0_combout\,
	combout => \unit1|Mux6~1_combout\);

-- Location: LCCOMB_X3_Y55_N12
\unit1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~0_combout\ = \addressIN[5]~input_o\ $ (((\addressIN[4]~input_o\ & (\unit1|Mux6~3_combout\)) # (!\addressIN[4]~input_o\ & ((\unit1|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[5]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit1|Mux6~3_combout\,
	datad => \unit1|Mux6~1_combout\,
	combout => \unit1|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y58_N15
\addressIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(6),
	o => \addressIN[6]~input_o\);

-- Location: LCCOMB_X1_Y55_N4
\unit1|memory[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][1]~feeder_combout\ = \addressIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[6]~input_o\,
	combout => \unit1|memory[2][1]~feeder_combout\);

-- Location: FF_X1_Y55_N5
\unit1|memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][1]~q\);

-- Location: FF_X2_Y55_N27
\unit1|memory[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][1]~q\);

-- Location: FF_X2_Y55_N13
\unit1|memory[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][1]~q\);

-- Location: LCCOMB_X1_Y55_N2
\unit1|memory[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][1]~feeder_combout\ = \addressIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[6]~input_o\,
	combout => \unit1|memory[1][1]~feeder_combout\);

-- Location: FF_X1_Y55_N3
\unit1|memory[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][1]~q\);

-- Location: LCCOMB_X2_Y55_N12
\unit1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux5~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][1]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][1]~q\,
	datad => \unit1|memory[1][1]~q\,
	combout => \unit1|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y55_N26
\unit1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux5~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux5~0_combout\ & ((\unit1|memory[3][1]~q\))) # (!\unit1|Mux5~0_combout\ & (\unit1|memory[2][1]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit1|memory[2][1]~q\,
	datac => \unit1|memory[3][1]~q\,
	datad => \unit1|Mux5~0_combout\,
	combout => \unit1|Mux5~1_combout\);

-- Location: LCCOMB_X4_Y55_N4
\unit1|memory[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][1]~feeder_combout\ = \addressIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[6]~input_o\,
	combout => \unit1|memory[6][1]~feeder_combout\);

-- Location: FF_X4_Y55_N5
\unit1|memory[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][1]~q\);

-- Location: FF_X4_Y55_N23
\unit1|memory[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][1]~q\);

-- Location: LCCOMB_X4_Y55_N22
\unit1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux5~2_combout\ = (\addressIN[3]~input_o\ & ((\unit1|memory[6][1]~q\) # ((\addressIN[2]~input_o\)))) # (!\addressIN[3]~input_o\ & (((\unit1|memory[4][1]~q\ & !\addressIN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit1|memory[6][1]~q\,
	datac => \unit1|memory[4][1]~q\,
	datad => \addressIN[2]~input_o\,
	combout => \unit1|Mux5~2_combout\);

-- Location: FF_X3_Y55_N7
\unit1|memory[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][1]~q\);

-- Location: LCCOMB_X3_Y56_N4
\unit1|memory[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[5][1]~feeder_combout\ = \addressIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[6]~input_o\,
	combout => \unit1|memory[5][1]~feeder_combout\);

-- Location: FF_X3_Y56_N5
\unit1|memory[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][1]~q\);

-- Location: LCCOMB_X3_Y55_N6
\unit1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux5~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux5~2_combout\ & (\unit1|memory[7][1]~q\)) # (!\unit1|Mux5~2_combout\ & ((\unit1|memory[5][1]~q\))))) # (!\addressIN[2]~input_o\ & (\unit1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|Mux5~2_combout\,
	datac => \unit1|memory[7][1]~q\,
	datad => \unit1|memory[5][1]~q\,
	combout => \unit1|Mux5~3_combout\);

-- Location: LCCOMB_X3_Y55_N24
\unit1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~1_combout\ = \addressIN[6]~input_o\ $ (((\addressIN[4]~input_o\ & ((\unit1|Mux5~3_combout\))) # (!\addressIN[4]~input_o\ & (\unit1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[6]~input_o\,
	datac => \unit1|Mux5~1_combout\,
	datad => \unit1|Mux5~3_combout\,
	combout => \unit1|Equal0~1_combout\);

-- Location: IOIBUF_X0_Y55_N8
\addressIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(7),
	o => \addressIN[7]~input_o\);

-- Location: LCCOMB_X3_Y56_N30
\unit1|memory[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[5][2]~feeder_combout\ = \addressIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[7]~input_o\,
	combout => \unit1|memory[5][2]~feeder_combout\);

-- Location: FF_X3_Y56_N31
\unit1|memory[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][2]~q\);

-- Location: FF_X3_Y55_N15
\unit1|memory[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][2]~q\);

-- Location: FF_X4_Y55_N3
\unit1|memory[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][2]~q\);

-- Location: FF_X4_Y55_N17
\unit1|memory[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][2]~q\);

-- Location: LCCOMB_X4_Y55_N2
\unit1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux4~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][2]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][2]~q\,
	datad => \unit1|memory[6][2]~q\,
	combout => \unit1|Mux4~2_combout\);

-- Location: LCCOMB_X3_Y55_N14
\unit1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux4~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux4~2_combout\ & ((\unit1|memory[7][2]~q\))) # (!\unit1|Mux4~2_combout\ & (\unit1|memory[5][2]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[5][2]~q\,
	datac => \unit1|memory[7][2]~q\,
	datad => \unit1|Mux4~2_combout\,
	combout => \unit1|Mux4~3_combout\);

-- Location: LCCOMB_X1_Y55_N16
\unit1|memory[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][2]~feeder_combout\ = \addressIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[7]~input_o\,
	combout => \unit1|memory[2][2]~feeder_combout\);

-- Location: FF_X1_Y55_N17
\unit1|memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][2]~q\);

-- Location: FF_X2_Y55_N19
\unit1|memory[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][2]~q\);

-- Location: FF_X2_Y55_N17
\unit1|memory[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][2]~q\);

-- Location: LCCOMB_X1_Y55_N10
\unit1|memory[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][2]~feeder_combout\ = \addressIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[7]~input_o\,
	combout => \unit1|memory[1][2]~feeder_combout\);

-- Location: FF_X1_Y55_N11
\unit1|memory[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][2]~q\);

-- Location: LCCOMB_X2_Y55_N16
\unit1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux4~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][2]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][2]~q\,
	datad => \unit1|memory[1][2]~q\,
	combout => \unit1|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y55_N18
\unit1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux4~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux4~0_combout\ & ((\unit1|memory[3][2]~q\))) # (!\unit1|Mux4~0_combout\ & (\unit1|memory[2][2]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|memory[2][2]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[3][2]~q\,
	datad => \unit1|Mux4~0_combout\,
	combout => \unit1|Mux4~1_combout\);

-- Location: LCCOMB_X3_Y55_N4
\unit1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~2_combout\ = \addressIN[7]~input_o\ $ (((\addressIN[4]~input_o\ & (\unit1|Mux4~3_combout\)) # (!\addressIN[4]~input_o\ & ((\unit1|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[7]~input_o\,
	datac => \unit1|Mux4~3_combout\,
	datad => \unit1|Mux4~1_combout\,
	combout => \unit1|Equal0~2_combout\);

-- Location: IOIBUF_X0_Y55_N15
\addressIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(8),
	o => \addressIN[8]~input_o\);

-- Location: LCCOMB_X1_Y55_N20
\unit1|memory[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[2][3]~feeder_combout\ = \addressIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[8]~input_o\,
	combout => \unit1|memory[2][3]~feeder_combout\);

-- Location: FF_X1_Y55_N21
\unit1|memory[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[2][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[2][3]~q\);

-- Location: FF_X2_Y55_N11
\unit1|memory[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[3][3]~q\);

-- Location: FF_X2_Y55_N1
\unit1|memory[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[0][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[0][3]~q\);

-- Location: LCCOMB_X1_Y55_N30
\unit1|memory[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[1][3]~feeder_combout\ = \addressIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[8]~input_o\,
	combout => \unit1|memory[1][3]~feeder_combout\);

-- Location: FF_X1_Y55_N31
\unit1|memory[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[1][6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[1][3]~q\);

-- Location: LCCOMB_X2_Y55_N0
\unit1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux3~0_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit1|memory[1][3]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit1|memory[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit1|memory[0][3]~q\,
	datad => \unit1|memory[1][3]~q\,
	combout => \unit1|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y55_N10
\unit1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux3~1_combout\ = (\addressIN[3]~input_o\ & ((\unit1|Mux3~0_combout\ & ((\unit1|memory[3][3]~q\))) # (!\unit1|Mux3~0_combout\ & (\unit1|memory[2][3]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit1|memory[2][3]~q\,
	datac => \unit1|memory[3][3]~q\,
	datad => \unit1|Mux3~0_combout\,
	combout => \unit1|Mux3~1_combout\);

-- Location: LCCOMB_X3_Y54_N28
\unit1|memory[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[5][3]~feeder_combout\ = \addressIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[8]~input_o\,
	combout => \unit1|memory[5][3]~feeder_combout\);

-- Location: FF_X3_Y54_N29
\unit1|memory[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[5][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[5][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[5][3]~q\);

-- Location: FF_X3_Y54_N3
\unit1|memory[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[7][6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[7][3]~q\);

-- Location: FF_X4_Y55_N15
\unit1|memory[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit1|memory[4][6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[4][3]~q\);

-- Location: LCCOMB_X4_Y55_N12
\unit1|memory[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|memory[6][3]~feeder_combout\ = \addressIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[8]~input_o\,
	combout => \unit1|memory[6][3]~feeder_combout\);

-- Location: FF_X4_Y55_N13
\unit1|memory[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|memory[6][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit1|memory[6][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|memory[6][3]~q\);

-- Location: LCCOMB_X4_Y55_N14
\unit1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux3~2_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit1|memory[6][3]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit1|memory[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit1|memory[4][3]~q\,
	datad => \unit1|memory[6][3]~q\,
	combout => \unit1|Mux3~2_combout\);

-- Location: LCCOMB_X3_Y54_N2
\unit1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Mux3~3_combout\ = (\addressIN[2]~input_o\ & ((\unit1|Mux3~2_combout\ & ((\unit1|memory[7][3]~q\))) # (!\unit1|Mux3~2_combout\ & (\unit1|memory[5][3]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit1|memory[5][3]~q\,
	datac => \unit1|memory[7][3]~q\,
	datad => \unit1|Mux3~2_combout\,
	combout => \unit1|Mux3~3_combout\);

-- Location: LCCOMB_X3_Y55_N2
\unit1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|Equal0~3_combout\ = \addressIN[8]~input_o\ $ (((\addressIN[4]~input_o\ & ((\unit1|Mux3~3_combout\))) # (!\addressIN[4]~input_o\ & (\unit1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Mux3~1_combout\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[8]~input_o\,
	datad => \unit1|Mux3~3_combout\,
	combout => \unit1|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y55_N20
\unit1|hit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|hit~0_combout\ = (!\unit1|Equal0~0_combout\ & (!\unit1|Equal0~1_combout\ & (!\unit1|Equal0~2_combout\ & !\unit1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|Equal0~0_combout\,
	datab => \unit1|Equal0~1_combout\,
	datac => \unit1|Equal0~2_combout\,
	datad => \unit1|Equal0~3_combout\,
	combout => \unit1|hit~0_combout\);

-- Location: LCCOMB_X3_Y55_N28
\unit1|hit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit1|hit~3_combout\ = (\unit1|hit~1_combout\ & (\unit1|hit~2_combout\ & ((\unit1|hit~0_combout\)))) # (!\unit1|hit~1_combout\ & ((\unit1|hit~q\) # ((\unit1|hit~2_combout\ & \unit1|hit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit1|hit~1_combout\,
	datab => \unit1|hit~2_combout\,
	datac => \unit1|hit~q\,
	datad => \unit1|hit~0_combout\,
	combout => \unit1|hit~3_combout\);

-- Location: FF_X3_Y55_N29
\unit1|hit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit1|hit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit1|hit~q\);

-- Location: LCCOMB_X7_Y52_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s1~q\ & (!\MreIn~input_o\ & (\MweIn~input_o\ & \unit1|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \MreIn~input_o\,
	datac => \MweIn~input_o\,
	datad => \unit1|hit~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X7_Y52_N3
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X7_Y52_N20
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s1~q\ & (\MreIn~input_o\ & (!\MweIn~input_o\ & \unit1|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \MreIn~input_o\,
	datac => \MweIn~input_o\,
	datad => \unit1|hit~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X7_Y52_N21
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X7_Y52_N28
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (!\state.s3~q\ & !\state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s3~q\,
	datad => \state.s2~q\,
	combout => \state~24_combout\);

-- Location: FF_X7_Y52_N29
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X7_Y52_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s1~q\ & (\unit1|hit~q\ & (\MweIn~input_o\ $ (!\MreIn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MweIn~input_o\,
	datab => \MreIn~input_o\,
	datac => \state.s1~q\,
	datad => \unit1|hit~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X7_Y52_N22
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # (!\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s0~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X7_Y52_N23
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X2_Y52_N16
\addressOUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[0]~0_combout\ = (!\reset~input_o\ & (\state.s1~q\ & !\unit1|hit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.s1~q\,
	datad => \unit1|hit~q\,
	combout => \addressOUT[0]~0_combout\);

-- Location: FF_X2_Y52_N17
\addressOUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[0]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[0]~reg0_q\);

-- Location: IOIBUF_X0_Y46_N15
\addressIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addressIN(1),
	o => \addressIN[1]~input_o\);

-- Location: FF_X1_Y52_N13
\addressOUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[1]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[1]~reg0_q\);

-- Location: LCCOMB_X1_Y52_N18
\addressOUT[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[2]~reg0feeder_combout\ = \addressIN[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[2]~input_o\,
	combout => \addressOUT[2]~reg0feeder_combout\);

-- Location: FF_X1_Y52_N19
\addressOUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addressOUT[2]~reg0feeder_combout\,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[2]~reg0_q\);

-- Location: LCCOMB_X1_Y52_N16
\addressOUT[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[3]~reg0feeder_combout\ = \addressIN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[3]~input_o\,
	combout => \addressOUT[3]~reg0feeder_combout\);

-- Location: FF_X1_Y52_N17
\addressOUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addressOUT[3]~reg0feeder_combout\,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[3]~reg0_q\);

-- Location: FF_X1_Y52_N15
\addressOUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[4]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[4]~reg0_q\);

-- Location: FF_X3_Y56_N9
\addressOUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[5]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[5]~reg0_q\);

-- Location: LCCOMB_X3_Y56_N10
\addressOUT[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[6]~reg0feeder_combout\ = \addressIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[6]~input_o\,
	combout => \addressOUT[6]~reg0feeder_combout\);

-- Location: FF_X3_Y56_N11
\addressOUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addressOUT[6]~reg0feeder_combout\,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[6]~reg0_q\);

-- Location: LCCOMB_X3_Y56_N28
\addressOUT[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[7]~reg0feeder_combout\ = \addressIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[7]~input_o\,
	combout => \addressOUT[7]~reg0feeder_combout\);

-- Location: FF_X3_Y56_N29
\addressOUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addressOUT[7]~reg0feeder_combout\,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[7]~reg0_q\);

-- Location: FF_X3_Y56_N3
\addressOUT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[8]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[8]~reg0_q\);

-- Location: LCCOMB_X3_Y56_N24
\addressOUT[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \addressOUT[9]~reg0feeder_combout\ = \addressIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressIN[9]~input_o\,
	combout => \addressOUT[9]~reg0feeder_combout\);

-- Location: FF_X3_Y56_N25
\addressOUT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addressOUT[9]~reg0feeder_combout\,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[9]~reg0_q\);

-- Location: FF_X3_Y56_N19
\addressOUT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[10]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[10]~reg0_q\);

-- Location: FF_X3_Y56_N13
\addressOUT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \addressIN[11]~input_o\,
	sload => VCC,
	ena => \addressOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \addressOUT[11]~reg0_q\);

-- Location: IOIBUF_X0_Y59_N22
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X3_Y52_N30
\tempDataIn[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \tempDataIn[0]~feeder_combout\);

-- Location: LCCOMB_X7_Y52_N8
\tempDataIn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[0]~0_combout\ = (!\reset~input_o\ & \state.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.s3~q\,
	combout => \tempDataIn[0]~0_combout\);

-- Location: FF_X3_Y52_N31
\tempDataIn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[0]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(0));

-- Location: LCCOMB_X10_Y47_N0
\unit2|memory[5][3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[5][3][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N12
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\state.s5~q\ & (\MreIn~input_o\ & !\MweIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \MreIn~input_o\,
	datad => \MweIn~input_o\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X9_Y52_N2
\read_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_data~0_combout\ = (\state.s1~q\ & ((\MweIn~input_o\ $ (!\MreIn~input_o\)) # (!\unit1|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \MweIn~input_o\,
	datac => \MreIn~input_o\,
	datad => \unit1|hit~q\,
	combout => \read_data~0_combout\);

-- Location: LCCOMB_X9_Y52_N14
\read_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_data~1_combout\ = (!\reset~input_o\ & (!\read_data~0_combout\ & ((\state.s1~q\) # (\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state.s1~q\,
	datac => \state.s5~q\,
	datad => \read_data~0_combout\,
	combout => \read_data~1_combout\);

-- Location: FF_X9_Y52_N13
read_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \read_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data~q\);

-- Location: LCCOMB_X9_Y50_N8
\unit2|memory[7][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][3][0]~0_combout\ = (\addressIN[0]~input_o\ & \addressIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[0]~input_o\,
	datad => \addressIN[1]~input_o\,
	combout => \unit2|memory[7][3][0]~0_combout\);

-- Location: LCCOMB_X9_Y52_N4
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\state.s5~q\ & ((\MweIn~input_o\) # (!\MreIn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \MreIn~input_o\,
	datad => \MweIn~input_o\,
	combout => \Selector16~0_combout\);

-- Location: FF_X9_Y52_N5
write_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \read_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_data~q\);

-- Location: FF_X9_Y52_N15
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s5~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: FF_X9_Y52_N23
\state.s6b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s6~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6b~q\);

-- Location: LCCOMB_X9_Y52_N22
\state.s7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s7~0_combout\ = (\state.s6b~q\) # (\state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s6b~q\,
	datad => \state.s7~q\,
	combout => \state.s7~0_combout\);

-- Location: FF_X9_Y52_N9
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s7~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LCCOMB_X9_Y52_N8
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\data_enable~q\ & ((\state.s1~q\) # ((\state.s7~q\) # (\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_enable~q\,
	datab => \state.s1~q\,
	datac => \state.s7~q\,
	datad => \state.s0~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X9_Y52_N26
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((\state.s1~q\ & \unit1|hit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s1~q\,
	datac => \Selector12~0_combout\,
	datad => \unit1|hit~q\,
	combout => \Selector12~1_combout\);

-- Location: FF_X9_Y52_N27
data_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_enable~q\);

-- Location: LCCOMB_X10_Y51_N10
\unit2|memory[7][3][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][3][0]~1_combout\ = (!\read_data~q\ & (\unit2|memory[7][3][0]~0_combout\ & (\write_data~q\ & \data_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_data~q\,
	datab => \unit2|memory[7][3][0]~0_combout\,
	datac => \write_data~q\,
	datad => \data_enable~q\,
	combout => \unit2|memory[7][3][0]~1_combout\);

-- Location: LCCOMB_X11_Y51_N30
\unit2|memory[5][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][0]~0_combout\ = (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[2]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[5][3][0]~0_combout\);

-- Location: FF_X10_Y47_N1
\unit2|memory[5][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][0]~q\);

-- Location: LCCOMB_X10_Y52_N0
\unit2|memory[7][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][0]~0_combout\ = (\addressIN[0]~input_o\ & !\addressIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[0]~input_o\,
	datad => \addressIN[1]~input_o\,
	combout => \unit2|memory[7][1][0]~0_combout\);

-- Location: LCCOMB_X9_Y52_N6
\unit2|memory[7][1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][0]~1_combout\ = (\unit2|memory[7][1][0]~0_combout\ & (\write_data~q\ & (!\read_data~q\ & \data_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][1][0]~0_combout\,
	datab => \write_data~q\,
	datac => \read_data~q\,
	datad => \data_enable~q\,
	combout => \unit2|memory[7][1][0]~1_combout\);

-- Location: LCCOMB_X8_Y52_N4
\unit2|memory[5][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][0]~0_combout\ = (\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[5][1][0]~0_combout\);

-- Location: FF_X9_Y49_N9
\unit2|memory[5][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][0]~q\);

-- Location: LCCOMB_X10_Y49_N16
\unit2|memory[7][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][0][0]~0_combout\ = (!\addressIN[0]~input_o\ & !\addressIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[0]~input_o\,
	datad => \addressIN[1]~input_o\,
	combout => \unit2|memory[7][0][0]~0_combout\);

-- Location: LCCOMB_X10_Y49_N18
\unit2|memory[7][0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][0][0]~1_combout\ = (\unit2|memory[7][0][0]~0_combout\ & (\write_data~q\ & (!\read_data~q\ & \data_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][0][0]~0_combout\,
	datab => \write_data~q\,
	datac => \read_data~q\,
	datad => \data_enable~q\,
	combout => \unit2|memory[7][0][0]~1_combout\);

-- Location: LCCOMB_X10_Y49_N8
\unit2|memory[5][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[5][0][0]~0_combout\);

-- Location: FF_X10_Y49_N25
\unit2|memory[5][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][0]~q\);

-- Location: LCCOMB_X9_Y49_N18
\unit2|memory[5][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[5][2][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N6
\unit2|memory[7][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][0]~0_combout\ = (!\addressIN[0]~input_o\ & \addressIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[0]~input_o\,
	datac => \addressIN[1]~input_o\,
	combout => \unit2|memory[7][2][0]~0_combout\);

-- Location: LCCOMB_X9_Y52_N18
\unit2|memory[7][2][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][0]~1_combout\ = (\unit2|memory[7][2][0]~0_combout\ & (\write_data~q\ & (!\read_data~q\ & \data_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][0]~0_combout\,
	datab => \write_data~q\,
	datac => \read_data~q\,
	datad => \data_enable~q\,
	combout => \unit2|memory[7][2][0]~1_combout\);

-- Location: LCCOMB_X8_Y52_N28
\unit2|memory[5][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][0]~0_combout\ = (\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[5][2][0]~0_combout\);

-- Location: FF_X9_Y49_N19
\unit2|memory[5][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][0]~q\);

-- Location: LCCOMB_X10_Y49_N24
\unit2|Mux143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~0_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[5][2][0]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[5][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[5][0][0]~q\,
	datad => \unit2|memory[5][2][0]~q\,
	combout => \unit2|Mux143~0_combout\);

-- Location: LCCOMB_X9_Y49_N8
\unit2|Mux143~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~1_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux143~0_combout\ & (\unit2|memory[5][3][0]~q\)) # (!\unit2|Mux143~0_combout\ & ((\unit2|memory[5][1][0]~q\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux143~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[5][3][0]~q\,
	datac => \unit2|memory[5][1][0]~q\,
	datad => \unit2|Mux143~0_combout\,
	combout => \unit2|Mux143~1_combout\);

-- Location: LCCOMB_X10_Y49_N30
\unit2|memory[7][0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][0][0]~2_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[7][0][0]~2_combout\);

-- Location: FF_X12_Y51_N29
\unit2|memory[7][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][0]~q\);

-- Location: LCCOMB_X13_Y51_N24
\unit2|memory[7][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[7][2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N24
\unit2|memory[7][2][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][0]~2_combout\ = (\addressIN[2]~input_o\ & (\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[7][2][0]~2_combout\);

-- Location: FF_X13_Y51_N25
\unit2|memory[7][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][0]~q\);

-- Location: LCCOMB_X12_Y51_N28
\unit2|Mux143~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~7_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[7][2][0]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[7][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[7][0][0]~q\,
	datad => \unit2|memory[7][2][0]~q\,
	combout => \unit2|Mux143~7_combout\);

-- Location: LCCOMB_X10_Y51_N14
\unit2|memory[7][3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][3][0]~2_combout\ = (\addressIN[2]~input_o\ & (\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[7][3][0]~2_combout\);

-- Location: FF_X12_Y51_N23
\unit2|memory[7][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][0]~q\);

-- Location: LCCOMB_X12_Y52_N28
\unit2|memory[7][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(0),
	combout => \unit2|memory[7][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N10
\unit2|memory[7][1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][0]~2_combout\ = (\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[7][1][0]~2_combout\);

-- Location: FF_X12_Y52_N29
\unit2|memory[7][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][0]~q\);

-- Location: LCCOMB_X12_Y51_N22
\unit2|Mux143~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~8_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux143~7_combout\ & (\unit2|memory[7][3][0]~q\)) # (!\unit2|Mux143~7_combout\ & ((\unit2|memory[7][1][0]~q\))))) # (!\addressIN[0]~input_o\ & (\unit2|Mux143~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|Mux143~7_combout\,
	datac => \unit2|memory[7][3][0]~q\,
	datad => \unit2|memory[7][1][0]~q\,
	combout => \unit2|Mux143~8_combout\);

-- Location: LCCOMB_X10_Y48_N20
\unit2|memory[4][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[4][2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N16
\unit2|memory[4][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][2][0]~0_combout\ = (!\addressIN[2]~input_o\ & (\addressIN[4]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[4][2][0]~0_combout\);

-- Location: FF_X10_Y48_N21
\unit2|memory[4][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][0]~q\);

-- Location: LCCOMB_X11_Y51_N24
\unit2|memory[4][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][3][0]~0_combout\ = (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & (!\addressIN[2]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[2]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[4][3][0]~0_combout\);

-- Location: FF_X10_Y48_N23
\unit2|memory[4][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][0]~q\);

-- Location: LCCOMB_X10_Y49_N4
\unit2|memory[4][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][0][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[4][0][0]~0_combout\);

-- Location: FF_X6_Y48_N1
\unit2|memory[4][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][0]~q\);

-- Location: LCCOMB_X5_Y48_N20
\unit2|memory[4][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[4][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N12
\unit2|memory[4][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][0]~0_combout\ = (\addressIN[4]~input_o\ & (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[4][1][0]~0_combout\);

-- Location: FF_X5_Y48_N21
\unit2|memory[4][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][0]~q\);

-- Location: LCCOMB_X6_Y48_N0
\unit2|Mux143~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~4_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[4][1][0]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[4][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[4][0][0]~q\,
	datad => \unit2|memory[4][1][0]~q\,
	combout => \unit2|Mux143~4_combout\);

-- Location: LCCOMB_X10_Y48_N22
\unit2|Mux143~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~5_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux143~4_combout\ & ((\unit2|memory[4][3][0]~q\))) # (!\unit2|Mux143~4_combout\ & (\unit2|memory[4][2][0]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux143~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[4][2][0]~q\,
	datac => \unit2|memory[4][3][0]~q\,
	datad => \unit2|Mux143~4_combout\,
	combout => \unit2|Mux143~5_combout\);

-- Location: LCCOMB_X5_Y49_N0
\unit2|memory[6][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[6][2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N10
\unit2|memory[6][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][0]~0_combout\ = (!\addressIN[2]~input_o\ & (\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[6][2][0]~0_combout\);

-- Location: FF_X5_Y49_N1
\unit2|memory[6][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][0]~q\);

-- Location: LCCOMB_X10_Y51_N0
\unit2|memory[6][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][0]~0_combout\ = (!\addressIN[2]~input_o\ & (\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[6][3][0]~0_combout\);

-- Location: FF_X6_Y49_N19
\unit2|memory[6][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][0]~q\);

-- Location: LCCOMB_X10_Y49_N26
\unit2|memory[6][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][0]~0_combout\ = (!\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & (\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[6][0][0]~0_combout\);

-- Location: FF_X6_Y49_N21
\unit2|memory[6][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][0]~q\);

-- Location: LCCOMB_X4_Y49_N24
\unit2|memory[6][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(0),
	combout => \unit2|memory[6][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N26
\unit2|memory[6][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][0]~0_combout\ = (\addressIN[4]~input_o\ & (!\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[6][1][0]~0_combout\);

-- Location: FF_X4_Y49_N25
\unit2|memory[6][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][0]~q\);

-- Location: LCCOMB_X6_Y49_N20
\unit2|Mux143~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~2_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[6][1][0]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[6][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[6][0][0]~q\,
	datad => \unit2|memory[6][1][0]~q\,
	combout => \unit2|Mux143~2_combout\);

-- Location: LCCOMB_X6_Y49_N18
\unit2|Mux143~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~3_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux143~2_combout\ & ((\unit2|memory[6][3][0]~q\))) # (!\unit2|Mux143~2_combout\ & (\unit2|memory[6][2][0]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux143~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][2][0]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[6][3][0]~q\,
	datad => \unit2|Mux143~2_combout\,
	combout => \unit2|Mux143~3_combout\);

-- Location: LCCOMB_X11_Y49_N16
\unit2|Mux143~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~6_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|Mux143~3_combout\))) # (!\addressIN[3]~input_o\ & (\unit2|Mux143~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux143~5_combout\,
	datad => \unit2|Mux143~3_combout\,
	combout => \unit2|Mux143~6_combout\);

-- Location: LCCOMB_X11_Y49_N22
\unit2|Mux143~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~9_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux143~6_combout\ & ((\unit2|Mux143~8_combout\))) # (!\unit2|Mux143~6_combout\ & (\unit2|Mux143~1_combout\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux143~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux143~1_combout\,
	datab => \unit2|Mux143~8_combout\,
	datac => \addressIN[2]~input_o\,
	datad => \unit2|Mux143~6_combout\,
	combout => \unit2|Mux143~9_combout\);

-- Location: LCCOMB_X8_Y51_N12
\unit2|memory[3][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[3][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N20
\unit2|memory[3][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][0]~0_combout\ = (!\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[3][1][0]~0_combout\);

-- Location: FF_X8_Y51_N13
\unit2|memory[3][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][0]~q\);

-- Location: LCCOMB_X10_Y51_N30
\unit2|memory[3][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][3][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[3][3][0]~0_combout\);

-- Location: FF_X10_Y50_N5
\unit2|memory[3][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][0]~q\);

-- Location: LCCOMB_X10_Y49_N22
\unit2|memory[3][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][0][0]~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[3][0][0]~0_combout\);

-- Location: FF_X9_Y51_N15
\unit2|memory[3][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][0]~q\);

-- Location: LCCOMB_X9_Y51_N0
\unit2|memory[3][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[3][2][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N30
\unit2|memory[3][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][0]~0_combout\ = (!\addressIN[4]~input_o\ & (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[3][2][0]~0_combout\);

-- Location: FF_X9_Y51_N1
\unit2|memory[3][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][0]~q\);

-- Location: LCCOMB_X9_Y51_N14
\unit2|Mux143~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][0]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][0]~q\,
	datad => \unit2|memory[3][2][0]~q\,
	combout => \unit2|Mux143~17_combout\);

-- Location: LCCOMB_X10_Y50_N4
\unit2|Mux143~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux143~17_combout\ & ((\unit2|memory[3][3][0]~q\))) # (!\unit2|Mux143~17_combout\ & (\unit2|memory[3][1][0]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux143~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[3][1][0]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][3][0]~q\,
	datad => \unit2|Mux143~17_combout\,
	combout => \unit2|Mux143~18_combout\);

-- Location: LCCOMB_X12_Y50_N20
\unit2|memory[0][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(0),
	combout => \unit2|memory[0][2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N0
\unit2|memory[0][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (\unit2|memory[7][2][0]~1_combout\ & !\addressIN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit2|memory[7][2][0]~1_combout\,
	datad => \addressIN[3]~input_o\,
	combout => \unit2|memory[0][2][0]~0_combout\);

-- Location: FF_X12_Y50_N21
\unit2|memory[0][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][0]~q\);

-- Location: LCCOMB_X10_Y51_N12
\unit2|memory[0][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][3][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[0][3][0]~0_combout\);

-- Location: FF_X11_Y50_N23
\unit2|memory[0][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][0]~q\);

-- Location: LCCOMB_X10_Y49_N12
\unit2|memory[0][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][0][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[0][0][0]~0_combout\);

-- Location: FF_X11_Y50_N29
\unit2|memory[0][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][0]~q\);

-- Location: LCCOMB_X12_Y50_N2
\unit2|memory[0][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(0),
	combout => \unit2|memory[0][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N22
\unit2|memory[0][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][0]~0_combout\ = (!\addressIN[4]~input_o\ & (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[0][1][0]~0_combout\);

-- Location: FF_X12_Y50_N3
\unit2|memory[0][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][0]~q\);

-- Location: LCCOMB_X11_Y50_N28
\unit2|Mux143~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][0]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][0]~q\,
	datad => \unit2|memory[0][1][0]~q\,
	combout => \unit2|Mux143~14_combout\);

-- Location: LCCOMB_X11_Y50_N22
\unit2|Mux143~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux143~14_combout\ & ((\unit2|memory[0][3][0]~q\))) # (!\unit2|Mux143~14_combout\ & (\unit2|memory[0][2][0]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux143~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][2][0]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][3][0]~q\,
	datad => \unit2|Mux143~14_combout\,
	combout => \unit2|Mux143~15_combout\);

-- Location: LCCOMB_X10_Y47_N10
\unit2|memory[1][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[1][1][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N28
\unit2|memory[1][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (\unit2|memory[7][1][0]~1_combout\ & !\addressIN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \unit2|memory[7][1][0]~1_combout\,
	datad => \addressIN[3]~input_o\,
	combout => \unit2|memory[1][1][0]~0_combout\);

-- Location: FF_X10_Y47_N11
\unit2|memory[1][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][0]~q\);

-- Location: LCCOMB_X10_Y51_N18
\unit2|memory[1][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[1][3][0]~0_combout\);

-- Location: FF_X11_Y47_N31
\unit2|memory[1][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][0]~q\);

-- Location: LCCOMB_X10_Y49_N6
\unit2|memory[1][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][0][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[1][0][0]~0_combout\);

-- Location: FF_X11_Y47_N1
\unit2|memory[1][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][0]~q\);

-- Location: LCCOMB_X12_Y47_N28
\unit2|memory[1][2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[1][2][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y52_N30
\unit2|memory[1][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][0]~0_combout\ = (\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (!\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[1][2][0]~0_combout\);

-- Location: FF_X12_Y47_N29
\unit2|memory[1][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][0]~q\);

-- Location: LCCOMB_X11_Y47_N0
\unit2|Mux143~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][0]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][0]~q\,
	datad => \unit2|memory[1][2][0]~q\,
	combout => \unit2|Mux143~12_combout\);

-- Location: LCCOMB_X11_Y47_N30
\unit2|Mux143~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux143~12_combout\ & ((\unit2|memory[1][3][0]~q\))) # (!\unit2|Mux143~12_combout\ & (\unit2|memory[1][1][0]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux143~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][0]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][0]~q\,
	datad => \unit2|Mux143~12_combout\,
	combout => \unit2|Mux143~13_combout\);

-- Location: LCCOMB_X11_Y50_N8
\unit2|Mux143~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~16_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|Mux143~13_combout\))) # (!\addressIN[2]~input_o\ & (\unit2|Mux143~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux143~15_combout\,
	datad => \unit2|Mux143~13_combout\,
	combout => \unit2|Mux143~16_combout\);

-- Location: LCCOMB_X6_Y50_N30
\unit2|memory[2][3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(0),
	combout => \unit2|memory[2][3][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y51_N28
\unit2|memory[2][3][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][3][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][3][0]~1_combout\,
	combout => \unit2|memory[2][3][0]~0_combout\);

-- Location: FF_X6_Y50_N31
\unit2|memory[2][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][0]~q\);

-- Location: LCCOMB_X9_Y52_N20
\unit2|memory[2][2][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][0]~0_combout\ = (!\addressIN[2]~input_o\ & (!\addressIN[4]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][2][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[4]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][2][0]~1_combout\,
	combout => \unit2|memory[2][2][0]~0_combout\);

-- Location: FF_X6_Y50_N17
\unit2|memory[2][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][0]~q\);

-- Location: LCCOMB_X10_Y49_N0
\unit2|memory[2][0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][0][0]~0_combout\ = (!\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & (!\addressIN[4]~input_o\ & \unit2|memory[7][0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|memory[7][0][0]~1_combout\,
	combout => \unit2|memory[2][0][0]~0_combout\);

-- Location: FF_X5_Y50_N9
\unit2|memory[2][0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][0]~q\);

-- Location: LCCOMB_X4_Y50_N8
\unit2|memory[2][1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][0]~feeder_combout\ = tempDataIn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(0),
	combout => \unit2|memory[2][1][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y52_N0
\unit2|memory[2][1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][0]~0_combout\ = (!\addressIN[4]~input_o\ & (!\addressIN[2]~input_o\ & (\addressIN[3]~input_o\ & \unit2|memory[7][1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|memory[7][1][0]~1_combout\,
	combout => \unit2|memory[2][1][0]~0_combout\);

-- Location: FF_X4_Y50_N9
\unit2|memory[2][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][0]~q\);

-- Location: LCCOMB_X5_Y50_N8
\unit2|Mux143~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][0]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][0]~q\,
	datad => \unit2|memory[2][1][0]~q\,
	combout => \unit2|Mux143~10_combout\);

-- Location: LCCOMB_X6_Y50_N16
\unit2|Mux143~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux143~10_combout\ & (\unit2|memory[2][3][0]~q\)) # (!\unit2|Mux143~10_combout\ & ((\unit2|memory[2][2][0]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux143~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][0]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][0]~q\,
	datad => \unit2|Mux143~10_combout\,
	combout => \unit2|Mux143~11_combout\);

-- Location: LCCOMB_X11_Y50_N6
\unit2|Mux143~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux143~16_combout\ & (\unit2|Mux143~18_combout\)) # (!\unit2|Mux143~16_combout\ & ((\unit2|Mux143~11_combout\))))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux143~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux143~18_combout\,
	datac => \unit2|Mux143~16_combout\,
	datad => \unit2|Mux143~11_combout\,
	combout => \unit2|Mux143~19_combout\);

-- Location: LCCOMB_X11_Y49_N28
\unit2|Mux143~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux143~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux143~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux143~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux143~9_combout\,
	datad => \unit2|Mux143~19_combout\,
	combout => \unit2|Mux143~20_combout\);

-- Location: LCCOMB_X10_Y51_N22
\unit2|data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|data_out[0]~0_combout\ = (!\write_data~q\ & (\read_data~q\ & \data_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data~q\,
	datac => \read_data~q\,
	datad => \data_enable~q\,
	combout => \unit2|data_out[0]~0_combout\);

-- Location: FF_X11_Y49_N29
\unit2|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux143~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(0));

-- Location: LCCOMB_X11_Y49_N0
\data_out_cpu[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[0]~reg0feeder_combout\ = \unit2|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(0),
	combout => \data_out_cpu[0]~reg0feeder_combout\);

-- Location: LCCOMB_X7_Y52_N30
\data_out_cpu[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[0]~0_combout\ = (!\reset~input_o\ & \state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.s2~q\,
	combout => \data_out_cpu[0]~0_combout\);

-- Location: FF_X11_Y49_N1
\data_out_cpu[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[0]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[0]~reg0_q\);

-- Location: IOIBUF_X0_Y44_N15
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X3_Y47_N24
\tempDataIn[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \tempDataIn[1]~feeder_combout\);

-- Location: FF_X3_Y47_N25
\tempDataIn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[1]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(1));

-- Location: LCCOMB_X8_Y51_N18
\unit2|memory[3][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[3][1][1]~feeder_combout\);

-- Location: FF_X8_Y51_N19
\unit2|memory[3][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][1]~q\);

-- Location: FF_X8_Y51_N17
\unit2|memory[3][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][1]~q\);

-- Location: FF_X9_Y51_N11
\unit2|memory[3][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][1]~q\);

-- Location: LCCOMB_X9_Y51_N28
\unit2|memory[3][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[3][2][1]~feeder_combout\);

-- Location: FF_X9_Y51_N29
\unit2|memory[3][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][1]~q\);

-- Location: LCCOMB_X9_Y51_N10
\unit2|Mux142~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][1]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][1]~q\,
	datad => \unit2|memory[3][2][1]~q\,
	combout => \unit2|Mux142~17_combout\);

-- Location: LCCOMB_X8_Y51_N16
\unit2|Mux142~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux142~17_combout\ & ((\unit2|memory[3][3][1]~q\))) # (!\unit2|Mux142~17_combout\ & (\unit2|memory[3][1][1]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux142~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][1]~q\,
	datac => \unit2|memory[3][3][1]~q\,
	datad => \unit2|Mux142~17_combout\,
	combout => \unit2|Mux142~18_combout\);

-- Location: LCCOMB_X6_Y50_N14
\unit2|memory[2][3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[2][3][1]~feeder_combout\);

-- Location: FF_X6_Y50_N15
\unit2|memory[2][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][1]~q\);

-- Location: FF_X6_Y50_N1
\unit2|memory[2][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][1]~q\);

-- Location: FF_X5_Y50_N19
\unit2|memory[2][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][1]~q\);

-- Location: LCCOMB_X4_Y50_N30
\unit2|memory[2][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[2][1][1]~feeder_combout\);

-- Location: FF_X4_Y50_N31
\unit2|memory[2][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][1]~q\);

-- Location: LCCOMB_X5_Y50_N18
\unit2|Mux142~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][1]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][1]~q\,
	datad => \unit2|memory[2][1][1]~q\,
	combout => \unit2|Mux142~10_combout\);

-- Location: LCCOMB_X6_Y50_N0
\unit2|Mux142~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux142~10_combout\ & (\unit2|memory[2][3][1]~q\)) # (!\unit2|Mux142~10_combout\ & ((\unit2|memory[2][2][1]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux142~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[2][3][1]~q\,
	datac => \unit2|memory[2][2][1]~q\,
	datad => \unit2|Mux142~10_combout\,
	combout => \unit2|Mux142~11_combout\);

-- Location: LCCOMB_X11_Y51_N8
\unit2|memory[0][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(1),
	combout => \unit2|memory[0][2][1]~feeder_combout\);

-- Location: FF_X11_Y51_N9
\unit2|memory[0][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][1]~q\);

-- Location: FF_X10_Y51_N9
\unit2|memory[0][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][1]~q\);

-- Location: FF_X9_Y50_N31
\unit2|memory[0][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][1]~q\);

-- Location: LCCOMB_X9_Y50_N0
\unit2|memory[0][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[0][1][1]~feeder_combout\);

-- Location: FF_X9_Y50_N1
\unit2|memory[0][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][1]~q\);

-- Location: LCCOMB_X9_Y50_N30
\unit2|Mux142~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~14_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[0][1][1]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][1]~q\,
	datad => \unit2|memory[0][1][1]~q\,
	combout => \unit2|Mux142~14_combout\);

-- Location: LCCOMB_X10_Y51_N8
\unit2|Mux142~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux142~14_combout\ & ((\unit2|memory[0][3][1]~q\))) # (!\unit2|Mux142~14_combout\ & (\unit2|memory[0][2][1]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux142~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][1]~q\,
	datac => \unit2|memory[0][3][1]~q\,
	datad => \unit2|Mux142~14_combout\,
	combout => \unit2|Mux142~15_combout\);

-- Location: LCCOMB_X10_Y47_N16
\unit2|memory[1][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[1][1][1]~feeder_combout\);

-- Location: FF_X10_Y47_N17
\unit2|memory[1][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][1]~q\);

-- Location: FF_X11_Y47_N27
\unit2|memory[1][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][1]~q\);

-- Location: FF_X11_Y47_N29
\unit2|memory[1][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][1]~q\);

-- Location: LCCOMB_X12_Y47_N2
\unit2|memory[1][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(1),
	combout => \unit2|memory[1][2][1]~feeder_combout\);

-- Location: FF_X12_Y47_N3
\unit2|memory[1][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][1]~q\);

-- Location: LCCOMB_X11_Y47_N28
\unit2|Mux142~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][1]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][1]~q\,
	datad => \unit2|memory[1][2][1]~q\,
	combout => \unit2|Mux142~12_combout\);

-- Location: LCCOMB_X11_Y47_N26
\unit2|Mux142~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux142~12_combout\ & ((\unit2|memory[1][3][1]~q\))) # (!\unit2|Mux142~12_combout\ & (\unit2|memory[1][1][1]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux142~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][1]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][1]~q\,
	datad => \unit2|Mux142~12_combout\,
	combout => \unit2|Mux142~13_combout\);

-- Location: LCCOMB_X10_Y51_N6
\unit2|Mux142~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~16_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|Mux142~13_combout\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|Mux142~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux142~15_combout\,
	datad => \unit2|Mux142~13_combout\,
	combout => \unit2|Mux142~16_combout\);

-- Location: LCCOMB_X10_Y51_N4
\unit2|Mux142~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux142~16_combout\ & (\unit2|Mux142~18_combout\)) # (!\unit2|Mux142~16_combout\ & ((\unit2|Mux142~11_combout\))))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux142~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux142~18_combout\,
	datac => \unit2|Mux142~11_combout\,
	datad => \unit2|Mux142~16_combout\,
	combout => \unit2|Mux142~19_combout\);

-- Location: LCCOMB_X5_Y48_N24
\unit2|memory[7][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[7][1][1]~feeder_combout\);

-- Location: FF_X5_Y48_N25
\unit2|memory[7][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][1]~q\);

-- Location: FF_X9_Y48_N13
\unit2|memory[7][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][1]~q\);

-- Location: FF_X13_Y48_N27
\unit2|memory[7][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][1]~q\);

-- Location: LCCOMB_X13_Y48_N28
\unit2|memory[7][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[7][2][1]~feeder_combout\);

-- Location: FF_X13_Y48_N29
\unit2|memory[7][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][1]~q\);

-- Location: LCCOMB_X13_Y48_N26
\unit2|Mux142~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~7_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[7][2][1]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[7][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[7][0][1]~q\,
	datad => \unit2|memory[7][2][1]~q\,
	combout => \unit2|Mux142~7_combout\);

-- Location: LCCOMB_X9_Y48_N12
\unit2|Mux142~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~8_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux142~7_combout\ & ((\unit2|memory[7][3][1]~q\))) # (!\unit2|Mux142~7_combout\ & (\unit2|memory[7][1][1]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux142~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[7][1][1]~q\,
	datac => \unit2|memory[7][3][1]~q\,
	datad => \unit2|Mux142~7_combout\,
	combout => \unit2|Mux142~8_combout\);

-- Location: LCCOMB_X12_Y48_N4
\unit2|memory[5][3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(1),
	combout => \unit2|memory[5][3][1]~feeder_combout\);

-- Location: FF_X12_Y48_N5
\unit2|memory[5][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][1]~q\);

-- Location: FF_X4_Y48_N29
\unit2|memory[5][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][1]~q\);

-- Location: FF_X4_Y48_N11
\unit2|memory[5][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][1]~q\);

-- Location: LCCOMB_X3_Y48_N24
\unit2|memory[5][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[5][2][1]~feeder_combout\);

-- Location: FF_X3_Y48_N25
\unit2|memory[5][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][1]~q\);

-- Location: LCCOMB_X4_Y48_N10
\unit2|Mux142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~0_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[5][2][1]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[5][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[5][0][1]~q\,
	datad => \unit2|memory[5][2][1]~q\,
	combout => \unit2|Mux142~0_combout\);

-- Location: LCCOMB_X4_Y48_N28
\unit2|Mux142~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~1_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux142~0_combout\ & (\unit2|memory[5][3][1]~q\)) # (!\unit2|Mux142~0_combout\ & ((\unit2|memory[5][1][1]~q\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux142~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[5][3][1]~q\,
	datac => \unit2|memory[5][1][1]~q\,
	datad => \unit2|Mux142~0_combout\,
	combout => \unit2|Mux142~1_combout\);

-- Location: LCCOMB_X5_Y49_N18
\unit2|memory[6][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(1),
	combout => \unit2|memory[6][2][1]~feeder_combout\);

-- Location: FF_X5_Y49_N19
\unit2|memory[6][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][1]~q\);

-- Location: FF_X6_Y49_N31
\unit2|memory[6][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][1]~q\);

-- Location: FF_X6_Y49_N17
\unit2|memory[6][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][1]~q\);

-- Location: LCCOMB_X4_Y49_N10
\unit2|memory[6][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[6][1][1]~feeder_combout\);

-- Location: FF_X4_Y49_N11
\unit2|memory[6][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][1]~q\);

-- Location: LCCOMB_X6_Y49_N16
\unit2|Mux142~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~2_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[6][1][1]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[6][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[6][0][1]~q\,
	datad => \unit2|memory[6][1][1]~q\,
	combout => \unit2|Mux142~2_combout\);

-- Location: LCCOMB_X6_Y49_N30
\unit2|Mux142~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~3_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux142~2_combout\ & ((\unit2|memory[6][3][1]~q\))) # (!\unit2|Mux142~2_combout\ & (\unit2|memory[6][2][1]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux142~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[6][2][1]~q\,
	datac => \unit2|memory[6][3][1]~q\,
	datad => \unit2|Mux142~2_combout\,
	combout => \unit2|Mux142~3_combout\);

-- Location: LCCOMB_X10_Y48_N4
\unit2|memory[4][2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][2][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[4][2][1]~feeder_combout\);

-- Location: FF_X10_Y48_N5
\unit2|memory[4][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][1]~q\);

-- Location: FF_X10_Y48_N3
\unit2|memory[4][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][1]~q\);

-- Location: FF_X6_Y48_N31
\unit2|memory[4][0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][1]~q\);

-- Location: LCCOMB_X5_Y48_N14
\unit2|memory[4][1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][1]~feeder_combout\ = tempDataIn(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(1),
	combout => \unit2|memory[4][1][1]~feeder_combout\);

-- Location: FF_X5_Y48_N15
\unit2|memory[4][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][1]~q\);

-- Location: LCCOMB_X6_Y48_N30
\unit2|Mux142~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~4_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[4][1][1]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[4][0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[4][0][1]~q\,
	datad => \unit2|memory[4][1][1]~q\,
	combout => \unit2|Mux142~4_combout\);

-- Location: LCCOMB_X10_Y48_N2
\unit2|Mux142~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~5_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux142~4_combout\ & ((\unit2|memory[4][3][1]~q\))) # (!\unit2|Mux142~4_combout\ & (\unit2|memory[4][2][1]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux142~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[4][2][1]~q\,
	datac => \unit2|memory[4][3][1]~q\,
	datad => \unit2|Mux142~4_combout\,
	combout => \unit2|Mux142~5_combout\);

-- Location: LCCOMB_X10_Y51_N20
\unit2|Mux142~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~6_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|Mux142~3_combout\)) # (!\addressIN[3]~input_o\ & ((\unit2|Mux142~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux142~3_combout\,
	datad => \unit2|Mux142~5_combout\,
	combout => \unit2|Mux142~6_combout\);

-- Location: LCCOMB_X10_Y51_N2
\unit2|Mux142~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~9_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux142~6_combout\ & (\unit2|Mux142~8_combout\)) # (!\unit2|Mux142~6_combout\ & ((\unit2|Mux142~1_combout\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux142~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|Mux142~8_combout\,
	datac => \unit2|Mux142~1_combout\,
	datad => \unit2|Mux142~6_combout\,
	combout => \unit2|Mux142~9_combout\);

-- Location: LCCOMB_X10_Y51_N16
\unit2|Mux142~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux142~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux142~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux142~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[4]~input_o\,
	datac => \unit2|Mux142~19_combout\,
	datad => \unit2|Mux142~9_combout\,
	combout => \unit2|Mux142~20_combout\);

-- Location: FF_X10_Y51_N17
\unit2|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux142~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(1));

-- Location: LCCOMB_X9_Y55_N12
\data_out_cpu[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[1]~reg0feeder_combout\ = \unit2|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(1),
	combout => \data_out_cpu[1]~reg0feeder_combout\);

-- Location: FF_X9_Y55_N13
\data_out_cpu[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[1]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[1]~reg0_q\);

-- Location: IOIBUF_X0_Y53_N8
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X4_Y52_N29
\tempDataIn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(2));

-- Location: LCCOMB_X8_Y51_N30
\unit2|memory[3][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[3][1][2]~feeder_combout\);

-- Location: FF_X8_Y51_N31
\unit2|memory[3][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][2]~q\);

-- Location: FF_X10_Y50_N23
\unit2|memory[3][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][2]~q\);

-- Location: FF_X9_Y51_N27
\unit2|memory[3][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][2]~q\);

-- Location: LCCOMB_X9_Y51_N20
\unit2|memory[3][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[3][2][2]~feeder_combout\);

-- Location: FF_X9_Y51_N21
\unit2|memory[3][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][2]~q\);

-- Location: LCCOMB_X9_Y51_N26
\unit2|Mux141~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][2]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][2]~q\,
	datad => \unit2|memory[3][2][2]~q\,
	combout => \unit2|Mux141~17_combout\);

-- Location: LCCOMB_X10_Y50_N22
\unit2|Mux141~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux141~17_combout\ & ((\unit2|memory[3][3][2]~q\))) # (!\unit2|Mux141~17_combout\ & (\unit2|memory[3][1][2]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux141~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][2]~q\,
	datac => \unit2|memory[3][3][2]~q\,
	datad => \unit2|Mux141~17_combout\,
	combout => \unit2|Mux141~18_combout\);

-- Location: LCCOMB_X6_Y50_N22
\unit2|memory[2][3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[2][3][2]~feeder_combout\);

-- Location: FF_X6_Y50_N23
\unit2|memory[2][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][2]~q\);

-- Location: FF_X6_Y50_N21
\unit2|memory[2][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][2]~q\);

-- Location: FF_X5_Y50_N13
\unit2|memory[2][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][2]~q\);

-- Location: LCCOMB_X4_Y50_N20
\unit2|memory[2][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[2][1][2]~feeder_combout\);

-- Location: FF_X4_Y50_N21
\unit2|memory[2][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][2]~q\);

-- Location: LCCOMB_X5_Y50_N12
\unit2|Mux141~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][2]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][2]~q\,
	datad => \unit2|memory[2][1][2]~q\,
	combout => \unit2|Mux141~10_combout\);

-- Location: LCCOMB_X6_Y50_N20
\unit2|Mux141~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux141~10_combout\ & (\unit2|memory[2][3][2]~q\)) # (!\unit2|Mux141~10_combout\ & ((\unit2|memory[2][2][2]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux141~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][2]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][2]~q\,
	datad => \unit2|Mux141~10_combout\,
	combout => \unit2|Mux141~11_combout\);

-- Location: FF_X11_Y50_N5
\unit2|memory[0][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][2]~q\);

-- Location: LCCOMB_X12_Y50_N6
\unit2|memory[0][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[0][1][2]~feeder_combout\);

-- Location: FF_X12_Y50_N7
\unit2|memory[0][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][2]~q\);

-- Location: LCCOMB_X11_Y50_N4
\unit2|Mux141~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][2]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][2]~q\,
	datad => \unit2|memory[0][1][2]~q\,
	combout => \unit2|Mux141~14_combout\);

-- Location: FF_X11_Y50_N3
\unit2|memory[0][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][2]~q\);

-- Location: LCCOMB_X12_Y50_N28
\unit2|memory[0][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[0][2][2]~feeder_combout\);

-- Location: FF_X12_Y50_N29
\unit2|memory[0][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][2]~q\);

-- Location: LCCOMB_X11_Y50_N2
\unit2|Mux141~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux141~14_combout\ & (\unit2|memory[0][3][2]~q\)) # (!\unit2|Mux141~14_combout\ & ((\unit2|memory[0][2][2]~q\))))) # (!\addressIN[1]~input_o\ & (\unit2|Mux141~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux141~14_combout\,
	datac => \unit2|memory[0][3][2]~q\,
	datad => \unit2|memory[0][2][2]~q\,
	combout => \unit2|Mux141~15_combout\);

-- Location: LCCOMB_X10_Y47_N14
\unit2|memory[1][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[1][1][2]~feeder_combout\);

-- Location: FF_X10_Y47_N15
\unit2|memory[1][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][2]~q\);

-- Location: FF_X11_Y47_N11
\unit2|memory[1][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][2]~q\);

-- Location: FF_X11_Y47_N25
\unit2|memory[1][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][2]~q\);

-- Location: LCCOMB_X12_Y47_N4
\unit2|memory[1][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[1][2][2]~feeder_combout\);

-- Location: FF_X12_Y47_N5
\unit2|memory[1][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][2]~q\);

-- Location: LCCOMB_X11_Y47_N24
\unit2|Mux141~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][2]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][2]~q\,
	datad => \unit2|memory[1][2][2]~q\,
	combout => \unit2|Mux141~12_combout\);

-- Location: LCCOMB_X11_Y47_N10
\unit2|Mux141~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux141~12_combout\ & ((\unit2|memory[1][3][2]~q\))) # (!\unit2|Mux141~12_combout\ & (\unit2|memory[1][1][2]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux141~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][2]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][2]~q\,
	datad => \unit2|Mux141~12_combout\,
	combout => \unit2|Mux141~13_combout\);

-- Location: LCCOMB_X11_Y50_N24
\unit2|Mux141~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~16_combout\ = (\addressIN[3]~input_o\ & (((\addressIN[2]~input_o\)))) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|Mux141~13_combout\))) # (!\addressIN[2]~input_o\ & (\unit2|Mux141~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux141~15_combout\,
	datac => \addressIN[2]~input_o\,
	datad => \unit2|Mux141~13_combout\,
	combout => \unit2|Mux141~16_combout\);

-- Location: LCCOMB_X11_Y50_N30
\unit2|Mux141~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux141~16_combout\ & (\unit2|Mux141~18_combout\)) # (!\unit2|Mux141~16_combout\ & ((\unit2|Mux141~11_combout\))))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux141~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux141~18_combout\,
	datac => \unit2|Mux141~11_combout\,
	datad => \unit2|Mux141~16_combout\,
	combout => \unit2|Mux141~19_combout\);

-- Location: LCCOMB_X12_Y52_N30
\unit2|memory[7][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[7][1][2]~feeder_combout\);

-- Location: FF_X12_Y52_N31
\unit2|memory[7][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][2]~q\);

-- Location: FF_X12_Y51_N1
\unit2|memory[7][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][2]~q\);

-- Location: FF_X13_Y48_N3
\unit2|memory[7][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][2]~q\);

-- Location: LCCOMB_X13_Y48_N12
\unit2|memory[7][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[7][2][2]~feeder_combout\);

-- Location: FF_X13_Y48_N13
\unit2|memory[7][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][2]~q\);

-- Location: LCCOMB_X13_Y48_N2
\unit2|Mux141~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~7_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[7][2][2]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[7][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[7][0][2]~q\,
	datad => \unit2|memory[7][2][2]~q\,
	combout => \unit2|Mux141~7_combout\);

-- Location: LCCOMB_X12_Y51_N0
\unit2|Mux141~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~8_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux141~7_combout\ & ((\unit2|memory[7][3][2]~q\))) # (!\unit2|Mux141~7_combout\ & (\unit2|memory[7][1][2]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux141~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][1][2]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[7][3][2]~q\,
	datad => \unit2|Mux141~7_combout\,
	combout => \unit2|Mux141~8_combout\);

-- Location: LCCOMB_X9_Y49_N20
\unit2|memory[5][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[5][1][2]~feeder_combout\);

-- Location: FF_X9_Y49_N21
\unit2|memory[5][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][2]~q\);

-- Location: LCCOMB_X11_Y51_N22
\unit2|memory[5][3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[5][3][2]~feeder_combout\);

-- Location: FF_X11_Y51_N23
\unit2|memory[5][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][2]~q\);

-- Location: FF_X5_Y49_N9
\unit2|memory[5][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][2]~q\);

-- Location: LCCOMB_X9_Y49_N22
\unit2|memory[5][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[5][2][2]~feeder_combout\);

-- Location: FF_X9_Y49_N23
\unit2|memory[5][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][2]~q\);

-- Location: LCCOMB_X5_Y49_N8
\unit2|Mux141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~0_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[5][2][2]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[5][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[5][0][2]~q\,
	datad => \unit2|memory[5][2][2]~q\,
	combout => \unit2|Mux141~0_combout\);

-- Location: LCCOMB_X9_Y49_N12
\unit2|Mux141~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~1_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux141~0_combout\ & ((\unit2|memory[5][3][2]~q\))) # (!\unit2|Mux141~0_combout\ & (\unit2|memory[5][1][2]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[5][1][2]~q\,
	datac => \unit2|memory[5][3][2]~q\,
	datad => \unit2|Mux141~0_combout\,
	combout => \unit2|Mux141~1_combout\);

-- Location: LCCOMB_X10_Y48_N0
\unit2|memory[4][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[4][2][2]~feeder_combout\);

-- Location: FF_X10_Y48_N1
\unit2|memory[4][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][2]~q\);

-- Location: FF_X10_Y48_N27
\unit2|memory[4][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][2]~q\);

-- Location: FF_X6_Y48_N21
\unit2|memory[4][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][2]~q\);

-- Location: LCCOMB_X5_Y48_N22
\unit2|memory[4][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(2),
	combout => \unit2|memory[4][1][2]~feeder_combout\);

-- Location: FF_X5_Y48_N23
\unit2|memory[4][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][2]~q\);

-- Location: LCCOMB_X6_Y48_N20
\unit2|Mux141~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~4_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[4][1][2]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[4][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[4][0][2]~q\,
	datad => \unit2|memory[4][1][2]~q\,
	combout => \unit2|Mux141~4_combout\);

-- Location: LCCOMB_X10_Y48_N26
\unit2|Mux141~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~5_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux141~4_combout\ & ((\unit2|memory[4][3][2]~q\))) # (!\unit2|Mux141~4_combout\ & (\unit2|memory[4][2][2]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux141~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[4][2][2]~q\,
	datac => \unit2|memory[4][3][2]~q\,
	datad => \unit2|Mux141~4_combout\,
	combout => \unit2|Mux141~5_combout\);

-- Location: LCCOMB_X5_Y49_N6
\unit2|memory[6][2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[6][2][2]~feeder_combout\);

-- Location: FF_X5_Y49_N7
\unit2|memory[6][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][2]~q\);

-- Location: FF_X6_Y49_N23
\unit2|memory[6][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][2]~q\);

-- Location: FF_X6_Y49_N1
\unit2|memory[6][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][2]~q\);

-- Location: LCCOMB_X4_Y49_N8
\unit2|memory[6][1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][2]~feeder_combout\ = tempDataIn(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(2),
	combout => \unit2|memory[6][1][2]~feeder_combout\);

-- Location: FF_X4_Y49_N9
\unit2|memory[6][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][2]~q\);

-- Location: LCCOMB_X6_Y49_N0
\unit2|Mux141~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~2_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[6][1][2]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[6][0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[6][0][2]~q\,
	datad => \unit2|memory[6][1][2]~q\,
	combout => \unit2|Mux141~2_combout\);

-- Location: LCCOMB_X6_Y49_N22
\unit2|Mux141~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~3_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux141~2_combout\ & ((\unit2|memory[6][3][2]~q\))) # (!\unit2|Mux141~2_combout\ & (\unit2|memory[6][2][2]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux141~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[6][2][2]~q\,
	datac => \unit2|memory[6][3][2]~q\,
	datad => \unit2|Mux141~2_combout\,
	combout => \unit2|Mux141~3_combout\);

-- Location: LCCOMB_X11_Y49_N12
\unit2|Mux141~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~6_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|Mux141~3_combout\))) # (!\addressIN[3]~input_o\ & (\unit2|Mux141~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux141~5_combout\,
	datad => \unit2|Mux141~3_combout\,
	combout => \unit2|Mux141~6_combout\);

-- Location: LCCOMB_X11_Y49_N18
\unit2|Mux141~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~9_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux141~6_combout\ & (\unit2|Mux141~8_combout\)) # (!\unit2|Mux141~6_combout\ & ((\unit2|Mux141~1_combout\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux141~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux141~8_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux141~1_combout\,
	datad => \unit2|Mux141~6_combout\,
	combout => \unit2|Mux141~9_combout\);

-- Location: LCCOMB_X11_Y49_N30
\unit2|Mux141~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux141~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux141~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux141~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux141~19_combout\,
	datad => \unit2|Mux141~9_combout\,
	combout => \unit2|Mux141~20_combout\);

-- Location: FF_X11_Y49_N31
\unit2|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux141~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(2));

-- Location: LCCOMB_X11_Y49_N6
\data_out_cpu[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[2]~reg0feeder_combout\ = \unit2|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(2),
	combout => \data_out_cpu[2]~reg0feeder_combout\);

-- Location: FF_X11_Y49_N7
\data_out_cpu[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[2]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[2]~reg0_q\);

-- Location: IOIBUF_X0_Y51_N15
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X2_Y51_N24
\tempDataIn[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \tempDataIn[3]~feeder_combout\);

-- Location: FF_X2_Y51_N25
\tempDataIn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[3]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(3));

-- Location: FF_X5_Y50_N5
\unit2|memory[2][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][3]~q\);

-- Location: LCCOMB_X4_Y50_N14
\unit2|memory[2][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(3),
	combout => \unit2|memory[2][1][3]~feeder_combout\);

-- Location: FF_X4_Y50_N15
\unit2|memory[2][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][3]~q\);

-- Location: LCCOMB_X5_Y50_N4
\unit2|Mux140~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][3]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][3]~q\,
	datad => \unit2|memory[2][1][3]~q\,
	combout => \unit2|Mux140~10_combout\);

-- Location: FF_X5_Y50_N31
\unit2|memory[2][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][3]~q\);

-- Location: LCCOMB_X6_Y50_N24
\unit2|memory[2][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[2][3][3]~feeder_combout\);

-- Location: FF_X6_Y50_N25
\unit2|memory[2][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][3]~q\);

-- Location: LCCOMB_X5_Y50_N30
\unit2|Mux140~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux140~10_combout\ & ((\unit2|memory[2][3][3]~q\))) # (!\unit2|Mux140~10_combout\ & (\unit2|memory[2][2][3]~q\)))) # (!\addressIN[1]~input_o\ & (\unit2|Mux140~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux140~10_combout\,
	datac => \unit2|memory[2][2][3]~q\,
	datad => \unit2|memory[2][3][3]~q\,
	combout => \unit2|Mux140~11_combout\);

-- Location: LCCOMB_X8_Y51_N4
\unit2|memory[3][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[3][1][3]~feeder_combout\);

-- Location: FF_X8_Y51_N5
\unit2|memory[3][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][3]~q\);

-- Location: FF_X8_Y51_N7
\unit2|memory[3][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][3]~q\);

-- Location: FF_X9_Y51_N19
\unit2|memory[3][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][3]~q\);

-- Location: LCCOMB_X9_Y51_N24
\unit2|memory[3][2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[3][2][3]~feeder_combout\);

-- Location: FF_X9_Y51_N25
\unit2|memory[3][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][3]~q\);

-- Location: LCCOMB_X9_Y51_N18
\unit2|Mux140~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][3]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][3]~q\,
	datad => \unit2|memory[3][2][3]~q\,
	combout => \unit2|Mux140~17_combout\);

-- Location: LCCOMB_X8_Y51_N6
\unit2|Mux140~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux140~17_combout\ & ((\unit2|memory[3][3][3]~q\))) # (!\unit2|Mux140~17_combout\ & (\unit2|memory[3][1][3]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux140~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][3]~q\,
	datac => \unit2|memory[3][3][3]~q\,
	datad => \unit2|Mux140~17_combout\,
	combout => \unit2|Mux140~18_combout\);

-- Location: LCCOMB_X10_Y47_N12
\unit2|memory[1][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(3),
	combout => \unit2|memory[1][1][3]~feeder_combout\);

-- Location: FF_X10_Y47_N13
\unit2|memory[1][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][3]~q\);

-- Location: FF_X11_Y47_N3
\unit2|memory[1][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][3]~q\);

-- Location: FF_X11_Y47_N21
\unit2|memory[1][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][3]~q\);

-- Location: LCCOMB_X12_Y47_N22
\unit2|memory[1][2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[1][2][3]~feeder_combout\);

-- Location: FF_X12_Y47_N23
\unit2|memory[1][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][3]~q\);

-- Location: LCCOMB_X11_Y47_N20
\unit2|Mux140~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][3]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][3]~q\,
	datad => \unit2|memory[1][2][3]~q\,
	combout => \unit2|Mux140~12_combout\);

-- Location: LCCOMB_X11_Y47_N2
\unit2|Mux140~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux140~12_combout\ & ((\unit2|memory[1][3][3]~q\))) # (!\unit2|Mux140~12_combout\ & (\unit2|memory[1][1][3]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux140~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][3]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][3]~q\,
	datad => \unit2|Mux140~12_combout\,
	combout => \unit2|Mux140~13_combout\);

-- Location: LCCOMB_X12_Y50_N16
\unit2|memory[0][2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[0][2][3]~feeder_combout\);

-- Location: FF_X12_Y50_N17
\unit2|memory[0][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][3]~q\);

-- Location: FF_X11_Y50_N11
\unit2|memory[0][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][3]~q\);

-- Location: FF_X11_Y50_N13
\unit2|memory[0][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][3]~q\);

-- Location: LCCOMB_X12_Y50_N22
\unit2|memory[0][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[0][1][3]~feeder_combout\);

-- Location: FF_X12_Y50_N23
\unit2|memory[0][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][3]~q\);

-- Location: LCCOMB_X11_Y50_N12
\unit2|Mux140~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][3]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][3]~q\,
	datad => \unit2|memory[0][1][3]~q\,
	combout => \unit2|Mux140~14_combout\);

-- Location: LCCOMB_X11_Y50_N10
\unit2|Mux140~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux140~14_combout\ & ((\unit2|memory[0][3][3]~q\))) # (!\unit2|Mux140~14_combout\ & (\unit2|memory[0][2][3]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux140~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][3]~q\,
	datac => \unit2|memory[0][3][3]~q\,
	datad => \unit2|Mux140~14_combout\,
	combout => \unit2|Mux140~15_combout\);

-- Location: LCCOMB_X11_Y49_N20
\unit2|Mux140~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~16_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|Mux140~13_combout\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & ((\unit2|Mux140~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux140~13_combout\,
	datad => \unit2|Mux140~15_combout\,
	combout => \unit2|Mux140~16_combout\);

-- Location: LCCOMB_X11_Y49_N26
\unit2|Mux140~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux140~16_combout\ & ((\unit2|Mux140~18_combout\))) # (!\unit2|Mux140~16_combout\ & (\unit2|Mux140~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux140~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux140~11_combout\,
	datac => \unit2|Mux140~18_combout\,
	datad => \unit2|Mux140~16_combout\,
	combout => \unit2|Mux140~19_combout\);

-- Location: LCCOMB_X8_Y49_N14
\unit2|memory[7][2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[7][2][3]~feeder_combout\);

-- Location: FF_X8_Y49_N15
\unit2|memory[7][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][3]~q\);

-- Location: FF_X9_Y49_N3
\unit2|memory[5][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][3]~q\);

-- Location: FF_X8_Y49_N29
\unit2|memory[4][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][3]~q\);

-- Location: LCCOMB_X5_Y49_N4
\unit2|memory[6][2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[6][2][3]~feeder_combout\);

-- Location: FF_X5_Y49_N5
\unit2|memory[6][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][3]~q\);

-- Location: LCCOMB_X8_Y49_N28
\unit2|Mux140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][3]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][3]~q\,
	datad => \unit2|memory[6][2][3]~q\,
	combout => \unit2|Mux140~0_combout\);

-- Location: LCCOMB_X9_Y49_N2
\unit2|Mux140~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux140~0_combout\ & (\unit2|memory[7][2][3]~q\)) # (!\unit2|Mux140~0_combout\ & ((\unit2|memory[5][2][3]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][3]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][3]~q\,
	datad => \unit2|Mux140~0_combout\,
	combout => \unit2|Mux140~1_combout\);

-- Location: LCCOMB_X9_Y48_N18
\unit2|memory[6][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(3),
	combout => \unit2|memory[6][3][3]~feeder_combout\);

-- Location: FF_X9_Y48_N19
\unit2|memory[6][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][3]~q\);

-- Location: FF_X9_Y48_N25
\unit2|memory[7][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][3]~q\);

-- Location: FF_X12_Y48_N25
\unit2|memory[4][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][3]~q\);

-- Location: LCCOMB_X12_Y48_N6
\unit2|memory[5][3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[5][3][3]~feeder_combout\);

-- Location: FF_X12_Y48_N7
\unit2|memory[5][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][3]~q\);

-- Location: LCCOMB_X12_Y48_N24
\unit2|Mux140~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][3]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][3]~q\,
	datad => \unit2|memory[5][3][3]~q\,
	combout => \unit2|Mux140~7_combout\);

-- Location: LCCOMB_X9_Y48_N24
\unit2|Mux140~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux140~7_combout\ & ((\unit2|memory[7][3][3]~q\))) # (!\unit2|Mux140~7_combout\ & (\unit2|memory[6][3][3]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux140~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][3][3]~q\,
	datac => \unit2|memory[7][3][3]~q\,
	datad => \unit2|Mux140~7_combout\,
	combout => \unit2|Mux140~8_combout\);

-- Location: LCCOMB_X5_Y49_N22
\unit2|memory[5][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[5][0][3]~feeder_combout\);

-- Location: FF_X5_Y49_N23
\unit2|memory[5][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][3]~q\);

-- Location: FF_X7_Y49_N19
\unit2|memory[7][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][3]~q\);

-- Location: FF_X7_Y49_N21
\unit2|memory[4][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][3]~q\);

-- Location: LCCOMB_X6_Y49_N28
\unit2|memory[6][0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(3),
	combout => \unit2|memory[6][0][3]~feeder_combout\);

-- Location: FF_X6_Y49_N29
\unit2|memory[6][0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][3]~q\);

-- Location: LCCOMB_X7_Y49_N20
\unit2|Mux140~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~4_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][0][3]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][3]~q\,
	datad => \unit2|memory[6][0][3]~q\,
	combout => \unit2|Mux140~4_combout\);

-- Location: LCCOMB_X7_Y49_N18
\unit2|Mux140~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux140~4_combout\ & ((\unit2|memory[7][0][3]~q\))) # (!\unit2|Mux140~4_combout\ & (\unit2|memory[5][0][3]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux140~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[5][0][3]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[7][0][3]~q\,
	datad => \unit2|Mux140~4_combout\,
	combout => \unit2|Mux140~5_combout\);

-- Location: LCCOMB_X4_Y49_N6
\unit2|memory[6][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[6][1][3]~feeder_combout\);

-- Location: FF_X4_Y49_N7
\unit2|memory[6][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][3]~q\);

-- Location: FF_X3_Y49_N23
\unit2|memory[7][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][3]~q\);

-- Location: FF_X3_Y49_N21
\unit2|memory[4][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][3]~q\);

-- Location: LCCOMB_X2_Y49_N28
\unit2|memory[5][1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][3]~feeder_combout\ = tempDataIn(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(3),
	combout => \unit2|memory[5][1][3]~feeder_combout\);

-- Location: FF_X2_Y49_N29
\unit2|memory[5][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][3]~q\);

-- Location: LCCOMB_X3_Y49_N20
\unit2|Mux140~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][3]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][3]~q\,
	datad => \unit2|memory[5][1][3]~q\,
	combout => \unit2|Mux140~2_combout\);

-- Location: LCCOMB_X3_Y49_N22
\unit2|Mux140~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux140~2_combout\ & ((\unit2|memory[7][1][3]~q\))) # (!\unit2|Mux140~2_combout\ & (\unit2|memory[6][1][3]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux140~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][3]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][3]~q\,
	datad => \unit2|Mux140~2_combout\,
	combout => \unit2|Mux140~3_combout\);

-- Location: LCCOMB_X10_Y49_N10
\unit2|Mux140~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux140~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux140~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux140~5_combout\,
	datad => \unit2|Mux140~3_combout\,
	combout => \unit2|Mux140~6_combout\);

-- Location: LCCOMB_X10_Y49_N28
\unit2|Mux140~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux140~6_combout\ & ((\unit2|Mux140~8_combout\))) # (!\unit2|Mux140~6_combout\ & (\unit2|Mux140~1_combout\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux140~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux140~1_combout\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|Mux140~8_combout\,
	datad => \unit2|Mux140~6_combout\,
	combout => \unit2|Mux140~9_combout\);

-- Location: LCCOMB_X11_Y49_N4
\unit2|Mux140~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux140~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux140~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux140~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux140~19_combout\,
	datad => \unit2|Mux140~9_combout\,
	combout => \unit2|Mux140~20_combout\);

-- Location: FF_X11_Y49_N5
\unit2|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux140~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(3));

-- Location: LCCOMB_X11_Y49_N24
\data_out_cpu[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[3]~reg0feeder_combout\ = \unit2|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(3),
	combout => \data_out_cpu[3]~reg0feeder_combout\);

-- Location: FF_X11_Y49_N25
\data_out_cpu[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[3]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[3]~reg0_q\);

-- Location: IOIBUF_X0_Y47_N15
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X4_Y47_N12
\tempDataIn[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[4]~feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \tempDataIn[4]~feeder_combout\);

-- Location: FF_X4_Y47_N13
\tempDataIn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[4]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(4));

-- Location: LCCOMB_X12_Y48_N10
\unit2|memory[5][3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[5][3][4]~feeder_combout\);

-- Location: FF_X12_Y48_N11
\unit2|memory[5][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][4]~q\);

-- Location: FF_X11_Y48_N7
\unit2|memory[7][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][4]~q\);

-- Location: FF_X11_Y48_N21
\unit2|memory[6][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][4]~q\);

-- Location: LCCOMB_X10_Y48_N28
\unit2|memory[4][3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][3][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[4][3][4]~feeder_combout\);

-- Location: FF_X10_Y48_N29
\unit2|memory[4][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][4]~q\);

-- Location: LCCOMB_X11_Y48_N20
\unit2|Mux139~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~7_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|memory[6][3][4]~q\)) # (!\addressIN[3]~input_o\ & ((\unit2|memory[4][3][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[6][3][4]~q\,
	datad => \unit2|memory[4][3][4]~q\,
	combout => \unit2|Mux139~7_combout\);

-- Location: LCCOMB_X11_Y48_N6
\unit2|Mux139~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux139~7_combout\ & ((\unit2|memory[7][3][4]~q\))) # (!\unit2|Mux139~7_combout\ & (\unit2|memory[5][3][4]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux139~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][4]~q\,
	datac => \unit2|memory[7][3][4]~q\,
	datad => \unit2|Mux139~7_combout\,
	combout => \unit2|Mux139~8_combout\);

-- Location: LCCOMB_X12_Y49_N24
\unit2|memory[6][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[6][2][4]~feeder_combout\);

-- Location: FF_X12_Y49_N25
\unit2|memory[6][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][4]~q\);

-- Location: FF_X8_Y49_N11
\unit2|memory[7][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][4]~q\);

-- Location: FF_X8_Y49_N25
\unit2|memory[4][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][4]~q\);

-- Location: LCCOMB_X9_Y49_N28
\unit2|memory[5][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[5][2][4]~feeder_combout\);

-- Location: FF_X9_Y49_N29
\unit2|memory[5][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][4]~q\);

-- Location: LCCOMB_X8_Y49_N24
\unit2|Mux139~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][4]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][4]~q\,
	datad => \unit2|memory[5][2][4]~q\,
	combout => \unit2|Mux139~2_combout\);

-- Location: LCCOMB_X8_Y49_N10
\unit2|Mux139~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux139~2_combout\ & ((\unit2|memory[7][2][4]~q\))) # (!\unit2|Mux139~2_combout\ & (\unit2|memory[6][2][4]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux139~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][2][4]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][2][4]~q\,
	datad => \unit2|Mux139~2_combout\,
	combout => \unit2|Mux139~3_combout\);

-- Location: LCCOMB_X6_Y49_N14
\unit2|memory[6][0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[6][0][4]~feeder_combout\);

-- Location: FF_X6_Y49_N15
\unit2|memory[6][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][4]~q\);

-- Location: FF_X7_Y49_N23
\unit2|memory[7][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][4]~q\);

-- Location: FF_X7_Y49_N1
\unit2|memory[4][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][4]~q\);

-- Location: LCCOMB_X5_Y49_N28
\unit2|memory[5][0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[5][0][4]~feeder_combout\);

-- Location: FF_X5_Y49_N29
\unit2|memory[5][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][4]~q\);

-- Location: LCCOMB_X7_Y49_N0
\unit2|Mux139~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~4_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][0][4]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][4]~q\,
	datad => \unit2|memory[5][0][4]~q\,
	combout => \unit2|Mux139~4_combout\);

-- Location: LCCOMB_X7_Y49_N22
\unit2|Mux139~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux139~4_combout\ & ((\unit2|memory[7][0][4]~q\))) # (!\unit2|Mux139~4_combout\ & (\unit2|memory[6][0][4]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux139~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][4]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][4]~q\,
	datad => \unit2|Mux139~4_combout\,
	combout => \unit2|Mux139~5_combout\);

-- Location: LCCOMB_X7_Y50_N22
\unit2|Mux139~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~6_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|Mux139~3_combout\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & ((\unit2|Mux139~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux139~3_combout\,
	datad => \unit2|Mux139~5_combout\,
	combout => \unit2|Mux139~6_combout\);

-- Location: LCCOMB_X6_Y51_N6
\unit2|memory[7][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[7][1][4]~feeder_combout\);

-- Location: FF_X6_Y51_N7
\unit2|memory[7][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][4]~q\);

-- Location: FF_X6_Y51_N21
\unit2|memory[5][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][4]~q\);

-- Location: FF_X4_Y49_N27
\unit2|memory[4][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][4]~q\);

-- Location: LCCOMB_X4_Y49_N28
\unit2|memory[6][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[6][1][4]~feeder_combout\);

-- Location: FF_X4_Y49_N29
\unit2|memory[6][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][4]~q\);

-- Location: LCCOMB_X4_Y49_N26
\unit2|Mux139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][1][4]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][4]~q\,
	datad => \unit2|memory[6][1][4]~q\,
	combout => \unit2|Mux139~0_combout\);

-- Location: LCCOMB_X6_Y51_N20
\unit2|Mux139~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux139~0_combout\ & (\unit2|memory[7][1][4]~q\)) # (!\unit2|Mux139~0_combout\ & ((\unit2|memory[5][1][4]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux139~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][1][4]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][1][4]~q\,
	datad => \unit2|Mux139~0_combout\,
	combout => \unit2|Mux139~1_combout\);

-- Location: LCCOMB_X7_Y50_N4
\unit2|Mux139~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux139~6_combout\ & (\unit2|Mux139~8_combout\)) # (!\unit2|Mux139~6_combout\ & ((\unit2|Mux139~1_combout\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux139~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|Mux139~8_combout\,
	datac => \unit2|Mux139~6_combout\,
	datad => \unit2|Mux139~1_combout\,
	combout => \unit2|Mux139~9_combout\);

-- Location: LCCOMB_X9_Y47_N12
\unit2|memory[1][3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[1][3][4]~feeder_combout\);

-- Location: FF_X9_Y47_N13
\unit2|memory[1][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][4]~q\);

-- Location: FF_X8_Y47_N5
\unit2|memory[1][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][4]~q\);

-- Location: FF_X8_Y47_N3
\unit2|memory[1][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][4]~q\);

-- Location: LCCOMB_X7_Y47_N24
\unit2|memory[1][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[1][1][4]~feeder_combout\);

-- Location: FF_X7_Y47_N25
\unit2|memory[1][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][4]~q\);

-- Location: LCCOMB_X8_Y47_N2
\unit2|Mux139~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[1][1][4]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][4]~q\,
	datad => \unit2|memory[1][1][4]~q\,
	combout => \unit2|Mux139~10_combout\);

-- Location: LCCOMB_X8_Y47_N4
\unit2|Mux139~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux139~10_combout\ & (\unit2|memory[1][3][4]~q\)) # (!\unit2|Mux139~10_combout\ & ((\unit2|memory[1][2][4]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux139~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[1][3][4]~q\,
	datac => \unit2|memory[1][2][4]~q\,
	datad => \unit2|Mux139~10_combout\,
	combout => \unit2|Mux139~11_combout\);

-- Location: LCCOMB_X9_Y51_N4
\unit2|memory[3][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[3][2][4]~feeder_combout\);

-- Location: FF_X9_Y51_N5
\unit2|memory[3][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][4]~q\);

-- Location: FF_X8_Y51_N27
\unit2|memory[3][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][4]~q\);

-- Location: FF_X9_Y51_N3
\unit2|memory[3][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][4]~q\);

-- Location: LCCOMB_X8_Y51_N20
\unit2|memory[3][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(4),
	combout => \unit2|memory[3][1][4]~feeder_combout\);

-- Location: FF_X8_Y51_N21
\unit2|memory[3][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][4]~q\);

-- Location: LCCOMB_X9_Y51_N2
\unit2|Mux139~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~17_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[3][1][4]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][4]~q\,
	datad => \unit2|memory[3][1][4]~q\,
	combout => \unit2|Mux139~17_combout\);

-- Location: LCCOMB_X8_Y51_N26
\unit2|Mux139~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux139~17_combout\ & ((\unit2|memory[3][3][4]~q\))) # (!\unit2|Mux139~17_combout\ & (\unit2|memory[3][2][4]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux139~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[3][2][4]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][3][4]~q\,
	datad => \unit2|Mux139~17_combout\,
	combout => \unit2|Mux139~18_combout\);

-- Location: FF_X5_Y50_N1
\unit2|memory[2][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][4]~q\);

-- Location: LCCOMB_X5_Y50_N6
\unit2|memory[2][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[2][2][4]~feeder_combout\);

-- Location: FF_X5_Y50_N7
\unit2|memory[2][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][4]~q\);

-- Location: LCCOMB_X5_Y50_N0
\unit2|Mux139~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[2][2][4]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][4]~q\,
	datad => \unit2|memory[2][2][4]~q\,
	combout => \unit2|Mux139~12_combout\);

-- Location: FF_X6_Y50_N27
\unit2|memory[2][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][4]~q\);

-- Location: LCCOMB_X6_Y52_N8
\unit2|memory[2][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[2][1][4]~feeder_combout\);

-- Location: FF_X6_Y52_N9
\unit2|memory[2][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][4]~q\);

-- Location: LCCOMB_X6_Y50_N26
\unit2|Mux139~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~13_combout\ = (\unit2|Mux139~12_combout\ & (((\unit2|memory[2][3][4]~q\)) # (!\addressIN[0]~input_o\))) # (!\unit2|Mux139~12_combout\ & (\addressIN[0]~input_o\ & ((\unit2|memory[2][1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux139~12_combout\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][3][4]~q\,
	datad => \unit2|memory[2][1][4]~q\,
	combout => \unit2|Mux139~13_combout\);

-- Location: LCCOMB_X12_Y50_N0
\unit2|memory[0][1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[0][1][4]~feeder_combout\);

-- Location: FF_X12_Y50_N1
\unit2|memory[0][1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][4]~q\);

-- Location: FF_X8_Y48_N11
\unit2|memory[0][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][4]~q\);

-- Location: FF_X8_Y48_N13
\unit2|memory[0][0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][4]~q\);

-- Location: LCCOMB_X8_Y52_N14
\unit2|memory[0][2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][4]~feeder_combout\ = tempDataIn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(4),
	combout => \unit2|memory[0][2][4]~feeder_combout\);

-- Location: FF_X8_Y52_N15
\unit2|memory[0][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][4]~q\);

-- Location: LCCOMB_X8_Y48_N12
\unit2|Mux139~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~14_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[0][2][4]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][4]~q\,
	datad => \unit2|memory[0][2][4]~q\,
	combout => \unit2|Mux139~14_combout\);

-- Location: LCCOMB_X8_Y48_N10
\unit2|Mux139~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux139~14_combout\ & ((\unit2|memory[0][3][4]~q\))) # (!\unit2|Mux139~14_combout\ & (\unit2|memory[0][1][4]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux139~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][1][4]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][3][4]~q\,
	datad => \unit2|Mux139~14_combout\,
	combout => \unit2|Mux139~15_combout\);

-- Location: LCCOMB_X7_Y50_N2
\unit2|Mux139~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~16_combout\ = (\addressIN[2]~input_o\ & (((\addressIN[3]~input_o\)))) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|Mux139~13_combout\)) # (!\addressIN[3]~input_o\ & ((\unit2|Mux139~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux139~13_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \addressIN[3]~input_o\,
	datad => \unit2|Mux139~15_combout\,
	combout => \unit2|Mux139~16_combout\);

-- Location: LCCOMB_X7_Y50_N24
\unit2|Mux139~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux139~16_combout\ & ((\unit2|Mux139~18_combout\))) # (!\unit2|Mux139~16_combout\ & (\unit2|Mux139~11_combout\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux139~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux139~11_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux139~18_combout\,
	datad => \unit2|Mux139~16_combout\,
	combout => \unit2|Mux139~19_combout\);

-- Location: LCCOMB_X7_Y50_N26
\unit2|Mux139~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux139~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux139~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux139~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[4]~input_o\,
	datac => \unit2|Mux139~9_combout\,
	datad => \unit2|Mux139~19_combout\,
	combout => \unit2|Mux139~20_combout\);

-- Location: FF_X7_Y50_N27
\unit2|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux139~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(4));

-- Location: LCCOMB_X7_Y50_N16
\data_out_cpu[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[4]~reg0feeder_combout\ = \unit2|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(4),
	combout => \data_out_cpu[4]~reg0feeder_combout\);

-- Location: FF_X7_Y50_N17
\data_out_cpu[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[4]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[4]~reg0_q\);

-- Location: IOIBUF_X0_Y45_N15
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X2_Y48_N4
\tempDataIn[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[5]~feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \tempDataIn[5]~feeder_combout\);

-- Location: FF_X2_Y48_N5
\tempDataIn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[5]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(5));

-- Location: LCCOMB_X9_Y48_N30
\unit2|memory[6][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[6][3][5]~feeder_combout\);

-- Location: FF_X9_Y48_N31
\unit2|memory[6][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][5]~q\);

-- Location: LCCOMB_X9_Y48_N16
\unit2|memory[7][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][3][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[7][3][5]~feeder_combout\);

-- Location: FF_X9_Y48_N17
\unit2|memory[7][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][5]~q\);

-- Location: FF_X10_Y48_N11
\unit2|memory[4][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][5]~q\);

-- Location: LCCOMB_X12_Y48_N20
\unit2|memory[5][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(5),
	combout => \unit2|memory[5][3][5]~feeder_combout\);

-- Location: FF_X12_Y48_N21
\unit2|memory[5][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][5]~q\);

-- Location: LCCOMB_X10_Y48_N10
\unit2|Mux138~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][5]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][5]~q\,
	datad => \unit2|memory[5][3][5]~q\,
	combout => \unit2|Mux138~7_combout\);

-- Location: LCCOMB_X10_Y48_N16
\unit2|Mux138~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux138~7_combout\ & ((\unit2|memory[7][3][5]~q\))) # (!\unit2|Mux138~7_combout\ & (\unit2|memory[6][3][5]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux138~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][3][5]~q\,
	datac => \unit2|memory[7][3][5]~q\,
	datad => \unit2|Mux138~7_combout\,
	combout => \unit2|Mux138~8_combout\);

-- Location: LCCOMB_X5_Y49_N2
\unit2|memory[5][0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[5][0][5]~feeder_combout\);

-- Location: FF_X5_Y49_N3
\unit2|memory[5][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][5]~q\);

-- Location: FF_X7_Y49_N7
\unit2|memory[7][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][5]~q\);

-- Location: FF_X7_Y49_N25
\unit2|memory[4][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][5]~q\);

-- Location: LCCOMB_X6_Y49_N24
\unit2|memory[6][0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(5),
	combout => \unit2|memory[6][0][5]~feeder_combout\);

-- Location: FF_X6_Y49_N25
\unit2|memory[6][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][5]~q\);

-- Location: LCCOMB_X7_Y49_N24
\unit2|Mux138~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~4_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][0][5]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][5]~q\,
	datad => \unit2|memory[6][0][5]~q\,
	combout => \unit2|Mux138~4_combout\);

-- Location: LCCOMB_X7_Y49_N6
\unit2|Mux138~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux138~4_combout\ & ((\unit2|memory[7][0][5]~q\))) # (!\unit2|Mux138~4_combout\ & (\unit2|memory[5][0][5]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux138~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][0][5]~q\,
	datac => \unit2|memory[7][0][5]~q\,
	datad => \unit2|Mux138~4_combout\,
	combout => \unit2|Mux138~5_combout\);

-- Location: LCCOMB_X4_Y49_N4
\unit2|memory[6][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[6][1][5]~feeder_combout\);

-- Location: FF_X4_Y49_N5
\unit2|memory[6][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][5]~q\);

-- Location: FF_X3_Y49_N3
\unit2|memory[7][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][5]~q\);

-- Location: FF_X3_Y49_N29
\unit2|memory[4][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][5]~q\);

-- Location: LCCOMB_X2_Y49_N10
\unit2|memory[5][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[5][1][5]~feeder_combout\);

-- Location: FF_X2_Y49_N11
\unit2|memory[5][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][5]~q\);

-- Location: LCCOMB_X3_Y49_N28
\unit2|Mux138~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][5]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][5]~q\,
	datad => \unit2|memory[5][1][5]~q\,
	combout => \unit2|Mux138~2_combout\);

-- Location: LCCOMB_X3_Y49_N2
\unit2|Mux138~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux138~2_combout\ & ((\unit2|memory[7][1][5]~q\))) # (!\unit2|Mux138~2_combout\ & (\unit2|memory[6][1][5]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux138~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][5]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][5]~q\,
	datad => \unit2|Mux138~2_combout\,
	combout => \unit2|Mux138~3_combout\);

-- Location: LCCOMB_X7_Y50_N30
\unit2|Mux138~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux138~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux138~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux138~5_combout\,
	datad => \unit2|Mux138~3_combout\,
	combout => \unit2|Mux138~6_combout\);

-- Location: LCCOMB_X8_Y49_N4
\unit2|memory[7][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[7][2][5]~feeder_combout\);

-- Location: FF_X8_Y49_N5
\unit2|memory[7][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][5]~q\);

-- Location: FF_X9_Y49_N15
\unit2|memory[5][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][5]~q\);

-- Location: FF_X12_Y49_N5
\unit2|memory[4][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][5]~q\);

-- Location: LCCOMB_X12_Y49_N10
\unit2|memory[6][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(5),
	combout => \unit2|memory[6][2][5]~feeder_combout\);

-- Location: FF_X12_Y49_N11
\unit2|memory[6][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][5]~q\);

-- Location: LCCOMB_X12_Y49_N4
\unit2|Mux138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][5]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][5]~q\,
	datad => \unit2|memory[6][2][5]~q\,
	combout => \unit2|Mux138~0_combout\);

-- Location: LCCOMB_X9_Y49_N14
\unit2|Mux138~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux138~0_combout\ & (\unit2|memory[7][2][5]~q\)) # (!\unit2|Mux138~0_combout\ & ((\unit2|memory[5][2][5]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux138~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[7][2][5]~q\,
	datac => \unit2|memory[5][2][5]~q\,
	datad => \unit2|Mux138~0_combout\,
	combout => \unit2|Mux138~1_combout\);

-- Location: LCCOMB_X7_Y50_N8
\unit2|Mux138~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux138~6_combout\ & (\unit2|Mux138~8_combout\)) # (!\unit2|Mux138~6_combout\ & ((\unit2|Mux138~1_combout\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux138~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux138~8_combout\,
	datac => \unit2|Mux138~6_combout\,
	datad => \unit2|Mux138~1_combout\,
	combout => \unit2|Mux138~9_combout\);

-- Location: LCCOMB_X6_Y50_N28
\unit2|memory[2][3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[2][3][5]~feeder_combout\);

-- Location: FF_X6_Y50_N29
\unit2|memory[2][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][5]~q\);

-- Location: FF_X5_Y50_N23
\unit2|memory[2][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][5]~q\);

-- Location: FF_X5_Y50_N17
\unit2|memory[2][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][5]~q\);

-- Location: LCCOMB_X4_Y50_N24
\unit2|memory[2][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[2][1][5]~feeder_combout\);

-- Location: FF_X4_Y50_N25
\unit2|memory[2][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][5]~q\);

-- Location: LCCOMB_X5_Y50_N16
\unit2|Mux138~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][5]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][5]~q\,
	datad => \unit2|memory[2][1][5]~q\,
	combout => \unit2|Mux138~10_combout\);

-- Location: LCCOMB_X5_Y50_N22
\unit2|Mux138~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux138~10_combout\ & (\unit2|memory[2][3][5]~q\)) # (!\unit2|Mux138~10_combout\ & ((\unit2|memory[2][2][5]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux138~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][5]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][5]~q\,
	datad => \unit2|Mux138~10_combout\,
	combout => \unit2|Mux138~11_combout\);

-- Location: LCCOMB_X8_Y51_N24
\unit2|memory[3][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(5),
	combout => \unit2|memory[3][1][5]~feeder_combout\);

-- Location: FF_X8_Y51_N25
\unit2|memory[3][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][5]~q\);

-- Location: FF_X8_Y51_N11
\unit2|memory[3][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][5]~q\);

-- Location: FF_X9_Y51_N23
\unit2|memory[3][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][5]~q\);

-- Location: LCCOMB_X9_Y51_N12
\unit2|memory[3][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(5),
	combout => \unit2|memory[3][2][5]~feeder_combout\);

-- Location: FF_X9_Y51_N13
\unit2|memory[3][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][5]~q\);

-- Location: LCCOMB_X9_Y51_N22
\unit2|Mux138~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][5]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][5]~q\,
	datad => \unit2|memory[3][2][5]~q\,
	combout => \unit2|Mux138~17_combout\);

-- Location: LCCOMB_X8_Y51_N10
\unit2|Mux138~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux138~17_combout\ & ((\unit2|memory[3][3][5]~q\))) # (!\unit2|Mux138~17_combout\ & (\unit2|memory[3][1][5]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux138~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][5]~q\,
	datac => \unit2|memory[3][3][5]~q\,
	datad => \unit2|Mux138~17_combout\,
	combout => \unit2|Mux138~18_combout\);

-- Location: LCCOMB_X10_Y47_N18
\unit2|memory[1][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[1][1][5]~feeder_combout\);

-- Location: FF_X10_Y47_N19
\unit2|memory[1][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][5]~q\);

-- Location: FF_X11_Y47_N23
\unit2|memory[1][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][5]~q\);

-- Location: FF_X11_Y47_N13
\unit2|memory[1][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][5]~q\);

-- Location: LCCOMB_X12_Y47_N24
\unit2|memory[1][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[1][2][5]~feeder_combout\);

-- Location: FF_X12_Y47_N25
\unit2|memory[1][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][5]~q\);

-- Location: LCCOMB_X11_Y47_N12
\unit2|Mux138~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][5]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][5]~q\,
	datad => \unit2|memory[1][2][5]~q\,
	combout => \unit2|Mux138~12_combout\);

-- Location: LCCOMB_X11_Y47_N22
\unit2|Mux138~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux138~12_combout\ & ((\unit2|memory[1][3][5]~q\))) # (!\unit2|Mux138~12_combout\ & (\unit2|memory[1][1][5]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux138~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[1][1][5]~q\,
	datac => \unit2|memory[1][3][5]~q\,
	datad => \unit2|Mux138~12_combout\,
	combout => \unit2|Mux138~13_combout\);

-- Location: LCCOMB_X7_Y52_N4
\unit2|memory[0][2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[0][2][5]~feeder_combout\);

-- Location: FF_X7_Y52_N5
\unit2|memory[0][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][5]~q\);

-- Location: FF_X8_Y48_N7
\unit2|memory[0][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][5]~q\);

-- Location: FF_X8_Y48_N21
\unit2|memory[0][0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][5]~q\);

-- Location: LCCOMB_X9_Y50_N4
\unit2|memory[0][1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][5]~feeder_combout\ = tempDataIn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(5),
	combout => \unit2|memory[0][1][5]~feeder_combout\);

-- Location: FF_X9_Y50_N5
\unit2|memory[0][1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][5]~q\);

-- Location: LCCOMB_X8_Y48_N20
\unit2|Mux138~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][5]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][5]~q\,
	datad => \unit2|memory[0][1][5]~q\,
	combout => \unit2|Mux138~14_combout\);

-- Location: LCCOMB_X8_Y48_N6
\unit2|Mux138~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux138~14_combout\ & ((\unit2|memory[0][3][5]~q\))) # (!\unit2|Mux138~14_combout\ & (\unit2|memory[0][2][5]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux138~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][2][5]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][3][5]~q\,
	datad => \unit2|Mux138~14_combout\,
	combout => \unit2|Mux138~15_combout\);

-- Location: LCCOMB_X7_Y50_N18
\unit2|Mux138~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~16_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & (\unit2|Mux138~13_combout\)) # (!\addressIN[2]~input_o\ & ((\unit2|Mux138~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux138~13_combout\,
	datad => \unit2|Mux138~15_combout\,
	combout => \unit2|Mux138~16_combout\);

-- Location: LCCOMB_X7_Y50_N20
\unit2|Mux138~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux138~16_combout\ & ((\unit2|Mux138~18_combout\))) # (!\unit2|Mux138~16_combout\ & (\unit2|Mux138~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux138~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux138~11_combout\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux138~18_combout\,
	datad => \unit2|Mux138~16_combout\,
	combout => \unit2|Mux138~19_combout\);

-- Location: LCCOMB_X7_Y50_N28
\unit2|Mux138~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux138~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux138~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux138~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[4]~input_o\,
	datac => \unit2|Mux138~9_combout\,
	datad => \unit2|Mux138~19_combout\,
	combout => \unit2|Mux138~20_combout\);

-- Location: FF_X7_Y50_N29
\unit2|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux138~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(5));

-- Location: LCCOMB_X7_Y50_N10
\data_out_cpu[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[5]~reg0feeder_combout\ = \unit2|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(5),
	combout => \data_out_cpu[5]~reg0feeder_combout\);

-- Location: FF_X7_Y50_N11
\data_out_cpu[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[5]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[5]~reg0_q\);

-- Location: IOIBUF_X0_Y47_N1
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X4_Y47_N14
\tempDataIn[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[6]~feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \tempDataIn[6]~feeder_combout\);

-- Location: FF_X4_Y47_N15
\tempDataIn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[6]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(6));

-- Location: LCCOMB_X12_Y48_N18
\unit2|memory[5][3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[5][3][6]~feeder_combout\);

-- Location: FF_X12_Y48_N19
\unit2|memory[5][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][6]~q\);

-- Location: FF_X11_Y48_N19
\unit2|memory[7][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][6]~q\);

-- Location: FF_X11_Y48_N25
\unit2|memory[6][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][6]~q\);

-- Location: LCCOMB_X10_Y48_N14
\unit2|memory[4][3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][3][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[4][3][6]~feeder_combout\);

-- Location: FF_X10_Y48_N15
\unit2|memory[4][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][6]~q\);

-- Location: LCCOMB_X11_Y48_N24
\unit2|Mux137~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~7_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|memory[6][3][6]~q\)) # (!\addressIN[3]~input_o\ & ((\unit2|memory[4][3][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[6][3][6]~q\,
	datad => \unit2|memory[4][3][6]~q\,
	combout => \unit2|Mux137~7_combout\);

-- Location: LCCOMB_X11_Y48_N18
\unit2|Mux137~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux137~7_combout\ & ((\unit2|memory[7][3][6]~q\))) # (!\unit2|Mux137~7_combout\ & (\unit2|memory[5][3][6]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux137~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][6]~q\,
	datac => \unit2|memory[7][3][6]~q\,
	datad => \unit2|Mux137~7_combout\,
	combout => \unit2|Mux137~8_combout\);

-- Location: LCCOMB_X6_Y51_N10
\unit2|memory[7][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[7][1][6]~feeder_combout\);

-- Location: FF_X6_Y51_N11
\unit2|memory[7][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][6]~q\);

-- Location: FF_X6_Y51_N29
\unit2|memory[5][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][6]~q\);

-- Location: FF_X4_Y49_N17
\unit2|memory[4][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][6]~q\);

-- Location: LCCOMB_X4_Y49_N18
\unit2|memory[6][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[6][1][6]~feeder_combout\);

-- Location: FF_X4_Y49_N19
\unit2|memory[6][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][6]~q\);

-- Location: LCCOMB_X4_Y49_N16
\unit2|Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][1][6]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][6]~q\,
	datad => \unit2|memory[6][1][6]~q\,
	combout => \unit2|Mux137~0_combout\);

-- Location: LCCOMB_X6_Y51_N28
\unit2|Mux137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux137~0_combout\ & (\unit2|memory[7][1][6]~q\)) # (!\unit2|Mux137~0_combout\ & ((\unit2|memory[5][1][6]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux137~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][1][6]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][1][6]~q\,
	datad => \unit2|Mux137~0_combout\,
	combout => \unit2|Mux137~1_combout\);

-- Location: LCCOMB_X12_Y49_N14
\unit2|memory[6][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[6][2][6]~feeder_combout\);

-- Location: FF_X12_Y49_N15
\unit2|memory[6][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][6]~q\);

-- Location: FF_X8_Y49_N9
\unit2|memory[7][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][6]~q\);

-- Location: FF_X8_Y49_N3
\unit2|memory[4][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][6]~q\);

-- Location: LCCOMB_X9_Y49_N16
\unit2|memory[5][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[5][2][6]~feeder_combout\);

-- Location: FF_X9_Y49_N17
\unit2|memory[5][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][6]~q\);

-- Location: LCCOMB_X8_Y49_N2
\unit2|Mux137~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][6]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][6]~q\,
	datad => \unit2|memory[5][2][6]~q\,
	combout => \unit2|Mux137~2_combout\);

-- Location: LCCOMB_X8_Y49_N8
\unit2|Mux137~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux137~2_combout\ & ((\unit2|memory[7][2][6]~q\))) # (!\unit2|Mux137~2_combout\ & (\unit2|memory[6][2][6]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux137~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][2][6]~q\,
	datac => \unit2|memory[7][2][6]~q\,
	datad => \unit2|Mux137~2_combout\,
	combout => \unit2|Mux137~3_combout\);

-- Location: LCCOMB_X6_Y49_N26
\unit2|memory[6][0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[6][0][6]~feeder_combout\);

-- Location: FF_X6_Y49_N27
\unit2|memory[6][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][6]~q\);

-- Location: FF_X7_Y49_N15
\unit2|memory[7][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][6]~q\);

-- Location: FF_X7_Y49_N29
\unit2|memory[4][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][6]~q\);

-- Location: LCCOMB_X5_Y49_N24
\unit2|memory[5][0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[5][0][6]~feeder_combout\);

-- Location: FF_X5_Y49_N25
\unit2|memory[5][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][6]~q\);

-- Location: LCCOMB_X7_Y49_N28
\unit2|Mux137~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~4_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][0][6]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][6]~q\,
	datad => \unit2|memory[5][0][6]~q\,
	combout => \unit2|Mux137~4_combout\);

-- Location: LCCOMB_X7_Y49_N14
\unit2|Mux137~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux137~4_combout\ & ((\unit2|memory[7][0][6]~q\))) # (!\unit2|Mux137~4_combout\ & (\unit2|memory[6][0][6]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux137~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][6]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][6]~q\,
	datad => \unit2|Mux137~4_combout\,
	combout => \unit2|Mux137~5_combout\);

-- Location: LCCOMB_X8_Y49_N18
\unit2|Mux137~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~6_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & (\unit2|Mux137~3_combout\)) # (!\addressIN[1]~input_o\ & ((\unit2|Mux137~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|Mux137~3_combout\,
	datad => \unit2|Mux137~5_combout\,
	combout => \unit2|Mux137~6_combout\);

-- Location: LCCOMB_X7_Y50_N14
\unit2|Mux137~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux137~6_combout\ & (\unit2|Mux137~8_combout\)) # (!\unit2|Mux137~6_combout\ & ((\unit2|Mux137~1_combout\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux137~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|Mux137~8_combout\,
	datac => \unit2|Mux137~1_combout\,
	datad => \unit2|Mux137~6_combout\,
	combout => \unit2|Mux137~9_combout\);

-- Location: LCCOMB_X11_Y47_N6
\unit2|memory[1][3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[1][3][6]~feeder_combout\);

-- Location: FF_X11_Y47_N7
\unit2|memory[1][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][6]~q\);

-- Location: FF_X10_Y50_N1
\unit2|memory[1][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][6]~q\);

-- Location: FF_X11_Y47_N9
\unit2|memory[1][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][6]~q\);

-- Location: LCCOMB_X10_Y47_N8
\unit2|memory[1][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[1][1][6]~feeder_combout\);

-- Location: FF_X10_Y47_N9
\unit2|memory[1][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][6]~q\);

-- Location: LCCOMB_X11_Y47_N8
\unit2|Mux137~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[1][1][6]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][6]~q\,
	datad => \unit2|memory[1][1][6]~q\,
	combout => \unit2|Mux137~10_combout\);

-- Location: LCCOMB_X10_Y50_N0
\unit2|Mux137~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux137~10_combout\ & (\unit2|memory[1][3][6]~q\)) # (!\unit2|Mux137~10_combout\ & ((\unit2|memory[1][2][6]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux137~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][3][6]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][2][6]~q\,
	datad => \unit2|Mux137~10_combout\,
	combout => \unit2|Mux137~11_combout\);

-- Location: LCCOMB_X9_Y51_N8
\unit2|memory[3][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[3][2][6]~feeder_combout\);

-- Location: FF_X9_Y51_N9
\unit2|memory[3][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][6]~q\);

-- Location: FF_X10_Y50_N7
\unit2|memory[3][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][6]~q\);

-- Location: FF_X9_Y51_N31
\unit2|memory[3][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][6]~q\);

-- Location: LCCOMB_X8_Y51_N8
\unit2|memory[3][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[3][1][6]~feeder_combout\);

-- Location: FF_X8_Y51_N9
\unit2|memory[3][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][6]~q\);

-- Location: LCCOMB_X9_Y51_N30
\unit2|Mux137~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~17_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[3][1][6]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][6]~q\,
	datad => \unit2|memory[3][1][6]~q\,
	combout => \unit2|Mux137~17_combout\);

-- Location: LCCOMB_X10_Y50_N6
\unit2|Mux137~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux137~17_combout\ & ((\unit2|memory[3][3][6]~q\))) # (!\unit2|Mux137~17_combout\ & (\unit2|memory[3][2][6]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux137~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[3][2][6]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][3][6]~q\,
	datad => \unit2|Mux137~17_combout\,
	combout => \unit2|Mux137~18_combout\);

-- Location: LCCOMB_X12_Y50_N30
\unit2|memory[0][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[0][1][6]~feeder_combout\);

-- Location: FF_X12_Y50_N31
\unit2|memory[0][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][6]~q\);

-- Location: FF_X11_Y50_N15
\unit2|memory[0][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][6]~q\);

-- Location: FF_X11_Y50_N21
\unit2|memory[0][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][6]~q\);

-- Location: LCCOMB_X12_Y50_N24
\unit2|memory[0][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[0][2][6]~feeder_combout\);

-- Location: FF_X12_Y50_N25
\unit2|memory[0][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][6]~q\);

-- Location: LCCOMB_X11_Y50_N20
\unit2|Mux137~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~14_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[0][2][6]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][6]~q\,
	datad => \unit2|memory[0][2][6]~q\,
	combout => \unit2|Mux137~14_combout\);

-- Location: LCCOMB_X11_Y50_N14
\unit2|Mux137~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux137~14_combout\ & ((\unit2|memory[0][3][6]~q\))) # (!\unit2|Mux137~14_combout\ & (\unit2|memory[0][1][6]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux137~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][1][6]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][3][6]~q\,
	datad => \unit2|Mux137~14_combout\,
	combout => \unit2|Mux137~15_combout\);

-- Location: LCCOMB_X4_Y50_N2
\unit2|memory[2][1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(6),
	combout => \unit2|memory[2][1][6]~feeder_combout\);

-- Location: FF_X4_Y50_N3
\unit2|memory[2][1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][6]~q\);

-- Location: FF_X6_Y50_N11
\unit2|memory[2][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][6]~q\);

-- Location: FF_X5_Y50_N29
\unit2|memory[2][0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][6]~q\);

-- Location: LCCOMB_X5_Y50_N2
\unit2|memory[2][2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][6]~feeder_combout\ = tempDataIn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(6),
	combout => \unit2|memory[2][2][6]~feeder_combout\);

-- Location: FF_X5_Y50_N3
\unit2|memory[2][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][6]~q\);

-- Location: LCCOMB_X5_Y50_N28
\unit2|Mux137~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[2][2][6]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][6]~q\,
	datad => \unit2|memory[2][2][6]~q\,
	combout => \unit2|Mux137~12_combout\);

-- Location: LCCOMB_X6_Y50_N10
\unit2|Mux137~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux137~12_combout\ & ((\unit2|memory[2][3][6]~q\))) # (!\unit2|Mux137~12_combout\ & (\unit2|memory[2][1][6]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux137~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[2][1][6]~q\,
	datac => \unit2|memory[2][3][6]~q\,
	datad => \unit2|Mux137~12_combout\,
	combout => \unit2|Mux137~13_combout\);

-- Location: LCCOMB_X11_Y50_N0
\unit2|Mux137~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~16_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|Mux137~13_combout\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|Mux137~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux137~15_combout\,
	datad => \unit2|Mux137~13_combout\,
	combout => \unit2|Mux137~16_combout\);

-- Location: LCCOMB_X11_Y50_N18
\unit2|Mux137~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux137~16_combout\ & ((\unit2|Mux137~18_combout\))) # (!\unit2|Mux137~16_combout\ & (\unit2|Mux137~11_combout\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux137~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux137~11_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux137~18_combout\,
	datad => \unit2|Mux137~16_combout\,
	combout => \unit2|Mux137~19_combout\);

-- Location: LCCOMB_X7_Y50_N6
\unit2|Mux137~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux137~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux137~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux137~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[4]~input_o\,
	datac => \unit2|Mux137~9_combout\,
	datad => \unit2|Mux137~19_combout\,
	combout => \unit2|Mux137~20_combout\);

-- Location: FF_X7_Y50_N7
\unit2|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux137~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(6));

-- Location: LCCOMB_X7_Y51_N0
\data_out_cpu[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[6]~reg0feeder_combout\ = \unit2|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(6),
	combout => \data_out_cpu[6]~reg0feeder_combout\);

-- Location: FF_X7_Y51_N1
\data_out_cpu[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[6]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[6]~reg0_q\);

-- Location: IOIBUF_X0_Y48_N1
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X2_Y48_N6
\tempDataIn[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[7]~feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \tempDataIn[7]~feeder_combout\);

-- Location: FF_X2_Y48_N7
\tempDataIn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[7]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(7));

-- Location: LCCOMB_X8_Y51_N22
\unit2|memory[3][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[3][1][7]~feeder_combout\);

-- Location: FF_X8_Y51_N23
\unit2|memory[3][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][7]~q\);

-- Location: FF_X8_Y51_N29
\unit2|memory[3][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][7]~q\);

-- Location: FF_X9_Y51_N7
\unit2|memory[3][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][7]~q\);

-- Location: LCCOMB_X9_Y51_N16
\unit2|memory[3][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[3][2][7]~feeder_combout\);

-- Location: FF_X9_Y51_N17
\unit2|memory[3][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][7]~q\);

-- Location: LCCOMB_X9_Y51_N6
\unit2|Mux136~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~17_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[3][2][7]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[3][0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[3][0][7]~q\,
	datad => \unit2|memory[3][2][7]~q\,
	combout => \unit2|Mux136~17_combout\);

-- Location: LCCOMB_X8_Y51_N28
\unit2|Mux136~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux136~17_combout\ & ((\unit2|memory[3][3][7]~q\))) # (!\unit2|Mux136~17_combout\ & (\unit2|memory[3][1][7]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux136~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[3][1][7]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][3][7]~q\,
	datad => \unit2|Mux136~17_combout\,
	combout => \unit2|Mux136~18_combout\);

-- Location: LCCOMB_X10_Y47_N22
\unit2|memory[1][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(7),
	combout => \unit2|memory[1][1][7]~feeder_combout\);

-- Location: FF_X10_Y47_N23
\unit2|memory[1][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][7]~q\);

-- Location: FF_X11_Y47_N19
\unit2|memory[1][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][7]~q\);

-- Location: FF_X11_Y47_N17
\unit2|memory[1][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][7]~q\);

-- Location: LCCOMB_X12_Y47_N6
\unit2|memory[1][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(7),
	combout => \unit2|memory[1][2][7]~feeder_combout\);

-- Location: FF_X12_Y47_N7
\unit2|memory[1][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][7]~q\);

-- Location: LCCOMB_X11_Y47_N16
\unit2|Mux136~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[1][2][7]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[1][0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][0][7]~q\,
	datad => \unit2|memory[1][2][7]~q\,
	combout => \unit2|Mux136~12_combout\);

-- Location: LCCOMB_X11_Y47_N18
\unit2|Mux136~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux136~12_combout\ & ((\unit2|memory[1][3][7]~q\))) # (!\unit2|Mux136~12_combout\ & (\unit2|memory[1][1][7]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux136~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[1][1][7]~q\,
	datac => \unit2|memory[1][3][7]~q\,
	datad => \unit2|Mux136~12_combout\,
	combout => \unit2|Mux136~13_combout\);

-- Location: LCCOMB_X12_Y50_N18
\unit2|memory[0][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[0][2][7]~feeder_combout\);

-- Location: FF_X12_Y50_N19
\unit2|memory[0][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][7]~q\);

-- Location: FF_X11_Y50_N27
\unit2|memory[0][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][7]~q\);

-- Location: FF_X11_Y50_N17
\unit2|memory[0][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][7]~q\);

-- Location: LCCOMB_X12_Y50_N4
\unit2|memory[0][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[0][1][7]~feeder_combout\);

-- Location: FF_X12_Y50_N5
\unit2|memory[0][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][7]~q\);

-- Location: LCCOMB_X11_Y50_N16
\unit2|Mux136~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][7]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][7]~q\,
	datad => \unit2|memory[0][1][7]~q\,
	combout => \unit2|Mux136~14_combout\);

-- Location: LCCOMB_X11_Y50_N26
\unit2|Mux136~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux136~14_combout\ & ((\unit2|memory[0][3][7]~q\))) # (!\unit2|Mux136~14_combout\ & (\unit2|memory[0][2][7]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux136~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][7]~q\,
	datac => \unit2|memory[0][3][7]~q\,
	datad => \unit2|Mux136~14_combout\,
	combout => \unit2|Mux136~15_combout\);

-- Location: LCCOMB_X11_Y49_N8
\unit2|Mux136~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~16_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|Mux136~13_combout\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & ((\unit2|Mux136~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux136~13_combout\,
	datad => \unit2|Mux136~15_combout\,
	combout => \unit2|Mux136~16_combout\);

-- Location: LCCOMB_X6_Y50_N4
\unit2|memory[2][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[2][3][7]~feeder_combout\);

-- Location: FF_X6_Y50_N5
\unit2|memory[2][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][7]~q\);

-- Location: FF_X5_Y50_N11
\unit2|memory[2][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][7]~q\);

-- Location: FF_X5_Y50_N21
\unit2|memory[2][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][7]~q\);

-- Location: LCCOMB_X4_Y50_N12
\unit2|memory[2][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(7),
	combout => \unit2|memory[2][1][7]~feeder_combout\);

-- Location: FF_X4_Y50_N13
\unit2|memory[2][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][7]~q\);

-- Location: LCCOMB_X5_Y50_N20
\unit2|Mux136~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][7]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][7]~q\,
	datad => \unit2|memory[2][1][7]~q\,
	combout => \unit2|Mux136~10_combout\);

-- Location: LCCOMB_X5_Y50_N10
\unit2|Mux136~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux136~10_combout\ & (\unit2|memory[2][3][7]~q\)) # (!\unit2|Mux136~10_combout\ & ((\unit2|memory[2][2][7]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux136~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][7]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][7]~q\,
	datad => \unit2|Mux136~10_combout\,
	combout => \unit2|Mux136~11_combout\);

-- Location: LCCOMB_X11_Y49_N10
\unit2|Mux136~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux136~16_combout\ & (\unit2|Mux136~18_combout\)) # (!\unit2|Mux136~16_combout\ & ((\unit2|Mux136~11_combout\))))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux136~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux136~18_combout\,
	datac => \unit2|Mux136~16_combout\,
	datad => \unit2|Mux136~11_combout\,
	combout => \unit2|Mux136~19_combout\);

-- Location: LCCOMB_X9_Y48_N14
\unit2|memory[6][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[6][3][7]~feeder_combout\);

-- Location: FF_X9_Y48_N15
\unit2|memory[6][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][7]~q\);

-- Location: FF_X9_Y48_N1
\unit2|memory[7][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][7]~q\);

-- Location: FF_X12_Y48_N15
\unit2|memory[4][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][7]~q\);

-- Location: LCCOMB_X12_Y48_N28
\unit2|memory[5][3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[5][3][7]~feeder_combout\);

-- Location: FF_X12_Y48_N29
\unit2|memory[5][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][7]~q\);

-- Location: LCCOMB_X12_Y48_N14
\unit2|Mux136~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][7]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][7]~q\,
	datad => \unit2|memory[5][3][7]~q\,
	combout => \unit2|Mux136~7_combout\);

-- Location: LCCOMB_X9_Y48_N0
\unit2|Mux136~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux136~7_combout\ & ((\unit2|memory[7][3][7]~q\))) # (!\unit2|Mux136~7_combout\ & (\unit2|memory[6][3][7]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux136~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][3][7]~q\,
	datac => \unit2|memory[7][3][7]~q\,
	datad => \unit2|Mux136~7_combout\,
	combout => \unit2|Mux136~8_combout\);

-- Location: LCCOMB_X10_Y49_N2
\unit2|memory[7][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(7),
	combout => \unit2|memory[7][2][7]~feeder_combout\);

-- Location: FF_X10_Y49_N3
\unit2|memory[7][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][7]~q\);

-- Location: FF_X9_Y49_N7
\unit2|memory[5][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][7]~q\);

-- Location: FF_X12_Y49_N31
\unit2|memory[4][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][7]~q\);

-- Location: LCCOMB_X12_Y49_N28
\unit2|memory[6][2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[6][2][7]~feeder_combout\);

-- Location: FF_X12_Y49_N29
\unit2|memory[6][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][7]~q\);

-- Location: LCCOMB_X12_Y49_N30
\unit2|Mux136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][7]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][7]~q\,
	datad => \unit2|memory[6][2][7]~q\,
	combout => \unit2|Mux136~0_combout\);

-- Location: LCCOMB_X9_Y49_N6
\unit2|Mux136~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux136~0_combout\ & (\unit2|memory[7][2][7]~q\)) # (!\unit2|Mux136~0_combout\ & ((\unit2|memory[5][2][7]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][7]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][7]~q\,
	datad => \unit2|Mux136~0_combout\,
	combout => \unit2|Mux136~1_combout\);

-- Location: LCCOMB_X5_Y49_N26
\unit2|memory[5][0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[5][0][7]~feeder_combout\);

-- Location: FF_X5_Y49_N27
\unit2|memory[5][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][7]~q\);

-- Location: FF_X7_Y49_N27
\unit2|memory[7][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][7]~q\);

-- Location: FF_X7_Y49_N13
\unit2|memory[4][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][7]~q\);

-- Location: LCCOMB_X6_Y49_N8
\unit2|memory[6][0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(7),
	combout => \unit2|memory[6][0][7]~feeder_combout\);

-- Location: FF_X6_Y49_N9
\unit2|memory[6][0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][7]~q\);

-- Location: LCCOMB_X7_Y49_N12
\unit2|Mux136~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~4_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][0][7]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][7]~q\,
	datad => \unit2|memory[6][0][7]~q\,
	combout => \unit2|Mux136~4_combout\);

-- Location: LCCOMB_X7_Y49_N26
\unit2|Mux136~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux136~4_combout\ & ((\unit2|memory[7][0][7]~q\))) # (!\unit2|Mux136~4_combout\ & (\unit2|memory[5][0][7]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux136~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][0][7]~q\,
	datac => \unit2|memory[7][0][7]~q\,
	datad => \unit2|Mux136~4_combout\,
	combout => \unit2|Mux136~5_combout\);

-- Location: LCCOMB_X4_Y49_N2
\unit2|memory[6][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[6][1][7]~feeder_combout\);

-- Location: FF_X4_Y49_N3
\unit2|memory[6][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][7]~q\);

-- Location: FF_X3_Y49_N11
\unit2|memory[7][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][7]~q\);

-- Location: FF_X3_Y49_N17
\unit2|memory[4][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][7]~q\);

-- Location: LCCOMB_X2_Y49_N24
\unit2|memory[5][1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][7]~feeder_combout\ = tempDataIn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(7),
	combout => \unit2|memory[5][1][7]~feeder_combout\);

-- Location: FF_X2_Y49_N25
\unit2|memory[5][1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][7]~q\);

-- Location: LCCOMB_X3_Y49_N16
\unit2|Mux136~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][7]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][7]~q\,
	datad => \unit2|memory[5][1][7]~q\,
	combout => \unit2|Mux136~2_combout\);

-- Location: LCCOMB_X3_Y49_N10
\unit2|Mux136~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux136~2_combout\ & ((\unit2|memory[7][1][7]~q\))) # (!\unit2|Mux136~2_combout\ & (\unit2|memory[6][1][7]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux136~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][7]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][7]~q\,
	datad => \unit2|Mux136~2_combout\,
	combout => \unit2|Mux136~3_combout\);

-- Location: LCCOMB_X10_Y49_N20
\unit2|Mux136~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux136~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux136~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux136~5_combout\,
	datad => \unit2|Mux136~3_combout\,
	combout => \unit2|Mux136~6_combout\);

-- Location: LCCOMB_X10_Y49_N14
\unit2|Mux136~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux136~6_combout\ & (\unit2|Mux136~8_combout\)) # (!\unit2|Mux136~6_combout\ & ((\unit2|Mux136~1_combout\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux136~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux136~8_combout\,
	datac => \unit2|Mux136~1_combout\,
	datad => \unit2|Mux136~6_combout\,
	combout => \unit2|Mux136~9_combout\);

-- Location: LCCOMB_X11_Y49_N14
\unit2|Mux136~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux136~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux136~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux136~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux136~19_combout\,
	datac => \addressIN[4]~input_o\,
	datad => \unit2|Mux136~9_combout\,
	combout => \unit2|Mux136~20_combout\);

-- Location: FF_X11_Y49_N15
\unit2|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux136~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(7));

-- Location: LCCOMB_X11_Y49_N2
\data_out_cpu[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[7]~reg0feeder_combout\ = \unit2|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(7),
	combout => \data_out_cpu[7]~reg0feeder_combout\);

-- Location: FF_X11_Y49_N3
\data_out_cpu[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[7]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[7]~reg0_q\);

-- Location: IOIBUF_X0_Y47_N22
\data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LCCOMB_X3_Y47_N22
\tempDataIn[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[8]~feeder_combout\ = \data_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[8]~input_o\,
	combout => \tempDataIn[8]~feeder_combout\);

-- Location: FF_X3_Y47_N23
\tempDataIn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[8]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(8));

-- Location: LCCOMB_X10_Y47_N24
\unit2|memory[5][3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[5][3][8]~feeder_combout\);

-- Location: FF_X10_Y47_N25
\unit2|memory[5][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][8]~q\);

-- Location: FF_X11_Y48_N31
\unit2|memory[7][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][8]~q\);

-- Location: FF_X10_Y48_N25
\unit2|memory[4][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][8]~q\);

-- Location: LCCOMB_X11_Y48_N16
\unit2|memory[6][3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[6][3][8]~feeder_combout\);

-- Location: FF_X11_Y48_N17
\unit2|memory[6][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][8]~q\);

-- Location: LCCOMB_X10_Y48_N24
\unit2|Mux135~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~7_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][3][8]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][8]~q\,
	datad => \unit2|memory[6][3][8]~q\,
	combout => \unit2|Mux135~7_combout\);

-- Location: LCCOMB_X11_Y48_N30
\unit2|Mux135~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux135~7_combout\ & ((\unit2|memory[7][3][8]~q\))) # (!\unit2|Mux135~7_combout\ & (\unit2|memory[5][3][8]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux135~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][8]~q\,
	datac => \unit2|memory[7][3][8]~q\,
	datad => \unit2|Mux135~7_combout\,
	combout => \unit2|Mux135~8_combout\);

-- Location: LCCOMB_X5_Y48_N16
\unit2|memory[7][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[7][1][8]~feeder_combout\);

-- Location: FF_X5_Y48_N17
\unit2|memory[7][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][8]~q\);

-- Location: FF_X4_Y48_N1
\unit2|memory[5][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][8]~q\);

-- Location: FF_X4_Y49_N15
\unit2|memory[4][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][8]~q\);

-- Location: LCCOMB_X4_Y49_N0
\unit2|memory[6][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[6][1][8]~feeder_combout\);

-- Location: FF_X4_Y49_N1
\unit2|memory[6][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][8]~q\);

-- Location: LCCOMB_X4_Y49_N14
\unit2|Mux135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][1][8]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][8]~q\,
	datad => \unit2|memory[6][1][8]~q\,
	combout => \unit2|Mux135~0_combout\);

-- Location: LCCOMB_X4_Y48_N0
\unit2|Mux135~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux135~0_combout\ & (\unit2|memory[7][1][8]~q\)) # (!\unit2|Mux135~0_combout\ & ((\unit2|memory[5][1][8]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux135~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[7][1][8]~q\,
	datac => \unit2|memory[5][1][8]~q\,
	datad => \unit2|Mux135~0_combout\,
	combout => \unit2|Mux135~1_combout\);

-- Location: LCCOMB_X6_Y49_N10
\unit2|memory[6][0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[6][0][8]~feeder_combout\);

-- Location: FF_X6_Y49_N11
\unit2|memory[6][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][8]~q\);

-- Location: FF_X7_Y49_N31
\unit2|memory[7][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][8]~q\);

-- Location: FF_X7_Y49_N5
\unit2|memory[4][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][8]~q\);

-- Location: FF_X10_Y49_N17
\unit2|memory[5][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][8]~q\);

-- Location: LCCOMB_X7_Y49_N4
\unit2|Mux135~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~4_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][0][8]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][8]~q\,
	datad => \unit2|memory[5][0][8]~q\,
	combout => \unit2|Mux135~4_combout\);

-- Location: LCCOMB_X7_Y49_N30
\unit2|Mux135~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux135~4_combout\ & ((\unit2|memory[7][0][8]~q\))) # (!\unit2|Mux135~4_combout\ & (\unit2|memory[6][0][8]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux135~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][8]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][8]~q\,
	datad => \unit2|Mux135~4_combout\,
	combout => \unit2|Mux135~5_combout\);

-- Location: LCCOMB_X5_Y49_N20
\unit2|memory[6][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[6][2][8]~feeder_combout\);

-- Location: FF_X5_Y49_N21
\unit2|memory[6][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][8]~q\);

-- Location: FF_X8_Y49_N7
\unit2|memory[7][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][8]~q\);

-- Location: FF_X8_Y49_N21
\unit2|memory[4][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][8]~q\);

-- Location: LCCOMB_X9_Y49_N4
\unit2|memory[5][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[5][2][8]~feeder_combout\);

-- Location: FF_X9_Y49_N5
\unit2|memory[5][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][8]~q\);

-- Location: LCCOMB_X8_Y49_N20
\unit2|Mux135~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][8]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][8]~q\,
	datad => \unit2|memory[5][2][8]~q\,
	combout => \unit2|Mux135~2_combout\);

-- Location: LCCOMB_X8_Y49_N6
\unit2|Mux135~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux135~2_combout\ & ((\unit2|memory[7][2][8]~q\))) # (!\unit2|Mux135~2_combout\ & (\unit2|memory[6][2][8]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux135~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][2][8]~q\,
	datac => \unit2|memory[7][2][8]~q\,
	datad => \unit2|Mux135~2_combout\,
	combout => \unit2|Mux135~3_combout\);

-- Location: LCCOMB_X7_Y48_N12
\unit2|Mux135~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~6_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|Mux135~3_combout\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|Mux135~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux135~5_combout\,
	datad => \unit2|Mux135~3_combout\,
	combout => \unit2|Mux135~6_combout\);

-- Location: LCCOMB_X7_Y48_N22
\unit2|Mux135~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux135~6_combout\ & (\unit2|Mux135~8_combout\)) # (!\unit2|Mux135~6_combout\ & ((\unit2|Mux135~1_combout\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux135~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|Mux135~8_combout\,
	datac => \unit2|Mux135~1_combout\,
	datad => \unit2|Mux135~6_combout\,
	combout => \unit2|Mux135~9_combout\);

-- Location: LCCOMB_X10_Y52_N16
\unit2|memory[3][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[3][2][8]~feeder_combout\);

-- Location: FF_X10_Y52_N17
\unit2|memory[3][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][8]~q\);

-- Location: FF_X10_Y52_N11
\unit2|memory[3][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][8]~q\);

-- Location: FF_X11_Y52_N19
\unit2|memory[3][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][8]~q\);

-- Location: LCCOMB_X11_Y52_N16
\unit2|memory[3][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[3][1][8]~feeder_combout\);

-- Location: FF_X11_Y52_N17
\unit2|memory[3][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][8]~q\);

-- Location: LCCOMB_X11_Y52_N18
\unit2|Mux135~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~17_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[3][1][8]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][8]~q\,
	datad => \unit2|memory[3][1][8]~q\,
	combout => \unit2|Mux135~17_combout\);

-- Location: LCCOMB_X10_Y52_N10
\unit2|Mux135~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux135~17_combout\ & ((\unit2|memory[3][3][8]~q\))) # (!\unit2|Mux135~17_combout\ & (\unit2|memory[3][2][8]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux135~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[3][2][8]~q\,
	datac => \unit2|memory[3][3][8]~q\,
	datad => \unit2|Mux135~17_combout\,
	combout => \unit2|Mux135~18_combout\);

-- Location: LCCOMB_X9_Y47_N26
\unit2|memory[1][3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[1][3][8]~feeder_combout\);

-- Location: FF_X9_Y47_N27
\unit2|memory[1][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][8]~q\);

-- Location: FF_X8_Y47_N9
\unit2|memory[1][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][8]~q\);

-- Location: FF_X8_Y47_N7
\unit2|memory[1][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][8]~q\);

-- Location: LCCOMB_X7_Y47_N14
\unit2|memory[1][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[1][1][8]~feeder_combout\);

-- Location: FF_X7_Y47_N15
\unit2|memory[1][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][8]~q\);

-- Location: LCCOMB_X8_Y47_N6
\unit2|Mux135~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[1][1][8]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][8]~q\,
	datad => \unit2|memory[1][1][8]~q\,
	combout => \unit2|Mux135~10_combout\);

-- Location: LCCOMB_X8_Y47_N8
\unit2|Mux135~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux135~10_combout\ & (\unit2|memory[1][3][8]~q\)) # (!\unit2|Mux135~10_combout\ & ((\unit2|memory[1][2][8]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux135~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[1][3][8]~q\,
	datac => \unit2|memory[1][2][8]~q\,
	datad => \unit2|Mux135~10_combout\,
	combout => \unit2|Mux135~11_combout\);

-- Location: LCCOMB_X9_Y50_N10
\unit2|memory[0][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[0][1][8]~feeder_combout\);

-- Location: FF_X9_Y50_N11
\unit2|memory[0][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][8]~q\);

-- Location: FF_X8_Y48_N31
\unit2|memory[0][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][8]~q\);

-- Location: FF_X8_Y48_N1
\unit2|memory[0][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][8]~q\);

-- Location: LCCOMB_X8_Y50_N28
\unit2|memory[0][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(8),
	combout => \unit2|memory[0][2][8]~feeder_combout\);

-- Location: FF_X8_Y50_N29
\unit2|memory[0][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][8]~q\);

-- Location: LCCOMB_X8_Y48_N0
\unit2|Mux135~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~14_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[0][2][8]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][8]~q\,
	datad => \unit2|memory[0][2][8]~q\,
	combout => \unit2|Mux135~14_combout\);

-- Location: LCCOMB_X8_Y48_N30
\unit2|Mux135~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux135~14_combout\ & ((\unit2|memory[0][3][8]~q\))) # (!\unit2|Mux135~14_combout\ & (\unit2|memory[0][1][8]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux135~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[0][1][8]~q\,
	datac => \unit2|memory[0][3][8]~q\,
	datad => \unit2|Mux135~14_combout\,
	combout => \unit2|Mux135~15_combout\);

-- Location: LCCOMB_X4_Y50_N18
\unit2|memory[2][1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[2][1][8]~feeder_combout\);

-- Location: FF_X4_Y50_N19
\unit2|memory[2][1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][8]~q\);

-- Location: FF_X4_Y50_N1
\unit2|memory[2][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][8]~q\);

-- Location: FF_X3_Y50_N23
\unit2|memory[2][0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][8]~q\);

-- Location: LCCOMB_X3_Y50_N16
\unit2|memory[2][2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][8]~feeder_combout\ = tempDataIn(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(8),
	combout => \unit2|memory[2][2][8]~feeder_combout\);

-- Location: FF_X3_Y50_N17
\unit2|memory[2][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][8]~q\);

-- Location: LCCOMB_X3_Y50_N22
\unit2|Mux135~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[2][2][8]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][8]~q\,
	datad => \unit2|memory[2][2][8]~q\,
	combout => \unit2|Mux135~12_combout\);

-- Location: LCCOMB_X4_Y50_N0
\unit2|Mux135~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux135~12_combout\ & ((\unit2|memory[2][3][8]~q\))) # (!\unit2|Mux135~12_combout\ & (\unit2|memory[2][1][8]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux135~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[2][1][8]~q\,
	datac => \unit2|memory[2][3][8]~q\,
	datad => \unit2|Mux135~12_combout\,
	combout => \unit2|Mux135~13_combout\);

-- Location: LCCOMB_X7_Y48_N24
\unit2|Mux135~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~16_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|Mux135~13_combout\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|Mux135~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux135~15_combout\,
	datad => \unit2|Mux135~13_combout\,
	combout => \unit2|Mux135~16_combout\);

-- Location: LCCOMB_X7_Y48_N2
\unit2|Mux135~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux135~16_combout\ & (\unit2|Mux135~18_combout\)) # (!\unit2|Mux135~16_combout\ & ((\unit2|Mux135~11_combout\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux135~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux135~18_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux135~11_combout\,
	datad => \unit2|Mux135~16_combout\,
	combout => \unit2|Mux135~19_combout\);

-- Location: LCCOMB_X7_Y48_N0
\unit2|Mux135~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux135~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux135~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux135~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux135~9_combout\,
	datad => \unit2|Mux135~19_combout\,
	combout => \unit2|Mux135~20_combout\);

-- Location: FF_X7_Y48_N1
\unit2|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux135~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(8));

-- Location: LCCOMB_X7_Y48_N20
\data_out_cpu[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[8]~reg0feeder_combout\ = \unit2|data_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(8),
	combout => \data_out_cpu[8]~reg0feeder_combout\);

-- Location: FF_X7_Y48_N21
\data_out_cpu[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[8]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[8]~reg0_q\);

-- Location: IOIBUF_X0_Y44_N22
\data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: LCCOMB_X4_Y47_N16
\tempDataIn[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[9]~feeder_combout\ = \data_in[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[9]~input_o\,
	combout => \tempDataIn[9]~feeder_combout\);

-- Location: FF_X4_Y47_N17
\tempDataIn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[9]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(9));

-- Location: LCCOMB_X6_Y50_N12
\unit2|memory[2][3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[2][3][9]~feeder_combout\);

-- Location: FF_X6_Y50_N13
\unit2|memory[2][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][9]~q\);

-- Location: FF_X6_Y50_N19
\unit2|memory[2][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][9]~q\);

-- Location: FF_X5_Y50_N15
\unit2|memory[2][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][9]~q\);

-- Location: LCCOMB_X4_Y50_N22
\unit2|memory[2][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(9),
	combout => \unit2|memory[2][1][9]~feeder_combout\);

-- Location: FF_X4_Y50_N23
\unit2|memory[2][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][9]~q\);

-- Location: LCCOMB_X5_Y50_N14
\unit2|Mux134~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[2][1][9]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][9]~q\,
	datad => \unit2|memory[2][1][9]~q\,
	combout => \unit2|Mux134~10_combout\);

-- Location: LCCOMB_X6_Y50_N18
\unit2|Mux134~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux134~10_combout\ & (\unit2|memory[2][3][9]~q\)) # (!\unit2|Mux134~10_combout\ & ((\unit2|memory[2][2][9]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux134~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][9]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][9]~q\,
	datad => \unit2|Mux134~10_combout\,
	combout => \unit2|Mux134~11_combout\);

-- Location: LCCOMB_X11_Y52_N0
\unit2|memory[3][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[3][1][9]~feeder_combout\);

-- Location: FF_X11_Y52_N1
\unit2|memory[3][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][9]~q\);

-- Location: FF_X10_Y52_N23
\unit2|memory[3][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][9]~q\);

-- Location: FF_X11_Y52_N27
\unit2|memory[3][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][9]~q\);

-- Location: LCCOMB_X10_Y52_N24
\unit2|memory[3][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[3][2][9]~feeder_combout\);

-- Location: FF_X10_Y52_N25
\unit2|memory[3][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][9]~q\);

-- Location: LCCOMB_X11_Y52_N26
\unit2|Mux134~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~17_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[3][2][9]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][9]~q\,
	datad => \unit2|memory[3][2][9]~q\,
	combout => \unit2|Mux134~17_combout\);

-- Location: LCCOMB_X10_Y52_N22
\unit2|Mux134~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux134~17_combout\ & ((\unit2|memory[3][3][9]~q\))) # (!\unit2|Mux134~17_combout\ & (\unit2|memory[3][1][9]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux134~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][9]~q\,
	datac => \unit2|memory[3][3][9]~q\,
	datad => \unit2|Mux134~17_combout\,
	combout => \unit2|Mux134~18_combout\);

-- Location: LCCOMB_X8_Y52_N8
\unit2|memory[0][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[0][2][9]~feeder_combout\);

-- Location: FF_X8_Y52_N9
\unit2|memory[0][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][9]~q\);

-- Location: FF_X8_Y48_N9
\unit2|memory[0][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][9]~q\);

-- Location: FF_X8_Y48_N19
\unit2|memory[0][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][9]~q\);

-- Location: FF_X9_Y50_N9
\unit2|memory[0][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][9]~q\);

-- Location: LCCOMB_X8_Y48_N18
\unit2|Mux134~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~14_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[0][1][9]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[0][0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][0][9]~q\,
	datad => \unit2|memory[0][1][9]~q\,
	combout => \unit2|Mux134~14_combout\);

-- Location: LCCOMB_X8_Y48_N8
\unit2|Mux134~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux134~14_combout\ & ((\unit2|memory[0][3][9]~q\))) # (!\unit2|Mux134~14_combout\ & (\unit2|memory[0][2][9]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux134~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][9]~q\,
	datac => \unit2|memory[0][3][9]~q\,
	datad => \unit2|Mux134~14_combout\,
	combout => \unit2|Mux134~15_combout\);

-- Location: LCCOMB_X10_Y47_N20
\unit2|memory[1][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[1][1][9]~feeder_combout\);

-- Location: FF_X10_Y47_N21
\unit2|memory[1][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][9]~q\);

-- Location: FF_X9_Y47_N1
\unit2|memory[1][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][9]~q\);

-- Location: FF_X8_Y47_N15
\unit2|memory[1][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][9]~q\);

-- Location: LCCOMB_X8_Y47_N24
\unit2|memory[1][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[1][2][9]~feeder_combout\);

-- Location: FF_X8_Y47_N25
\unit2|memory[1][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][9]~q\);

-- Location: LCCOMB_X8_Y47_N14
\unit2|Mux134~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[1][2][9]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][9]~q\,
	datad => \unit2|memory[1][2][9]~q\,
	combout => \unit2|Mux134~12_combout\);

-- Location: LCCOMB_X9_Y47_N0
\unit2|Mux134~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux134~12_combout\ & ((\unit2|memory[1][3][9]~q\))) # (!\unit2|Mux134~12_combout\ & (\unit2|memory[1][1][9]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux134~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][9]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][9]~q\,
	datad => \unit2|Mux134~12_combout\,
	combout => \unit2|Mux134~13_combout\);

-- Location: LCCOMB_X8_Y48_N26
\unit2|Mux134~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~16_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|Mux134~13_combout\))) # (!\addressIN[2]~input_o\ & (\unit2|Mux134~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux134~15_combout\,
	datad => \unit2|Mux134~13_combout\,
	combout => \unit2|Mux134~16_combout\);

-- Location: LCCOMB_X7_Y48_N4
\unit2|Mux134~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux134~16_combout\ & ((\unit2|Mux134~18_combout\))) # (!\unit2|Mux134~16_combout\ & (\unit2|Mux134~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux134~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|Mux134~11_combout\,
	datac => \unit2|Mux134~18_combout\,
	datad => \unit2|Mux134~16_combout\,
	combout => \unit2|Mux134~19_combout\);

-- Location: LCCOMB_X13_Y49_N28
\unit2|memory[7][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[7][2][9]~feeder_combout\);

-- Location: FF_X13_Y49_N29
\unit2|memory[7][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][9]~q\);

-- Location: FF_X9_Y49_N27
\unit2|memory[5][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][9]~q\);

-- Location: FF_X12_Y49_N23
\unit2|memory[4][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][9]~q\);

-- Location: LCCOMB_X12_Y49_N16
\unit2|memory[6][2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(9),
	combout => \unit2|memory[6][2][9]~feeder_combout\);

-- Location: FF_X12_Y49_N17
\unit2|memory[6][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][9]~q\);

-- Location: LCCOMB_X12_Y49_N22
\unit2|Mux134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][9]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][9]~q\,
	datad => \unit2|memory[6][2][9]~q\,
	combout => \unit2|Mux134~0_combout\);

-- Location: LCCOMB_X9_Y49_N26
\unit2|Mux134~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux134~0_combout\ & (\unit2|memory[7][2][9]~q\)) # (!\unit2|Mux134~0_combout\ & ((\unit2|memory[5][2][9]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux134~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][9]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][9]~q\,
	datad => \unit2|Mux134~0_combout\,
	combout => \unit2|Mux134~1_combout\);

-- Location: LCCOMB_X5_Y49_N30
\unit2|memory[5][0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(9),
	combout => \unit2|memory[5][0][9]~feeder_combout\);

-- Location: FF_X5_Y49_N31
\unit2|memory[5][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][9]~q\);

-- Location: FF_X6_Y48_N5
\unit2|memory[7][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][9]~q\);

-- Location: FF_X6_Y48_N3
\unit2|memory[4][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][9]~q\);

-- Location: LCCOMB_X6_Y47_N0
\unit2|memory[6][0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[6][0][9]~feeder_combout\);

-- Location: FF_X6_Y47_N1
\unit2|memory[6][0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][9]~q\);

-- Location: LCCOMB_X6_Y48_N2
\unit2|Mux134~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~4_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][0][9]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][0][9]~q\,
	datad => \unit2|memory[6][0][9]~q\,
	combout => \unit2|Mux134~4_combout\);

-- Location: LCCOMB_X6_Y48_N4
\unit2|Mux134~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux134~4_combout\ & ((\unit2|memory[7][0][9]~q\))) # (!\unit2|Mux134~4_combout\ & (\unit2|memory[5][0][9]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux134~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][0][9]~q\,
	datac => \unit2|memory[7][0][9]~q\,
	datad => \unit2|Mux134~4_combout\,
	combout => \unit2|Mux134~5_combout\);

-- Location: LCCOMB_X5_Y52_N20
\unit2|memory[6][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[6][1][9]~feeder_combout\);

-- Location: FF_X5_Y52_N21
\unit2|memory[6][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][9]~q\);

-- Location: FF_X5_Y48_N9
\unit2|memory[7][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][9]~q\);

-- Location: FF_X5_Y48_N3
\unit2|memory[4][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][9]~q\);

-- Location: LCCOMB_X4_Y48_N14
\unit2|memory[5][1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[5][1][9]~feeder_combout\);

-- Location: FF_X4_Y48_N15
\unit2|memory[5][1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][9]~q\);

-- Location: LCCOMB_X5_Y48_N2
\unit2|Mux134~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][9]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][9]~q\,
	datad => \unit2|memory[5][1][9]~q\,
	combout => \unit2|Mux134~2_combout\);

-- Location: LCCOMB_X5_Y48_N8
\unit2|Mux134~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux134~2_combout\ & ((\unit2|memory[7][1][9]~q\))) # (!\unit2|Mux134~2_combout\ & (\unit2|memory[6][1][9]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux134~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][9]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][9]~q\,
	datad => \unit2|Mux134~2_combout\,
	combout => \unit2|Mux134~3_combout\);

-- Location: LCCOMB_X6_Y48_N10
\unit2|Mux134~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux134~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux134~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux134~5_combout\,
	datad => \unit2|Mux134~3_combout\,
	combout => \unit2|Mux134~6_combout\);

-- Location: LCCOMB_X9_Y48_N22
\unit2|memory[6][3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[6][3][9]~feeder_combout\);

-- Location: FF_X9_Y48_N23
\unit2|memory[6][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][9]~q\);

-- Location: FF_X9_Y48_N5
\unit2|memory[7][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][9]~q\);

-- Location: FF_X10_Y48_N19
\unit2|memory[4][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][9]~q\);

-- Location: LCCOMB_X10_Y47_N6
\unit2|memory[5][3][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][9]~feeder_combout\ = tempDataIn(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(9),
	combout => \unit2|memory[5][3][9]~feeder_combout\);

-- Location: FF_X10_Y47_N7
\unit2|memory[5][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][9]~q\);

-- Location: LCCOMB_X10_Y48_N18
\unit2|Mux134~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][9]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][9]~q\,
	datad => \unit2|memory[5][3][9]~q\,
	combout => \unit2|Mux134~7_combout\);

-- Location: LCCOMB_X9_Y48_N4
\unit2|Mux134~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux134~7_combout\ & ((\unit2|memory[7][3][9]~q\))) # (!\unit2|Mux134~7_combout\ & (\unit2|memory[6][3][9]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux134~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][3][9]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][3][9]~q\,
	datad => \unit2|Mux134~7_combout\,
	combout => \unit2|Mux134~8_combout\);

-- Location: LCCOMB_X8_Y48_N28
\unit2|Mux134~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux134~6_combout\ & ((\unit2|Mux134~8_combout\))) # (!\unit2|Mux134~6_combout\ & (\unit2|Mux134~1_combout\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux134~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux134~1_combout\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|Mux134~6_combout\,
	datad => \unit2|Mux134~8_combout\,
	combout => \unit2|Mux134~9_combout\);

-- Location: LCCOMB_X7_Y48_N14
\unit2|Mux134~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux134~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux134~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux134~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux134~19_combout\,
	datad => \unit2|Mux134~9_combout\,
	combout => \unit2|Mux134~20_combout\);

-- Location: FF_X7_Y48_N15
\unit2|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux134~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(9));

-- Location: LCCOMB_X7_Y48_N30
\data_out_cpu[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[9]~reg0feeder_combout\ = \unit2|data_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(9),
	combout => \data_out_cpu[9]~reg0feeder_combout\);

-- Location: FF_X7_Y48_N31
\data_out_cpu[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[9]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[9]~reg0_q\);

-- Location: IOIBUF_X0_Y43_N15
\data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: LCCOMB_X3_Y47_N8
\tempDataIn[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[10]~feeder_combout\ = \data_in[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[10]~input_o\,
	combout => \tempDataIn[10]~feeder_combout\);

-- Location: FF_X3_Y47_N9
\tempDataIn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[10]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(10));

-- Location: LCCOMB_X12_Y48_N8
\unit2|memory[5][3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[5][3][10]~feeder_combout\);

-- Location: FF_X12_Y48_N9
\unit2|memory[5][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][10]~q\);

-- Location: FF_X11_Y48_N15
\unit2|memory[7][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][10]~q\);

-- Location: FF_X12_Y48_N27
\unit2|memory[4][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][10]~q\);

-- Location: LCCOMB_X11_Y48_N8
\unit2|memory[6][3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[6][3][10]~feeder_combout\);

-- Location: FF_X11_Y48_N9
\unit2|memory[6][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][10]~q\);

-- Location: LCCOMB_X12_Y48_N26
\unit2|Mux133~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~7_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][3][10]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][10]~q\,
	datad => \unit2|memory[6][3][10]~q\,
	combout => \unit2|Mux133~7_combout\);

-- Location: LCCOMB_X11_Y48_N14
\unit2|Mux133~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux133~7_combout\ & ((\unit2|memory[7][3][10]~q\))) # (!\unit2|Mux133~7_combout\ & (\unit2|memory[5][3][10]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux133~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][10]~q\,
	datac => \unit2|memory[7][3][10]~q\,
	datad => \unit2|Mux133~7_combout\,
	combout => \unit2|Mux133~8_combout\);

-- Location: LCCOMB_X5_Y48_N0
\unit2|memory[7][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[7][1][10]~feeder_combout\);

-- Location: FF_X5_Y48_N1
\unit2|memory[7][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][10]~q\);

-- Location: FF_X4_Y48_N13
\unit2|memory[5][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][10]~q\);

-- Location: LCCOMB_X4_Y49_N12
\unit2|memory[6][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[6][1][10]~feeder_combout\);

-- Location: FF_X4_Y49_N13
\unit2|memory[6][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][10]~q\);

-- Location: LCCOMB_X5_Y48_N30
\unit2|memory[4][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[4][1][10]~feeder_combout\);

-- Location: FF_X5_Y48_N31
\unit2|memory[4][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][10]~q\);

-- Location: LCCOMB_X4_Y48_N18
\unit2|Mux133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|memory[6][1][10]~q\)) # (!\addressIN[3]~input_o\ & ((\unit2|memory[4][1][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[6][1][10]~q\,
	datad => \unit2|memory[4][1][10]~q\,
	combout => \unit2|Mux133~0_combout\);

-- Location: LCCOMB_X4_Y48_N12
\unit2|Mux133~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux133~0_combout\ & (\unit2|memory[7][1][10]~q\)) # (!\unit2|Mux133~0_combout\ & ((\unit2|memory[5][1][10]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[7][1][10]~q\,
	datac => \unit2|memory[5][1][10]~q\,
	datad => \unit2|Mux133~0_combout\,
	combout => \unit2|Mux133~1_combout\);

-- Location: LCCOMB_X12_Y49_N0
\unit2|memory[6][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[6][2][10]~feeder_combout\);

-- Location: FF_X12_Y49_N1
\unit2|memory[6][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][10]~q\);

-- Location: FF_X8_Y49_N31
\unit2|memory[7][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][10]~q\);

-- Location: FF_X8_Y49_N13
\unit2|memory[4][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][10]~q\);

-- Location: LCCOMB_X9_Y49_N24
\unit2|memory[5][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[5][2][10]~feeder_combout\);

-- Location: FF_X9_Y49_N25
\unit2|memory[5][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][10]~q\);

-- Location: LCCOMB_X8_Y49_N12
\unit2|Mux133~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][10]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][10]~q\,
	datad => \unit2|memory[5][2][10]~q\,
	combout => \unit2|Mux133~2_combout\);

-- Location: LCCOMB_X8_Y49_N30
\unit2|Mux133~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux133~2_combout\ & ((\unit2|memory[7][2][10]~q\))) # (!\unit2|Mux133~2_combout\ & (\unit2|memory[6][2][10]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][2][10]~q\,
	datac => \unit2|memory[7][2][10]~q\,
	datad => \unit2|Mux133~2_combout\,
	combout => \unit2|Mux133~3_combout\);

-- Location: LCCOMB_X6_Y47_N14
\unit2|memory[6][0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[6][0][10]~feeder_combout\);

-- Location: FF_X6_Y47_N15
\unit2|memory[6][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][10]~q\);

-- Location: FF_X6_Y48_N15
\unit2|memory[7][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][10]~q\);

-- Location: FF_X6_Y48_N13
\unit2|memory[4][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][10]~q\);

-- Location: LCCOMB_X5_Y49_N12
\unit2|memory[5][0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[5][0][10]~feeder_combout\);

-- Location: FF_X5_Y49_N13
\unit2|memory[5][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][10]~q\);

-- Location: LCCOMB_X6_Y48_N12
\unit2|Mux133~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~4_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][0][10]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][0][10]~q\,
	datad => \unit2|memory[5][0][10]~q\,
	combout => \unit2|Mux133~4_combout\);

-- Location: LCCOMB_X6_Y48_N14
\unit2|Mux133~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux133~4_combout\ & ((\unit2|memory[7][0][10]~q\))) # (!\unit2|Mux133~4_combout\ & (\unit2|memory[6][0][10]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux133~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][10]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][10]~q\,
	datad => \unit2|Mux133~4_combout\,
	combout => \unit2|Mux133~5_combout\);

-- Location: LCCOMB_X7_Y48_N6
\unit2|Mux133~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~6_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|Mux133~3_combout\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & ((\unit2|Mux133~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux133~3_combout\,
	datad => \unit2|Mux133~5_combout\,
	combout => \unit2|Mux133~6_combout\);

-- Location: LCCOMB_X7_Y48_N8
\unit2|Mux133~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux133~6_combout\ & (\unit2|Mux133~8_combout\)) # (!\unit2|Mux133~6_combout\ & ((\unit2|Mux133~1_combout\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux133~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux133~8_combout\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux133~1_combout\,
	datad => \unit2|Mux133~6_combout\,
	combout => \unit2|Mux133~9_combout\);

-- Location: LCCOMB_X9_Y47_N18
\unit2|memory[1][3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[1][3][10]~feeder_combout\);

-- Location: FF_X9_Y47_N19
\unit2|memory[1][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][10]~q\);

-- Location: FF_X8_Y47_N1
\unit2|memory[1][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][10]~q\);

-- Location: FF_X8_Y47_N11
\unit2|memory[1][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][10]~q\);

-- Location: LCCOMB_X7_Y47_N28
\unit2|memory[1][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[1][1][10]~feeder_combout\);

-- Location: FF_X7_Y47_N29
\unit2|memory[1][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][10]~q\);

-- Location: LCCOMB_X8_Y47_N10
\unit2|Mux133~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[1][1][10]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][10]~q\,
	datad => \unit2|memory[1][1][10]~q\,
	combout => \unit2|Mux133~10_combout\);

-- Location: LCCOMB_X8_Y47_N0
\unit2|Mux133~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux133~10_combout\ & (\unit2|memory[1][3][10]~q\)) # (!\unit2|Mux133~10_combout\ & ((\unit2|memory[1][2][10]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux133~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[1][3][10]~q\,
	datac => \unit2|memory[1][2][10]~q\,
	datad => \unit2|Mux133~10_combout\,
	combout => \unit2|Mux133~11_combout\);

-- Location: LCCOMB_X10_Y52_N4
\unit2|memory[3][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[3][2][10]~feeder_combout\);

-- Location: FF_X10_Y52_N5
\unit2|memory[3][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][10]~q\);

-- Location: FF_X10_Y52_N7
\unit2|memory[3][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][10]~q\);

-- Location: FF_X11_Y52_N7
\unit2|memory[3][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][10]~q\);

-- Location: LCCOMB_X11_Y52_N24
\unit2|memory[3][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[3][1][10]~feeder_combout\);

-- Location: FF_X11_Y52_N25
\unit2|memory[3][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][10]~q\);

-- Location: LCCOMB_X11_Y52_N6
\unit2|Mux133~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~17_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[3][1][10]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][10]~q\,
	datad => \unit2|memory[3][1][10]~q\,
	combout => \unit2|Mux133~17_combout\);

-- Location: LCCOMB_X10_Y52_N6
\unit2|Mux133~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux133~17_combout\ & ((\unit2|memory[3][3][10]~q\))) # (!\unit2|Mux133~17_combout\ & (\unit2|memory[3][2][10]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux133~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[3][2][10]~q\,
	datac => \unit2|memory[3][3][10]~q\,
	datad => \unit2|Mux133~17_combout\,
	combout => \unit2|Mux133~18_combout\);

-- Location: LCCOMB_X4_Y50_N28
\unit2|memory[2][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[2][1][10]~feeder_combout\);

-- Location: FF_X4_Y50_N29
\unit2|memory[2][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][10]~q\);

-- Location: FF_X4_Y50_N7
\unit2|memory[2][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][10]~q\);

-- Location: FF_X3_Y50_N19
\unit2|memory[2][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][10]~q\);

-- Location: LCCOMB_X3_Y50_N28
\unit2|memory[2][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[2][2][10]~feeder_combout\);

-- Location: FF_X3_Y50_N29
\unit2|memory[2][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][10]~q\);

-- Location: LCCOMB_X3_Y50_N18
\unit2|Mux133~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[2][2][10]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][10]~q\,
	datad => \unit2|memory[2][2][10]~q\,
	combout => \unit2|Mux133~12_combout\);

-- Location: LCCOMB_X4_Y50_N6
\unit2|Mux133~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux133~12_combout\ & ((\unit2|memory[2][3][10]~q\))) # (!\unit2|Mux133~12_combout\ & (\unit2|memory[2][1][10]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux133~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[2][1][10]~q\,
	datac => \unit2|memory[2][3][10]~q\,
	datad => \unit2|Mux133~12_combout\,
	combout => \unit2|Mux133~13_combout\);

-- Location: LCCOMB_X12_Y50_N10
\unit2|memory[0][1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(10),
	combout => \unit2|memory[0][1][10]~feeder_combout\);

-- Location: FF_X12_Y50_N11
\unit2|memory[0][1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][10]~q\);

-- Location: FF_X8_Y50_N5
\unit2|memory[0][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][10]~q\);

-- Location: FF_X9_Y50_N19
\unit2|memory[0][0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][10]~q\);

-- Location: LCCOMB_X8_Y50_N14
\unit2|memory[0][2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][10]~feeder_combout\ = tempDataIn(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(10),
	combout => \unit2|memory[0][2][10]~feeder_combout\);

-- Location: FF_X8_Y50_N15
\unit2|memory[0][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][10]~q\);

-- Location: LCCOMB_X9_Y50_N18
\unit2|Mux133~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~14_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[0][2][10]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][10]~q\,
	datad => \unit2|memory[0][2][10]~q\,
	combout => \unit2|Mux133~14_combout\);

-- Location: LCCOMB_X8_Y50_N4
\unit2|Mux133~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux133~14_combout\ & ((\unit2|memory[0][3][10]~q\))) # (!\unit2|Mux133~14_combout\ & (\unit2|memory[0][1][10]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux133~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][1][10]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[0][3][10]~q\,
	datad => \unit2|Mux133~14_combout\,
	combout => \unit2|Mux133~15_combout\);

-- Location: LCCOMB_X7_Y48_N18
\unit2|Mux133~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~16_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|Mux133~13_combout\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & ((\unit2|Mux133~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux133~13_combout\,
	datad => \unit2|Mux133~15_combout\,
	combout => \unit2|Mux133~16_combout\);

-- Location: LCCOMB_X7_Y48_N16
\unit2|Mux133~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux133~16_combout\ & ((\unit2|Mux133~18_combout\))) # (!\unit2|Mux133~16_combout\ & (\unit2|Mux133~11_combout\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux133~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux133~11_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux133~18_combout\,
	datad => \unit2|Mux133~16_combout\,
	combout => \unit2|Mux133~19_combout\);

-- Location: LCCOMB_X7_Y48_N28
\unit2|Mux133~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux133~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux133~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux133~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux133~9_combout\,
	datad => \unit2|Mux133~19_combout\,
	combout => \unit2|Mux133~20_combout\);

-- Location: FF_X7_Y48_N29
\unit2|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux133~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(10));

-- Location: LCCOMB_X7_Y46_N0
\data_out_cpu[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[10]~reg0feeder_combout\ = \unit2|data_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(10),
	combout => \data_out_cpu[10]~reg0feeder_combout\);

-- Location: FF_X7_Y46_N1
\data_out_cpu[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[10]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[10]~reg0_q\);

-- Location: IOIBUF_X0_Y45_N22
\data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X2_Y48_N8
\tempDataIn[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[11]~feeder_combout\ = \data_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[11]~input_o\,
	combout => \tempDataIn[11]~feeder_combout\);

-- Location: FF_X2_Y48_N9
\tempDataIn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[11]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(11));

-- Location: LCCOMB_X8_Y49_N0
\unit2|memory[7][2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[7][2][11]~feeder_combout\);

-- Location: FF_X8_Y49_N1
\unit2|memory[7][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][11]~q\);

-- Location: FF_X9_Y49_N31
\unit2|memory[5][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][11]~q\);

-- Location: FF_X12_Y49_N9
\unit2|memory[4][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][11]~q\);

-- Location: LCCOMB_X12_Y49_N2
\unit2|memory[6][2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[6][2][11]~feeder_combout\);

-- Location: FF_X12_Y49_N3
\unit2|memory[6][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][11]~q\);

-- Location: LCCOMB_X12_Y49_N8
\unit2|Mux132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][11]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][11]~q\,
	datad => \unit2|memory[6][2][11]~q\,
	combout => \unit2|Mux132~0_combout\);

-- Location: LCCOMB_X9_Y49_N30
\unit2|Mux132~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux132~0_combout\ & (\unit2|memory[7][2][11]~q\)) # (!\unit2|Mux132~0_combout\ & ((\unit2|memory[5][2][11]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux132~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][11]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][11]~q\,
	datad => \unit2|Mux132~0_combout\,
	combout => \unit2|Mux132~1_combout\);

-- Location: LCCOMB_X6_Y47_N4
\unit2|memory[5][0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[5][0][11]~feeder_combout\);

-- Location: FF_X6_Y47_N5
\unit2|memory[5][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][11]~q\);

-- Location: FF_X6_Y48_N27
\unit2|memory[7][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][11]~q\);

-- Location: FF_X6_Y48_N25
\unit2|memory[4][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][11]~q\);

-- Location: LCCOMB_X6_Y49_N4
\unit2|memory[6][0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[6][0][11]~feeder_combout\);

-- Location: FF_X6_Y49_N5
\unit2|memory[6][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][11]~q\);

-- Location: LCCOMB_X6_Y48_N24
\unit2|Mux132~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~4_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][0][11]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][0][11]~q\,
	datad => \unit2|memory[6][0][11]~q\,
	combout => \unit2|Mux132~4_combout\);

-- Location: LCCOMB_X6_Y48_N26
\unit2|Mux132~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux132~4_combout\ & ((\unit2|memory[7][0][11]~q\))) # (!\unit2|Mux132~4_combout\ & (\unit2|memory[5][0][11]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux132~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][0][11]~q\,
	datac => \unit2|memory[7][0][11]~q\,
	datad => \unit2|Mux132~4_combout\,
	combout => \unit2|Mux132~5_combout\);

-- Location: LCCOMB_X5_Y52_N14
\unit2|memory[6][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[6][1][11]~feeder_combout\);

-- Location: FF_X5_Y52_N15
\unit2|memory[6][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][11]~q\);

-- Location: FF_X5_Y48_N13
\unit2|memory[7][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][11]~q\);

-- Location: FF_X5_Y48_N19
\unit2|memory[4][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][11]~q\);

-- Location: LCCOMB_X4_Y48_N24
\unit2|memory[5][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[5][1][11]~feeder_combout\);

-- Location: FF_X4_Y48_N25
\unit2|memory[5][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][11]~q\);

-- Location: LCCOMB_X5_Y48_N18
\unit2|Mux132~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][11]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][11]~q\,
	datad => \unit2|memory[5][1][11]~q\,
	combout => \unit2|Mux132~2_combout\);

-- Location: LCCOMB_X5_Y48_N12
\unit2|Mux132~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux132~2_combout\ & ((\unit2|memory[7][1][11]~q\))) # (!\unit2|Mux132~2_combout\ & (\unit2|memory[6][1][11]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux132~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][11]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][11]~q\,
	datad => \unit2|Mux132~2_combout\,
	combout => \unit2|Mux132~3_combout\);

-- Location: LCCOMB_X6_Y48_N16
\unit2|Mux132~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux132~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux132~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux132~5_combout\,
	datad => \unit2|Mux132~3_combout\,
	combout => \unit2|Mux132~6_combout\);

-- Location: LCCOMB_X9_Y48_N28
\unit2|memory[7][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][3][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[7][3][11]~feeder_combout\);

-- Location: FF_X9_Y48_N29
\unit2|memory[7][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][3][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][11]~q\);

-- Location: LCCOMB_X9_Y48_N26
\unit2|memory[6][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[6][3][11]~feeder_combout\);

-- Location: FF_X9_Y48_N27
\unit2|memory[6][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][11]~q\);

-- Location: FF_X10_Y48_N13
\unit2|memory[4][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][11]~q\);

-- Location: LCCOMB_X10_Y47_N26
\unit2|memory[5][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[5][3][11]~feeder_combout\);

-- Location: FF_X10_Y47_N27
\unit2|memory[5][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][11]~q\);

-- Location: LCCOMB_X10_Y48_N12
\unit2|Mux132~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][11]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][11]~q\,
	datad => \unit2|memory[5][3][11]~q\,
	combout => \unit2|Mux132~7_combout\);

-- Location: LCCOMB_X10_Y48_N6
\unit2|Mux132~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux132~7_combout\ & (\unit2|memory[7][3][11]~q\)) # (!\unit2|Mux132~7_combout\ & ((\unit2|memory[6][3][11]~q\))))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux132~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[7][3][11]~q\,
	datac => \unit2|memory[6][3][11]~q\,
	datad => \unit2|Mux132~7_combout\,
	combout => \unit2|Mux132~8_combout\);

-- Location: LCCOMB_X7_Y48_N26
\unit2|Mux132~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux132~6_combout\ & ((\unit2|Mux132~8_combout\))) # (!\unit2|Mux132~6_combout\ & (\unit2|Mux132~1_combout\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux132~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux132~1_combout\,
	datac => \unit2|Mux132~6_combout\,
	datad => \unit2|Mux132~8_combout\,
	combout => \unit2|Mux132~9_combout\);

-- Location: LCCOMB_X6_Y50_N6
\unit2|memory[2][3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[2][3][11]~feeder_combout\);

-- Location: FF_X6_Y50_N7
\unit2|memory[2][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][11]~q\);

-- Location: FF_X3_Y50_N5
\unit2|memory[2][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][11]~q\);

-- Location: FF_X3_Y50_N3
\unit2|memory[2][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][11]~q\);

-- Location: LCCOMB_X2_Y50_N24
\unit2|memory[2][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[2][1][11]~feeder_combout\);

-- Location: FF_X2_Y50_N25
\unit2|memory[2][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][11]~q\);

-- Location: LCCOMB_X3_Y50_N2
\unit2|Mux132~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[2][1][11]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][11]~q\,
	datad => \unit2|memory[2][1][11]~q\,
	combout => \unit2|Mux132~10_combout\);

-- Location: LCCOMB_X3_Y50_N4
\unit2|Mux132~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux132~10_combout\ & (\unit2|memory[2][3][11]~q\)) # (!\unit2|Mux132~10_combout\ & ((\unit2|memory[2][2][11]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux132~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[2][3][11]~q\,
	datac => \unit2|memory[2][2][11]~q\,
	datad => \unit2|Mux132~10_combout\,
	combout => \unit2|Mux132~11_combout\);

-- Location: LCCOMB_X11_Y52_N4
\unit2|memory[3][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[3][1][11]~feeder_combout\);

-- Location: FF_X11_Y52_N5
\unit2|memory[3][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][11]~q\);

-- Location: FF_X10_Y52_N27
\unit2|memory[3][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][11]~q\);

-- Location: FF_X11_Y52_N3
\unit2|memory[3][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][11]~q\);

-- Location: LCCOMB_X10_Y52_N20
\unit2|memory[3][2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[3][2][11]~feeder_combout\);

-- Location: FF_X10_Y52_N21
\unit2|memory[3][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][11]~q\);

-- Location: LCCOMB_X11_Y52_N2
\unit2|Mux132~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~17_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[3][2][11]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][11]~q\,
	datad => \unit2|memory[3][2][11]~q\,
	combout => \unit2|Mux132~17_combout\);

-- Location: LCCOMB_X10_Y52_N26
\unit2|Mux132~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux132~17_combout\ & ((\unit2|memory[3][3][11]~q\))) # (!\unit2|Mux132~17_combout\ & (\unit2|memory[3][1][11]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux132~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[3][1][11]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][3][11]~q\,
	datad => \unit2|Mux132~17_combout\,
	combout => \unit2|Mux132~18_combout\);

-- Location: LCCOMB_X8_Y50_N26
\unit2|memory[0][2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[0][2][11]~feeder_combout\);

-- Location: FF_X8_Y50_N27
\unit2|memory[0][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][11]~q\);

-- Location: FF_X8_Y50_N21
\unit2|memory[0][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][11]~q\);

-- Location: FF_X9_Y50_N27
\unit2|memory[0][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][11]~q\);

-- Location: LCCOMB_X9_Y50_N24
\unit2|memory[0][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[0][1][11]~feeder_combout\);

-- Location: FF_X9_Y50_N25
\unit2|memory[0][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][11]~q\);

-- Location: LCCOMB_X9_Y50_N26
\unit2|Mux132~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~14_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[0][1][11]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][11]~q\,
	datad => \unit2|memory[0][1][11]~q\,
	combout => \unit2|Mux132~14_combout\);

-- Location: LCCOMB_X8_Y50_N20
\unit2|Mux132~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux132~14_combout\ & ((\unit2|memory[0][3][11]~q\))) # (!\unit2|Mux132~14_combout\ & (\unit2|memory[0][2][11]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux132~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[0][2][11]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][3][11]~q\,
	datad => \unit2|Mux132~14_combout\,
	combout => \unit2|Mux132~15_combout\);

-- Location: LCCOMB_X10_Y47_N28
\unit2|memory[1][1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(11),
	combout => \unit2|memory[1][1][11]~feeder_combout\);

-- Location: FF_X10_Y47_N29
\unit2|memory[1][1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][11]~q\);

-- Location: FF_X9_Y47_N15
\unit2|memory[1][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][11]~q\);

-- Location: FF_X9_Y47_N17
\unit2|memory[1][0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][11]~q\);

-- Location: LCCOMB_X8_Y47_N28
\unit2|memory[1][2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][11]~feeder_combout\ = tempDataIn(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(11),
	combout => \unit2|memory[1][2][11]~feeder_combout\);

-- Location: FF_X8_Y47_N29
\unit2|memory[1][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][11]~q\);

-- Location: LCCOMB_X9_Y47_N16
\unit2|Mux132~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[1][2][11]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][11]~q\,
	datad => \unit2|memory[1][2][11]~q\,
	combout => \unit2|Mux132~12_combout\);

-- Location: LCCOMB_X9_Y47_N14
\unit2|Mux132~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux132~12_combout\ & ((\unit2|memory[1][3][11]~q\))) # (!\unit2|Mux132~12_combout\ & (\unit2|memory[1][1][11]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux132~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[1][1][11]~q\,
	datac => \unit2|memory[1][3][11]~q\,
	datad => \unit2|Mux132~12_combout\,
	combout => \unit2|Mux132~13_combout\);

-- Location: LCCOMB_X8_Y48_N24
\unit2|Mux132~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~16_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|Mux132~13_combout\))) # (!\addressIN[2]~input_o\ & (\unit2|Mux132~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux132~15_combout\,
	datad => \unit2|Mux132~13_combout\,
	combout => \unit2|Mux132~16_combout\);

-- Location: LCCOMB_X8_Y48_N22
\unit2|Mux132~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux132~16_combout\ & ((\unit2|Mux132~18_combout\))) # (!\unit2|Mux132~16_combout\ & (\unit2|Mux132~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux132~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux132~11_combout\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux132~18_combout\,
	datad => \unit2|Mux132~16_combout\,
	combout => \unit2|Mux132~19_combout\);

-- Location: LCCOMB_X7_Y48_N10
\unit2|Mux132~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux132~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux132~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux132~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux132~9_combout\,
	datad => \unit2|Mux132~19_combout\,
	combout => \unit2|Mux132~20_combout\);

-- Location: FF_X7_Y48_N11
\unit2|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux132~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(11));

-- Location: LCCOMB_X7_Y46_N14
\data_out_cpu[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[11]~reg0feeder_combout\ = \unit2|data_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(11),
	combout => \data_out_cpu[11]~reg0feeder_combout\);

-- Location: FF_X7_Y46_N15
\data_out_cpu[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[11]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[11]~reg0_q\);

-- Location: IOIBUF_X0_Y34_N22
\data_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LCCOMB_X3_Y47_N30
\tempDataIn[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[12]~feeder_combout\ = \data_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[12]~input_o\,
	combout => \tempDataIn[12]~feeder_combout\);

-- Location: FF_X3_Y47_N31
\tempDataIn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[12]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(12));

-- Location: FF_X11_Y52_N15
\unit2|memory[3][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][12]~q\);

-- Location: LCCOMB_X11_Y52_N12
\unit2|memory[3][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[3][1][12]~feeder_combout\);

-- Location: FF_X11_Y52_N13
\unit2|memory[3][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][12]~q\);

-- Location: LCCOMB_X11_Y52_N14
\unit2|Mux131~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~17_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[3][1][12]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][12]~q\,
	datad => \unit2|memory[3][1][12]~q\,
	combout => \unit2|Mux131~17_combout\);

-- Location: FF_X10_Y52_N31
\unit2|memory[3][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][12]~q\);

-- Location: FF_X10_Y52_N1
\unit2|memory[3][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][12]~q\);

-- Location: LCCOMB_X10_Y52_N30
\unit2|Mux131~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux131~17_combout\ & (\unit2|memory[3][3][12]~q\)) # (!\unit2|Mux131~17_combout\ & ((\unit2|memory[3][2][12]~q\))))) # (!\addressIN[1]~input_o\ & (\unit2|Mux131~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux131~17_combout\,
	datac => \unit2|memory[3][3][12]~q\,
	datad => \unit2|memory[3][2][12]~q\,
	combout => \unit2|Mux131~18_combout\);

-- Location: LCCOMB_X9_Y47_N22
\unit2|memory[1][3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[1][3][12]~feeder_combout\);

-- Location: FF_X9_Y47_N23
\unit2|memory[1][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][12]~q\);

-- Location: FF_X8_Y47_N31
\unit2|memory[1][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][12]~q\);

-- Location: FF_X9_Y47_N29
\unit2|memory[1][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][12]~q\);

-- Location: LCCOMB_X10_Y47_N2
\unit2|memory[1][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[1][1][12]~feeder_combout\);

-- Location: FF_X10_Y47_N3
\unit2|memory[1][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][12]~q\);

-- Location: LCCOMB_X9_Y47_N28
\unit2|Mux131~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[1][1][12]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][12]~q\,
	datad => \unit2|memory[1][1][12]~q\,
	combout => \unit2|Mux131~10_combout\);

-- Location: LCCOMB_X8_Y47_N30
\unit2|Mux131~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux131~10_combout\ & (\unit2|memory[1][3][12]~q\)) # (!\unit2|Mux131~10_combout\ & ((\unit2|memory[1][2][12]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux131~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[1][3][12]~q\,
	datac => \unit2|memory[1][2][12]~q\,
	datad => \unit2|Mux131~10_combout\,
	combout => \unit2|Mux131~11_combout\);

-- Location: LCCOMB_X4_Y50_N16
\unit2|memory[2][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[2][1][12]~feeder_combout\);

-- Location: FF_X4_Y50_N17
\unit2|memory[2][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][12]~q\);

-- Location: FF_X4_Y50_N27
\unit2|memory[2][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][12]~q\);

-- Location: FF_X3_Y50_N15
\unit2|memory[2][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][12]~q\);

-- Location: LCCOMB_X3_Y50_N20
\unit2|memory[2][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[2][2][12]~feeder_combout\);

-- Location: FF_X3_Y50_N21
\unit2|memory[2][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][12]~q\);

-- Location: LCCOMB_X3_Y50_N14
\unit2|Mux131~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[2][2][12]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][12]~q\,
	datad => \unit2|memory[2][2][12]~q\,
	combout => \unit2|Mux131~12_combout\);

-- Location: LCCOMB_X4_Y50_N26
\unit2|Mux131~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux131~12_combout\ & ((\unit2|memory[2][3][12]~q\))) # (!\unit2|Mux131~12_combout\ & (\unit2|memory[2][1][12]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux131~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[2][1][12]~q\,
	datac => \unit2|memory[2][3][12]~q\,
	datad => \unit2|Mux131~12_combout\,
	combout => \unit2|Mux131~13_combout\);

-- Location: LCCOMB_X9_Y50_N28
\unit2|memory[0][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[0][1][12]~feeder_combout\);

-- Location: FF_X9_Y50_N29
\unit2|memory[0][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][12]~q\);

-- Location: FF_X8_Y50_N13
\unit2|memory[0][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][12]~q\);

-- Location: FF_X9_Y50_N23
\unit2|memory[0][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][12]~q\);

-- Location: LCCOMB_X8_Y50_N2
\unit2|memory[0][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[0][2][12]~feeder_combout\);

-- Location: FF_X8_Y50_N3
\unit2|memory[0][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][12]~q\);

-- Location: LCCOMB_X9_Y50_N22
\unit2|Mux131~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~14_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[0][2][12]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][12]~q\,
	datad => \unit2|memory[0][2][12]~q\,
	combout => \unit2|Mux131~14_combout\);

-- Location: LCCOMB_X8_Y50_N12
\unit2|Mux131~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux131~14_combout\ & ((\unit2|memory[0][3][12]~q\))) # (!\unit2|Mux131~14_combout\ & (\unit2|memory[0][1][12]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux131~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[0][1][12]~q\,
	datac => \unit2|memory[0][3][12]~q\,
	datad => \unit2|Mux131~14_combout\,
	combout => \unit2|Mux131~15_combout\);

-- Location: LCCOMB_X8_Y50_N10
\unit2|Mux131~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~16_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|Mux131~13_combout\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & ((\unit2|Mux131~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux131~13_combout\,
	datad => \unit2|Mux131~15_combout\,
	combout => \unit2|Mux131~16_combout\);

-- Location: LCCOMB_X7_Y51_N26
\unit2|Mux131~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux131~16_combout\ & (\unit2|Mux131~18_combout\)) # (!\unit2|Mux131~16_combout\ & ((\unit2|Mux131~11_combout\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux131~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux131~18_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux131~11_combout\,
	datad => \unit2|Mux131~16_combout\,
	combout => \unit2|Mux131~19_combout\);

-- Location: LCCOMB_X5_Y51_N6
\unit2|memory[7][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[7][1][12]~feeder_combout\);

-- Location: FF_X5_Y51_N7
\unit2|memory[7][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][12]~q\);

-- Location: FF_X4_Y51_N9
\unit2|memory[5][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][12]~q\);

-- Location: FF_X4_Y51_N19
\unit2|memory[4][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][12]~q\);

-- Location: LCCOMB_X5_Y51_N28
\unit2|memory[6][1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[6][1][12]~feeder_combout\);

-- Location: FF_X5_Y51_N29
\unit2|memory[6][1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][12]~q\);

-- Location: LCCOMB_X4_Y51_N18
\unit2|Mux131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~0_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][1][12]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][1][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][1][12]~q\,
	datad => \unit2|memory[6][1][12]~q\,
	combout => \unit2|Mux131~0_combout\);

-- Location: LCCOMB_X4_Y51_N8
\unit2|Mux131~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux131~0_combout\ & (\unit2|memory[7][1][12]~q\)) # (!\unit2|Mux131~0_combout\ & ((\unit2|memory[5][1][12]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux131~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][1][12]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][1][12]~q\,
	datad => \unit2|Mux131~0_combout\,
	combout => \unit2|Mux131~1_combout\);

-- Location: LCCOMB_X12_Y48_N16
\unit2|memory[5][3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[5][3][12]~feeder_combout\);

-- Location: FF_X12_Y48_N17
\unit2|memory[5][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][12]~q\);

-- Location: FF_X11_Y48_N11
\unit2|memory[7][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][12]~q\);

-- Location: FF_X10_Y48_N9
\unit2|memory[4][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][12]~q\);

-- Location: LCCOMB_X11_Y48_N4
\unit2|memory[6][3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[6][3][12]~feeder_combout\);

-- Location: FF_X11_Y48_N5
\unit2|memory[6][3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][12]~q\);

-- Location: LCCOMB_X10_Y48_N8
\unit2|Mux131~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~7_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][3][12]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][12]~q\,
	datad => \unit2|memory[6][3][12]~q\,
	combout => \unit2|Mux131~7_combout\);

-- Location: LCCOMB_X11_Y48_N10
\unit2|Mux131~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux131~7_combout\ & ((\unit2|memory[7][3][12]~q\))) # (!\unit2|Mux131~7_combout\ & (\unit2|memory[5][3][12]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux131~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][12]~q\,
	datac => \unit2|memory[7][3][12]~q\,
	datad => \unit2|Mux131~7_combout\,
	combout => \unit2|Mux131~8_combout\);

-- Location: LCCOMB_X6_Y49_N2
\unit2|memory[6][0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[6][0][12]~feeder_combout\);

-- Location: FF_X6_Y49_N3
\unit2|memory[6][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][12]~q\);

-- Location: FF_X7_Y49_N3
\unit2|memory[7][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][12]~q\);

-- Location: FF_X7_Y49_N9
\unit2|memory[4][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][12]~q\);

-- Location: LCCOMB_X5_Y49_N10
\unit2|memory[5][0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(12),
	combout => \unit2|memory[5][0][12]~feeder_combout\);

-- Location: FF_X5_Y49_N11
\unit2|memory[5][0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][12]~q\);

-- Location: LCCOMB_X7_Y49_N8
\unit2|Mux131~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~4_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][0][12]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][12]~q\,
	datad => \unit2|memory[5][0][12]~q\,
	combout => \unit2|Mux131~4_combout\);

-- Location: LCCOMB_X7_Y49_N2
\unit2|Mux131~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux131~4_combout\ & ((\unit2|memory[7][0][12]~q\))) # (!\unit2|Mux131~4_combout\ & (\unit2|memory[6][0][12]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux131~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][12]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][12]~q\,
	datad => \unit2|Mux131~4_combout\,
	combout => \unit2|Mux131~5_combout\);

-- Location: LCCOMB_X12_Y49_N26
\unit2|memory[6][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[6][2][12]~feeder_combout\);

-- Location: FF_X12_Y49_N27
\unit2|memory[6][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][12]~q\);

-- Location: FF_X13_Y49_N5
\unit2|memory[7][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][12]~q\);

-- Location: FF_X13_Y49_N19
\unit2|memory[4][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][12]~q\);

-- Location: LCCOMB_X14_Y49_N24
\unit2|memory[5][2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][12]~feeder_combout\ = tempDataIn(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(12),
	combout => \unit2|memory[5][2][12]~feeder_combout\);

-- Location: FF_X14_Y49_N25
\unit2|memory[5][2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][12]~q\);

-- Location: LCCOMB_X13_Y49_N18
\unit2|Mux131~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][12]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][12]~q\,
	datad => \unit2|memory[5][2][12]~q\,
	combout => \unit2|Mux131~2_combout\);

-- Location: LCCOMB_X13_Y49_N4
\unit2|Mux131~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux131~2_combout\ & ((\unit2|memory[7][2][12]~q\))) # (!\unit2|Mux131~2_combout\ & (\unit2|memory[6][2][12]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux131~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][2][12]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][2][12]~q\,
	datad => \unit2|Mux131~2_combout\,
	combout => \unit2|Mux131~3_combout\);

-- Location: LCCOMB_X7_Y51_N10
\unit2|Mux131~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~6_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|Mux131~3_combout\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|Mux131~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux131~5_combout\,
	datad => \unit2|Mux131~3_combout\,
	combout => \unit2|Mux131~6_combout\);

-- Location: LCCOMB_X7_Y51_N28
\unit2|Mux131~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux131~6_combout\ & ((\unit2|Mux131~8_combout\))) # (!\unit2|Mux131~6_combout\ & (\unit2|Mux131~1_combout\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux131~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux131~1_combout\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux131~8_combout\,
	datad => \unit2|Mux131~6_combout\,
	combout => \unit2|Mux131~9_combout\);

-- Location: LCCOMB_X7_Y51_N12
\unit2|Mux131~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux131~20_combout\ = (\addressIN[4]~input_o\ & ((\unit2|Mux131~9_combout\))) # (!\addressIN[4]~input_o\ & (\unit2|Mux131~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux131~19_combout\,
	datad => \unit2|Mux131~9_combout\,
	combout => \unit2|Mux131~20_combout\);

-- Location: FF_X7_Y51_N13
\unit2|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux131~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(12));

-- Location: LCCOMB_X7_Y51_N18
\data_out_cpu[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[12]~reg0feeder_combout\ = \unit2|data_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(12),
	combout => \data_out_cpu[12]~reg0feeder_combout\);

-- Location: FF_X7_Y51_N19
\data_out_cpu[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[12]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[12]~reg0_q\);

-- Location: IOIBUF_X0_Y44_N8
\data_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LCCOMB_X2_Y48_N2
\tempDataIn[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[13]~feeder_combout\ = \data_in[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[13]~input_o\,
	combout => \tempDataIn[13]~feeder_combout\);

-- Location: FF_X2_Y48_N3
\tempDataIn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[13]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(13));

-- Location: LCCOMB_X8_Y49_N22
\unit2|memory[7][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[7][2][13]~feeder_combout\);

-- Location: FF_X8_Y49_N23
\unit2|memory[7][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][13]~q\);

-- Location: FF_X9_Y49_N1
\unit2|memory[5][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][13]~q\);

-- Location: FF_X12_Y49_N19
\unit2|memory[4][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][13]~q\);

-- Location: LCCOMB_X12_Y49_N20
\unit2|memory[6][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[6][2][13]~feeder_combout\);

-- Location: FF_X12_Y49_N21
\unit2|memory[6][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][13]~q\);

-- Location: LCCOMB_X12_Y49_N18
\unit2|Mux130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][13]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][13]~q\,
	datad => \unit2|memory[6][2][13]~q\,
	combout => \unit2|Mux130~0_combout\);

-- Location: LCCOMB_X9_Y49_N0
\unit2|Mux130~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux130~0_combout\ & (\unit2|memory[7][2][13]~q\)) # (!\unit2|Mux130~0_combout\ & ((\unit2|memory[5][2][13]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][13]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][13]~q\,
	datad => \unit2|Mux130~0_combout\,
	combout => \unit2|Mux130~1_combout\);

-- Location: LCCOMB_X9_Y48_N10
\unit2|memory[6][3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[6][3][13]~feeder_combout\);

-- Location: FF_X9_Y48_N11
\unit2|memory[6][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][13]~q\);

-- Location: FF_X9_Y48_N21
\unit2|memory[7][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][13]~q\);

-- Location: FF_X12_Y48_N13
\unit2|memory[4][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][13]~q\);

-- Location: LCCOMB_X12_Y48_N2
\unit2|memory[5][3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[5][3][13]~feeder_combout\);

-- Location: FF_X12_Y48_N3
\unit2|memory[5][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][13]~q\);

-- Location: LCCOMB_X12_Y48_N12
\unit2|Mux130~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][13]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][13]~q\,
	datad => \unit2|memory[5][3][13]~q\,
	combout => \unit2|Mux130~7_combout\);

-- Location: LCCOMB_X9_Y48_N20
\unit2|Mux130~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux130~7_combout\ & ((\unit2|memory[7][3][13]~q\))) # (!\unit2|Mux130~7_combout\ & (\unit2|memory[6][3][13]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux130~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][3][13]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][3][13]~q\,
	datad => \unit2|Mux130~7_combout\,
	combout => \unit2|Mux130~8_combout\);

-- Location: LCCOMB_X5_Y49_N16
\unit2|memory[5][0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(13),
	combout => \unit2|memory[5][0][13]~feeder_combout\);

-- Location: FF_X5_Y49_N17
\unit2|memory[5][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][13]~q\);

-- Location: FF_X7_Y49_N11
\unit2|memory[7][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][13]~q\);

-- Location: FF_X7_Y49_N17
\unit2|memory[4][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][13]~q\);

-- Location: LCCOMB_X6_Y49_N12
\unit2|memory[6][0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(13),
	combout => \unit2|memory[6][0][13]~feeder_combout\);

-- Location: FF_X6_Y49_N13
\unit2|memory[6][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][13]~q\);

-- Location: LCCOMB_X7_Y49_N16
\unit2|Mux130~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~4_combout\ = (\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\) # ((\unit2|memory[6][0][13]~q\)))) # (!\addressIN[3]~input_o\ & (!\addressIN[2]~input_o\ & (\unit2|memory[4][0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][0][13]~q\,
	datad => \unit2|memory[6][0][13]~q\,
	combout => \unit2|Mux130~4_combout\);

-- Location: LCCOMB_X7_Y49_N10
\unit2|Mux130~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux130~4_combout\ & ((\unit2|memory[7][0][13]~q\))) # (!\unit2|Mux130~4_combout\ & (\unit2|memory[5][0][13]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux130~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[5][0][13]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[7][0][13]~q\,
	datad => \unit2|Mux130~4_combout\,
	combout => \unit2|Mux130~5_combout\);

-- Location: LCCOMB_X5_Y52_N24
\unit2|memory[6][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[6][1][13]~feeder_combout\);

-- Location: FF_X5_Y52_N25
\unit2|memory[6][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][13]~q\);

-- Location: FF_X5_Y48_N5
\unit2|memory[7][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][13]~q\);

-- Location: FF_X5_Y48_N11
\unit2|memory[4][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][13]~q\);

-- Location: LCCOMB_X4_Y48_N22
\unit2|memory[5][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[5][1][13]~feeder_combout\);

-- Location: FF_X4_Y48_N23
\unit2|memory[5][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][13]~q\);

-- Location: LCCOMB_X5_Y48_N10
\unit2|Mux130~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][13]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][13]~q\,
	datad => \unit2|memory[5][1][13]~q\,
	combout => \unit2|Mux130~2_combout\);

-- Location: LCCOMB_X5_Y48_N4
\unit2|Mux130~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux130~2_combout\ & ((\unit2|memory[7][1][13]~q\))) # (!\unit2|Mux130~2_combout\ & (\unit2|memory[6][1][13]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][13]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][13]~q\,
	datad => \unit2|Mux130~2_combout\,
	combout => \unit2|Mux130~3_combout\);

-- Location: LCCOMB_X8_Y50_N16
\unit2|Mux130~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~6_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|Mux130~3_combout\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|Mux130~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|Mux130~5_combout\,
	datad => \unit2|Mux130~3_combout\,
	combout => \unit2|Mux130~6_combout\);

-- Location: LCCOMB_X8_Y50_N30
\unit2|Mux130~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux130~6_combout\ & ((\unit2|Mux130~8_combout\))) # (!\unit2|Mux130~6_combout\ & (\unit2|Mux130~1_combout\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux130~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux130~1_combout\,
	datac => \unit2|Mux130~8_combout\,
	datad => \unit2|Mux130~6_combout\,
	combout => \unit2|Mux130~9_combout\);

-- Location: LCCOMB_X6_Y50_N8
\unit2|memory[2][3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(13),
	combout => \unit2|memory[2][3][13]~feeder_combout\);

-- Location: FF_X6_Y50_N9
\unit2|memory[2][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][13]~q\);

-- Location: FF_X3_Y50_N25
\unit2|memory[2][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][13]~q\);

-- Location: FF_X3_Y50_N7
\unit2|memory[2][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][13]~q\);

-- Location: LCCOMB_X2_Y50_N14
\unit2|memory[2][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[2][1][13]~feeder_combout\);

-- Location: FF_X2_Y50_N15
\unit2|memory[2][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][13]~q\);

-- Location: LCCOMB_X3_Y50_N6
\unit2|Mux130~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[2][1][13]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][13]~q\,
	datad => \unit2|memory[2][1][13]~q\,
	combout => \unit2|Mux130~10_combout\);

-- Location: LCCOMB_X3_Y50_N24
\unit2|Mux130~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux130~10_combout\ & (\unit2|memory[2][3][13]~q\)) # (!\unit2|Mux130~10_combout\ & ((\unit2|memory[2][2][13]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux130~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[2][3][13]~q\,
	datac => \unit2|memory[2][2][13]~q\,
	datad => \unit2|Mux130~10_combout\,
	combout => \unit2|Mux130~11_combout\);

-- Location: LCCOMB_X8_Y50_N0
\unit2|memory[0][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[0][2][13]~feeder_combout\);

-- Location: FF_X8_Y50_N1
\unit2|memory[0][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][13]~q\);

-- Location: FF_X8_Y50_N23
\unit2|memory[0][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][13]~q\);

-- Location: FF_X9_Y50_N3
\unit2|memory[0][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][13]~q\);

-- Location: LCCOMB_X9_Y50_N16
\unit2|memory[0][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[0][1][13]~feeder_combout\);

-- Location: FF_X9_Y50_N17
\unit2|memory[0][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][13]~q\);

-- Location: LCCOMB_X9_Y50_N2
\unit2|Mux130~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~14_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[0][1][13]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][13]~q\,
	datad => \unit2|memory[0][1][13]~q\,
	combout => \unit2|Mux130~14_combout\);

-- Location: LCCOMB_X8_Y50_N22
\unit2|Mux130~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux130~14_combout\ & ((\unit2|memory[0][3][13]~q\))) # (!\unit2|Mux130~14_combout\ & (\unit2|memory[0][2][13]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux130~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][13]~q\,
	datac => \unit2|memory[0][3][13]~q\,
	datad => \unit2|Mux130~14_combout\,
	combout => \unit2|Mux130~15_combout\);

-- Location: LCCOMB_X10_Y47_N4
\unit2|memory[1][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[1][1][13]~feeder_combout\);

-- Location: FF_X10_Y47_N5
\unit2|memory[1][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][13]~q\);

-- Location: FF_X9_Y47_N7
\unit2|memory[1][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][13]~q\);

-- Location: FF_X9_Y47_N21
\unit2|memory[1][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][13]~q\);

-- Location: LCCOMB_X8_Y47_N20
\unit2|memory[1][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(13),
	combout => \unit2|memory[1][2][13]~feeder_combout\);

-- Location: FF_X8_Y47_N21
\unit2|memory[1][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][13]~q\);

-- Location: LCCOMB_X9_Y47_N20
\unit2|Mux130~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[1][2][13]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][13]~q\,
	datad => \unit2|memory[1][2][13]~q\,
	combout => \unit2|Mux130~12_combout\);

-- Location: LCCOMB_X9_Y47_N6
\unit2|Mux130~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux130~12_combout\ & ((\unit2|memory[1][3][13]~q\))) # (!\unit2|Mux130~12_combout\ & (\unit2|memory[1][1][13]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux130~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][13]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][13]~q\,
	datad => \unit2|Mux130~12_combout\,
	combout => \unit2|Mux130~13_combout\);

-- Location: LCCOMB_X8_Y50_N8
\unit2|Mux130~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~16_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|Mux130~13_combout\))) # (!\addressIN[2]~input_o\ & (\unit2|Mux130~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux130~15_combout\,
	datad => \unit2|Mux130~13_combout\,
	combout => \unit2|Mux130~16_combout\);

-- Location: LCCOMB_X11_Y52_N28
\unit2|memory[3][1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[3][1][13]~feeder_combout\);

-- Location: FF_X11_Y52_N29
\unit2|memory[3][1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][13]~q\);

-- Location: FF_X10_Y52_N19
\unit2|memory[3][3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][13]~q\);

-- Location: FF_X11_Y52_N23
\unit2|memory[3][0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(13),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][13]~q\);

-- Location: LCCOMB_X10_Y52_N8
\unit2|memory[3][2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][13]~feeder_combout\ = tempDataIn(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(13),
	combout => \unit2|memory[3][2][13]~feeder_combout\);

-- Location: FF_X10_Y52_N9
\unit2|memory[3][2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][13]~q\);

-- Location: LCCOMB_X11_Y52_N22
\unit2|Mux130~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~17_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[3][2][13]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][13]~q\,
	datad => \unit2|memory[3][2][13]~q\,
	combout => \unit2|Mux130~17_combout\);

-- Location: LCCOMB_X10_Y52_N18
\unit2|Mux130~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux130~17_combout\ & ((\unit2|memory[3][3][13]~q\))) # (!\unit2|Mux130~17_combout\ & (\unit2|memory[3][1][13]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux130~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][13]~q\,
	datac => \unit2|memory[3][3][13]~q\,
	datad => \unit2|Mux130~17_combout\,
	combout => \unit2|Mux130~18_combout\);

-- Location: LCCOMB_X8_Y50_N6
\unit2|Mux130~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux130~16_combout\ & ((\unit2|Mux130~18_combout\))) # (!\unit2|Mux130~16_combout\ & (\unit2|Mux130~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux130~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux130~11_combout\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux130~16_combout\,
	datad => \unit2|Mux130~18_combout\,
	combout => \unit2|Mux130~19_combout\);

-- Location: LCCOMB_X7_Y50_N12
\unit2|Mux130~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux130~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux130~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux130~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addressIN[4]~input_o\,
	datac => \unit2|Mux130~9_combout\,
	datad => \unit2|Mux130~19_combout\,
	combout => \unit2|Mux130~20_combout\);

-- Location: FF_X7_Y50_N13
\unit2|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux130~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(13));

-- Location: LCCOMB_X7_Y50_N0
\data_out_cpu[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[13]~reg0feeder_combout\ = \unit2|data_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \unit2|data_out\(13),
	combout => \data_out_cpu[13]~reg0feeder_combout\);

-- Location: FF_X7_Y50_N1
\data_out_cpu[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[13]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[13]~reg0_q\);

-- Location: IOIBUF_X0_Y42_N1
\data_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: LCCOMB_X4_Y47_N30
\tempDataIn[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tempDataIn[14]~feeder_combout\ = \data_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[14]~input_o\,
	combout => \tempDataIn[14]~feeder_combout\);

-- Location: FF_X4_Y47_N31
\tempDataIn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tempDataIn[14]~feeder_combout\,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(14));

-- Location: LCCOMB_X12_Y48_N22
\unit2|memory[5][3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[5][3][14]~feeder_combout\);

-- Location: FF_X12_Y48_N23
\unit2|memory[5][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][14]~q\);

-- Location: FF_X11_Y48_N27
\unit2|memory[7][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][14]~q\);

-- Location: FF_X11_Y48_N29
\unit2|memory[6][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][14]~q\);

-- Location: LCCOMB_X10_Y48_N30
\unit2|memory[4][3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][3][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[4][3][14]~feeder_combout\);

-- Location: FF_X10_Y48_N31
\unit2|memory[4][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][3][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][14]~q\);

-- Location: LCCOMB_X11_Y48_N28
\unit2|Mux129~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~7_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|memory[6][3][14]~q\)) # (!\addressIN[3]~input_o\ & ((\unit2|memory[4][3][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[6][3][14]~q\,
	datad => \unit2|memory[4][3][14]~q\,
	combout => \unit2|Mux129~7_combout\);

-- Location: LCCOMB_X11_Y48_N26
\unit2|Mux129~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~8_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux129~7_combout\ & ((\unit2|memory[7][3][14]~q\))) # (!\unit2|Mux129~7_combout\ & (\unit2|memory[5][3][14]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux129~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][3][14]~q\,
	datac => \unit2|memory[7][3][14]~q\,
	datad => \unit2|Mux129~7_combout\,
	combout => \unit2|Mux129~8_combout\);

-- Location: LCCOMB_X5_Y48_N28
\unit2|memory[7][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[7][1][14]~feeder_combout\);

-- Location: FF_X5_Y48_N29
\unit2|memory[7][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][14]~q\);

-- Location: FF_X4_Y48_N5
\unit2|memory[5][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][14]~q\);

-- Location: LCCOMB_X4_Y49_N30
\unit2|memory[6][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[6][1][14]~feeder_combout\);

-- Location: FF_X4_Y49_N31
\unit2|memory[6][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][14]~q\);

-- Location: LCCOMB_X5_Y48_N6
\unit2|memory[4][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[4][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[4][1][14]~feeder_combout\);

-- Location: FF_X5_Y48_N7
\unit2|memory[4][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[4][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][14]~q\);

-- Location: LCCOMB_X4_Y48_N6
\unit2|Mux129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|memory[6][1][14]~q\)) # (!\addressIN[3]~input_o\ & ((\unit2|memory[4][1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[6][1][14]~q\,
	datad => \unit2|memory[4][1][14]~q\,
	combout => \unit2|Mux129~0_combout\);

-- Location: LCCOMB_X4_Y48_N4
\unit2|Mux129~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux129~0_combout\ & (\unit2|memory[7][1][14]~q\)) # (!\unit2|Mux129~0_combout\ & ((\unit2|memory[5][1][14]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[7][1][14]~q\,
	datac => \unit2|memory[5][1][14]~q\,
	datad => \unit2|Mux129~0_combout\,
	combout => \unit2|Mux129~1_combout\);

-- Location: LCCOMB_X13_Y51_N18
\unit2|memory[6][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[6][2][14]~feeder_combout\);

-- Location: FF_X13_Y51_N19
\unit2|memory[6][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][14]~q\);

-- Location: FF_X13_Y51_N17
\unit2|memory[7][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][14]~q\);

-- Location: FF_X14_Y51_N27
\unit2|memory[4][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][14]~q\);

-- Location: LCCOMB_X14_Y51_N28
\unit2|memory[5][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][2][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[5][2][14]~feeder_combout\);

-- Location: FF_X14_Y51_N29
\unit2|memory[5][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][2][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][14]~q\);

-- Location: LCCOMB_X14_Y51_N26
\unit2|Mux129~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][2][14]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][14]~q\,
	datad => \unit2|memory[5][2][14]~q\,
	combout => \unit2|Mux129~2_combout\);

-- Location: LCCOMB_X13_Y51_N16
\unit2|Mux129~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux129~2_combout\ & ((\unit2|memory[7][2][14]~q\))) # (!\unit2|Mux129~2_combout\ & (\unit2|memory[6][2][14]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][2][14]~q\,
	datac => \unit2|memory[7][2][14]~q\,
	datad => \unit2|Mux129~2_combout\,
	combout => \unit2|Mux129~3_combout\);

-- Location: LCCOMB_X6_Y47_N26
\unit2|memory[6][0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[6][0][14]~feeder_combout\);

-- Location: FF_X6_Y47_N27
\unit2|memory[6][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][14]~q\);

-- Location: FF_X6_Y48_N29
\unit2|memory[7][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][14]~q\);

-- Location: FF_X6_Y48_N7
\unit2|memory[4][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][14]~q\);

-- Location: LCCOMB_X5_Y49_N14
\unit2|memory[5][0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[5][0][14]~feeder_combout\);

-- Location: FF_X5_Y49_N15
\unit2|memory[5][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][14]~q\);

-- Location: LCCOMB_X6_Y48_N6
\unit2|Mux129~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~4_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][0][14]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][0][14]~q\,
	datad => \unit2|memory[5][0][14]~q\,
	combout => \unit2|Mux129~4_combout\);

-- Location: LCCOMB_X6_Y48_N28
\unit2|Mux129~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~5_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux129~4_combout\ & ((\unit2|memory[7][0][14]~q\))) # (!\unit2|Mux129~4_combout\ & (\unit2|memory[6][0][14]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux129~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][0][14]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][0][14]~q\,
	datad => \unit2|Mux129~4_combout\,
	combout => \unit2|Mux129~5_combout\);

-- Location: LCCOMB_X7_Y51_N24
\unit2|Mux129~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~6_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|Mux129~3_combout\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & ((\unit2|Mux129~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux129~3_combout\,
	datad => \unit2|Mux129~5_combout\,
	combout => \unit2|Mux129~6_combout\);

-- Location: LCCOMB_X7_Y51_N30
\unit2|Mux129~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~9_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux129~6_combout\ & (\unit2|Mux129~8_combout\)) # (!\unit2|Mux129~6_combout\ & ((\unit2|Mux129~1_combout\))))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux129~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|Mux129~8_combout\,
	datac => \unit2|Mux129~1_combout\,
	datad => \unit2|Mux129~6_combout\,
	combout => \unit2|Mux129~9_combout\);

-- Location: LCCOMB_X9_Y47_N8
\unit2|memory[1][3][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][3][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(14),
	combout => \unit2|memory[1][3][14]~feeder_combout\);

-- Location: FF_X9_Y47_N9
\unit2|memory[1][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][3][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][14]~q\);

-- Location: FF_X8_Y47_N19
\unit2|memory[1][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][14]~q\);

-- Location: FF_X7_Y47_N11
\unit2|memory[1][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][14]~q\);

-- Location: LCCOMB_X7_Y47_N12
\unit2|memory[1][0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][0][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[1][0][14]~feeder_combout\);

-- Location: FF_X7_Y47_N13
\unit2|memory[1][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][0][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][14]~q\);

-- Location: LCCOMB_X7_Y47_N10
\unit2|Mux129~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~10_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[1][1][14]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & ((\unit2|memory[1][0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[1][1][14]~q\,
	datad => \unit2|memory[1][0][14]~q\,
	combout => \unit2|Mux129~10_combout\);

-- Location: LCCOMB_X8_Y47_N18
\unit2|Mux129~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux129~10_combout\ & (\unit2|memory[1][3][14]~q\)) # (!\unit2|Mux129~10_combout\ & ((\unit2|memory[1][2][14]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux129~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[1][3][14]~q\,
	datac => \unit2|memory[1][2][14]~q\,
	datad => \unit2|Mux129~10_combout\,
	combout => \unit2|Mux129~11_combout\);

-- Location: FF_X11_Y52_N11
\unit2|memory[3][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][14]~q\);

-- Location: LCCOMB_X11_Y52_N20
\unit2|memory[3][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[3][1][14]~feeder_combout\);

-- Location: FF_X11_Y52_N21
\unit2|memory[3][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][14]~q\);

-- Location: LCCOMB_X11_Y52_N10
\unit2|Mux129~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~17_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[3][1][14]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][14]~q\,
	datad => \unit2|memory[3][1][14]~q\,
	combout => \unit2|Mux129~17_combout\);

-- Location: FF_X10_Y52_N3
\unit2|memory[3][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][14]~q\);

-- Location: LCCOMB_X10_Y52_N12
\unit2|memory[3][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[3][2][14]~feeder_combout\);

-- Location: FF_X10_Y52_N13
\unit2|memory[3][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][14]~q\);

-- Location: LCCOMB_X10_Y52_N2
\unit2|Mux129~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~18_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux129~17_combout\ & (\unit2|memory[3][3][14]~q\)) # (!\unit2|Mux129~17_combout\ & ((\unit2|memory[3][2][14]~q\))))) # (!\addressIN[1]~input_o\ & (\unit2|Mux129~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux129~17_combout\,
	datac => \unit2|memory[3][3][14]~q\,
	datad => \unit2|memory[3][2][14]~q\,
	combout => \unit2|Mux129~18_combout\);

-- Location: LCCOMB_X4_Y50_N4
\unit2|memory[2][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[2][1][14]~feeder_combout\);

-- Location: FF_X4_Y50_N5
\unit2|memory[2][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][14]~q\);

-- Location: FF_X4_Y50_N11
\unit2|memory[2][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][14]~q\);

-- Location: FF_X5_Y50_N27
\unit2|memory[2][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][14]~q\);

-- Location: LCCOMB_X5_Y50_N24
\unit2|memory[2][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][2][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[2][2][14]~feeder_combout\);

-- Location: FF_X5_Y50_N25
\unit2|memory[2][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][2][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][14]~q\);

-- Location: LCCOMB_X5_Y50_N26
\unit2|Mux129~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~12_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[2][2][14]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[2][0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][0][14]~q\,
	datad => \unit2|memory[2][2][14]~q\,
	combout => \unit2|Mux129~12_combout\);

-- Location: LCCOMB_X4_Y50_N10
\unit2|Mux129~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux129~12_combout\ & ((\unit2|memory[2][3][14]~q\))) # (!\unit2|Mux129~12_combout\ & (\unit2|memory[2][1][14]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux129~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[2][1][14]~q\,
	datac => \unit2|memory[2][3][14]~q\,
	datad => \unit2|Mux129~12_combout\,
	combout => \unit2|Mux129~13_combout\);

-- Location: LCCOMB_X9_Y50_N12
\unit2|memory[0][1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[0][1][14]~feeder_combout\);

-- Location: FF_X9_Y50_N13
\unit2|memory[0][1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][14]~q\);

-- Location: FF_X8_Y50_N19
\unit2|memory[0][3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][14]~q\);

-- Location: FF_X9_Y50_N7
\unit2|memory[0][0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][14]~q\);

-- Location: LCCOMB_X8_Y50_N24
\unit2|memory[0][2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][14]~feeder_combout\ = tempDataIn(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(14),
	combout => \unit2|memory[0][2][14]~feeder_combout\);

-- Location: FF_X8_Y50_N25
\unit2|memory[0][2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][14]~q\);

-- Location: LCCOMB_X9_Y50_N6
\unit2|Mux129~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~14_combout\ = (\addressIN[0]~input_o\ & (\addressIN[1]~input_o\)) # (!\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\ & ((\unit2|memory[0][2][14]~q\))) # (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][14]~q\,
	datad => \unit2|memory[0][2][14]~q\,
	combout => \unit2|Mux129~14_combout\);

-- Location: LCCOMB_X8_Y50_N18
\unit2|Mux129~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~15_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux129~14_combout\ & ((\unit2|memory[0][3][14]~q\))) # (!\unit2|Mux129~14_combout\ & (\unit2|memory[0][1][14]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux129~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[0][1][14]~q\,
	datac => \unit2|memory[0][3][14]~q\,
	datad => \unit2|Mux129~14_combout\,
	combout => \unit2|Mux129~15_combout\);

-- Location: LCCOMB_X7_Y51_N20
\unit2|Mux129~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~16_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & (\unit2|Mux129~13_combout\)) # (!\addressIN[3]~input_o\ & ((\unit2|Mux129~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux129~13_combout\,
	datad => \unit2|Mux129~15_combout\,
	combout => \unit2|Mux129~16_combout\);

-- Location: LCCOMB_X7_Y51_N6
\unit2|Mux129~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~19_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux129~16_combout\ & ((\unit2|Mux129~18_combout\))) # (!\unit2|Mux129~16_combout\ & (\unit2|Mux129~11_combout\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux129~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux129~11_combout\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|Mux129~18_combout\,
	datad => \unit2|Mux129~16_combout\,
	combout => \unit2|Mux129~19_combout\);

-- Location: LCCOMB_X7_Y51_N22
\unit2|Mux129~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux129~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux129~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux129~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux129~9_combout\,
	datad => \unit2|Mux129~19_combout\,
	combout => \unit2|Mux129~20_combout\);

-- Location: FF_X7_Y51_N23
\unit2|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux129~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(14));

-- Location: LCCOMB_X7_Y51_N16
\data_out_cpu[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[14]~reg0feeder_combout\ = \unit2|data_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(14),
	combout => \data_out_cpu[14]~reg0feeder_combout\);

-- Location: FF_X7_Y51_N17
\data_out_cpu[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[14]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[14]~reg0_q\);

-- Location: IOIBUF_X0_Y35_N8
\data_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: FF_X3_Y47_N1
\tempDataIn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[15]~input_o\,
	sload => VCC,
	ena => \tempDataIn[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempDataIn(15));

-- Location: LCCOMB_X9_Y48_N2
\unit2|memory[6][3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][3][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[6][3][15]~feeder_combout\);

-- Location: FF_X9_Y48_N3
\unit2|memory[6][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][3][15]~q\);

-- Location: FF_X9_Y48_N9
\unit2|memory[7][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][3][15]~q\);

-- Location: FF_X12_Y48_N31
\unit2|memory[4][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][3][15]~q\);

-- Location: LCCOMB_X12_Y48_N0
\unit2|memory[5][3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][3][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[5][3][15]~feeder_combout\);

-- Location: FF_X12_Y48_N1
\unit2|memory[5][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][3][15]~q\);

-- Location: LCCOMB_X12_Y48_N30
\unit2|Mux128~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~7_combout\ = (\addressIN[3]~input_o\ & (\addressIN[2]~input_o\)) # (!\addressIN[3]~input_o\ & ((\addressIN[2]~input_o\ & ((\unit2|memory[5][3][15]~q\))) # (!\addressIN[2]~input_o\ & (\unit2|memory[4][3][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[4][3][15]~q\,
	datad => \unit2|memory[5][3][15]~q\,
	combout => \unit2|Mux128~7_combout\);

-- Location: LCCOMB_X9_Y48_N8
\unit2|Mux128~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~8_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux128~7_combout\ & ((\unit2|memory[7][3][15]~q\))) # (!\unit2|Mux128~7_combout\ & (\unit2|memory[6][3][15]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux128~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[3]~input_o\,
	datab => \unit2|memory[6][3][15]~q\,
	datac => \unit2|memory[7][3][15]~q\,
	datad => \unit2|Mux128~7_combout\,
	combout => \unit2|Mux128~8_combout\);

-- Location: LCCOMB_X8_Y49_N16
\unit2|memory[7][2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[7][2][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[7][2][15]~feeder_combout\);

-- Location: FF_X8_Y49_N17
\unit2|memory[7][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[7][2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[7][2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][2][15]~q\);

-- Location: FF_X9_Y49_N11
\unit2|memory[5][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[5][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][2][15]~q\);

-- Location: FF_X12_Y49_N7
\unit2|memory[4][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][2][15]~q\);

-- Location: LCCOMB_X12_Y49_N12
\unit2|memory[6][2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][2][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[6][2][15]~feeder_combout\);

-- Location: FF_X12_Y49_N13
\unit2|memory[6][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][2][15]~q\);

-- Location: LCCOMB_X12_Y49_N6
\unit2|Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~0_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][2][15]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][2][15]~q\,
	datad => \unit2|memory[6][2][15]~q\,
	combout => \unit2|Mux128~0_combout\);

-- Location: LCCOMB_X9_Y49_N10
\unit2|Mux128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~1_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux128~0_combout\ & (\unit2|memory[7][2][15]~q\)) # (!\unit2|Mux128~0_combout\ & ((\unit2|memory[5][2][15]~q\))))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux128~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[7][2][15]~q\,
	datab => \addressIN[2]~input_o\,
	datac => \unit2|memory[5][2][15]~q\,
	datad => \unit2|Mux128~0_combout\,
	combout => \unit2|Mux128~1_combout\);

-- Location: LCCOMB_X6_Y47_N24
\unit2|memory[5][0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][0][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[5][0][15]~feeder_combout\);

-- Location: FF_X6_Y47_N25
\unit2|memory[5][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][0][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][0][15]~q\);

-- Location: FF_X6_Y48_N9
\unit2|memory[7][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][0][15]~q\);

-- Location: FF_X6_Y48_N19
\unit2|memory[4][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][0][15]~q\);

-- Location: LCCOMB_X6_Y49_N6
\unit2|memory[6][0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][0][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[6][0][15]~feeder_combout\);

-- Location: FF_X6_Y49_N7
\unit2|memory[6][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][0][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][0][15]~q\);

-- Location: LCCOMB_X6_Y48_N18
\unit2|Mux128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~4_combout\ = (\addressIN[2]~input_o\ & (\addressIN[3]~input_o\)) # (!\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\ & ((\unit2|memory[6][0][15]~q\))) # (!\addressIN[3]~input_o\ & (\unit2|memory[4][0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][0][15]~q\,
	datad => \unit2|memory[6][0][15]~q\,
	combout => \unit2|Mux128~4_combout\);

-- Location: LCCOMB_X6_Y48_N8
\unit2|Mux128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~5_combout\ = (\addressIN[2]~input_o\ & ((\unit2|Mux128~4_combout\ & ((\unit2|memory[7][0][15]~q\))) # (!\unit2|Mux128~4_combout\ & (\unit2|memory[5][0][15]~q\)))) # (!\addressIN[2]~input_o\ & (((\unit2|Mux128~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \unit2|memory[5][0][15]~q\,
	datac => \unit2|memory[7][0][15]~q\,
	datad => \unit2|Mux128~4_combout\,
	combout => \unit2|Mux128~5_combout\);

-- Location: LCCOMB_X4_Y49_N20
\unit2|memory[6][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[6][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[6][1][15]~feeder_combout\);

-- Location: FF_X4_Y49_N21
\unit2|memory[6][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[6][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[6][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[6][1][15]~q\);

-- Location: FF_X3_Y49_N31
\unit2|memory[7][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[7][1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[7][1][15]~q\);

-- Location: FF_X3_Y49_N13
\unit2|memory[4][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[4][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[4][1][15]~q\);

-- Location: LCCOMB_X2_Y49_N14
\unit2|memory[5][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[5][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[5][1][15]~feeder_combout\);

-- Location: FF_X2_Y49_N15
\unit2|memory[5][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[5][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[5][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[5][1][15]~q\);

-- Location: LCCOMB_X3_Y49_N12
\unit2|Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~2_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|memory[5][1][15]~q\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|memory[4][1][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[4][1][15]~q\,
	datad => \unit2|memory[5][1][15]~q\,
	combout => \unit2|Mux128~2_combout\);

-- Location: LCCOMB_X3_Y49_N30
\unit2|Mux128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~3_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux128~2_combout\ & ((\unit2|memory[7][1][15]~q\))) # (!\unit2|Mux128~2_combout\ & (\unit2|memory[6][1][15]~q\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[6][1][15]~q\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|memory[7][1][15]~q\,
	datad => \unit2|Mux128~2_combout\,
	combout => \unit2|Mux128~3_combout\);

-- Location: LCCOMB_X6_Y48_N22
\unit2|Mux128~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~6_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|Mux128~3_combout\))) # (!\addressIN[0]~input_o\ & (\unit2|Mux128~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|Mux128~5_combout\,
	datad => \unit2|Mux128~3_combout\,
	combout => \unit2|Mux128~6_combout\);

-- Location: LCCOMB_X7_Y51_N8
\unit2|Mux128~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~9_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux128~6_combout\ & (\unit2|Mux128~8_combout\)) # (!\unit2|Mux128~6_combout\ & ((\unit2|Mux128~1_combout\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux128~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|Mux128~8_combout\,
	datac => \unit2|Mux128~1_combout\,
	datad => \unit2|Mux128~6_combout\,
	combout => \unit2|Mux128~9_combout\);

-- Location: LCCOMB_X6_Y50_N2
\unit2|memory[2][3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][3][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[2][3][15]~feeder_combout\);

-- Location: FF_X6_Y50_N3
\unit2|memory[2][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][3][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][3][15]~q\);

-- Location: FF_X3_Y50_N1
\unit2|memory[2][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][2][15]~q\);

-- Location: FF_X3_Y50_N11
\unit2|memory[2][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[2][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][0][15]~q\);

-- Location: LCCOMB_X3_Y52_N28
\unit2|memory[2][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[2][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[2][1][15]~feeder_combout\);

-- Location: FF_X3_Y52_N29
\unit2|memory[2][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[2][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[2][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[2][1][15]~q\);

-- Location: LCCOMB_X3_Y50_N10
\unit2|Mux128~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~10_combout\ = (\addressIN[1]~input_o\ & (\addressIN[0]~input_o\)) # (!\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\ & ((\unit2|memory[2][1][15]~q\))) # (!\addressIN[0]~input_o\ & (\unit2|memory[2][0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[2][0][15]~q\,
	datad => \unit2|memory[2][1][15]~q\,
	combout => \unit2|Mux128~10_combout\);

-- Location: LCCOMB_X3_Y50_N0
\unit2|Mux128~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~11_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux128~10_combout\ & (\unit2|memory[2][3][15]~q\)) # (!\unit2|Mux128~10_combout\ & ((\unit2|memory[2][2][15]~q\))))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux128~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[2][3][15]~q\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[2][2][15]~q\,
	datad => \unit2|Mux128~10_combout\,
	combout => \unit2|Mux128~11_combout\);

-- Location: LCCOMB_X11_Y52_N8
\unit2|memory[3][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[3][1][15]~feeder_combout\);

-- Location: FF_X11_Y52_N9
\unit2|memory[3][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][1][15]~q\);

-- Location: FF_X10_Y52_N15
\unit2|memory[3][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][3][15]~q\);

-- Location: FF_X11_Y52_N31
\unit2|memory[3][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[3][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][0][15]~q\);

-- Location: LCCOMB_X10_Y52_N28
\unit2|memory[3][2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[3][2][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[3][2][15]~feeder_combout\);

-- Location: FF_X10_Y52_N29
\unit2|memory[3][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[3][2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[3][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[3][2][15]~q\);

-- Location: LCCOMB_X11_Y52_N30
\unit2|Mux128~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~17_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[3][2][15]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[3][0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[3][0][15]~q\,
	datad => \unit2|memory[3][2][15]~q\,
	combout => \unit2|Mux128~17_combout\);

-- Location: LCCOMB_X10_Y52_N14
\unit2|Mux128~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~18_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux128~17_combout\ & ((\unit2|memory[3][3][15]~q\))) # (!\unit2|Mux128~17_combout\ & (\unit2|memory[3][1][15]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux128~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \unit2|memory[3][1][15]~q\,
	datac => \unit2|memory[3][3][15]~q\,
	datad => \unit2|Mux128~17_combout\,
	combout => \unit2|Mux128~18_combout\);

-- Location: LCCOMB_X11_Y51_N12
\unit2|memory[0][2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][2][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tempDataIn(15),
	combout => \unit2|memory[0][2][15]~feeder_combout\);

-- Location: FF_X11_Y51_N13
\unit2|memory[0][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][2][15]~q\);

-- Location: FF_X10_Y51_N27
\unit2|memory[0][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][3][15]~q\);

-- Location: FF_X9_Y50_N15
\unit2|memory[0][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[0][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][0][15]~q\);

-- Location: LCCOMB_X9_Y50_N20
\unit2|memory[0][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[0][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[0][1][15]~feeder_combout\);

-- Location: FF_X9_Y50_N21
\unit2|memory[0][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[0][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[0][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[0][1][15]~q\);

-- Location: LCCOMB_X9_Y50_N14
\unit2|Mux128~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~14_combout\ = (\addressIN[0]~input_o\ & ((\addressIN[1]~input_o\) # ((\unit2|memory[0][1][15]~q\)))) # (!\addressIN[0]~input_o\ & (!\addressIN[1]~input_o\ & (\unit2|memory[0][0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[0]~input_o\,
	datab => \addressIN[1]~input_o\,
	datac => \unit2|memory[0][0][15]~q\,
	datad => \unit2|memory[0][1][15]~q\,
	combout => \unit2|Mux128~14_combout\);

-- Location: LCCOMB_X10_Y51_N26
\unit2|Mux128~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~15_combout\ = (\addressIN[1]~input_o\ & ((\unit2|Mux128~14_combout\ & ((\unit2|memory[0][3][15]~q\))) # (!\unit2|Mux128~14_combout\ & (\unit2|memory[0][2][15]~q\)))) # (!\addressIN[1]~input_o\ & (((\unit2|Mux128~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \unit2|memory[0][2][15]~q\,
	datac => \unit2|memory[0][3][15]~q\,
	datad => \unit2|Mux128~14_combout\,
	combout => \unit2|Mux128~15_combout\);

-- Location: LCCOMB_X10_Y47_N30
\unit2|memory[1][1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][1][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[1][1][15]~feeder_combout\);

-- Location: FF_X10_Y47_N31
\unit2|memory[1][1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][1][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][1][15]~q\);

-- Location: FF_X9_Y47_N25
\unit2|memory[1][3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][3][15]~q\);

-- Location: FF_X9_Y47_N11
\unit2|memory[1][0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tempDataIn(15),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \unit2|memory[1][0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][0][15]~q\);

-- Location: LCCOMB_X8_Y47_N12
\unit2|memory[1][2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|memory[1][2][15]~feeder_combout\ = tempDataIn(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tempDataIn(15),
	combout => \unit2|memory[1][2][15]~feeder_combout\);

-- Location: FF_X8_Y47_N13
\unit2|memory[1][2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|memory[1][2][15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \unit2|memory[1][2][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|memory[1][2][15]~q\);

-- Location: LCCOMB_X9_Y47_N10
\unit2|Mux128~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~12_combout\ = (\addressIN[1]~input_o\ & ((\addressIN[0]~input_o\) # ((\unit2|memory[1][2][15]~q\)))) # (!\addressIN[1]~input_o\ & (!\addressIN[0]~input_o\ & (\unit2|memory[1][0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[1]~input_o\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][0][15]~q\,
	datad => \unit2|memory[1][2][15]~q\,
	combout => \unit2|Mux128~12_combout\);

-- Location: LCCOMB_X9_Y47_N24
\unit2|Mux128~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~13_combout\ = (\addressIN[0]~input_o\ & ((\unit2|Mux128~12_combout\ & ((\unit2|memory[1][3][15]~q\))) # (!\unit2|Mux128~12_combout\ & (\unit2|memory[1][1][15]~q\)))) # (!\addressIN[0]~input_o\ & (((\unit2|Mux128~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|memory[1][1][15]~q\,
	datab => \addressIN[0]~input_o\,
	datac => \unit2|memory[1][3][15]~q\,
	datad => \unit2|Mux128~12_combout\,
	combout => \unit2|Mux128~13_combout\);

-- Location: LCCOMB_X10_Y51_N24
\unit2|Mux128~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~16_combout\ = (\addressIN[2]~input_o\ & ((\addressIN[3]~input_o\) # ((\unit2|Mux128~13_combout\)))) # (!\addressIN[2]~input_o\ & (!\addressIN[3]~input_o\ & (\unit2|Mux128~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[2]~input_o\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux128~15_combout\,
	datad => \unit2|Mux128~13_combout\,
	combout => \unit2|Mux128~16_combout\);

-- Location: LCCOMB_X7_Y51_N2
\unit2|Mux128~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~19_combout\ = (\addressIN[3]~input_o\ & ((\unit2|Mux128~16_combout\ & ((\unit2|Mux128~18_combout\))) # (!\unit2|Mux128~16_combout\ & (\unit2|Mux128~11_combout\)))) # (!\addressIN[3]~input_o\ & (((\unit2|Mux128~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unit2|Mux128~11_combout\,
	datab => \addressIN[3]~input_o\,
	datac => \unit2|Mux128~18_combout\,
	datad => \unit2|Mux128~16_combout\,
	combout => \unit2|Mux128~19_combout\);

-- Location: LCCOMB_X7_Y51_N4
\unit2|Mux128~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \unit2|Mux128~20_combout\ = (\addressIN[4]~input_o\ & (\unit2|Mux128~9_combout\)) # (!\addressIN[4]~input_o\ & ((\unit2|Mux128~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addressIN[4]~input_o\,
	datac => \unit2|Mux128~9_combout\,
	datad => \unit2|Mux128~19_combout\,
	combout => \unit2|Mux128~20_combout\);

-- Location: FF_X7_Y51_N5
\unit2|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \unit2|Mux128~20_combout\,
	ena => \unit2|data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \unit2|data_out\(15));

-- Location: LCCOMB_X7_Y51_N14
\data_out_cpu[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out_cpu[15]~reg0feeder_combout\ = \unit2|data_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unit2|data_out\(15),
	combout => \data_out_cpu[15]~reg0feeder_combout\);

-- Location: FF_X7_Y51_N15
\data_out_cpu[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out_cpu[15]~reg0feeder_combout\,
	ena => \data_out_cpu[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_cpu[15]~reg0_q\);

-- Location: LCCOMB_X8_Y52_N18
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.s1~q\ & ((\replaceStatusOut~reg0_q\) # (!\unit1|hit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \replaceStatusOut~reg0_q\,
	datac => \unit1|hit~q\,
	datad => \state.s1~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X8_Y52_N24
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((!\state.s5~q\ & (\state.s0~q\ & \replaceStatusOut~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datab => \state.s0~q\,
	datac => \replaceStatusOut~reg0_q\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X8_Y52_N25
\replaceStatusOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \replaceStatusOut~reg0_q\);

-- Location: LCCOMB_X7_Y52_N0
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.s1~q\ & (((!\unit1|hit~q\)))) # (!\state.s1~q\ & (\state.s0~q\ & (\delayReq~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s0~q\,
	datac => \delayReq~reg0_q\,
	datad => \unit1|hit~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X7_Y52_N1
\delayReq~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delayReq~reg0_q\);

-- Location: IOIBUF_X0_Y36_N22
\data_block_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(0),
	o => \data_block_in[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\data_block_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(1),
	o => \data_block_in[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\data_block_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(2),
	o => \data_block_in[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\data_block_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(3),
	o => \data_block_in[3]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\data_block_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(4),
	o => \data_block_in[4]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\data_block_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(5),
	o => \data_block_in[5]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\data_block_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(6),
	o => \data_block_in[6]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\data_block_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(7),
	o => \data_block_in[7]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\data_block_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(8),
	o => \data_block_in[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\data_block_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(9),
	o => \data_block_in[9]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\data_block_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(10),
	o => \data_block_in[10]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\data_block_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(11),
	o => \data_block_in[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\data_block_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(12),
	o => \data_block_in[12]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\data_block_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(13),
	o => \data_block_in[13]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\data_block_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(14),
	o => \data_block_in[14]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\data_block_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(15),
	o => \data_block_in[15]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\data_block_in[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(16),
	o => \data_block_in[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\data_block_in[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(17),
	o => \data_block_in[17]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\data_block_in[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(18),
	o => \data_block_in[18]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\data_block_in[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(19),
	o => \data_block_in[19]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\data_block_in[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(20),
	o => \data_block_in[20]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\data_block_in[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(21),
	o => \data_block_in[21]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\data_block_in[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(22),
	o => \data_block_in[22]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\data_block_in[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(23),
	o => \data_block_in[23]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\data_block_in[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(24),
	o => \data_block_in[24]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\data_block_in[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(25),
	o => \data_block_in[25]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\data_block_in[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(26),
	o => \data_block_in[26]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\data_block_in[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(27),
	o => \data_block_in[27]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\data_block_in[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(28),
	o => \data_block_in[28]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\data_block_in[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(29),
	o => \data_block_in[29]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\data_block_in[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(30),
	o => \data_block_in[30]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\data_block_in[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(31),
	o => \data_block_in[31]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\data_block_in[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(32),
	o => \data_block_in[32]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\data_block_in[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(33),
	o => \data_block_in[33]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\data_block_in[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(34),
	o => \data_block_in[34]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\data_block_in[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(35),
	o => \data_block_in[35]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\data_block_in[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(36),
	o => \data_block_in[36]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\data_block_in[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(37),
	o => \data_block_in[37]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\data_block_in[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(38),
	o => \data_block_in[38]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\data_block_in[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(39),
	o => \data_block_in[39]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\data_block_in[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(40),
	o => \data_block_in[40]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\data_block_in[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(41),
	o => \data_block_in[41]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\data_block_in[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(42),
	o => \data_block_in[42]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\data_block_in[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(43),
	o => \data_block_in[43]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\data_block_in[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(44),
	o => \data_block_in[44]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\data_block_in[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(45),
	o => \data_block_in[45]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\data_block_in[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(46),
	o => \data_block_in[46]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\data_block_in[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(47),
	o => \data_block_in[47]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\data_block_in[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(48),
	o => \data_block_in[48]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\data_block_in[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(49),
	o => \data_block_in[49]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\data_block_in[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(50),
	o => \data_block_in[50]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\data_block_in[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(51),
	o => \data_block_in[51]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\data_block_in[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(52),
	o => \data_block_in[52]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\data_block_in[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(53),
	o => \data_block_in[53]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\data_block_in[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(54),
	o => \data_block_in[54]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\data_block_in[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(55),
	o => \data_block_in[55]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\data_block_in[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(56),
	o => \data_block_in[56]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\data_block_in[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(57),
	o => \data_block_in[57]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\data_block_in[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(58),
	o => \data_block_in[58]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\data_block_in[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(59),
	o => \data_block_in[59]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\data_block_in[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(60),
	o => \data_block_in[60]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\data_block_in[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(61),
	o => \data_block_in[61]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\data_block_in[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(62),
	o => \data_block_in[62]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\data_block_in[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_block_in(63),
	o => \data_block_in[63]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\address_block_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(0),
	o => \address_block_in[0]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\address_block_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(1),
	o => \address_block_in[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\address_block_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(2),
	o => \address_block_in[2]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\address_block_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(3),
	o => \address_block_in[3]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\address_block_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(4),
	o => \address_block_in[4]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\address_block_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(5),
	o => \address_block_in[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\address_block_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(6),
	o => \address_block_in[6]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\address_block_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(7),
	o => \address_block_in[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\address_block_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(8),
	o => \address_block_in[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\address_block_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(9),
	o => \address_block_in[9]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\address_block_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(10),
	o => \address_block_in[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\address_block_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_block_in(11),
	o => \address_block_in[11]~input_o\);

ww_addressOUT(0) <= \addressOUT[0]~output_o\;

ww_addressOUT(1) <= \addressOUT[1]~output_o\;

ww_addressOUT(2) <= \addressOUT[2]~output_o\;

ww_addressOUT(3) <= \addressOUT[3]~output_o\;

ww_addressOUT(4) <= \addressOUT[4]~output_o\;

ww_addressOUT(5) <= \addressOUT[5]~output_o\;

ww_addressOUT(6) <= \addressOUT[6]~output_o\;

ww_addressOUT(7) <= \addressOUT[7]~output_o\;

ww_addressOUT(8) <= \addressOUT[8]~output_o\;

ww_addressOUT(9) <= \addressOUT[9]~output_o\;

ww_addressOUT(10) <= \addressOUT[10]~output_o\;

ww_addressOUT(11) <= \addressOUT[11]~output_o\;

ww_data_out_cpu(0) <= \data_out_cpu[0]~output_o\;

ww_data_out_cpu(1) <= \data_out_cpu[1]~output_o\;

ww_data_out_cpu(2) <= \data_out_cpu[2]~output_o\;

ww_data_out_cpu(3) <= \data_out_cpu[3]~output_o\;

ww_data_out_cpu(4) <= \data_out_cpu[4]~output_o\;

ww_data_out_cpu(5) <= \data_out_cpu[5]~output_o\;

ww_data_out_cpu(6) <= \data_out_cpu[6]~output_o\;

ww_data_out_cpu(7) <= \data_out_cpu[7]~output_o\;

ww_data_out_cpu(8) <= \data_out_cpu[8]~output_o\;

ww_data_out_cpu(9) <= \data_out_cpu[9]~output_o\;

ww_data_out_cpu(10) <= \data_out_cpu[10]~output_o\;

ww_data_out_cpu(11) <= \data_out_cpu[11]~output_o\;

ww_data_out_cpu(12) <= \data_out_cpu[12]~output_o\;

ww_data_out_cpu(13) <= \data_out_cpu[13]~output_o\;

ww_data_out_cpu(14) <= \data_out_cpu[14]~output_o\;

ww_data_out_cpu(15) <= \data_out_cpu[15]~output_o\;

ww_replaceStatusOut <= \replaceStatusOut~output_o\;

ww_delayReq <= \delayReq~output_o\;
END structure;


