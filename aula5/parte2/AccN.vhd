library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic(N : positive := 8);
	port(clk : in std_logic;
		reset : in std_logic;
		dataIn : in std_logic_vector((N-1) downto 0);
		enable : in std_logic;
		dataOut : out std_logic_vector((N-1) downto 0)
		);
end AccN;

architecture Shell of AccN is 
	signal s_adderOut,s_regOut : std_logic_vector((N-1) downto 0);
begin	
	adder: entity work.AdderN(Behav)
		generic map(N => N)
		port map(operand0 => dataIn,
					operand1 => s_regOut,
					result => s_adderOut
					);
	
	reg : entity work.RegN(Behav)
		generic map(N => N)
		port map(clk => clk,
					reset => reset,
					enable => enable,
					dataIn => s_adderOut,
					dataOut => s_regOut
					);
	dataOut <= s_regOut;
end Shell;