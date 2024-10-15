/*
    Updated PL/SQL Package
    1. Define procedures and functions based on the new tables.
    2. Use appropriate column names from the new structure.
    3. Include necessary parameters for handling allowances and attendance if needed.
    
Updated PL/SQL Package
*/

CREATE OR REPLACE PACKAGE emp_mgmt AS
    -- Procedure to add a new employee to the EMPLOYEES table
    PROCEDURE add_employee(
        p_first_name     VARCHAR2,  -- First name of the employee
        p_last_name      VARCHAR2,  -- Last name of the employee
        p_email          VARCHAR2,  -- Email address of the employee
        p_phone_number    VARCHAR2,  -- Phone number of the employee
        p_address        VARCHAR2,  -- Residential address of the employee
        p_hire_date      DATE,      -- Hire date of the employee
        p_department_id  NUMBER,    -- Department ID the employee belongs to
        p_role_id        NUMBER,    -- Role ID of the employee
        p_salary         NUMBER      -- Salary of the employee
    );

    -- Function to retrieve the department name based on employee ID
    FUNCTION get_department(
        p_emp_id NUMBER  -- Employee ID for which to retrieve the department name
    ) RETURN VARCHAR2;  -- Returns the department name

    -- Additional procedures/functions can be added here as needed
END emp_mgmt;
/

/*
Package Body 
*/

CREATE OR REPLACE PACKAGE BODY emp_mgmt AS

    -- Implementation of the procedure to add a new employee
    PROCEDURE add_employee(
        p_first_name     VARCHAR2,  -- First name of the employee
        p_last_name      VARCHAR2,  -- Last name of the employee
        p_email          VARCHAR2,  -- Email address of the employee
        p_phone_number    VARCHAR2,  -- Phone number of the employee
        p_address        VARCHAR2,  -- Residential address of the employee
        p_hire_date      DATE,      -- Hire date of the employee
        p_department_id  NUMBER,    -- Department ID the employee belongs to
        p_role_id        NUMBER,    -- Role ID of the employee
        p_salary         NUMBER      -- Salary of the employee
    ) IS
    BEGIN
        -- Insert the new employee record into the EMPLOYEES table
        INSERT INTO employees (
            first_name, 
            last_name, 
            email, 
            phone_number, 
            address, 
            hire_date, 
            department_id, 
            role_id, 
            salary
        ) VALUES (
            p_first_name, 
            p_last_name, 
            p_email, 
            p_phone_number, 
            p_address, 
            p_hire_date, 
            p_department_id, 
            p_role_id, 
            p_salary
        );
    END add_employee;

    -- Implementation of the function to retrieve the department name
    FUNCTION get_department(p_emp_id NUMBER) RETURN VARCHAR2 IS
        v_department_name VARCHAR2(100);  -- Variable to hold the department name
    BEGIN
        -- Retrieve the department name based on the employee's department ID
        SELECT department_name 
        INTO v_department_name 
        FROM departments 
        WHERE department_id = (
            SELECT department_id 
            FROM employees 
            WHERE employee_id = p_emp_id
        );
        RETURN v_department_name;  -- Return the retrieved department name
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Handle case where no department is found for the given employee ID
            RETURN NULL;  
    END get_department;

END emp_mgmt;
/


/*
Using the Package
*/

BEGIN
    -- Adding a new employee named John Doe with specific details
    emp_mgmt.add_employee(
        p_first_name     => 'John', 
        p_last_name      => 'Doe', 
        p_email          => 'john.doe@example.com', 
        p_phone_number   => '123-456-7890', 
        p_address        => '123 Elm Street, Cityville', 
        p_hire_date      => TO_DATE('2023-06-15', 'YYYY-MM-DD'), 
        p_department_id  => 3,  -- Assuming 3 is the department ID for IT
        p_role_id        => 5,    -- Assuming 5 is the role ID for Software Engineer
        p_salary         => 65000 -- Salary amount in the local currency
    );
END;
/

/*
Retrieving the Department Name for an Employee
To get the department name for a specific employee based on their employee ID, 
you can call the get_department function. Below is an example of how to use the function.
*/

DECLARE
    v_dept_name VARCHAR2(100);  -- Variable to hold the department name
BEGIN
    -- Get the department name for employee with ID 1001
    v_dept_name := emp_mgmt.get_department(p_emp_id => 3);
    
    -- Display the result
    DBMS_OUTPUT.PUT_LINE('Department Name: ' || v_dept_name);
END;
/

/*
Testing the my query
*/

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 3;
