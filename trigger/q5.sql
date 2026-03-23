CREATE OR REPLACE TRIGGER trg_unique_email
BEFORE INSERT OR UPDATE ON STUDENT
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM STUDENT
    WHERE email = :NEW.email
    AND student_id != :NEW.student_id;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Email already exists');
    END IF;
END;
/