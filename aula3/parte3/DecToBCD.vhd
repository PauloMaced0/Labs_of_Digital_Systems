library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DecodertoBCD is 
		port(bininput : in std_logic_vector(3 downto 0);
			decout_n : out std_logic_vector(4 downto 0)
			);
end DecodertoBCD;

architecture Behav of DecodertoBCD is
begin
	decout_n <=	"00001" when (bininput = "0001") else
					"00010" when (bininput = "0010") else
					"00011" when (bininput = "0011") else
					"00100" when (bininput = "0100") else
					"00101" when (bininput = "0101") else
					"00110" when (bininput = "0110") else
					"00111" when (bininput = "0111") else
					"01000" when (bininput = "1000") else
					"01001" when (bininput = "1001") else
					"10000" when (bininput = "1010") else
					"10001" when (bininput = "1011") else
					"10010" when (bininput = "1100") else
					"10011" when (bininput = "1101") else
					"10100" when (bininput = "1110") else
					"10101" when (bininput = "1111") else
					"00000";

end Behav;