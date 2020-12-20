library ieee;
use ieee.std_logic_1164.all;
PACKAGE BUFFON IS type
input_arrray_t is array (0 to 63) of unsigned ( 31 downto 0 );
END PACKAGE BUFFON; 



entity test_expansion is
    end test_expansion;
    
    architecture Behavioral of test_expansion is


       
        
        
        component  expansion
        port
            (block512 : in unsigned(511 downto 0);
            ans : out input_arrray_t);
        end component;
       
        signal   block512 :  unsigned(511 downto 0);
        signal   ans :  input_arrray_t;



    begin
        Myexpansion : expansion 
        port map (block512 => block512, ans => ans);
        process
        begin
            msg <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000010110001001100011";
            wait for 30 ns;
        end process;
    
    end Behavioral;
