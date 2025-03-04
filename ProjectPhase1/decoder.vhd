----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:25 11/22/2024 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
           
end decoder;

architecture Behavioral of decoder is

begin
	 output(0)  <= '1' when input = "00000" else '0';
    output(1)  <= '1' when input = "00001" else '0';
    output(2)  <= '1' when input = "00010" else '0';
    output(3)  <= '1' when input = "00011" else '0';
    output(4)  <= '1' when input = "00100" else '0';
    output(5)  <= '1' when input = "00101" else '0';
    output(6)  <= '1' when input = "00110" else '0';
    output(7)  <= '1' when input = "00111" else '0';
    output(8)  <= '1' when input = "01000" else '0';
    output(9) <= '1' when input = "01001" else '0';
    output(10) <= '1' when input = "01010" else '0';
    output(11) <= '1' when input = "01011" else '0';
    output(12) <= '1' when input = "01100" else '0';
    output(13) <= '1' when input = "01101" else '0';
    output(14) <= '1' when input = "01110" else '0';
    output(15) <= '1' when input = "01111" else '0';
    output(16) <= '1' when input = "10000" else '0';
    output(17) <= '1' when input = "10001" else '0';
    output(18) <= '1' when input = "10010" else '0';
    output(19) <= '1' when input = "10011" else '0';
    output(20) <= '1' when input = "10100" else '0';
    output(21) <= '1' when input = "10101" else '0';
    output(22) <= '1' when input = "10110" else '0';
    output(23) <= '1' when input = "10111" else '0';
    output(24) <= '1' when input = "11000" else '0';
    output(25) <= '1' when input = "11001" else '0';
    output(26) <= '1' when input = "11010" else '0';
    output(27) <= '1' when input = "11011" else '0';
    output(28) <= '1' when input = "11100" else '0';
    output(29) <= '1' when input = "11101" else '0';
    output(30) <= '1' when input = "11110" else '0';
    output(31) <= '1' when input = "11111" else '0';
	 
end Behavioral;

