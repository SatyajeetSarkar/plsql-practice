/*
CREATE TABLE EMP_TABLE(
	emp_id number primary key,
	emp_name varchar2(100)
);
*/
set serveroutput on;
DECLARE
    v_name EMP_TABLE.emp_name%TYPE := '&name';
BEGIN
    FOR i IN 1..10 LOOP
        INSERT INTO EMP_TABLE(emp_id, emp_name)
        VALUES (i, v_name);
    END LOOP;
    COMMIT;
END;
/