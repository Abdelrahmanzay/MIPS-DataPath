----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:54 12/12/2024 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
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

entity mux2x1 is
generic(noofbits : integer :=  32);
		
    Port ( input1 : in  STD_LOGIC_VECTOR (noofbits-1 downto 0);
           input2 : in  STD_LOGIC_VECTOR (noofbits-1 downto 0);
           selector : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (noofbits-1 downto 0));
			  
end mux2x1;

architecture Behavioral of mux2x1 is
begin
output <= input1 when selector = '0' else
			input2;

end Behavioral;

