CREATE OR REPLACE TRIGGER trg_emp_count
AFTER INSERT OR DELETE ON EMPLOYEE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE DEPARTMENT
        SET total_emp = total_emp + 1
        WHERE dept_id = :NEW.dept_id;

    ELSIF DELETING THEN
        UPDATE DEPARTMENT
        SET total_emp = total_emp - 1
        WHERE dept_id = :OLD.dept_id;
    END IF;
END;
/