LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; 
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MainmoduleTestbench is
END MainmoduleTestbench;

ARCHITECTURE behavior OF MainmoduleTestbench is

 
    COMPONENT MainModule
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         writedata : OUT  std_logic_vector(31 downto 0);
         dataadr : OUT  std_logic_vector(31 downto 0);
         memwrite : OUT  std_logic
        );
    END COMPONENT;


    signal clk : std_logic ;
    signal reset : std_logic ;


    signal writedata : std_logic_vector(31 downto 0);
    signal dataadr : std_logic_vector(31 downto 0);
    signal memwrite : std_logic;

    constant clk_period : time := 10 ns;

BEGIN

    uut: MainModule PORT MAP (
          clk => clk,
          reset => reset,
          writedata => writedata,
          dataadr => dataadr,
          memwrite => memwrite
        );

    -- Clock process definitions
    process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;

    -- Reset process
     process
    begin
        reset <= '1';
        wait for 22 ns;
        reset <= '0';
        wait;
    end process;

    -- Check process
     process(clk)
    begin
        if (clk'event and clk = '0' and memwrite = '1') then
            if (conv_integer(dataadr) = 84 and conv_integer(writedata) = 7) then
                report "NO ERRORS: Simulation succeeded" severity failure;
            elsif (conv_integer(dataadr) = 84) then
                report "Simulation failed" severity failure;
            end if;
        end if;
    end process;

end;