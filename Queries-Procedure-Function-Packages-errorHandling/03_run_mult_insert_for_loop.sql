/*
Steps to resolve this issue:
Ensure all the custom types are defined before the procedure: Make sure that the types emp_fname_t, 
emp_lname_t, emp_email_t, and emp_salary_t are created successfully before compiling the procedure.
*/


-- Define the collection types first
/*
CREATE OR REPLACE TYPE emp_id_t IS TABLE OF NUMBER;
/
*/
CREATE OR REPLACE TYPE emp_fname_t IS TABLE OF VARCHAR2(100);
/
CREATE OR REPLACE TYPE emp_lname_t IS TABLE OF VARCHAR2(100);
/
CREATE OR REPLACE TYPE emp_email_t IS TABLE OF VARCHAR2(100);
/
CREATE OR REPLACE TYPE emp_salary_t IS TABLE OF NUMBER;
/

/*
Re-create the procedure after making sure the types are created successfully.
If you are skipping the p_employee_ids since the employee_id is auto-generated, the procedure should look like this:
*/

-- Updated procedure to handle employee records without manually inserting employee_id
CREATE OR REPLACE PROCEDURE manage_employee_bulk (
    p_first_names IN emp_fname_t,       -- Array of first names
    p_last_names IN emp_lname_t,        -- Array of last names
    p_emails IN emp_email_t,            -- Array of emails
    p_salaries IN emp_salary_t          -- Array of salaries
)
IS
BEGIN
    -- Loop through the collection and perform insert for each record
    FOR i IN 1 .. p_first_names.COUNT LOOP
        BEGIN
            -- Insert a new employee record without specifying employee_id
            INSERT INTO employees (first_name, last_name, email, salary)
            VALUES (p_first_names(i), p_last_names(i), p_emails(i), p_salaries(i));

            DBMS_OUTPUT.PUT_LINE('Employee ' || p_first_names(i) || ' inserted successfully.');
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error occurred while inserting employee: ' || SQLERRM);
        END;
    END LOOP;

    -- Commit the transaction
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        -- Handle other exceptions and rollback in case of an error
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END manage_employee_bulk;
/

/*
Next Steps:
Check if the types exist: Run SELECT * FROM USER_TYPES; 
to verify that the types emp_fname_t, emp_lname_t, emp_email_t, and emp_salary_t are created and available.

If types are missing, re-create them using the type definitions provided above, and then recompile the procedure.

*/
SELECT * FROM USER_TYPES;