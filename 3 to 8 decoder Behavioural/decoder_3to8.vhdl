library ieee;
use ieee.std_logic_1164.all;

entity decoder_beh is
    generic(
        operand_width : integer:=3
        
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        E: in std_logic_vector(0 downto 0);
		  op: out std_logic_vector(7 downto 0)
    ) ;
end decoder_beh;

architecture Struct of decoder_beh is

-------------------------functions


begin 

decoder : process(A, E)  
-------------------------variables

begin

---------------------------code
op(7) <= (E(0) and (A(2) and A(1) and A(0))); 
op(6) <= (E(0) and (A(2) and A(1) and not(A(0))));
op(5) <= (E(0) and (A(2) and not(A(1)) and A(0)));
op(4) <= (E(0) and (A(2) and not(A(1)) and not(A(0))));
op(3) <= (E(0) and (not(A(2)) and A(1) and A(0)));
op(2) <= (E(0) and (not(A(2)) and A(1) and not(A(0))));
op(1) <= (E(0) and (not(A(2)) and not(A(1)) and A(0)));
op(0) <= (E(0) and (not(A(2)) and not(A(1)) and not(A(0))));

end process;


end Struct;
