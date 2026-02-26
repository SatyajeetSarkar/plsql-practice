declare
	sal number;
begin
	sal := &sal;
	if (sal >= 50000) then
		dbms_output.put_line('Grade A');
	elsif (sal >= 30000) then
		dbms_output.put_line('Grade B');
	else
		dbms_output.put_line('Grade C');
	end if;
end;
/