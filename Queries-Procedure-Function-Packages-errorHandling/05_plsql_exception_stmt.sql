CREATE OR REPLACE PROCEDURE check_employee_info AUTHID DEFINER IS
  -- Declare variables
  stmt_no  POSITIVE;                  -- Tracks which statement is being executed
  emp_name VARCHAR2(200);             -- Holds the employee's full name
  emp_bonus NUMBER;                   -- Holds the employee's bonus
BEGIN
  -- Query 1: Fetch the name of an employee with a salary greater than 10000
  stmt_no := 1;  -- Indicate we are at the first query
  SELECT first_name || ' ' || last_name INTO emp_name
  FROM employees
  WHERE salary > 10000
  AND ROWNUM = 1;  -- Ensure only one row is fetched
  DBMS_OUTPUT.PUT_LINE('Employee with salary > 10000: ' || emp_name);

  -- Query 2: Fetch the bonus of an employee hired in the year 2022 (hire_date in DD-MON-YY format)
  stmt_no := 2;  -- Indicate we are at the second query
  SELECT bonus INTO emp_bonus
  FROM employees
  WHERE TO_CHAR(hire_date, 'YYYY') = '2022'  -- Extract the year from the hire_date
  AND ROWNUM = 1;  -- Ensure only one row is fetched
  DBMS_OUTPUT.PUT_LINE('Bonus of employee hired in 2022: ' || emp_bonus);

EXCEPTION
  -- Handle NO_DATA_FOUND exception
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No data found for query ' || stmt_no);

  -- Handle TOO_MANY_ROWS exception explicitly (though this won't occur with ROWNUM)
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Multiple rows returned in query ' || stmt_no);

  -- Handle any other unexpected exception
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred at query ' || stmt_no || ': ' || SQLERRM);

END;
/

-- Call the procedure to execute it
CALL check_employee_info();
