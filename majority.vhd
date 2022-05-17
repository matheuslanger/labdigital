library IEEE;
use IEEE.Std_Logic_1164.all;

entity majority is
port (
A1: in std_logic;
A0: in std_logic;
B1: in std_logic;
B0: in std_logic;


M4: out std_logic;
M3: out std_logic;
M2: out std_logic;
M1: out std_logic;
M0: out std_logic

);
end majority;

architecture circuito_logico of majority is
begin
M4 <= A1 and A0 and B1 and B0;
M3 <= (A1 and B1 and B0) or (A1 and A0 and B1 and not B0);
M2 <= A1 and not A0 and B1 and not B0;
M1 <= (A1 and not B1 and B0) or (A1 and A0 and B1 and B0);
M0 <= (not B1 and NOT B0) or (A0 and B0) or (A0 and B1 and not B0);


end circuito_logico;