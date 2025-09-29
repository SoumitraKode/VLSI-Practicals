----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:58:32 09/29/2025 
-- Design Name: 
-- Module Name:    UNI_Shift_Register_arch - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UNI_Shift_Register_arch is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Sin : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR (1 downto 0);
           Pin : in  STD_LOGIC_VECTOR (3 downto 0);
           Sout : out  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end UNI_Shift_Register_arch;

architecture Behavioral of UNI_Shift_Register_arch is
	SIGNAL temp : STD_LOGIC_VECTOR (3 downto 0):="0000";
begin
		PROCESS(rst, clk, mode, Sin, Pin)
		BEGIN 
			IF rst = '1' THEN
				Pout <= "0000";
				Sout <= '0';
			ELSIF FALLING_EDGE(clk) THEN
				 CASE mode IS
					 WHEN "00"=>
						 temp(3 downto 1) <= temp(2 downto 0);
						 temp(0) <= Sin;
						 Sout <= temp(3);
						 Pout <= "0000";
					 WHEN "01" =>
						temp(3 downto 1) <= temp(2 downto 0);
						temp(0) <= Sin;
						Pout <= temp;
						Sout <= '0';
					WHEN "10" =>
						temp <= Pin;
						Sout <= temp(3);
						temp(3 downto 1) <= temp(2 downto 0);
						Pout <= "0000" ;
					WHEN OTHERS =>
						Pout <= Pin;
						Sout <= '0';
					END CASE;
			END IF;
		END PROCESS;

end Behavioral;



