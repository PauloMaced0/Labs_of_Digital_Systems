library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Fulladder is 
	port(a : in std_logic;
			b : in std_logic;
			cin : in std_logic;
			s : out std_logic;
			cout : out std_logic);
end Fulladder;
			
architecture Behav of Fulladder is
begin
	s <= (a xor b) xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);

end Behav;