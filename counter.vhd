library IEEE;
use IEEE.std_logic_1164.all;

entity counter is
GENERIC (  N : bit_vector(3 downto 0) := "1010");-- numero maximo a ser contado
port(
clk : in std_logic;
S : out std_logic_vector(3 downto 0));
end counter;

architecture hardware of counter is
begin
process (clk)
variable bit_counter: std_logic_vector(3 downto 0);
begin
	if(clk'event and clk = '1') then
          bit_counter <= bit_counter + 1;
	if(N = bit_counter) then
		bit_counter <= "0000";
	end if;
	
	end if;
end process;
S <= bit_couunter;

end hardware;

