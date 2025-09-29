--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:15:13 09/29/2025
-- Design Name:   
-- Module Name:   /home/ise/VLSI_DESIGN/UNI_Shift_Register/UNI_Shift_Register_tb.vhd
-- Project Name:  UNI_Shift_Register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UNI_Shift_Register_arch
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
 
ENTITY UNI_Shift_Register_tb IS
END UNI_Shift_Register_tb;
 
ARCHITECTURE behavior OF UNI_Shift_Register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UNI_Shift_Register_arch
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         Sin : IN  std_logic;
         mode : IN  std_logic_vector(1 downto 0);
         Pin : IN  std_logic_vector(3 downto 0);
         Sout : OUT  std_logic;
         Pout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '1';
   signal Sin : std_logic := '0';
   signal mode : std_logic_vector(1 downto 0) := (others => '0');
   signal Pin : std_logic_vector(3 downto 0) := "1010";

 	--Outputs
   signal Sout : std_logic;
   signal Pout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UNI_Shift_Register_arch PORT MAP (
          rst => rst,
          clk => clk,
          Sin => Sin,
          mode => mode,
          Pin => Pin,
          Sout => Sout,
          Pout => Pout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc_mode: process
	BEGIN
		mode<="00";
		wait for 80 ns;
		
		mode<="01";
		wait for 50 ns;
		
		mode<="10";
		wait for 50 ns;
		
		mode<="11";
		wait for 20 ns;
		
	end process;
	
	stim_proc_Sin:process
	BEGIN 
		wait for 10 ns;
		Sin<='1';
		wait for 10 ns;
		Sin<='0';
		wait for 10 ns;
		Sin<='1';
		wait for 10 ns;
		Sin<='0';
		wait for 40 ns;
		Sin<='1';
		wait for 10 ns;
		Sin<='0';
		wait for 10 ns;
		Sin<='1';
		wait for 10 ns;
		Sin<='0';
		wait for 10 ns;
		Sin<='0';
		wait ;
	end process;

	stim_proc_rst:process
	BEGIN 	
		wait for 122.5 ns;
		rst<='1';
		wait for 5 ns;
		rst<='0';
		wait ;
	 end process;
	 
END;
