library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Adder4 is 
	port(operand0 : in std_logic_vector(3 downto 0);
		operand1 : in std_logic_vector(3 downto 0);
		carryin : in std_logic;
		result : out std_logic_vector(3 downto 0);
		carryout : out std_logic
		);
end Adder4;

architecture Behav of Adder4 is
	signal s_operand0,s_operand1,s_result,s_carryin : unsigned(4 downto 0);
begin
	s_operand0 <= '0' & unsigned(operand0);
	s_operand1 <= '0' & unsigned(operand1);
	s_carryin <="0000" & carryin;
	s_result <= (s_operand0 + s_operand1) + s_carryin;
	result <= std_logic_vector(s_result(3 downto 0));
	carryout <= std_logic(s_result(4));

end Behav;