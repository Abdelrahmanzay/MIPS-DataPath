----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:06 12/18/2024 
-- Design Name: 
-- Module Name:    Signextender - Behavioral 
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

entity Signextender is
	port (SE_in : in STD_LOGIC_VECTOR (15 DOWNTO 0);
			SE_out : out STD_LOGIC_VECTOR (31 DOWNTO 0)
			);
end Signextender;

architecture Behavioral of Signextender is

begin
 
        SE_out <= "0000000000000000" & SE_in when SE_in(15) = '0'  else
					 "1111111111111111" & SE_in;



end Behavioral;

