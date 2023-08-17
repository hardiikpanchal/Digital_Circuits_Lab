library ieee;
use ieee.std_logic_1164.all;

entity Serial_comparator is
port (reset, a,b: in std_logic; clock: in std_logic; g, l: out std_logic);
end entity;

architecture BHV of Serial_comparator is

    type state_type is (rst, gt, eq, lt);
    signal y_present,y_next : state_type;
	 
    begin
        process(a, b, y_present, reset)
        begin
            case y_present is
				
					when rst=>
						if(a = '0' and b = '0') then
							y_next <= eq;
							g <= '0';
							l <= '0';						
						
						elsif(a = '0' and b = '1') then
							y_next <= lt;
							g <= '0';
							l <= '1';
							
						elsif(a = '1' and b = '0') then
							y_next <= gt;
							g <= '1';
							l <= '0';
						
						else
							y_next <= eq; 
							g <= '0';
							l <= '0';						
						end if;
					
					when eq=>
						if(a = '0' and b = '0') then
							y_next <= eq;
							g <= '0';
							l <= '0';
						elsif(a = '0' and b = '1') then
							y_next <= lt;
							g <= '0';
							l <= '1';
						elsif(a = '1' and b = '0') then
							y_next <= gt;
							g <= '1';
							l <= '0';
						else
							y_next <= eq;
							g <= '0';
							l <= '0';	
						end if;
					
					when gt=>
						if(a = '0' and b = '0') then
							y_next <= gt;
							g <= '1';
							l <= '0';
						elsif(a = '1' and b = '0') then
							y_next <= gt;
							g <= '1';
							l <= '0';	
						elsif(a = '0' and b = '1') then
							y_next <= lt;
							g <= '0';
							l <= '1';	
						else
							y_next <= gt;
							g <= '1';
							l <= '0';	
						end if;
					
					
					when lt=>
						if(a = '0' and b = '0') then
							y_next <= lt;
							g <= '0';
							l <= '1';
						elsif(a = '0' and b = '1') then
							y_next <= lt;
							g <= '0';
							l <= '1';	
						elsif(a = '1' and b = '0') then
							y_next <= gt;
							g <= '1';
							l <= '0';	
						else
							y_next <= lt;
							g <= '0';
							l <= '1';	
						end if;               

            end case;
        end process;
        
        process(clock,reset)
        begin
            if(reset = '1') then
                y_present <= rst;
            elsif (clock' event and clock = '1') then
                y_present <= y_next;
            end if;
        end process;
        
end BHV;
    