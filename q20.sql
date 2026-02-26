create or replace function calculate_age (p_emp_id in number)
	return number
is
	dob emp.hiredate%TYPE;
	age number;
begin
	select hiredate
	into dob
	from emp
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
*/
