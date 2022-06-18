library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is 
	generic(N : positive := 4z);
	port(upDown : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		enable : in std_logic;
		loadEn : in std_logic;
		dataIn : in std_logic_vector((N-1) downto 0);
		cntOut : out std_logic_vector((N-1) downto 0)
		);
end CounterUpDown4;

architecture Behav of CounterUpDown4 is
	signal s_cntvalue: unsigned((N-1) downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_cntvalue <= (others => '0');
			elsif(enable = '1') then
				if(loadEn = '1') then
					s_cntvalue <= unsigned(dataIn);
					if(upDown = '1') then	
						s_cntvalue <= s_cntvalue + 1;
					else
						s_cntvalue <= s_cntvalue - 1;
					end if;
				else
					if(upDown = '1') then
						s_cntvalue <= s_cntvalue + 1;
					else
						s_cntvalue <= s_cntvalue - 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	cntOut <= std_logic_vector(s_cntvalue);
end Behav;

					