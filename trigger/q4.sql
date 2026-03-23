create or replace trigger trg_emp_backup
after delete on employee
for each row
begin
	insert into employee_backup values (:old.emp_id, :old.name, :old.salary, :old.dept_id);
end;
/
	