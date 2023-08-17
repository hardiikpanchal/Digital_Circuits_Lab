
library ieee;
use ieee.std_logic_1164.all;

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

    function add(A: in std_logic_vector((operand_width*2)-1 downto 0); B: in std_logic_vector((operand_width*2)-1 downto 0))
        return std_logic_vector is
		  
				variable sum : std_logic_vector(7 downto 0) := (others => '0');
				variable carry : std_logic_vector(8 downto 0) := (others => '0');
            -- Declare "sum" and "carry" variable
            -- you can use aggregate to initialize the variables & signals as shown below
            --    variable variable_name : std_logic_vector(3 downto 0) := (others => '0');
				
        begin
            -- write logic for addition
            -- Hint: Use for loop
				carry(0) := '0';
				for i in 0 to 7 loop
						sum(i) := A(i) xor B(i) xor carry(i);
						carry(i+1) := (A(i) and B(i)) or (carry(i) and (A(i) xor B(i)));
				end loop;		
            return sum;
    end add;

	
begin
alu : process( A, B, sel )	

	variable Anew : std_logic_vector(7 downto 0); 
	variable Bnew : std_logic_vector(7 downto 0); 
			
	variable answer4_0 : std_logic_vector(7 downto 0);
	
begin

   -- complete VHDL code for various outputs of ALU based on select lines
   -- Hint: use if/else statement
	

			
	if (sel = "00") then				
			
			op <= A & B;
			
	elsif (sel = "01") then			
			
			Anew := "0000" & A;
			Bnew := "0000" & B;
			
			op <= add(Anew,Bnew);
			
	elsif (sel = "10") then			
			
					
			op <= "0000" & (A xor B);
			
	else 			
						
			answer4_0 := "0000" & A;			
			op <= add(answer4_0, answer4_0);
			
			
	end if;
   --
   -- add function usage :
   --   signal_name <= add(A,B)
   --   variable_name := add(A,B)
   --
   -- concatenate operator usage:
   --    "0000"&A 
end process ; -- alu
end a1 ; -- a1
