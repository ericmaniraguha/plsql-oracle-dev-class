/* Let’s create a PL/SQL package in Oracle that interacts with an employee table. This package will include functionalities to:

Get employee details by ID.
Add a new employee.
Update an employee's details.
Delete an employee.
Step 1: Create the Employee Table
First, ensure you have an employee table. Here's a sample SQL command to create an employee table if you don't have one already:

*/

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(100),
    last_name VARCHAR2(100),
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    hire_date DATE,
    department_id NUMBER,
    role_id NUMBER
);


/*
Step 2: Create the Package Specification
Now, let's create the package specification, which declares the public procedures and functions.
*/

CREATE OR REPLACE PACKAGE employee_pkg AS
    -- Function to get employee details by ID
    FUNCTION get_employee(employee_id IN NUMBER) RETURN SYS_REFCURSOR;

    -- Procedure to add a new employee
    PROCEDURE add_employee(
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_hire_date IN DATE,
        p_department_id IN NUMBER,
        p_role_id IN NUMBER
    );

    -- Procedure to update an employee's details
    PROCEDURE update_employee(
        p_employee_id IN NUMBER,
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_hire_date IN DATE,
        p_department_id IN NUMBER,
        p_role_id IN NUMBER
    );

    -- Procedure to delete an employee
    PROCEDURE delete_employee(p_employee_id IN NUMBER);
END employee_pkg;
/


/*
Step 3: Create the Package Body
Next, let’s implement the logic for each of the procedures and functions in the package body.
*/

CREATE OR REPLACE PACKAGE BODY employee_pkg AS
    -- Function to get employee details by ID
    FUNCTION get_employee(employee_id IN NUMBER) RETURN SYS_REFCURSOR IS
        emp_cursor SYS_REFCURSOR;
    BEGIN
        OPEN emp_cursor FOR
            SELECT * FROM employees WHERE employee_id = employee_id;
        RETURN emp_cursor;
    END get_employee;

    -- Procedure to add a new employee
    PROCEDURE add_employee(
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_hire_date IN DATE,
        p_department_id IN NUMBER,
        p_role_id IN NUMBER
    ) IS
    BEGIN
        INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, department_id, role_id)
        VALUES (p_first_name, p_last_name, p_email, p_phone_number, p_hire_date, p_department_id, p_role_id);
    END add_employee;

    -- Procedure to update an employee's details
    PROCEDURE update_employee(
        p_employee_id IN NUMBER,
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2,
        p_hire_date IN DATE,
        p_department_id IN NUMBER,
        p_role_id IN NUMBER
    ) IS
    BEGIN
        UPDATE employees
        SET first_name = p_first_name,
            last_name = p_last_name,
            email = p_email,
            phone_number = p_phone_number,
            hire_date = p_hire_date,
            department_id = p_department_id,
            role_id = p_role_id
        WHERE employee_id = p_employee_id;
    END update_employee;

    -- Procedure to delete an employee
    PROCEDURE delete_employee(p_employee_id IN NUMBER) IS
    BEGIN
        DELETE FROM employees WHERE employee_id = p_employee_id;
    END delete_employee;
END employee_pkg;
/

/*
Step 4: Using the Package
You can now call the functions and procedures in your package as follows:

Example 1: Add a New Employee
*/

BEGIN
    employee_pkg.add_employee(
        p_first_name => 'John',
        p_last_name => 'Doe',
        p_email => 'john.doe@example.com',
        p_phone_number => '1234567890',
        p_hire_date => SYSDATE,
        p_department_id => 1,
        p_role_id => 1
    );
END;
/


/*
Example 2: Get Employee Details by ID
*/
DECLARE
    emp_cursor SYS_REFCURSOR;
    emp_record employees%ROWTYPE;  -- Record type to hold employee details
BEGIN
    emp_cursor := employee_pkg.get_employee(1);  -- Get employee with ID 1
    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_record.employee_id || ', Name: ' || emp_record.first_name || ' ' || emp_record.last_name);
    END LOOP;
    CLOSE emp_cursor;
END;
/
--Example 3: Update an Employee's Details

BEGIN
    employee_pkg.update_employee(
        p_employee_id => 1,
        p_first_name => 'Jane',
        p_last_name => 'Doe',
        p_email => 'jane.doe@example.com',
        p_phone_number => '0987654321',
        p_hire_date => SYSDATE,
        p_department_id => 2,
        p_role_id => 2
    );
END;
/


--Example 4: Delete an Employee
BEGIN
    employee_pkg.delete_employee(1);  -- Delete employee with ID 1
END;
/

/*
xplanation:
Package Specification: Declares the functions and procedures that can be called from outside the package.
Package Body: Contains the implementation of the declared functions and procedures.
Using the Package: Demonstrates how to call the package's procedures and functions to manage employee records.
Benefits of Using Packages:
Organization: Packages help to organize related procedures and functions together, making your code cleaner and more manageable.
Encapsulation: They hide the implementation details, exposing only what is necessary.
Performance: Once a package is loaded into memory, subsequent calls to its procedures or functions are faster.
*/

