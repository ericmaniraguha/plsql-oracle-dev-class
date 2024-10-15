/*

You can create a stored procedure in Oracle that performs UPDATE, DELETE, and INSERT (CREATE) operations on a table. For this example, let’s assume we are working with an employees table, and the procedure will allow performing any of these operations based on input parameters.

Here’s an example procedure that accepts parameters to either update an employee, delete an employee, or insert a new employee record:

Steps to Create the Procedure
Parameters:
p_action: Specifies the action to be performed (e.g., 'INSERT', 'UPDATE', 'DELETE').
Other parameters: employee_id, first_name, last_name, etc., that are used to update or insert values into the table.
Procedure Example
*/
CREATE OR REPLACE PROCEDURE manage_employee (
    p_action IN VARCHAR2,              -- Action to perform: 'INSERT', 'UPDATE', 'DELETE'
    p_employee_id IN NUMBER,            -- Employee ID
    p_first_name IN VARCHAR2 DEFAULT NULL,  -- First Name
    p_last_name IN VARCHAR2 DEFAULT NULL,   -- Last Name
    p_email IN VARCHAR2 DEFAULT NULL,       -- Email
    p_salary IN NUMBER DEFAULT NULL         -- Salary
)
IS
BEGIN
    -- Check the action type and perform the corresponding operation
    IF p_action = 'INSERT' THEN
        -- Insert new employee
        INSERT INTO employees (employee_id, first_name, last_name, email, salary)
        VALUES (p_employee_id, p_first_name, p_last_name, p_email, p_salary);

        DBMS_OUTPUT.PUT_LINE('Employee inserted successfully.');

    ELSIF p_action = 'UPDATE' THEN
        -- Update existing employee details
        UPDATE employees
        SET first_name = p_first_name,
            last_name = p_last_name,
            email = p_email,
            salary = p_salary
        WHERE employee_id = p_employee_id;

        DBMS_OUTPUT.PUT_LINE('Employee updated successfully.');

    ELSIF p_action = 'DELETE' THEN
        -- Delete employee
        DELETE FROM employees
        WHERE employee_id = p_employee_id;

        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully.');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid action specified. Use INSERT, UPDATE, or DELETE.');
    END IF;

    -- Commit changes to the database
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        -- Handle any exception that occurs and roll back changes
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END manage_employee;
/
/*
Explanation:
p_action: The action parameter specifies which operation will be performed. It can be 'INSERT', 'UPDATE', or 'DELETE'.
INSERT: Adds a new employee to the employees table.
UPDATE: Updates an employee’s information based on the provided employee_id.
DELETE: Deletes the employee whose ID is specified.
COMMIT: Commits the transaction to the database.
ROLLBACK: Rolls back the transaction in case of an error.
*/
    
/*
Running the Procedure
You can run this procedure in the following way based on the action you want to perform:

1. Insert an Employee
*/

BEGIN
    manage_employee('INSERT', 1001, 'John', 'Doe', 'john.doe@example.com', 50000);
END;
/

--Update an Employee
BEGIN
    manage_employee('UPDATE', 1001, 'Johnny', 'Doe', 'john.doe@example.com', 55000);
END;
/

--Delete an Employee
BEGIN
    manage_employee('DELETE', 1001);
END;
/
