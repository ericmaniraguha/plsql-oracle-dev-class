
/* 
Define the Function
Function that calculates the total allowance for a specific employee:
*/
CREATE OR REPLACE FUNCTION get_total_allowance (
    p_employee_id NUMBER
) RETURN NUMBER IS
    v_total_allowance NUMBER := 0;
BEGIN
    -- Sum allowances for the given employee
    SELECT SUM(a.ALLOWANCE_AMOUNT) INTO v_total_allowance
    FROM ALLOWANCES a
    JOIN EMPLOYEES e ON a.ROLE_ID = e.ROLE_ID
    WHERE e.EMPLOYEE_ID = p_employee_id
    AND a.IS_APPLICABLE = 'Y'  -- Assuming 'Y' means applicable
    AND a.EFFECTIVE_DATE <= SYSDATE;  -- Only consider allowances effective today or earlier

    RETURN v_total_allowance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;  -- Return 0 if no allowances are found
    WHEN OTHERS THEN
        RAISE;  -- Reraise the exception for any other errors
END get_total_allowance;

/*
Step 2: Using the Function
Once the function is created, you can call it to get the total allowance for a specific employee:
*/
SELECT get_total_allowance(1) AS total_allowance FROM dual;  -- Replace '1' with actual employee ID


/*
I can use again the block to call my function
*/

DECLARE
    v_employee_id NUMBER := 1; -- Replace with the actual employee ID
    v_total_allowance NUMBER;   -- Variable to hold the total allowance
BEGIN
    -- Call the function and assign the result to the variable
    v_total_allowance := get_total_allowance(v_employee_id);
    
    -- Output the result
    DBMS_OUTPUT.PUT_LINE('Total Allowance for Employee ID ' || v_employee_id || ': ' || v_total_allowance);
END;
/


