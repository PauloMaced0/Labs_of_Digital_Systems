library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DecBcd is 
		port(bininput : in std_logic_vector(3 downto 0);
			decout : out std_logic_vector(7 downto 0)
			);
end DecBcd;

architecture Behav of DecBcd is
begin
	decout <=	"00000001" when (bininput = "0001") else
					"00000010" when (bininput = "0010") else
					"00000011" when (bininput = "0011") else
					"00000100" when (bininput = "0100") else
					"00000101" when (bininput = "0101") else
					"00000110" when (bininput = "0110") else
					"00000111" when (bininput = "0111") else
					"00001000" when (bininput = "1000") else
					"00001001" when (bininput = "1001") else
					"00010000" when (bininput = "1010") else
					"00010001" when (bininput = "1011") else
					"00010010" when (bininput = "1100") else
					"00010011" when (bininput = "1101") else
					"00010100" when (bininput = "1110") else
					"00010101" when (bininput = "1111") else
					"00000000";

end Behav;