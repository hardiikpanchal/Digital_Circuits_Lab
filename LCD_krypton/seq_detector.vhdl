library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cov_detect is
    port(inp:in std_logic_vector(4 downto 0);
            reset,clock:in std_logic;
            outp: out std_logic;
            out_ascii: out std_logic_vector(55 downto 0));
end cov_detect;

architecture rch of cov_detect is


---------------Define state type here-----------------------------
type state is (init,s1,s2,s3,s4,s5,s6);
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=init;
signal out_sig: std_logic;
begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<=init;
				-- Fill the code
        else
           y_present<=y_next;
        end if;
    end if;
    
end process;

---- To display "krypton", the value of out_ascii = x"4B_72_59_50_74_6F_6E"

---- ASCII representation for blank space in Hex = x"20"

state_transition_proc:process(inp,y_present)

begin
    case y_present is
        when init=>
		  
            if(unsigned(inp)=11) then    --k
					y_next <= s1;
					out_ascii <= x"4B_20_20_20_20_20_20";

            else
                if (out_sig = '1') then
						out_ascii <= x"4B_72_59_50_74_6F_6E";

                else     
						out_ascii <= x"20_20_20_20_20_20_20";
                end if;
					 
					 y_next <= init;

            end if;
            out_sig<='0';
				
        when s1=>
            if(unsigned(inp)=18) then    --r
					y_next <= s2;
					out_ascii <= x"4B_72_20_20_20_20_20";
					out_sig<='0';
            else
                out_ascii <= x"4B_20_20_20_20_20_20"; 
					 y_next <= s1;				
					 out_sig<='0';
            end if;
				
				
            
				
			when s2=>
				if(unsigned(inp)=25) then    --y
					y_next <= s3;
					out_ascii <= x"4B_72_59_20_20_20_20"; 
					out_sig<='0';
            else
                out_ascii <= x"4B_72_20_20_20_20_20"; 
					 y_next <= s2;				
					 out_sig<='0';
            end if;
				
				
           
			
			
			when s3=>
            if(unsigned(inp)=16) then    --p
					y_next <= s4;
					out_ascii <= x"4B_72_59_50_20_20_20";
					out_sig<='0';

            else
                out_ascii <= x"4B_72_59_20_20_20_20"; 
					 y_next <= s3;
					 out_sig<='0';
					 
            end if;
				
				
			when s4=>
            if(unsigned(inp)=20) then    --t
					y_next <= s5;
					out_ascii <= x"4B_72_59_50_74_20_20";
					out_sig<='0';

            else
                out_ascii <= x"4B_72_59_50_20_20_20"; 
					 y_next <= s4;
					 out_sig<='0';
					 
            end if;
				
				
			when s5=>
            if(unsigned(inp)=15) then    --o
					y_next <= s6;
					out_ascii <= x"4B_72_59_50_74_6F_20";
					out_sig<='0';

            else
                out_ascii <= x"4B_72_59_50_74_20_20"; 
					 y_next <= s5;
					 out_sig<='0';
					 
            end if;
		
            
			
			
			when s6=>
            if(unsigned(inp)=14) then    --n
					y_next <= init;
					out_ascii <= x"4B_72_59_50_74_6F_6E";
					out_sig<='1';     

            else
					 y_next <= s6;
                out_ascii <= x"4B_72_59_50_74_6F_20";					 
					 out_sig<='0';
            
            end if;		  
		  
        end case;
		  
end process;

outp <= out_sig;

end rch;
