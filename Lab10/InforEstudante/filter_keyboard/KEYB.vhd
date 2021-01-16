
library ieee;
use		ieee.std_logic_1164.all;

entity keyb is 
	port(
		KB_DATA:		IN		STD_LOGIC;
		KB_CLK:			IN		STD_LOGIC;
		B0:				OUT		STD_LOGIC;
		B1:				OUT		STD_LOGIC;
		B2:				OUT		STD_LOGIC;
		B3:				OUT		STD_LOGIC;
		B4:				OUT		STD_LOGIC;
		B5:				OUT		STD_LOGIC;
		B6:				OUT		STD_LOGIC;
		B7:				OUT		STD_LOGIC);
end keyb;

architecture arch of keyb is
	signal SHF_REGISTER:		std_logic_vector(10 downto 0);
begin

	process(KB_CLK)
	begin
		if (KB_CLK'event and KB_CLK='1') then
			SHF_REGISTER(10 downto 1) <= SHF_REGISTER(9 downto 0);
			SHF_REGISTER(0)           <= KB_DATA;
		end if;
	end process;

	B0 <= SHF_REGISTER(9);
	B1 <= SHF_REGISTER(8);
	B2 <= SHF_REGISTER(7);
	B3 <= SHF_REGISTER(6);
	B4 <= SHF_REGISTER(5);
	B5 <= SHF_REGISTER(4);
	B6 <= SHF_REGISTER(3);
	B7 <= SHF_REGISTER(2);
end arch;

