library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GATEDemo is 
	port(SW : in std_logic_vector(1 downto 0);
		LEDR : out std_logic_vector(0 downto 0));


		end GATEDemo;

architecture Shell of GATEDemo is 
begin
	system_core : entity Work.NAND2Gate(Structural)
							port map(inPort0 => SW(0),
							inPort1 => SW(1),
							outPort => LEDR(0)
							);
							
end Shell;	
