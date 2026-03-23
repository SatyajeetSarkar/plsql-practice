set serveroutput on;
DECLARE
    a number;
BEGIN
    a := &a;
    IF a > 3000 THEN
        a := a + 500;
        dbms_output.put_line(a);
    END IF;
END;
/