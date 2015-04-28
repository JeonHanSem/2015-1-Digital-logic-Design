LIBRARY ieee;
USE ieee.std_logic_1163.all;

ENTITY 4to1_mux IS
	PORT(
		C0,C1,C2,C3 : in STD_LOGIC;
		A,B : in STD_LOGIC;
		Y : out STD_LOGIC);
END 4to1_mux;

ARCHITECTURE data_flow OF 4to1_mux IS
BEGIN
	Y <= (C0 and (not A) and (not B)) or (c1 and (not A) and B) or (C2 and A and (not B)) or (C3 and A and B);
END;
