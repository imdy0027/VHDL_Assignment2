
library ieee;
use ieee.std_logic_1164.all;

entity problem3 is
    port(
        ch  : in std_logic_vector(2 downto 0);
        seg : out std_logic_vector(6 downto 0)
    );
end entity problem3;

architecture bhv of problem3 is
begin
    process(ch)
    begin
        case ch is
            when "000" => seg <= "1110111"; -- a
            when "001" => seg <= "0011111"; -- b
            when "010" => seg <= "0001101"; -- c
            when "011" => seg <= "0111101"; -- d
            when "100" => seg <= "1000111"; -- f
            when "101" => seg <= "1111011"; -- g
            when others => seg <= "0000000";
        end case;
    end process;
end architecture bhv;
