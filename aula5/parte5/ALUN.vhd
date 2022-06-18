library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALUN is 
	generic(N : positive := 8);
	port(operation : in std_logic_vector(2 downto 0);
		operand0,operand1 : in std_logic_vector((N-1) downto 0);
		result : out std_logic_vector((N-1) downto 0);
		multHi : out std_logic_vector((N-1) downto 0)
		);
end ALUN;

architecture Behav of ALUN is
	signal s_multires : std_logic_vector((2*N) - 1 downto 0);
begin
	s_multires <= std_logic_vector(unsigned(operand0) * unsigned(operand1));
	process(operation,operand0,operand1,s_multires)
	begin
		case operation is
			when "000" =>
				result <= std_logic_vector(unsigned(operand0) + unsigned(operand1));
			when "001" =>
				result <= std_logic_vector(unsigned(operand0) - unsigned(operand1));
			when "010" =>
				result <= s_multires((N-1) downto 0);
			when "011" =>
				result <= std_logic_vector(unsigned(operand0) / unsigned(operand1));
			when "100" =>
				result <= std_logic_vector(unsigned(operand0) rem unsigned(operand1));
			when "101" =>
				result <= operand0 and operand1;
			when "110" =>
				result <= operand0 or operand1;
			when others =>
				result <= operand0 xor operand1;
		end case;
	end process;
	multHi <= s_multires((2*N) - 1 downto N) when (operation = "010") else (others => '0');
	
end Behav;
			