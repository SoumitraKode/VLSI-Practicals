----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:41:31 09/29/2025 
-- Design Name: 
-- Module Name:    mod25_arch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod25_arch is
    Port ( rst : in  STD_LOGIC;
           pr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dir : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end mod25_arch;

architecture Behavioral of mod25_arch is
	signal Qtemp : STD_LOGIC_VECTOR (4 downto 0) := "00000";
begin
	process(rst, pr, clk, dir)
	BEGIN 	
		if rst = '1' then
			Qtemp <= (OTHERS=>'0');
		elsif pr = '1' then
			 Qtemp <= (OTHERS=>'1');
		elsif falling_edge(clk) then
			if dir = '1' then
				if Qtemp < 24 then
					Qtemp <= Qtemp + 1;
				else
					Qtemp <= "00000";
				end if ;
			else
				if Qtemp > 7 then
					Qtemp <= Qtemp - 1;
				else 
					Qtemp <= "11111";
				end if ;
			end if ;
		end if ;
	end process ;
	Q <= Qtemp;
	
end Behavioral;

