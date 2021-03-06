library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Xnr is
	port(inPort0 : in std_logic_vector(3 downto 0);
		inPort1 : in std_logic_vector(3 downto 0);
		outPort : out std_logic_vector(3 downto 0));
end Xnr;	

architecture Behav of Xnr is 
begin
	outPort <= inPort0 xor inPort1;
end Behav;
