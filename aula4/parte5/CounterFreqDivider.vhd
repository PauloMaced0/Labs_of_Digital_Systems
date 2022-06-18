library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterFreqDivider is 
	port(ClOCK_50 : in std_logic;
		SW : in std_logic_vector(7 downto 0);
		HEX0 : out std_logic_vector(6 downto 0)
		);
end CounterFreqDivider;

architecture Shell of CounterFreqDivider is
	signal s_clkout : std_logic;
	signal s_cntout : std_logic_vector(3 downto 0);
begin
	fd : entity work.FreqDivider(Behav)
			port map(clk => CLOCK_50,
						clkOut => s_clkout,
						k => x"004C4B40"
						);
	cud : entity work.CounterUpDown4(Behav)
			port map(upDown => SW(4),
						reset => SW(7),
						clk => s_clkout,
						enable => SW(6),
						loadEn => SW(5),
						dataIn => SW(3 downto 0),
						cntOut => s_cntout
						);
	b7seg : entity work.BinSeg7Decoder(Behav)
			port map(bininput => s_cntout ,
						decout_n => HEX0(6 downto 0)
						);
end Shell;

