----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:28 11/22/2024 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;  -- use IEEE.STD_LOGIC_ARITH instead of IEEE.STD_LOGIC_UNSIGNED
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.mux_package.ALL;
use work.flopr_package.ALL;
use work.decoder_package.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

    signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
           s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32 : STD_LOGIC_VECTOR(31 downto 0);
   
    signal l1 : STD_LOGIC_VECTOR(31 downto 0);
    signal d : STD_LOGIC_VECTOR(31 downto 0); 

begin

    dec1 : decoder port map(write_sel, l1);
    d <= l1 when write_ena = '1' else (others => '0'); 

    f1  : flopr port map(write_data, clk, d(0), reset, s1);
    f2  : flopr port map(write_data, clk, d(1), reset, s2);
    f3  : flopr port map(write_data, clk, d(2), reset, s3);
    f4  : flopr port map(write_data, clk, d(3), reset, s4);
    f5  : flopr port map(write_data, clk, d(4), reset, s5);
    f6  : flopr port map(write_data, clk, d(5), reset, s6);
    f7  : flopr port map(write_data, clk, d(6), reset, s7);
    f8  : flopr port map(write_data, clk, d(7), reset, s8);
    f9  : flopr port map(write_data, clk, d(8), reset, s9);
    f10 : flopr port map(write_data, clk, d(9), reset, s10);
    f11 : flopr port map(write_data, clk, d(10), reset, s11);
    f12 : flopr port map(write_data, clk, d(11), reset, s12);
    f13 : flopr port map(write_data, clk, d(12), reset, s13);
    f14 : flopr port map(write_data, clk, d(13), reset, s14);
    f15 : flopr port map(write_data, clk, d(14), reset, s15);
    f16 : flopr port map(write_data, clk, d(15), reset, s16);
    f17 : flopr port map(write_data, clk, d(16), reset, s17);
    f18 : flopr port map(write_data, clk, d(17), reset, s18);
    f19 : flopr port map(write_data, clk, d(18), reset, s19);
    f20 : flopr port map(write_data, clk, d(19), reset, s20);
    f21 : flopr port map(write_data, clk, d(20), reset, s21);
    f22 : flopr port map(write_data, clk, d(21), reset, s22);
    f23 : flopr port map(write_data, clk, d(22), reset, s23);
    f24 : flopr port map(write_data, clk, d(23), reset, s24);
    f25 : flopr port map(write_data, clk, d(24), reset, s25);
    f26 : flopr port map(write_data, clk, d(25), reset, s26);
    f27 : flopr port map(write_data, clk, d(26), reset, s27);
    f28 : flopr port map(write_data, clk, d(27), reset, s28);
    f29 : flopr port map(write_data, clk, d(28), reset, s29);
    f30 : flopr port map(write_data, clk, d(29), reset, s30);
    f31 : flopr port map(write_data, clk, d(30), reset, s31);
    f32 : flopr port map(write_data, clk, d(31), reset, s32);

    mux1 : mux port map(read_sel1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
                        s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, data1);
    mux2 : mux port map(read_sel2, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
                        s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, data2);

end Behavioral;
