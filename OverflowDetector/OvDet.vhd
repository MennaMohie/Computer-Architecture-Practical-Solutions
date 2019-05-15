----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:38 05/15/2019 
-- Design Name: 
-- Module Name:    OvDet - Behavioral 
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

entity OvDet is
    Port ( controlWord : in  STD_LOGIC_VECTOR (7 downto 0);
           O : out  STD_LOGIC);
end OvDet;

architecture Behavioral of OvDet is
signal sum: STD_LOGIC_VECTOR(3 downto 0);
begin
	sum <= controlWord(7 downto 4) + controlWord(3 downto 0);
	O <= '0' when (sum(3 downto 3) = controlWord(7 downto 7) AND
					   sum(3 downto 3) = controlWord(3 downto 3)) OR 
						controlWord(7 downto 7) = NOT(controlWord(3 downto 3))
	else '1';
end Behavioral;

