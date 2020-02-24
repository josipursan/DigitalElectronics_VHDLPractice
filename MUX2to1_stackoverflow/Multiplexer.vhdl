LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
PACKAGE mux2to1_package IS
   COMPONENT mux2to1
        PORT (  s, w0, w1: IN   STD_LOGIC ;
            f       : OUT   STD_LOGIC ) ;
   END COMPONENT ;
END mux2to1_package ;

LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux2to1 IS
PORT (  s, w0, w1   : IN    STD_LOGIC ;
        f   : OUT   STD_LOGIC ) ;
END mux2to1;

ARCHITECTURE Behavior OF mux2to1 IS 
BEGIN
  PROCESS(s,w0,w1)
  BEGIN

     IF s='0' THEN
        f <= w0;
     ELSE
        f <= w1;
     END IF;

  END PROCESS;
END Behavior ;