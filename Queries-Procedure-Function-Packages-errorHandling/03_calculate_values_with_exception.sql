/*
Procedure with Exception Handling
*/

CREATE OR REPLACE PROCEDURE calculate_values_with_exception(
    a IN NUMBER,      -- IN parameter
    b OUT NUMBER,     -- OUT parameter
    c IN OUT NUMBER   -- IN OUT parameter (no default value)
) AS
BEGIN
    -- Use the input value 'a' to calculate 'b' (OUT parameter)
    b := a * 2;  -- 'b' becomes 10 (for a = 5)

    -- Modify the input value 'c' (IN OUT parameter)
    c := c + a;  -- 'c' becomes the input value of 'c' + a

EXCEPTION
--    WHEN OTHERS THEN
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No data found for the given input.');
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('Division by zero error occurred.');
        WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        -- Optionally, you can set default values for output parameters in case of an error
        b := NULL;  -- Assign a default value to b
        c := NULL;  -- Assign a default value to c
END;
/

/*
Example of Calling the Procedure with Error Handling:
*/

DECLARE
  x NUMBER := 5;  -- IN: Value for 'a'
  y NUMBER;       -- OUT: Value for 'b'
  z NUMBER := 10; -- IN OUT: Initial value for 'c'
BEGIN
  -- Call the procedure and pass the values
  calculate_values_with_exception(a => x, b => y, c => z);
  
  -- Output the results
  DBMS_OUTPUT.PUT_LINE('After procedure call:');
  DBMS_OUTPUT.PUT_LINE('x (IN): ' || x);
  DBMS_OUTPUT.PUT_LINE('y (OUT): ' || y);  -- This should be 'x * 2' => 10
  DBMS_OUTPUT.PUT_LINE('z (IN OUT): ' || z);  -- This should be 'z + a' => 15
EXCEPTION
  WHEN OTHERS THEN
  
  
    DBMS_OUTPUT.PUT_LINE('An error occurred during the procedure call: ' || SQLERRM);
END;
/
