library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksMachine is
	port(CLOCK_50 : in std_logic;
		SW : in std_logic_vector(2 downto 0);
		LEDR : out std_logic_vector(0 downto 0)
		);
end DrinksMachine;

architecture shell of DrinksMachine is 
	signal clock_signal1hz:std_logic;
	signal debounceSW2reset,debounceSW0,debounceSW1: std_logic;
begin
	clock_div: entity work.ClkDividerN(Behavioral)
							generic map(divFactor=> 50000000)
							port map(clkIn			=> CLOCK_50,
										clkOut		=> clock_signal1hz);
	
	key0_debounce: entity work.DebounceUnit(Behavioral)
							port map(refClk=>ClOCK_50,
										dirtyIn=> SW(2),
										pulsedOut=> debounceSW2reset
										);
	
	key1_debounce:entity work.DebounceUnit(Behavioral)
							port map(refClk=>CLOCK_50,
										dirtyIn=> SW(0),
										pulsedOut=> debounceSW0
										);
	
	key2_debounce:entity work.DebounceUnit(Behavioral)
							port map(refClk=>CLOCK_50,
										dirtyIn=> SW(1),
										pulsedOut=> debounceSW1
										);
	fsm: entity work.MaqVenda(BEHAVIOR)
							port map(clock => clock_signal1hz,
										reset => debounceSW2reset,
										C => debounceSW1,
										V => debounceSW0,
										Abrir => LEDR(0)
										);
	
end shell;