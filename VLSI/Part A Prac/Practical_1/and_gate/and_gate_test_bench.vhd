--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:59:05 09/28/2025
-- Design Name:   
-- Module Name:   /home/ise/VLSI_DESIGN/Practical_1/and_gate/and_gate_test_bench.vhd
-- Project Name:  and_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_gate_arch
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY and_gate_test_bench IS
END and_gate_test_bench;
 
ARCHITECTURE behavior OF and_gate_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_gate_arch
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_gate_arch PORT MAP (
          A => A,
          B => B,
          Y => Y
        );

 
 

   -- Stimulus process
   stim_proc_A: process
   begin		
      A <= NOT(A) ;
		WAIT FOR 80 NS ;
   end process;
	
	stim_proc_B: process
   begin		
      B <= NOT(B) ;
		WAIT FOR 40 NS ;
   end process;

END;
