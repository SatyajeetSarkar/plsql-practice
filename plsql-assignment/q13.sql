set serveroutput on;
create or replace procedure emp_dis(
	emp_no in emp.empno%TYPE,
	emp_name out emp.ename%TYPE,
	dept_name out dept.dname%TYPE
)
as
begin
	select emp.ename, dept.dname
	into emp_name, dept_name
	from emp
	join dept
	on emp.deptno = dept.deptno
	where emp.empno = emp_no;

	dbms_output.put_line('Name: ' || emp_name || ' | ' || 'Dept Name: ' || dept_name);
end;
/

/*

declare
	emp_name emp.ename%TYPE;
	dept_name dept.dname%TYPE;
begin
	emp_dis(7788, emp_name, dept_name);
end;
/
*/