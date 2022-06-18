library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port(input : in std_logic_vector(3 downto 0);
		output : out std_logic_vector(1 downto 0);
		vout : out std_logic
		);
end Penc4_2;
architecture Behav of Penc4_2 is
begin
	process(input)
	begin
		if (input(3) = '1') then
			output <= "11";
			vout <='1';
		elsif (input(2) = '1') then
			output <= "10";
			vout <= '1';
		elsif (input(1) = '1') then
			output <= "01";
			vout <= '1';
		elsif (input(0) = '1') then
			output <= "00";
			vout <= '1';
		else 
			vout <= '0';
		end if;
	end process;
end Behav;
