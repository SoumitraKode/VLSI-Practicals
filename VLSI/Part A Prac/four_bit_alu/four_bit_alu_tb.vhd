--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:27:03 09/29/2025
-- Design Name:   
-- Module Name:   /home/ise/VLSI_DESIGN/four_bit_alu/four_bit_alu_tb.vhd
-- Project Name:  four_bit_alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_alu_arch
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL ;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_alu_tb IS
END four_bit_alu_tb;
 
ARCHITECTURE behavior OF four_bit_alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_alu_arch
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         F : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(3 downto 0);
         CARRY_SIGN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := "0010";
   signal B : std_logic_vector(3 downto 0) := "1111";
   signal F : std_logic_vector(2 downto 0) := (others => '1');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   signal CARRY_SIGN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_alu_arch PORT MAP (
          A => A,
          B => B,
          F => F,
          Y => Y,
          CARRY_SIGN => CARRY_SIGN
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc_F: process
   begin		
      F <= F + 1 ;
		wait for 25 ns ;
   end process;

END;
