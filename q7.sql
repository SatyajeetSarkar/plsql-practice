declare
	num number := &num;
	rev number := 0;
begin
	while num > 0 loop
		rev := rev * 10 + (mod(num , 10));
		num := trunc(num / 10);
	end loop;
	dbms_output.put_line('Reverse: ' || rev);
end;
/