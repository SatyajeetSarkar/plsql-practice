set serveroutput on;
declare
begin
    update emp
    set sal = sal * 1.10;

    if SQL%ROWCOUNT = 0 then
        dbms_output.put_line('None of the salaries were updated');
    else
        dbms_output.put_line(
            'Salaries for ' || SQL%ROWCOUNT ||
            ' employees are updated in employee table'
        );
    end if;

    commit;
end;
/
