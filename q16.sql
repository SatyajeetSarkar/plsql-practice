create or replace function count_emp_dept (dept_no in number)
	return number
is
	emp_count number;
begin
	select count(*)
	into emp_count
	from emp e
	join dept d
		on d.deptno = e.deptno
	where d.deptno = dept_no;

	return emp_count;
end;
/

/*
declare
	emp_count number;
begin
	emp_count := count_emp_dept (20);
	dbms_output.put_line(emp_count);
end;
*/