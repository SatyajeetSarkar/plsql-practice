set serveroutput on;
create or replace function total_salary_dept (dept_no number)
	return number
is
	salary number;
begin
	select sum(sal)
	into salary 
	from emp
	where deptno = dept_no;

	return salary;
end;
/

/*

declare
	salary number;
begin
	salary := total_salary_dept(20);
	dbms_output.put_line(salary);
end;
/
*/