/*
-- Defines the structure of an allowance record. Each field corresponds to a column in the returned output.

*/
CREATE OR REPLACE TYPE allowance_record AS OBJECT (
    ALLOWANCE_ID NUMBER,
    ALLOWANCE_AMOUNT NUMBER,
    EFFECTIVE_DATE DATE
);
/*
-- Defines a collection type that holds multiple instances of the allowance_record object type, 
enabling the pipeline function to return multiple records.
*/


CREATE OR REPLACE TYPE allowance_table AS TABLE OF allowance_record;

/*
Creating the Pipeline Table Function:

-- Defines the pipeline table function that returns a collection of allowance records. 
-- It retrieves employee allowances based on the provided EMPLOYEE_ID, assuming that the EMPLOYEES table contains a ROLE_ID for joining with the ALLOWANCES table.

*/

CREATE OR REPLACE FUNCTION get_employee_allowances (
    p_employee_id NUMBER  -- Parameter to accept the employee ID
) RETURN allowance_table PIPELINED IS
BEGIN
    -- Loop through the allowances for the specified employee
    FOR r IN (
        SELECT a.ALLOWANCE_ID, a.ALLOWANCE_AMOUNT, a.EFFECTIVE_DATE
        FROM ALLOWANCES a
        JOIN EMPLOYEES e ON a.ROLE_ID = e.ROLE_ID  -- Joining ALLOWANCES with EMPLOYEES using ROLE_ID
        WHERE e.EMPLOYEE_ID = p_employee_id       -- Filtering by the provided employee ID
        AND a.IS_APPLICABLE = 'Y'                 -- Only consider applicable allowances
        AND a.EFFECTIVE_DATE <= SYSDATE           -- Only include allowances that are currently effective
    ) LOOP
        -- Pipe each allowance record into the output collection
        PIPE ROW(allowance_record(r.ALLOWANCE_ID, r.ALLOWANCE_AMOUNT, r.EFFECTIVE_DATE));
    END LOOP;

    RETURN; -- Implicitly return at the end of the function
END get_employee_allowances;
/


/*
Querying the Pipeline Function
-- Use the TABLE() operator to query the results from the pipeline function, which returns a set of allowance records for the specified employee ID.

*/

SELECT *
FROM TABLE(get_employee_allowances(11));  -- Replace '101' with the desired employee ID

/*
Summary
This syntax outlines how to create a pipeline table function in Oracle PL/SQL, 
which can be a powerful tool for returning sets of data efficiently. 
If you need more specific examples or have any questions, feel free to ask!

*/



