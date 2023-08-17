library ieee;
use ieee.std_logic_1164.all;

entity Serial_Adder is
port (reset, a,b: in std_logic; clock: in std_logic; s: out std_logic);
end entity;

architecture BHV of Serial_Adder is

type state is (c0,c1);

signal y_present,y_next : state:= c0;

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<=c0;
        else
				y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(a, b, y_present)

begin
    case y_present is
	 	 
        when c0=>
            if(a = '1' and b = '1') then    
                y_next<=c1;
				else
					 y_next<=c0;
				end if;
				
        when c1=>
            if(a = '0' and b = '0') then    
                y_next<=c0;
				else
					 y_next<=c1;
				end if;
				
        
		end case;
		
end process;
	
	
output_proc:process(a, b, y_present)
begin
    case y_present is
				
        when c0=>
				if(reset='1') then
					 s<='0';
				elsif(a = '0' and b = '0') then    
                s<='0';
				elsif(a = '0' and b = '1') then
					 s<='1';
				elsif(a = '1' and b = '0') then
					 s<='1';
				else
					 s<='0';
				end if;
        when c1=>
				if(reset='1') then
					 s<='0';
				elsif(a = '0' and b = '0') then    
                s<='1';
				elsif(a = '0' and b = '1') then
					 s<='0';
				elsif(a = '1' and b = '0') then
					 s<='0';
				else
					 s<='1';
				end if;		
        	
		end case;		
end process;
end BHV;  