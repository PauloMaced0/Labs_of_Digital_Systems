library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EqComp8 is
	port(input0 : in std_logic_vector(7 downto 0);
	input1 : in std_logic_vector(7 downto 0);
	compOut : out std_logic
	);
end EqComp8;

architecture Behav of Eqcomp8 is
begin
	compOut <= '1' when (input0 = input1) else
		'0';
end Behav;
		