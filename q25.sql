declare
	cursor emp_cursor is (
		select *
		from (
			select empno, ename, sal, job, deptno
			from emp
			order by sal desc
		)
		where ROWNUM <= 5
	);
	v_empno emp.empno%TYPE;
	v_ename emp.ename%TYPE;
	v_sal emp.sal%TYPE;
	v_job emp.job%TYPE;
	v_deptno emp.deptno%TYPE;
begin
	open emp_cursor;
	loop
		fetch emp_cursor into v_empno, v_ename, v_sal, v_job, v_deptno;
		if emp_cursor%NOTFOUND then
			exit;
		end if;
		dbms_output.put_line(
			v_empno || ' ' || 
			v_ename || ' ' || 
			v_sal || ' ' || 
			v_job || ' ' || 
			v_deptno
		);
	end loop;
	close emp_cursor;
end;
/