CREATE OR REPLACE PROCEDURE get_employee_details
IS
    -- Define a custom exception (optional, based on your business logic)
    employee_not_found EXCEPTION;
    -- You can declare variables here if needed
BEGIN
    -- Retrieve and display the selected columns from the EMPLOYEES table
    FOR rec IN (SELECT 
                  SALARY,
                  BONUS,
                  EMPLOYEE_ID,
                  FIRST_NAME,
                  LAST_NAME,
                  EMAIL,
                  PHONE_NUMBER,
                  ADDRESS,
                  HIRE_DATE,
                  DEPARTMENT_ID,
                  ROLE_ID
               FROM EMPLOYEES)
    LOOP
        -- Display the selected columns for each employee
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE_ID: ' || rec.EMPLOYEE_ID || ', FIRST_NAME: ' || rec.FIRST_NAME || ', LAST_NAME: ' || rec.LAST_NAME || ', EMAIL: ' || rec.EMAIL);
    END LOOP;
    
    -- Raise an exception if no employees were found (optional custom exception logic)
    -- This assumes your table is never empty. If it's possible to have no rows, handle accordingly.
    IF SQL%ROWCOUNT = 0 THEN
        RAISE employee_not_found;
    END IF;

EXCEPTION
    -- Handle the custom employee_not_found exception
    WHEN employee_not_found THEN
        DBMS_OUTPUT.PUT_LINE('No employees found in the EMPLOYEES table.');
    
    -- Handle a generic exception if something unexpected occurs
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/


--To call the procedure:

SET SERVEROUTPUT ON;

-- Call the procedure
BEGIN
   get_employee_details;
END;
/
