----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:24 05/15/2019 
-- Design Name: 
-- Module Name:    cmp - Behavioral 
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

entity cmp is
    Port ( word : in  STD_LOGIC_VECTOR (7 downto 0);
           less : out  STD_LOGIC;
           greater : out  STD_LOGIC;
           equal : out  STD_LOGIC);
end cmp;

architecture Behavioral of cmp is
begin
	less <= '1' when word(7 downto 4) < word(3 downto 0) else '0';
	greater <= '1' when word(7 downto 4) > word(3 downto 0) else '0';
	equal <= '1' when word(7 downto 4) = word(3 downto 0) else '0';
end Behavioral;

