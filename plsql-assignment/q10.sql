SET SERVEROUTPUT ON;

DECLARE
    sum_odd NUMBER := 0;
BEGIN
    FOR i IN 1..100 LOOP
        sum_odd := sum_odd + (2 * i - 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum: ' || sum_odd);
END;
/