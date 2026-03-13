DECLARE
    CURSOR c_emp IS
        SELECT empno, ename, job
        FROM emp
        WHERE job IN ('MANAGER', 'ANALYST');
BEGIN
        FOR r IN c_emp LOOP
                DBMS_OUTPUT.PUT_LINE(r.empno || ' ' || r.ename || ' ' || r.job);
    END LOOP;
END;
/