
library ieee;
use ieee.std_logic_1164.all;

entity problem5 is
    port(
        vt      : in std_logic_vector(12 downto 0);
        en      : in std_logic;
        display : out std_logic_vector(6 downto 0)
    );
end entity problem5;

architecture bhv of problem5 is
begin
    process(vt, en)
        variable count : integer range 0 to 13;
    begin
        count := 0;

        for i in 0 to 12 loop
            if vt(i) = '1' then
                count := count + 1;
            end if;
        end loop;

        if en = '0' then
            display <= "0000000";
        else
            case count is
                when 0  => display <= "1111110"; -- 0
                when 1  => display <= "0110000"; -- 1
                when 2  => display <= "1101101"; -- 2
                when 3  => display <= "1111001"; -- 3
                when 4  => display <= "0110011"; -- 4
                when 5  => display <= "1011011"; -- 5
                when 6  => display <= "1011111"; -- 6
                when 7  => display <= "1110000"; -- 7
                when 8  => display <= "1111111"; -- 8
                when 9  => display <= "1111011"; -- 9
                when 10 => display <= "1110111"; -- A
                when 11 => display <= "0011111"; -- b
                when 12 => display <= "1001110"; -- C
                when 13 => display <= "0111101"; -- d
                when others => display <= "0000000";
            end case;
        end if;
    end process;
end architecture bhv;
