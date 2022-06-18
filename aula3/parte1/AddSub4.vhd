library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is
	port(a : in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		sub : in std_logic;
		cout: out std_logic;  
		res : out std_logic_vector(3 downto 0)
		);
end AddSub4;

architecture Structural of AddSub4 is
	signal s_sub : std_logic_vector(3 downto 0);

begin
	s_sub <= b when (sub = '0') else not b;
	addsub : entity work.Adder4(Behav)
			port map(operand0 => a,
						operand1 => s_sub,
						carryin => sub,
						carryout => cout,
						result => res
					);
end Structural;
