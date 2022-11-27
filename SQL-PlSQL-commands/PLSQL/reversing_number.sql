
SET SERVEROUTPUT ON;
DECLARE
-- declare a number 'num' for reading actual input
-- declare another number 'rev' that would be reverse of num
num NUMBER;
rev NUMBER;
  
BEGIN
-- & is used to read input from keyboard
num:=#
-- initialize rev to 0
rev:=0;
-- the loop runs until num is greater than 0
WHILE num>0 LOOP
-- mod function is used to find the modulus/ remainder of num when divided by 10
  
rev:=(rev*10) + mod(num,10);
-- floor function is used to obtain a result which is an integer
num:=floor(num/10);
END LOOP;
DBMS_OUTPUT.PUT_LINE('Reverse of the number is: ' || rev);
END;
/                        
  
-- Program End