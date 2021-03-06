library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider is
	port(clk : in std_logic;
		k: in std_logic_vector(31 downto 0);
		clkOut : out std_logic
		);
end FreqDivider;

architecture Behav of FreqDivider is 
	signal s_counter : unsigned(31 downto 0);
	signal s_halfway : unsigned(31 downto 0);
begin
	s_halfway <= (unsigned(k)/2);
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(s_counter = unsigned(k)-1) then
				clkOut <= '0';
				s_counter <= (others => '0');
			else
				if(s_counter = s_halfway -1) then
					clkOut <= '1';
				end if;
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;
end Behav;
