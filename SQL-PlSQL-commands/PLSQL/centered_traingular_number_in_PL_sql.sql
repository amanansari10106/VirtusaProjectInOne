--PL/SQL Program to find the nth Centered triangular number 
-- declaration section 
DECLARE 
  x NUMBER; 
  n NUMBER; 
    
  --utility function 
  FUNCTION Centered_triangular_num(n IN NUMBER) 
    RETURN NUMBER 
  IS 
    z NUMBER; 
  BEGIN 
    
    --formula applying 
    z := (3 * n * n + 3 * n + 2) / 2; 
    RETURN z; 
  END; 
    
  --driver code 
  BEGIN 
    n := 3; 
    x := centered_triangular_num(n); 
    dbms_output.Put_line(x); 
    n := 12; 
    x := centered_trigunal_num(n); 
    dbms_output.Put_line(x); 
  END; 
  --End of program