declare
	cursor emp_cursor is (select ename, sal from emp);
	v_name emp.ename%TYPE;
	v_sal emp.sal%TYPE;
begin
	open emp_cursor;
		loop
			fetch emp_cursor into v_name, v_sal;
			if emp_cursor%NOTFOUND then
				exit;
			end if;
			dbms_output.put_line(v_name|| ' ' || v_sal);
		end loop;
	close emp_cursor;
end;
/
 