set serveroutput on;
create or replace procedure emp_entry(
	emp_no in emp.empno%TYPE,
	emp_name in emp.ename%TYPE
)
as
begin
	insert into employe(empno, ename)
	values (emp_no, emp_name);
	
	commit;
	
	dbms_output.put_line('User successfully entered');
end;
/

/*
begin
	emp_entry(7777, 'Rohan');
end;
/
*/