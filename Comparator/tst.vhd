--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:30:23 05/15/2019
-- Design Name:   
-- Module Name:   X:/College/Y3/T2/Computer Architecture/Tasks/M2/Comparator/tst.vhd
-- Project Name:  Comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cmp
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
 
ENTITY tst IS
END tst;
 
ARCHITECTURE behavior OF tst IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cmp
    PORT(
         word : IN  std_logic_vector(7 downto 0);
         less : OUT  std_logic;
         greater : OUT  std_logic;
         equal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal word : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal less : std_logic;
   signal greater : std_logic;
   signal equal : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cmp PORT MAP (
          word => word,
          less => less,
          greater => greater,
          equal => equal
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		word <= "00000111";
		wait for 100 ns;
		word <= "10000011";
		wait for 100 ns;
		word <= "01010101";
      -- insert stimulus here 

      wait;
   end process;

END;
