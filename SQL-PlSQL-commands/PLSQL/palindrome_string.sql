DECLARE 
    s VARCHAR2(10) := 'abccba'; 
    l VARCHAR2(20); 
    t VARCHAR2(10); 
BEGIN 
    FOR i IN REVERSE 1..Length(s) LOOP 
        l := Substr(s, i, 1); 
  
        t := t 
             ||'' 
             ||l; 
    END LOOP; 
  
    IF t = s THEN 
      dbms_output.Put_line(t 
                           ||'' 
                           ||' is palindrome'); 
    ELSE 
      dbms_output.Put_line(t 
                           ||'' 
                           ||' is not palindrome'); 
    END IF; 
END; 
  
-- Program End 