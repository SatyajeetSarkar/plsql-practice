create or replace trigger salary_prevent
before update of salary on EMPLOYEE
for each row
begin 
    if :new.salary < :old.salary then
        raise_application_error('Salary cannot be decreased');
    end if;
end;
/