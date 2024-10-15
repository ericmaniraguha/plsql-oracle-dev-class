/*
PL/SQL Procedure for Calculating Bonus with Exception Handling
*/

CREATE OR REPLACE PROCEDURE calculate_bonus_again (
   p_employee_id   IN  NUMBER,   -- Input: Employee ID
   p_salary        IN  NUMBER,   -- Input: Employee Salary
   p_rating        IN  NUMBER,   -- Input: Employee Performance Rating
   p_bonus         OUT NUMBER    -- Output: Calculated Bonus
) IS
   e_invalid_rating EXCEPTION;   -- Declare a user-defined exception for invalid rating
BEGIN
   -- Check if the performance rating is within the valid range (e.g., 1 to 5)
   IF p_rating < 1 OR p_rating > 5 THEN
      RAISE e_invalid_rating;    -- Raise the exception if rating is not valid
   END IF;

   -- Calculate bonus based on rating and salary
   IF p_rating = 5 THEN
      p_bonus := p_salary * 0.20;  -- 20% bonus for top performers
   ELSIF p_rating = 4 THEN
      p_bonus := p_salary * 0.15;  -- 15% bonus for above-average performers
   ELSIF p_rating = 3 THEN
      p_bonus := p_salary * 0.10;  -- 10% bonus for average performers
   ELSIF p_rating = 2 THEN
      p_bonus := p_salary * 0.05;  -- 5% bonus for below-average performers
   ELSE
      p_bonus := 0;                -- No bonus for poor performers
   END IF;

EXCEPTION
   -- Handle division by zero errors (although it's unlikely in this case)
   WHEN ZERO_DIVIDE THEN
      DBMS_OUTPUT.PUT_LINE('Error: Division by zero occurred.');
      p_bonus := 0;  -- Default the bonus to zero in case of an error

   -- Handle invalid performance rating
   WHEN e_invalid_rating THEN
      DBMS_OUTPUT.PUT_LINE('Error: Invalid performance rating.');
      p_bonus := 0;  -- Default the bonus to zero if the rating is invalid

   -- Catch-all for any other unexpected errors
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: An unexpected error occurred.');
      DBMS_OUTPUT.PUT_LINE('Error Code: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('Error Message: ' || SQLERRM);
      p_bonus := 0;  -- Default the bonus to zero in case of an unexpected error
END calculate_bonus_again;

/*
Calling the Procedure
*/
DECLARE
   v_bonus NUMBER;  -- Variable to hold the calculated bonus
BEGIN
   -- Call the procedure and pass employee details
   calculate_bonus_again(10, 5000, 4, v_bonus);

   -- Output the calculated bonus
   DBMS_OUTPUT.PUT_LINE('The bonus is: ' || v_bonus);
END;

