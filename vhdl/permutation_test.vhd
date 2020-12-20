library ieee;
use ieee.std_logic_1164.all;
PACKAGE BUFFON IS type
input_arrray_t is array (0 to 63) of unsigned ( 31 downto 0 );
END PACKAGE BUFFON; 



entity test_permutation is
    end test_permutation;
    
    architecture Behavioral of test_permutation is


       
        
        
        component permutation
    port(
        block64_32 : in input_arrray_t;
        ans : out input_arrray_t);
    end component;
       
    signal  block64_32 :  input_arrray_t;
    signal ans_permutation :  input_arrray_t);


    begin
        permutation1: permutation
        port map (block64_32 => block64_32, ans=>ans_permutation);
    
        process
        begin
            block64_32(0) <="00000000000000000000000000000011" ;
            block64_32(1) <="00000000000000000000000000000111" ;
            block64_32(2) <="00000000000000000000000000001111" ;
            block64_32(3) <="00000000000000000000000000011111" ;
            block64_32(4 to 63) <="00000000000000000000000000000000" ;

            
            wait for 30 ns;
        end process;
    
    end Behavioral;
