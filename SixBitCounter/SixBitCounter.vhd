----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:06 05/15/2019 
-- Design Name: 
-- Module Name:    SixBitCounter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SixBitCounter is
    Port ( enable : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (5 downto 0));
end SixBitCounter;

architecture Behavioral of SixBitCounter is
begin
	process(clk, reset)
	variable temp_output: STD_LOGIC_VECTOR(5 downto 0);
	begin
		if(reset = '1') then
			temp_output := (others => '0');
		elsif(clk'EVENT AND clk = '1') then
			if(enable = '1') then
				temp_output := temp_output + 1;
			end if;
		end if;
		output <= temp_output;
	end process;
end Behavioral;

