library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8_Demo is
	port(SW : in  std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(0 downto 0);
		LEDG : out std_logic_vector(7 downto 0)
		);
end Register8_Demo;

architecture Shell of Register8_Demo is
begin
	r8 : entity work.Register8(Behav)
		port map(clk => KEY(0),
					datain => SW(7 downto 0),
					enable => SW(8),
					reset => SW(9),
					dataout => LEDG(7 downto 0)
				);
end Shell;
