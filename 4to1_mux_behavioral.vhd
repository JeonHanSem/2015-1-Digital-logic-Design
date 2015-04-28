LIBRARY ieee;
USE uee ieee.std_logic_1164.all;

ENTITY 4to1_mux IS
	PORT(
		C0,C1,C2,C3 : in STD_LOGIC;
		S : in STD_LOGIC_VECTOR(1 downto 0);
		Y : out STD_LOGIC);
END 4to1_mux;

ARCHITECTURE behavioral OF 4to1_mux IS
BEGIN
	Y <= C0 when S = "00" else
	 	C1 when S = "01" else
		C2 when S = "10" else
		C3 when others;
END;
