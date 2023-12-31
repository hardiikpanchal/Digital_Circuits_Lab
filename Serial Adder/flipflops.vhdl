library ieee;
use ieee.std_logic_1164.all;
package flipflops is
  
  component dff2 is port(D,clk,reset:in std_logic;Q:out std_logic);
  end component dff2;


end package flipflops; 



--D flip flop2
library ieee;
use ieee.std_logic_1164.all;
entity dff2 is port(D,clk,reset:in std_logic;Q:out std_logic);
end entity dff2;
architecture behav of dff2 is
begin
dff2: process (clk,reset)
begin
--on reset make Q 0 or 1 based on requirement 
if(reset='1')then
Q <= '0';
elsif (CLK'event and (CLK='1')) then
Q <= D;
end if;
end process dff2;
end behav;

