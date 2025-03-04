----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:23 11/25/2024 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
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

entity Alu is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end Alu;

architecture Behavioral of Alu is
    signal S, ndata2, temp1 : STD_LOGIC_VECTOR(31 downto 0);
begin
    ndata2 <= (not data2) when (aluop(2) = '1') else data2;

    S <= data1 + ndata2 + aluop(2);

    temp1 <= data1 and data2 when aluop(3 downto 0) = "0000" ELSE
             data1 or data2 when aluop(3 downto 0) = "0001" ELSE
             S when aluop(3 downto 0) = "0010" ELSE
             S when aluop(3 downto 0) = "0110" ELSE
             not (data1 or data2) when aluop(3 downto 0) = "1100" ELSE
             ("0000000000000000000000000000000" & S(31)) when aluop(3 downto 0) = "0111" ELSE
             "00000000000000000000000000000000";

    dataout <= temp1;

    zflag <= '1' when temp1 = "00000000000000000000000000000000" else '0';
end Behavioral;







