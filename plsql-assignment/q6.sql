set serveroutput on;
DECLARE
    v_emp_name   emp.ename%TYPE;
    v_emp_salary emp.sal%TYPE;
    v_emp_id     emp.empno%TYPE := &input_id; 
BEGIN
    SELECT ename, sal
    INTO v_emp_name, v_emp_salary
    FROM emp
    WHERE empno = v_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_emp_name || ' | Salary: ' || v_emp_salary);
END;
/