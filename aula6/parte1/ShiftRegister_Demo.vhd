library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister_Demo is
	generic( K : positive := 8);
	port(CLOCK_50 : in std_logic;
		SW : in std_logic_vector((K+1) downto 0);
		LEDG : out std_logic_vector((K-1) downto 0)
		);
end ShiftRegister_Demo;

architecture Shell of ShiftRegister_Demo is
	signal s_clk : std_logic;
	
begin
	freq_div : entity Work.ClkDividerN(Behav)
			port map(ClkIn => ClOCK_50,
						ClkOut => s_clk
						);
						
	ShiftRegister : entity Work.ShiftReg(Behav)
			generic map(size => K)
			port map(clk => s_clk,
						loadEn => SW(K+1),
						dataIn => SW((K-1) downto 0),
						dirLeft => SW(k),
						dataOut => LEDG((K-1) downto 0)
						);
end Shell;
