--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:14:04 09/29/2025
-- Design Name:   
-- Module Name:   /home/ise/VLSI_DESIGN/fifo/fifo_tb.vhd
-- Project Name:  fifo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fifo_arch
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
USE ieee.std_logic_1164.ALL ;
USE ieee.std_logic_arith.ALL ;
USE IEEE.NUMERIC_STD.ALL ;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fifo_tb IS
END fifo_tb;
 
ARCHITECTURE behavior OF fifo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
   
    

   --Inputs
   signal Clk, reset, enr, enw, empty, full : std_logic := '0';
	 signal data_in, data_out : std_logic_vector(7 downto 0) := (others => '0');
 	--Outputs
   constant Clk_period : time := 10 ns;
	constant depth : integer := 16; --specify depth of fifo here.
	--temporary signal
	signal i : integer := 0 ;

   -- Clock period definitions

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.fifo_arch generic map(depth => depth) PORT MAP (
        Clk, reset, enr, enw, data_in, data_out, empty, full
    );


   -- Clock process definitions
   CLK_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;

	stim_proc: process
	begin 	
		reset <= '1'; --apply reset for one clock cycle.
		wait for Clk_period;
		reset <= '0';
		wait for Clk_period*3;--wait for 3 clock periods
		enw <= '1'; 
		enr <= '0'; --write 10 values to fifo
		for i in 1 to 10 loop
			data_in <= conv_std_logic_vector(i, 8);
			wait for Clk_period;
		end loop;
			enw <= '0';
			enr <= '1'; --read 4 values from fifo
			wait for Clk_period*4;
			enw <= '0'; 
			enr <= '0';
			wait for Clk_period*10; --wait for some clock cycles
			enw <= '1'; 
			enr <= '0'; --write 10 values to fifo
			for i in 11 to 20 loop
				data_in <= conv_std_logic_vector(i, 8);
				wait for Clk_period;
			end loop;
				enw <= '0';
				enr <= '0';
				wait for Clk_period*10;
				enw <= '0';
				enr <= '1'; --read 4 values from fifo
				wait for Clk_period*4;
				enw <= '0'; 
				enr <= '0';
				wait for Clk_period;
				enw <= '0';
				enr <= '1'; --read 8 values from fifo
				wait for Clk_period*8;
				enw <= '0'; 
				enr <= '0';
				wait for Clk_period;
				enw <= '0';
				enr <= '1'; --read 4 values from fifo
				wait for Clk_period*4;
				enw <= '0'; 
				enr <= '0';
				wait for Clk_period ;
				enw <= '0' ;
				enr <= '1' ;
				wait for Clk_period*4;
				enw <= '0' ;
				enr <= '0' ;
				wait ;
 			end process;
				
END;
