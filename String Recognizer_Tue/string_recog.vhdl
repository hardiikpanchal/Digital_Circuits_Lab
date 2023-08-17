library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cov_detect is
port(inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic);
end cov_detect;

architecture rch of cov_detect is

---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4); -- Fill the code
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<=rst;
				-- Fill the code
        else
           y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)

begin
    case y_present is
	 
        when rst=>
            if(unsigned(inp)=3) then    --c
                y_next<=s1;-- Fill the code
				else
					 y_next<=rst;
				end if;
				
        when s1=>
            if(unsigned(inp)=15) then    --0
                y_next<=s2;-- Fill the code
				else
					 y_next<=s1;
				end if;
				
        when s2=>
            if(unsigned(inp)=22) then    --v
                y_next<=s3;-- Fill the code
				else
					 y_next<=s2;
				end if;
				
        when s3=>
            if(unsigned(inp)=9) then    --i
                y_next<=s4;-- Fill the code
				else
					 y_next<=s3;
				end if;
				
        when s4=>
            if(unsigned(inp)=4) then    --d
                y_next<=rst;-- Fill the code
				else
					 y_next<=s4;
				end if;
        
		end case;
end process;
	
	
output_proc:process(inp,y_present)
begin
    case y_present is	 
        when rst=>
            if(unsigned(inp)=3) then    --c
                outp<='0';-- Fill the code
				else
					outp<='0';
				end if; 				
        when s1=>
            if(unsigned(inp)=15) then    --o
                outp<='0';-- Fill the code
				else
					outp<='0';			 
				end if;			
        when s2=>
            if(unsigned(inp)=22) then    --v
                outp<='0';-- Fill the code
				else
					outp<='0';
				end if;				
        when s3=>
            if(unsigned(inp)=9) then    --i
                outp<='0';-- Fill the code
				else
					outp<='0';
				end if;				
        when s4=>
            if(unsigned(inp)=4) then    --d
                outp<='1';-- Fill the code
				else
					outp<='0';
				end if;				
		end case;	
end process;	

end rch;		

                
                