--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: four_bit_alu_arch_synthesis.vhd
-- /___/   /\     Timestamp: Sun Sep 28 17:19:01 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm four_bit_alu_arch -w -dir netgen/synthesis -ofmt vhdl -sim four_bit_alu_arch.ngc four_bit_alu_arch_synthesis.vhd 
-- Device	: xc3s250e-5-pq208
-- Input file	: four_bit_alu_arch.ngc
-- Output file	: /home/ise/VLSI_DESIGN/four_bit_alu/netgen/synthesis/four_bit_alu_arch_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: four_bit_alu_arch
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity four_bit_alu_arch is
  port (
    CARRY_SIGN : out STD_LOGIC; 
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    F : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end four_bit_alu_arch;

architecture Structure of four_bit_alu_arch is
  signal A_0_IBUF_4 : STD_LOGIC; 
  signal A_1_IBUF_5 : STD_LOGIC; 
  signal A_2_IBUF_6 : STD_LOGIC; 
  signal A_3_IBUF_7 : STD_LOGIC; 
  signal B_0_IBUF_12 : STD_LOGIC; 
  signal B_1_IBUF_13 : STD_LOGIC; 
  signal B_2_IBUF_14 : STD_LOGIC; 
  signal B_3_IBUF_15 : STD_LOGIC; 
  signal CARRY_SIGN_OBUF_17 : STD_LOGIC; 
  signal F_0_IBUF_21 : STD_LOGIC; 
  signal F_1_IBUF_22 : STD_LOGIC; 
  signal F_2_IBUF_23 : STD_LOGIC; 
  signal Mmux_result_3_f5_35 : STD_LOGIC; 
  signal Mmux_result_3_f51 : STD_LOGIC; 
  signal Mmux_result_3_f52 : STD_LOGIC; 
  signal Mmux_result_3_f53 : STD_LOGIC; 
  signal Mmux_result_3_f5_0_rt_39 : STD_LOGIC; 
  signal Mmux_result_3_f5_1_rt_40 : STD_LOGIC; 
  signal Mmux_result_3_f5_2_rt_41 : STD_LOGIC; 
  signal Mmux_result_3_f5_rt_42 : STD_LOGIC; 
  signal Mmux_result_4_f5_43 : STD_LOGIC; 
  signal Mmux_result_4_f51 : STD_LOGIC; 
  signal Mmux_result_4_f52 : STD_LOGIC; 
  signal Mmux_result_4_f53 : STD_LOGIC; 
  signal Mmux_result_5_47 : STD_LOGIC; 
  signal Mmux_result_51_48 : STD_LOGIC; 
  signal Mmux_result_52_49 : STD_LOGIC; 
  signal Mmux_result_53_50 : STD_LOGIC; 
  signal Mmux_result_54_51 : STD_LOGIC; 
  signal Mmux_result_55_52 : STD_LOGIC; 
  signal Mmux_result_56_53 : STD_LOGIC; 
  signal Mmux_result_57_54 : STD_LOGIC; 
  signal Mmux_result_6_55 : STD_LOGIC; 
  signal Mmux_result_61_56 : STD_LOGIC; 
  signal Mmux_result_62_57 : STD_LOGIC; 
  signal Mmux_result_63_58 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal Y_0_OBUF_66 : STD_LOGIC; 
  signal Y_1_OBUF_67 : STD_LOGIC; 
  signal Y_2_OBUF_68 : STD_LOGIC; 
  signal Y_3_OBUF_69 : STD_LOGIC; 
  signal result_cmp_eq0000 : STD_LOGIC; 
  signal result_cmp_lt0000 : STD_LOGIC; 
  signal result_cmp_lt00001_77 : STD_LOGIC; 
  signal result_mux0000_1_1 : STD_LOGIC; 
  signal result_mux0002 : STD_LOGIC; 
  signal Madd_result_addsub0001_cy : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Maddsub_result_addsub0000_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Maddsub_result_addsub0000_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal result_addsub0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal result_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  Maddsub_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => result_mux0002,
      DI => result_mux0000(0),
      S => Maddsub_result_addsub0000_lut(0),
      O => Maddsub_result_addsub0000_cy(0)
    );
  Maddsub_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => result_mux0002,
      LI => Maddsub_result_addsub0000_lut(0),
      O => result_addsub0000(0)
    );
  Maddsub_result_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(0),
      DI => result_mux0000(1),
      S => Maddsub_result_addsub0000_lut(1),
      O => Maddsub_result_addsub0000_cy(1)
    );
  Maddsub_result_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(0),
      LI => Maddsub_result_addsub0000_lut(1),
      O => result_addsub0000(1)
    );
  Maddsub_result_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(1),
      DI => result_mux0000(2),
      S => Maddsub_result_addsub0000_lut(2),
      O => Maddsub_result_addsub0000_cy(2)
    );
  Maddsub_result_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(1),
      LI => Maddsub_result_addsub0000_lut(2),
      O => result_addsub0000(2)
    );
  Maddsub_result_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(2),
      DI => result_mux0000(3),
      S => Maddsub_result_addsub0000_lut(3),
      O => Maddsub_result_addsub0000_cy(3)
    );
  Maddsub_result_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(2),
      LI => Maddsub_result_addsub0000_lut(3),
      O => result_addsub0000(3)
    );
  Maddsub_result_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(3),
      LI => Maddsub_result_addsub0000_lut(4),
      O => result_addsub0000(4)
    );
  Mmux_result_2_f6_2 : MUXF6
    port map (
      I0 => Mmux_result_4_f53,
      I1 => Mmux_result_3_f53,
      S => F_2_IBUF_23,
      O => Y_3_OBUF_69
    );
  Mmux_result_4_f5_2 : MUXF5
    port map (
      I0 => Mmux_result_63_58,
      I1 => Mmux_result_57_54,
      S => F_1_IBUF_22,
      O => Mmux_result_4_f53
    );
  Mmux_result_3_f5_2 : MUXF5
    port map (
      I0 => Mmux_result_56_53,
      I1 => Mmux_result_3_f5_2_rt_41,
      S => F_1_IBUF_22,
      O => Mmux_result_3_f53
    );
  Mmux_result_2_f6_1 : MUXF6
    port map (
      I0 => Mmux_result_4_f52,
      I1 => Mmux_result_3_f52,
      S => F_2_IBUF_23,
      O => Y_2_OBUF_68
    );
  Mmux_result_4_f5_1 : MUXF5
    port map (
      I0 => Mmux_result_62_57,
      I1 => Mmux_result_55_52,
      S => F_1_IBUF_22,
      O => Mmux_result_4_f52
    );
  Mmux_result_3_f5_1 : MUXF5
    port map (
      I0 => Mmux_result_54_51,
      I1 => Mmux_result_3_f5_1_rt_40,
      S => F_1_IBUF_22,
      O => Mmux_result_3_f52
    );
  Mmux_result_2_f6_0 : MUXF6
    port map (
      I0 => Mmux_result_4_f51,
      I1 => Mmux_result_3_f51,
      S => F_2_IBUF_23,
      O => Y_1_OBUF_67
    );
  Mmux_result_4_f5_0 : MUXF5
    port map (
      I0 => Mmux_result_61_56,
      I1 => Mmux_result_53_50,
      S => F_1_IBUF_22,
      O => Mmux_result_4_f51
    );
  Mmux_result_3_f5_0 : MUXF5
    port map (
      I0 => Mmux_result_52_49,
      I1 => Mmux_result_3_f5_0_rt_39,
      S => F_1_IBUF_22,
      O => Mmux_result_3_f51
    );
  Mmux_result_2_f6 : MUXF6
    port map (
      I0 => Mmux_result_4_f5_43,
      I1 => Mmux_result_3_f5_35,
      S => F_2_IBUF_23,
      O => Y_0_OBUF_66
    );
  Mmux_result_4_f5 : MUXF5
    port map (
      I0 => Mmux_result_6_55,
      I1 => Mmux_result_51_48,
      S => F_1_IBUF_22,
      O => Mmux_result_4_f5_43
    );
  Mmux_result_3_f5 : MUXF5
    port map (
      I0 => Mmux_result_5_47,
      I1 => Mmux_result_3_f5_rt_42,
      S => F_1_IBUF_22,
      O => Mmux_result_3_f5_35
    );
  result_cmp_eq00001 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => F_1_IBUF_22,
      I2 => F_2_IBUF_23,
      O => result_cmp_eq0000
    );
  Mmux_result11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => F_2_IBUF_23,
      I1 => F_1_IBUF_22,
      I2 => result_addsub0000(4),
      O => CARRY_SIGN_OBUF_17
    );
  result_mux0000_0_1 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => A_0_IBUF_4,
      I1 => N01,
      I2 => B_0_IBUF_12,
      O => result_mux0000(0)
    );
  result_cmp_lt00002 : LUT4
    generic map(
      INIT => X"20BA"
    )
    port map (
      I0 => B_1_IBUF_13,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      I3 => A_1_IBUF_5,
      O => result_cmp_lt00001_77
    );
  result_cmp_lt00001_SW0 : LUT3
    generic map(
      INIT => X"4D"
    )
    port map (
      I0 => B_2_IBUF_14,
      I1 => A_2_IBUF_6,
      I2 => result_cmp_lt00001_77,
      O => N5
    );
  result_cmp_lt00001 : LUT3
    generic map(
      INIT => X"4D"
    )
    port map (
      I0 => A_3_IBUF_7,
      I1 => B_3_IBUF_15,
      I2 => N5,
      O => result_cmp_lt0000
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_7
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_6
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_5
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_4
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_15
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_14
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_13
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_12
    );
  F_2_IBUF : IBUF
    port map (
      I => F(2),
      O => F_2_IBUF_23
    );
  F_1_IBUF : IBUF
    port map (
      I => F(1),
      O => F_1_IBUF_22
    );
  F_0_IBUF : IBUF
    port map (
      I => F(0),
      O => F_0_IBUF_21
    );
  CARRY_SIGN_OBUF : OBUF
    port map (
      I => CARRY_SIGN_OBUF_17,
      O => CARRY_SIGN
    );
  Y_3_OBUF : OBUF
    port map (
      I => Y_3_OBUF_69,
      O => Y(3)
    );
  Y_2_OBUF : OBUF
    port map (
      I => Y_2_OBUF_68,
      O => Y(2)
    );
  Y_1_OBUF : OBUF
    port map (
      I => Y_1_OBUF_67,
      O => Y(1)
    );
  Y_0_OBUF : OBUF
    port map (
      I => Y_0_OBUF_66,
      O => Y(0)
    );
  Mmux_result_3_f5_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(3),
      O => Mmux_result_3_f5_2_rt_41
    );
  Mmux_result_3_f5_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(2),
      O => Mmux_result_3_f5_1_rt_40
    );
  Mmux_result_3_f5_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(1),
      O => Mmux_result_3_f5_0_rt_39
    );
  Mmux_result_3_f5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(0),
      O => Mmux_result_3_f5_rt_42
    );
  Maddsub_result_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => result_mux0000(0),
      I1 => B_0_IBUF_12,
      I2 => result_mux0002,
      I3 => N01,
      O => Maddsub_result_addsub0000_lut(0)
    );
  Maddsub_result_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => result_mux0000(1),
      I1 => B_1_IBUF_13,
      I2 => N01,
      I3 => result_mux0002,
      O => Maddsub_result_addsub0000_lut(1)
    );
  Maddsub_result_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => result_mux0000(2),
      I1 => B_2_IBUF_14,
      I2 => N01,
      I3 => result_mux0002,
      O => Maddsub_result_addsub0000_lut(2)
    );
  Maddsub_result_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"956A"
    )
    port map (
      I0 => result_mux0000(3),
      I1 => B_3_IBUF_15,
      I2 => N01,
      I3 => result_mux0002,
      O => Maddsub_result_addsub0000_lut(3)
    );
  Maddsub_result_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => F_1_IBUF_22,
      I1 => N7,
      I2 => F_2_IBUF_23,
      I3 => F_0_IBUF_21,
      O => Maddsub_result_addsub0000_lut(4)
    );
  Madd_result_addsub0001_cy_2_11 : LUT3
    generic map(
      INIT => X"8E"
    )
    port map (
      I0 => Madd_result_addsub0001_cy(1),
      I1 => A_2_IBUF_6,
      I2 => B_2_IBUF_14,
      O => Madd_result_addsub0001_cy(2)
    );
  Madd_result_addsub0001_cy_1_11 : LUT4
    generic map(
      INIT => X"8AEF"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      I3 => B_1_IBUF_13,
      O => Madd_result_addsub0001_cy(1)
    );
  result_mux0000_3_1 : LUT4
    generic map(
      INIT => X"C99C"
    )
    port map (
      I0 => N01,
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      I3 => Madd_result_addsub0001_cy(2),
      O => result_mux0000(3)
    );
  result_mux0000_2_1 : LUT4
    generic map(
      INIT => X"C99C"
    )
    port map (
      I0 => N01,
      I1 => A_2_IBUF_6,
      I2 => B_2_IBUF_14,
      I3 => Madd_result_addsub0001_cy(1),
      O => result_mux0000(2)
    );
  result_mux00022 : LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => F_2_IBUF_23,
      I1 => result_cmp_lt0000,
      I2 => F_1_IBUF_22,
      I3 => F_0_IBUF_21,
      O => result_mux0002
    );
  result_mux0000_0_11 : LUT4
    generic map(
      INIT => X"FF8E"
    )
    port map (
      I0 => N5,
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      I3 => result_cmp_eq0000,
      O => N01
    );
  Mmux_result_63 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      O => Mmux_result_63_58
    );
  Mmux_result_57 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      O => Mmux_result_57_54
    );
  Mmux_result_56 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => B_3_IBUF_15,
      I2 => A_3_IBUF_7,
      O => Mmux_result_56_53
    );
  Mmux_result_62 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_2_IBUF_6,
      I2 => B_2_IBUF_14,
      O => Mmux_result_62_57
    );
  Mmux_result_55 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_2_IBUF_6,
      I2 => B_2_IBUF_14,
      O => Mmux_result_55_52
    );
  Mmux_result_54 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => B_2_IBUF_14,
      I2 => A_2_IBUF_6,
      O => Mmux_result_54_51
    );
  Mmux_result_61 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_1_IBUF_5,
      I2 => B_1_IBUF_13,
      O => Mmux_result_61_56
    );
  Mmux_result_53 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_1_IBUF_5,
      I2 => B_1_IBUF_13,
      O => Mmux_result_53_50
    );
  Mmux_result_52 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => B_1_IBUF_13,
      I2 => A_1_IBUF_5,
      O => Mmux_result_52_49
    );
  Mmux_result_6 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      O => Mmux_result_6_55
    );
  Mmux_result_51 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => A_0_IBUF_4,
      I2 => B_0_IBUF_12,
      O => Mmux_result_51_48
    );
  Mmux_result_5 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => F_0_IBUF_21,
      I1 => B_0_IBUF_12,
      I2 => A_0_IBUF_4,
      O => Mmux_result_5_47
    );
  Maddsub_result_addsub0000_lut_4_SW0 : LUT4
    generic map(
      INIT => X"0082"
    )
    port map (
      I0 => Madd_result_addsub0001_cy(2),
      I1 => A_3_IBUF_7,
      I2 => B_3_IBUF_15,
      I3 => N5,
      O => N7
    );
  result_mux0000_1_11 : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => A_1_IBUF_5,
      I1 => A_0_IBUF_4,
      I2 => B_1_IBUF_13,
      I3 => B_0_IBUF_12,
      O => result_mux0000_1_1
    );
  result_mux0000_1_1_f5 : MUXF5
    port map (
      I0 => result_mux0000_1_1,
      I1 => A_1_IBUF_5,
      S => N01,
      O => result_mux0000(1)
    );

end Structure;

