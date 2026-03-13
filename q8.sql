DECLARE
	a int;
BEGIN
	a := &a;
	CASE a
		when 10 then dbms_output.put_line('Finance');
		when 20 then dbms_output.put_line('HR');
		when 30 then dbms_output.put_line('IT');
		when 40 then dbms_output.put_line('Sales');
		else dbms_output.put_line('Invalid Department');
	END CASE;
END;
/