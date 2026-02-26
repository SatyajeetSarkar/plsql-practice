create or replace procedure show_emp (
	emp_id in emp.empno%TYPE,
	emp_name out emp.ename%TYPE,
	emp_sal out emp.sal%TYPE,
	dept_name out dept.dname%TYPE
)
as
begin
	select e.ename, e.sal, d.dname
	into emp_name, emp_sal, dept_name
  	from emp e
  	join dept d
  	on d.deptno = e.deptno
  	where e.empno = emp_id;
end;
/

/*
declare
	emp_id emp.empno%TYPE;
	emp_name emp.ename%TYPE;
	emp_sal emp.sal%TYPE;
	dept_name dept.dname%TYPE;
begin
  	show_emp(7369, emp_name, emp_sal, dept_name);
	dbms_output.put_line(emp_name);
	dbms_output.put_line(emp_sal);
	dbms_output.put_line(dept_name);
end;

*/