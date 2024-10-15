DECLARE
   l_num NUMBER;  -- Declare a variable to hold the salary
BEGIN
   -- Attempt to select salary for employee with ID 1001
   -- This SELECT INTO statement can raise exceptions like NO_DATA_FOUND or TOO_MANY_ROWS
   SELECT salary INTO l_num FROM employees WHERE employee_id = 1001;

EXCEPTION
   -- Handle the case where no employee is found with the specified ID
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No employee found with ID 1001');
   
   -- Handle the case where multiple employees are found with the same ID
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('More than one employee found with the same ID');
END;
