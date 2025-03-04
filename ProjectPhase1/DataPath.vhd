----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:59 11/25/2024 
-- Design Name: 
-- Module Name:    DataPath - Behavioral 
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
use work.Alu_Package.ALL;
use work.RegisterFile_Package.ALL;

entity DataPath is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           regwrite : in  STD_LOGIC;
           aluout : buffer  STD_LOGIC_VECTOR (31 downto 0));
end DataPath;

architecture Behavioral of DataPath is

signal out1 , out2 : STD_LOGIC_VECTOR (31 downto 0);

begin
reg : RegisterFile port map(instr(25 downto 21) , instr(20 downto 16) , instr(15 downto 11) , regwrite , clk , aluout , out1 , out2 );
alu1 : Alu port map( out1 , out2 , aluoperation , aluout , zero );

end Behavioral;

