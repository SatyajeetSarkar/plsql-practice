create or replace procedure hello_t (
	e_id in emp.empno%TYPE,
	e_name out emp.empno%TYPE,
	e_job out emp.empno%TYPE
)

as
begin
	select ename, job into e_name, e_job from emp where empno = e_id;
	dbms_output.put_line('Emp Name:' || e_name);
	dbms_output.put_line('Emp Name:' || e_job);
end hello_t;
/
	