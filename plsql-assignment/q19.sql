set serveroutput on;
create or replace procedure show_emp (
	emp_id in emp.empno%TYPE,
	pct in emp.sal%TYPE
)
as
begin
	update emp
	set sal = sal + (sal * ( pct / 100 ))
	where empno = emp_id;
	
	commit;
	
end show_emp;
/

/*
declare
	emp_id emp.empno%TYPE;
	pct emp.sal%TYPE;
begin
  	show_emp(7369, 20);
	select sal into pct from emp where empno = 7369;
	dbms_output.put_line(pct);
end;
/
*/