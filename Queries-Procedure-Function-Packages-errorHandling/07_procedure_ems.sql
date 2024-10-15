-- Create the package specification
CREATE OR REPLACE PACKAGE employee_management_pkg AS
    FUNCTION calculate_bonus(salary IN NUMBER) RETURN NUMBER;  -- Function parameter
    PROCEDURE adjust_employee_salary(emp_id IN NUMBER, salary IN OUT NUMBER, new_salary OUT NUMBER); -- Procedure parameters
END employee_management_pkg;
/


-- Create the package body
CREATE OR REPLACE PACKAGE BODY employee_management_pkg AS
    -- Function to calculate bonus (10% of salary)
    FUNCTION calculate_bonus(salary IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN salary * 0.1; -- 10% bonus
    END calculate_bonus;

    -- Procedure to adjust the employee's salary and bonus
    PROCEDURE adjust_employee_salary(emp_id IN NUMBER, salary IN OUT NUMBER, new_salary OUT NUMBER) IS
        v_bonus NUMBER; -- Variable to hold calculated bonus
    BEGIN
        -- Check if the employee exists and fetch the current salary
        SELECT SALARY INTO salary 
        FROM EMPLOYEES 
        WHERE EMPLOYEE_ID = emp_id;

        -- Logic for adjusting salary
        IF salary < 50000 THEN
            v_bonus := calculate_bonus(salary); -- Calculate bonus
            salary := salary + v_bonus; -- Increase salary by bonus
        ELSE
            salary := salary + 5000; -- Fixed increment for high earners
        END IF;

        new_salary := salary; -- Assign updated salary

        -- Update the employee's salary in the database
        UPDATE EMPLOYEES SET SALARY = salary WHERE EMPLOYEE_ID = emp_id;

        DBMS_OUTPUT.PUT_LINE('Updated salary for employee ID ' || emp_id || ' is ' || new_salary);
        
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Employee with ID ' || emp_id || ' not found.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
    END adjust_employee_salary;
END employee_management_pkg;
/

/*
Testing
*/

DECLARE
    v_salary NUMBER;      -- Variable for current salary
    v_new_salary NUMBER;  -- Variable for new salary after adjustment
BEGIN
    v_salary := 45000; -- Example salary
    employee_management_pkg.adjust_employee_salary(2, v_salary, v_new_salary); -- Adjusting salary for employee ID 101
END;
/
