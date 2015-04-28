LIBRARY ieee;
USE ieee.std_logic_1163.all;

ENTITY 2to4_decoder IS
	PORT(
		S : in STD_LOGIC_VECTOR (1 downto 0);
		Y : out STD_LOGIC_VECTOR (3 downto 0));
END 2to4_decoder;

ARCHITECTURE behavioral OF 2to4_decoder IS
signal R0,R1,R2,R3 : STD_LOGIC_VECTOR (3 downto 0);
R0 <= "1000";
R1 <= "0100";
R2 <= "0010";
R3 <= "0001";

BEGIN
	y <= R0 when S = "00" else
		R1 when S = "01" else
		R2 when S = "10" else
		R3 when others;
END;
