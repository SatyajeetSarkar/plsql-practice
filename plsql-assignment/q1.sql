set serveroutput on;
declare
	a number;
begin
	a := &a;
	if a>0 then
		dbms_output.put_line('Hello');
	end if;
end;
/