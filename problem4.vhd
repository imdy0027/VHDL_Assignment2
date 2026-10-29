library ieee;
use ieee.std_logic_1164.all;

entity problem4 is
    port(
        vt     : in std_logic_vector(24 downto 0);
        result : out std_logic
    );
end entity problem4;

architecture bhv of problem4 is
begin
    process(vt)
        variable count : integer range 0 to 25;
    begin
        count := 0;

        for i in 0 to 24 loop
            if vt(i) = '1' then
                count := count + 1;
            end if;
        end loop;

        if count >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end architecture bhv;
