SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 1500;  -- Initialize the variable 'v_salary' with a value of 1500
BEGIN
    -- Check if the salary is greater than 2000
    IF v_salary > 2000 THEN
        DBMS_OUTPUT.PUT_LINE('High Salary');  -- Output message indicating a high salary
    ELSE
        DBMS_OUTPUT.PUT_LINE('Low Salary');  -- Output message indicating a low salary
    END IF;  -- End of the IF statement
END;
/

