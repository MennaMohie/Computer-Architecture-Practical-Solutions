--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:26:12 05/15/2019
-- Design Name:   
-- Module Name:   X:/College/Y3/T2/Computer Architecture/Tasks/M2/OverflowDetector/tst.vhd
-- Project Name:  OverflowDetector
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OvDet
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
 
    COMPONENT OvDet
    PORT(
         controlWord : IN  std_logic_vector(7 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal controlWord : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OvDet PORT MAP (
          controlWord => controlWord,
          O => O
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		controlWord <= "10000011";
      -- insert stimulus here 

      wait;
   end process;

END;
