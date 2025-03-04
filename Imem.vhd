library IEEE;
use IEEE.STD_LOGIC_1164.all; 

use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
use iEEE.numeric_std.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;

entity Imem is 
port(a: in STD_LOGIC_VECTOR(5 downto 0);
rd: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of Imem is
begin
process is
file mem_file: TEXT;
variable L: line;
variable ch: character;
variable i, index, result: integer;
type ramtype is array (63 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
variable mem: ramtype;
begin
for i in 0 to 63 loop
mem(i) := (others => '0');
end loop;
index := 0;
FILE_OPEN (mem_file, "C:\Users\20102\Downloads\ProjectPhase1\ProjectPhase1\memfile.dat", READ_MODE);
while not endfile(mem_file) loop
readline(mem_file, L);
result := 0;
for i in 1 to 8 loop
read (L, ch);
if '0' <= ch and ch <= '9' then
result := character'pos(ch) - character'pos('0');
elsif 'a' <= ch and ch <= 'f' then
result := character'pos(ch) - character'pos('a')+10;
else report "Format error on line" & integer'
image(index) severity error;
end if;
mem(index)(35-i*4 downto 32-i*4):= std_logic_vector(to_unsigned(result,4));
end loop;
index := index + 1;
end loop;

for i in 1 to 1000 loop
rd <= mem(CONV_INTEGER(a));
wait on a;
end loop;
end process;


end;