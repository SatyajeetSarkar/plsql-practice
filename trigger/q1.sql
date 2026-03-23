/*
CREATE TABLE SALARY_LOG (
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    change_date DATE
);
*/

CREATE OR REPLACE TRIGGER try_salary_audit
BEFORE UPDATE OF salary ON EMPLOYEE
FOR EACH ROW
BEGIN
    INSERT INTO SALARY_LOG
    VALUES (:OLD.emp_id, :OLD.salary, :NEW.salary, SYSDATE);
END;
/