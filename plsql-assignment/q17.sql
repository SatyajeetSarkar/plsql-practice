set serveroutput on;
create or replace function calc_bonus (emp_no in number)
	return number
is
	salary number;
begin
	select sal*0.2
	into salary
	from emp
	where empno = emp_no;
	
	return salary;
end;
/

/*
declare
	bonus number;
begin
	bonus := calc_bonus (7369);
	dbms_output.put_line(bonus);
end;
/
*/
	