SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor IS
        SELECT empno, sal
        FROM emp
        WHERE deptno = (
            SELECT deptno
            FROM dept
            WHERE dname = 'SALES'
        );

    v_empno emp.empno%TYPE;
    v_old_sal emp.sal%TYPE;
    v_new_sal emp.sal%TYPE;

BEGIN
    DBMS_OUTPUT.PUT_LINE('EmpNo   Old_Salary   New_Salary');
    DBMS_OUTPUT.PUT_LINE('--------------------------------');

    FOR rec IN emp_cursor LOOP
        v_empno := rec.empno;
        v_old_sal := rec.sal;
        v_new_sal := v_old_sal * 1.10;

        UPDATE emp
        SET sal = v_new_sal
        WHERE empno = rec.empno;

        DBMS_OUTPUT.PUT_LINE(
            v_empno || '      ' || v_old_sal || '      ' || v_new_sal
        );
    END LOOP;

    COMMIT;
END;
/