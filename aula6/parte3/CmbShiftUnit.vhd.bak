library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SeqShiftUnit is
	port(dataIn : in std_logic_vector(7 downto 0);
		shAmount : in std_logic_vector(2 downto 0);
		rotate : in std_logic;
		dirLeft : in std_logic;
		shArith : in std_logic;
		dataOut : out std_logic_vector(7 downto 0));
end SeqShiftUnit;

architecture Behavioral of SeqShiftUnit is
	signal s_shiftReg : std_logic_vector(7 downto 0);
	signal s_shAmount : integer;

begin
	s_shAmount <= to_integer(unsigned(shAmount));
	process(dataIn,dataIn,s_shAmount)
	begin
		if (rotate = '1') then
			if (dirLeft = '1') then
				s_shiftReg <= std_logic_vector(rotate_left(unsigned(dataIn),s_shAmount));
			else
				s_shiftReg <= std_logic_vector(rotate_right(unsigned(dataIn),s_shAmount));
			end if;
		elsif (shArith = '1') then
			if (dirLeft = '1') then
				s_shiftReg <= std_logic_vector(shift_left(unsigned(dataIn),s_shAmount));
			else
				s_shiftReg <= std_logic_vector(shift_right(unsigned(dataIn),s_shAmount));
			end if;
		else
			if(dirLeft = '1') then
				s_shiftReg <= std_logic_vector(shift_left(signed(dataIn),s_shAmount));
			else
				s_shiftReg <= std_logic_vector(shift_right(signed(dataIn),s_shAmount));
			end if;
		end if;
	end process;

	dataOut <= s_shiftReg;

end Behavioral ;
