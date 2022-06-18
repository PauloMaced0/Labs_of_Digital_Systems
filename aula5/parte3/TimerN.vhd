library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TimerN is
	generic(K : positive := 6);
	port(clk : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		start : in std_logic;
		timeOut : out std_logic
		);
end TimerN;

architecture Behav of TimerN is
	signal s_count : integer := 0;
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then	
				timeOut <= '0';
				s_count <= 0;
			elsif(enable = '1') then
				if(s_count = 0) then
					if(start = '1') then
						s_count <= s_count +1;
						timeOut <= '1';
					else
						timeOut <= '0';
					end if;
				else
					if(s_count =(k-1)) then
						timeOut <= '0';
						s_count <= 0;
					else
						timeOut <= '1';
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end Behav;	
	