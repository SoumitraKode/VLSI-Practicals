----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:56:44 09/29/2025 
-- Design Name: 
-- Module Name:    fifo_arch - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_arch is
		generic (depth : integer := 16);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           rd_en : in  STD_LOGIC;
           wr_en : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           fifo_empty : out  STD_LOGIC;
           fifo_full : out  STD_LOGIC);
end fifo_arch;

architecture Behavioral of fifo_arch is
		type memory_type is array (0 to depth-1) of std_logic_vector(7 downto 0);
		signal memory : memory_type :=(others => (others => '0'));
		signal readptr, writeptr : integer := 0;
		signal empty, full : std_logic := '0';
begin 
	fifo_empty <= empty;
	fifo_full <= full;
	
	process(CLK, RST)
	variable num_elem : integer := 0;
	begin
		if (RST = '1') then
			memory <= (others => (others=> '0'));
			data_out <= (others => '0');
			empty <= '1';
			full <= '0';
			readptr <= 0;
			writeptr <= 0;
			num_elem := 0;
		elsif (rising_edge(CLK)) then
			if (rd_en = '1' and empty = '0') then --read
				data_out <= memory(readptr);
				readptr <= readptr + 1;
				num_elem := num_elem - 1;
			end if;
			if (wr_en = '1' and full = '0') then
				memory(writeptr) <= data_in;
				writeptr <= writeptr + 1;
				num_elem := num_elem + 1;
			end if;
			if (readptr = depth-1) then
				readptr <= 0;
			end if;
			if (writeptr = depth-1) then
				writeptr <= 0;
			end if;
			if (num_elem = 0)then
				empty <= '1';
			else
				empty <= '0';
			end if;
			if (num_elem = depth) then
				full <= '1';
			else
				full <= '0';
			end if;
		end if;
	end process;

	
end Behavioral;

