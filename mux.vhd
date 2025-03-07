----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:55 11/22/2024 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( sel : in  STD_LOGIC_VECTOR (4 downto 0);
           i1  : in  STD_LOGIC_VECTOR (31 downto 0);
           i2  : in  STD_LOGIC_VECTOR (31 downto 0);
           i3  : in  STD_LOGIC_VECTOR (31 downto 0);
           i4  : in  STD_LOGIC_VECTOR (31 downto 0);
           i5  : in  STD_LOGIC_VECTOR (31 downto 0);
           i6  : in  STD_LOGIC_VECTOR (31 downto 0);
           i7  : in  STD_LOGIC_VECTOR (31 downto 0);
           i8  : in  STD_LOGIC_VECTOR (31 downto 0);
           i9  : in  STD_LOGIC_VECTOR (31 downto 0);
           i10 : in  STD_LOGIC_VECTOR (31 downto 0);
           i11 : in  STD_LOGIC_VECTOR (31 downto 0);
           i12 : in  STD_LOGIC_VECTOR (31 downto 0);
           i13 : in  STD_LOGIC_VECTOR (31 downto 0);
           i14 : in  STD_LOGIC_VECTOR (31 downto 0);
           i15 : in  STD_LOGIC_VECTOR (31 downto 0);
           i16 : in  STD_LOGIC_VECTOR (31 downto 0);
           i17 : in  STD_LOGIC_VECTOR (31 downto 0);
           i18 : in  STD_LOGIC_VECTOR (31 downto 0);
           i19 : in  STD_LOGIC_VECTOR (31 downto 0);
           i20 : in  STD_LOGIC_VECTOR (31 downto 0);
           i21 : in  STD_LOGIC_VECTOR (31 downto 0);
           i22 : in  STD_LOGIC_VECTOR (31 downto 0);
           i23 : in  STD_LOGIC_VECTOR (31 downto 0);
           i24 : in  STD_LOGIC_VECTOR (31 downto 0);
           i25 : in  STD_LOGIC_VECTOR (31 downto 0);
           i26 : in  STD_LOGIC_VECTOR (31 downto 0);
           i27 : in  STD_LOGIC_VECTOR (31 downto 0);
           i28 : in  STD_LOGIC_VECTOR (31 downto 0);
           i29 : in  STD_LOGIC_VECTOR (31 downto 0);
           i30 : in  STD_LOGIC_VECTOR (31 downto 0);
           i31 : in  STD_LOGIC_VECTOR (31 downto 0);
           i32 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end mux;

architecture Behavioral of mux is

begin
output<= i1  when sel = "00000" else
         i2  when sel = "00001" else
         i3  when sel = "00010" else
         i4  when sel = "00011" else
         i5  when sel = "00100" else
         i6  when sel = "00101" else
         i7  when sel = "00110" else
         i8  when sel = "00111" else
         i9  when sel = "01000" else
         i10 when sel = "01001" else
         i11 when sel = "01010" else
         i12 when sel = "01011" else
         i13 when sel = "01100" else
         i14 when sel = "01101" else
         i15 when sel = "01110" else
         i16 when sel = "01111" else
         i17 when sel = "10000" else
         i18 when sel = "10001" else
         i19 when sel = "10010" else
         i20 when sel = "10011" else
         i21 when sel = "10100" else
         i22 when sel = "10101" else
         i23 when sel = "10110" else
         i24 when sel = "10111" else
         i25 when sel = "11000" else
         i26 when sel = "11001" else
         i27 when sel = "11010" else
         i28 when sel = "11011" else
         i29 when sel = "11100" else
         i30 when sel = "11101" else
         i31 when sel = "11110" else
         i32;


end Behavioral;

