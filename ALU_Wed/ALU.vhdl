
--------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;


architecture a1 of alu_beh is

    function sub(A: in std_logic_vector((operand_width*2)-1 downto 0); B: in std_logic_vector((operand_width*2)-1 downto 0))
        return std_logic_vector is
            -- declaring and initializing variables using aggregates 
            variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
            variable carry : std_logic_vector(operand_width*2 downto 0):= (others=>'0');
        begin
            -- Hint: Use for loop to calculate value of "diff" and "carry" variable
            -- Use aggregates to assign values to multiple bits
				carry(0) := '0';
				for i in 0 to 7 loop
						diff(i) := A(i) xor B(i) xor carry(i);
						carry(i+1) :=  ( not(A(i)) and (B(i) or carry(i)) )  or ( B(i) and carry(i) ) ;
				end loop;		
           
            return diff;
    end sub;

     
    function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
		  
            variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
				variable shift1 : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
				variable tmp : std_logic := '0';
				
				variable num0 : integer := 0;
				variable num1 : integer := 0;
				variable num2 : integer := 0;
				variable num3 : integer := 0;			
            
				variable count : integer := 0;
				
        begin
            shift1(operand_width-1 downto 0):= A;
				
				if(B(0) = '0') then
					num0 := 0;
				else 
					num0 := 1;
				end if;
				
				if(B(1) = '0') then
					num1 := 0;
				else 
					num1 := 1;
				end if;
				
				if(B(2) = '0') then
					num2 := 0;
				else 
					num2 := 1;
				end if;
				
				if(B(3) = '0') then
					num3 := 0;
				else 
					num3 := 1;
				end if;
				
				-- Hint: use for loop to calculate value of shift variable
				
				count := (num0*1) + (num1*2) + (num2*4) + (num3*8);	
				
            -- shift(____ downto _____) & shift(____ downto ______)
            -- to calculate exponent, you can use double asterisk. ex: 2**i
				if(count>8) then
					count := count - 8 ;
				end if;
			
				shift(count mod 8) 	 := shift1(0);				
				shift((count+1) mod 8) := shift1(1);				
				shift((count+2) mod 8) := shift1(2);				
				shift((count+3) mod 8) := shift1(3);
				shift((count+4) mod 8) := shift1(4);
				shift((count+5) mod 8) := shift1(5);
				shift((count+6) mod 8) := shift1(6);
				shift((count+7) mod 8) := shift1(7);
				
        return shift;
    end rolf;
                
begin
alu : process( A, B, sel )

	
	variable answer4 : std_logic_vector(7 downto 0);			
	variable answer4_0 : std_logic_vector(7 downto 0);
	variable answer4_1 : std_logic_vector(7 downto 0);
	
begin
    -- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
   --
   -- sub function usage :
   --   signal_name <= sub(A,B)
   --   variable_name := sub(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
	if (sel = "00") then			
			
			op <= rolf(A,B);
			
	elsif (sel = "01") then			
			
			op <= sub("0000" & A,"0000" & B);
			
	elsif (sel = "10") then	
	
			op <= "0000" & (A nor B);
			
	else 			
						
			answer4_0 := "0000" & A;			
			answer4_1 := not(sub(not(answer4_0), answer4_0));
			answer4   := not(sub(not(answer4_1), answer4_1));
			
			op <= answer4;	
			
			
	end if;
	
end process ; --alu
end a1 ; -- a1

