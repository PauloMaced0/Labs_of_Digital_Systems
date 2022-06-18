library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is
	port(input0 : in std_logic_vector(3 downto 0);
		input1 : in std_logic_vector(3 downto 0);
		sub : in std_logic;
		cout : out std_logic;		res : out std_logic_vector
		);
end AddSub4;
architecture Shell of AddSub4 is
	signal sig_sub : std_logic_vector(3 downto 0);
begin
	Addsub : entity work.Adder4 is 
		 port map(input0 => 
					input1 =>
					sub =>
					cout =>
					res =>
					)