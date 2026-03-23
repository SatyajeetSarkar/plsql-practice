set serveroutput on;
create or replace procedure emp_display(
	emp_no in emp.empno%TYPE,
	emp_name out emp.ename%TYPE,
	emp_job out emp.job%TYPE,
	emp_sal out emp.sal%TYPE
)
as
begin
	select ename, job, sal
	into emp_name, emp_job, emp_sal
	from emp
	where empno = emp_no;

	 DBMS_OUTPUT.PUT_LINE('Name: ' || emp_name);
    DBMS_OUTPUT.PUT_LINE(' Job: ' || emp_job);
    DBMS_OUTPUT.PUT_LINE(' Salary: ' || emp_sal);

end;
/

/*
DECLARE
    v_name emp.ename%TYPE;
    v_job  emp.job%TYPE;
    v_sal  emp.sal%TYPE;
BEGIN
    emp_display(7369, v_name, v_job, v_sal);
END;
/
*/

