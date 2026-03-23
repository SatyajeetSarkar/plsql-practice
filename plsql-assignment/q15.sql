set serveroutput on;
create or replace function total_salary_dept (dept_name varchar2)
	return number
is
	salary number;
begin
	select sum(e.sal)
	into salary 
	from emp e
	join dept d
	on d.deptno = e.deptno
	where d.dname = dept_name;

	return salary;
end;
/

/*

declare
	salary number;
begin
	salary := total_salary_dept('SALES');
	dbms_output.put_line(salary);
end;
/
*/