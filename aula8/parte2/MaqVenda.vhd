LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MaqVenda IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        C : IN STD_LOGIC;
        V : IN STD_LOGIC;
        Abrir : OUT STD_LOGIC
    );
END MaqVenda;

ARCHITECTURE BEHAVIOR OF MaqVenda IS
    TYPE type_fstate IS (E0,E1,E2,E3,E4,E5);
    SIGNAL pstate,nstate : type_fstate;
BEGIN
    sync_proc : PROCESS (clock)
    BEGIN
        IF (rising_edge(clock)) THEN
				if(reset = '1') then
					pstate <= E0;
				else
					pstate <= nstate;
				end if;
				
        END IF;
    END PROCESS;

    comb_proc : PROCESS (pstate,C,V)
    BEGIN
			CASE pstate IS
			 
			 WHEN E0 =>
				if (V <= '1') then
					nstate <= E1;
				ELSIF (C <= '1') THEN
					nstate <= E3;
				ELSIF (((V <= '0') AND (C <= '0'))) THEN
					nstate <= E0;
					  -- Inserting 'else' block to prevent latch inference
				ELSE
					nstate <= E0;
				END IF;

				Abrir <= '0';
			 WHEN E1 =>
				IF ((V <= '1')) THEN
					nstate <= E2;
				ELSIF ((C <= '1')) THEN
					nstate <= E4;
				ELSIF (((V <= '0') AND (C <= '0'))) THEN
					nstate <= E1;
					  -- Inserting 'else' block to prevent latch inference
				ELSE
					nstate <= E1;
				END IF;

				Abrir <= '0';
			 WHEN E2 =>
				IF (V <= '1')  THEN
					nstate <= E3;
				elsif (C <= '1') then
					nstate <= E5;
				ELSIF (((V <= '0') AND (C <= '0'))) THEN
					nstate <= E2;
					  -- Inserting 'else' block to prevent latch inference
				ELSE
					nstate <= E2;
				END IF;

				Abrir <= '0';
			when E3 =>
				if((C<='0') and(V<='0') ) then
					nstate <= E3;
				elsif(C<='1') then
					nstate <= E5;
				elsif(V<='1')  then
					nstate <= E4;
				else
					nstate <= E3;
				end if;
				Abrir <= '0';
			when E4 =>
				if((C<='0') and(V<='0') ) then
					nstate <= E4;
				elsif((C<='1') or (V<='1') ) then
					nstate <= E5;
				else
					nstate <= E4;
				end if;	
				Abrir <= '0';
			WHEN E5 =>
			  nstate <= E0;
			  Abrir <= '1';
			WHEN OTHERS => 
			  Abrir <= 'X';
			  report "Reach undefined state";
		END CASE;
    END PROCESS;
END BEHAVIOR;
