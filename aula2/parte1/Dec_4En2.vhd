library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4En2 is 
	port(enable : in std_logic;
		inputs : in std_logic_vector;
		outputs : out std_logic_vector
		);
end Dec2_4En2;

architecture Behav of Dec2_4En2 is 
begin
	outputs(0) <= enable and (not inputs(1)) and (not inputs(0));
	outputs(1) <= enable and (not inputs(1)) and inputs(0);
	outputs(2) <= enable and inputs(1) and (not inputs(0));
	outputs(3) <= enable and inputs(1) and inputs(0);
end Behav;
