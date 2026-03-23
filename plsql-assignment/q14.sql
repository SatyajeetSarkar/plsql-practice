set serveroutput on;
create or replace procedure emp_grade (
	dept_no in emp.deptno%TYPE
)
as
begin
	DBMS_OUTPUT.PUT_LINE('Grade   Emp_count');
    	
	for rec in (
		select s.grade, count(*) emp_count 
  		from emp e
  		join salgrade s on e.sal between s.losal and s.hisal
  		where e.deptno = dept_no
  		group by s.grade
  		order by s.grade
	)
	
	loop
		dbms_output.put_line(rec.grade || ' ' || rec.emp_count);
	end loop;
end;
/

/*
begin
  	emp_grade (20);
end;
/
*/