----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:35 05/15/2019 
-- Design Name: 
-- Module Name:    AdderMultiplier - Behavioral 
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

entity AdderMultiplier is
    Port ( controlWord : in  STD_LOGIC_VECTOR (8 downto 0);
           result : out  STD_LOGIC_VECTOR (3 downto 0));
end AdderMultiplier;

architecture Behavioral of AdderMultiplier is
begin
	result <= controlWord(6 downto 4)&"0"
				when controlWord(8 downto 8) = "0"
		else controlWord(7 downto 4) + controlWord(3 downto 0);
end Behavioral;

