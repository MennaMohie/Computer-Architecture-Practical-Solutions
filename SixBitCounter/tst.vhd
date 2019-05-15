--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:05 05/15/2019
-- Design Name:   
-- Module Name:   X:/College/Y3/T2/Computer Architecture/Tasks/M2/SixBitCounter/tst.vhd
-- Project Name:  SixBitCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SixBitCounter
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
 
    COMPONENT SixBitCounter
    PORT(
         enable : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SixBitCounter PORT MAP (
          enable => enable,
          reset => reset,
          clk => clk,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		enable <= '1';
		reset <= '1';
		wait for 100 ns;
		reset <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
