create or replace trigger trg_time_stamp
before update of price on product
for each row
begin
	:new.last_updated := sysdate;
end;
/