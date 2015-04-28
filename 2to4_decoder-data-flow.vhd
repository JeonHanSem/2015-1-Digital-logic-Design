LIBRARY ieee;
USE ieee.std_logic_1163.all;

ENTITY 2to4_decoder IS
	PORT(
		A,B : in std_logic;
		D0,D1,D2,D3 : out std_logic);
END 2to4_decoder;

ARCHITECTURE data_flow OF 2to4_decoder IS
BEGIN
	D0 <= (not A) and (not B);
	D1 <= (not A) and B;
	D2 <= A and (not B);
	D3 <= A and B;
END;
