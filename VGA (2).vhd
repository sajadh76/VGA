---------------------------------------------------------
--  VGA                                                --
--  engineer: sajad hamzenejadi                        --
--  email: sajadhamzenejadi76@gmail.com                --
--  2019, iran                                         --
---------------------------------------------------------

library IEEE;
 
use IEEE.STD_LOGIC_1164.ALL;
 
use IEEE.STD_LOGIC_ARITH.ALL;
 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
  
 
entity VGA is
 
port(clk50_in : in std_logic;         -----system clock i/p
 
       red       : out std_logic;         -----primrary colour output
 
       green     : out std_logic;
 
       blue     : out std_logic;
 
       hs_out   : out std_logic;         ------horizontal control signal
 
       vs_out   : out std_logic);         ------vertical   control signal
 
end VGA;
 
  
 
architecture Behavioral of VGA is
 
  
 
signal clk25             : std_logic;
 
signal hs : std_logic_vector (9 downto 0);
 
signal vs : std_logic_vector (9 downto 0);
 
begin
 
  
 
-- generate a 25Mhz clock
 
process (clk50_in)
 
begin
 
if clk50_in'event and clk50_in='1' then
 
if (clk25 = '0') then             
 
clk25 <= '1';
 
else
 
clk25 <= '0';
 
end if;
 
end if;
 
end process;
 
------display logic for message "PANTECH SOLUTIONS"
 
process (clk25)
 
begin
 
if clk25'event and clk25 = '1' then
 
if hs = "0011001000" and vs >= "0011001000" and vs <= "0011111010" then ---horizantal and vertical line display constraint
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0011001000" and vs >= "0100101100" and vs <= "0101000101" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0011111010" and vs >= "0011001000" and vs <= "0011100001" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0011111010" and vs >= "0101000101" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0100000100" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0100000100" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0100110110" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0100110110" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0101000000" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0101000000" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0101110010" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0101111110" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0110101110" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0110010101" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0110111000" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0111010001" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "0111110100" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1000001101" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1000110000" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1001100010" and vs >= "0011001000" and vs <= "0011111010" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1000110000" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1001100010" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1001101100" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
elsif hs = "1010011110" and vs >= "0100101100" and vs <= "0101011110" then
 
red <= '1' ;
 
blue <= '0';
 
green <= '0' ;
 
--------------------------------------------------------------------------------
 
else                     ----------blank signal display
 
red <= '0' ;
 
blue <= '0';
 
green <= '0' ;
 
end if;
 
if (hs > "0000000000" )
 
and (hs < "0001100001" ) -- 96+1   -----horizontal tracing
 
then
 
hs_out <= '0';
 
else
 
hs_out <= '1';
 
end if;
 
if (vs > "0000000000" )
 
and (vs < "0000000011" ) -- 2+1   ------vertical tracing
 
then
 
vs_out <= '0';
 
else
 
vs_out <= '1';
 
end if;
 
hs <= hs + "0000000001" ;
 
if (hs= "1100100000") then     ----incremental of horizontal line
 
vs <= vs + "0000000001";       ----incremental of vertical line
 
hs <= "0000000000";
 
end if;
 
if (vs= "1000001001") then                
 
vs <= "0000000000";
 
end if;
 
end if;
 
end process;
 
end Behavioral;
