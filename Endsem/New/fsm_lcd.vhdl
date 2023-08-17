library ieee;
use ieee.std_logic_1164.all;

entity fsm is
port( input:in std_logic_vector(2 downto 0);reset,clock_50, clock_1:in std_logic;
		output: out std_logic_vector(1 downto 0));
end fsm;

architecture BHV of fsm is

type state is (rst, timer1, timer2, timer3);

signal y_present,y_next : state:= rst;

begin
clock_proc:process(clock_50,reset)
begin
    if(clock_50='1' and clock_50' event) then
        if(reset='1') then
            y_present<=rst;
        else
				y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(input, y_present)

begin
    case y_present is
	 	 
        when rst=>
            if(input = "001") then    
                y_next <= timer1;
					 output <= "01";
				elsif(input = "010") then
					 y_next <= timer2;
					 output <= "10";
				elsif(input = "100") then
					 y_next <= timer3;
					 output <= "11";
				else
					 y_next<=rst;
					 output <= "00";
				end if;
				
        when timer1=>
            if(input = "010") then    
                y_next <= timer2;
					 output <= "10";
            elsif(input = "100") then    
                y_next <= timer3;
					 output <= "11";
				else
					 y_next<=timer1;
					 output <= "01";
				end if;
				
        when timer2=>
            if(input = "010") then    
                y_next <= timer1;
					 output <= "01";
            elsif(input = "100") then    
                y_next <= timer3;
					 output <= "11";
				else
					 y_next<=timer2;
					 output <= "10";
				end if;
				
        when timer3=>
            if(input = "001") then    
                y_next <= timer1;
					 output <= "01";
            elsif(input = "010") then    
                y_next <= timer2;
					 output <= "10";
				else
					 y_next<=timer3;
					 output <= "11";
				end if;
				
        
		end case;
		
end process;	
	

end BHV;  