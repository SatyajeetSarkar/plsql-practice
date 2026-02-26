create or replace procedure emp_procedure (
	emp_no in emp.empno%TYPE,
	emp_name out emp.ename%TYPE,
	d_name out emp.job%TYPE
)
as
begin
	select ename, job
	into emp_name, d_name
	from emp
	where empno = emp_no;
end;
/

/*
declare
	emp_name emp.ename%TYPE;
	d_name emp.job%TYPE;
begin
  	emp_procedure(7369, emp_name, d_name);
	dbms_output.put_line(emp_name);
	dbms_output.put_line(d_name);
end;
/
*/