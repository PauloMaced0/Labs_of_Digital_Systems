library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HammingDist is
	port(SW : in std_logic_vector(7 downto 0);
		LEDG : out std_logic_vector(2 downto 0)
		);
end HammingDist;

architecture Shell of HammingDist is
	signal s_xnorout : std_logic_vector(3 downto 0);
	signal s0,c0,c1 : std_logic;
begin 
	bitdif : entity work.Xnr(Behav)
				port map(outPort => s_xnorout,
							inPort0 =>SW(3 downto 0),
							inPort1 => SW(7 downto 4)
						);
	f1 : entity work.fulladder(Behav)
				port map(a => s_xnorout(2),
							b => s_xnorout(1),
							cout => c0,
							cin => s_xnorout(0),
							s => s0
							);
	f2 : entity work.fulladder(Behav)
				port map(a => '0',
							b => s0,
							cin => s_xnorout(3),
							cout => c1,
							s => LEDG(0)	
							);
	f3 : entity work.fulladder(Behav)
				port map(a => '0',
							b => c0, 
							cin => c1,
							cout => LEDG(2),
							s => LEDG(1)
							);
end Shell;
