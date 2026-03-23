-- Transaction using procedure

create or replace procedure amt_transaction (
	amount number,
	s_acc_no number,
	r_acc_no number
)

as
	s_balance number;
	r_status varchar(10);
	
	balance_error exception;
	user_inactive exception;
	transfer_failed exception;

begin
	-- check sender balance
	select balance
	into s_balance
	from bank
	where acc_no = s_acc_no;
	
	if s_balance < amount then
		raise balance_error;
	end if;


	-- check receiver status
	select status
	into r_status
	from bank where acc_no = r_acc_no;

	if r_status != 'active' then
		raise user_inactive;
	end if;


	-- update receiver bank balance
	update bank
	set balance = balance + amount
	where acc_no = r_acc_no;


	-- if receiver bank updated then update sender balance
	if sql%rowcount = 1 then
		update bank
		set balance = balance - amount
		where acc_no = s_acc_no;
		
		-- if sender bank updated then complete transfer
		if sql%rowcount = 1 then
			dbms_output.put_line('Transfer complete');
			commit;
		else
			raise transfer_failed;
		end if;
		
	else
		raise transfer_failed;
	end if;

exception
	when balance_error then
		rollback;
		dbms_output.put_line('Insufficient balance');

	when user_inactive then
		rollback;
		dbms_output.put_line('User inactive');
	
	when transfer_failed then
		rollback;
		dbms_output.put_line('Transfer failed');
	
	when others then
		rollback;
		dbms_output.put_line('Transaction failed');
end;