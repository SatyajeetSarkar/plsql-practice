set serveroutput on;
create or replace function calculate_age (p_emp_id in number)
	return number
is
	dob employ.dob%TYPE;
	age number;
begin
	select dob
	into dob
	from employ
	where empno = p_emp_id;
	
	age := trunc(months_between(sysdate, dob) / 12);
		
	return age;
end;
/

/*
declare
	age number;
begin
	age := calculate_age (7369);
	dbms_output.put_line(age);
end;
/
*/
