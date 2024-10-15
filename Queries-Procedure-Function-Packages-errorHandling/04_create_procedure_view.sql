CREATE OR REPLACE PROCEDURE create_employee_view
IS
BEGIN
   -- Use dynamic SQL to create the view
   EXECUTE IMMEDIATE '
      CREATE OR REPLACE VIEW employee_view AS
      SELECT 
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
      FROM EMPLOYEES';
   
   -- Optional: Print confirmation
   DBMS_OUTPUT.PUT_LINE('View "employee_view" created successfully.');
END;
/


--Execute the Procedure:

SET SERVEROUTPUT ON;

-- Call the procedure to create the view
BEGIN
   create_employee_view;
END;
/
--View Procedure values

SELECT * FROM employee_view;
