declare
    cursor emp_cursor is
        select empno, sal
        from emp
        where deptno = (
            select deptno
            from dept
            where dname = 'SALES'
        );

    v_empno emp.empno%TYPE;
    old_sal emp.sal%TYPE;
    new_sal emp.sal%TYPE;
begin
    open emp_cursor;

    dbms_output.put_line('EmpNo  Old_Salary  New_Salary');
    dbms_output.put_line('----------------------------');

    loop
        fetch emp_cursor into v_empno, old_sal;
        exit when emp_cursor%NOTFOUND;

        new_sal := old_sal * 1.10;

        dbms_output.put_line(
            v_empno || '     ' ||
            old_sal || '        ' ||
            new_sal
        );

        update emp
        set sal = new_sal
        where empno = v_empno;
    end loop;

    close emp_cursor;
    commit;
end;
/
