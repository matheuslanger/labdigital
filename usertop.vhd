library IEEE;
use IEEE.Std_Logic_1164.all;

entity usertop is
port(
	CLOCK_50:	in std_logic;
	CLK_500Hz:	in std_logic;
	RKEY:		in std_logic_vector(3 downto 0);
	KEY:		in std_logic_vector(3 downto 0);
	RSW:		in std_logic_vector(17 downto 0);
	SW:		in std_logic_vector(17 downto 0);
	LEDR:		out std_logic_vector(17 downto 0);
	HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7	: out std_logic_vector(6 downto 0)
	);
end usertop;

architecture arc_circuito1 of usertop is

	component majority is
	port (A1: in std_logic;
			A0: in std_logic;
			B1: in std_logic;
			B0: in std_logic;
			M4: out std_logic;
			M3: out std_logic;
			M2: out std_logic;
			M1: out std_logic;
			M0: out std_logic
			
			);
	end component;

begin

U1: majority port map ( SW(3) ,SW(2), SW(1), SW(0), LEDR(4), LEDR(3), LEDR(2), LEDR(1), LEDR(0));

end arc_circuito1;