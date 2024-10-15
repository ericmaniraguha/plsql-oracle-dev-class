--This function computes the factorial of a given number using recursion.

CREATE OR REPLACE FUNCTION factorial_func (x NUMBER)
RETURN NUMBER
IS
    f NUMBER;  -- Local variable to hold the factorial result
BEGIN
    -- Base case: if x is 0, return 1 (because 0! = 1)
    IF x = 0 THEN
        f := 1;
    ELSE
        -- Recursive case: x * factorial of (x-1)
        f := x * factorial_func(x - 1);
    END IF;

    -- Return the result
    RETURN f;
END factorial_func;
/
--Option 1: Call in a PL/SQL Block
DECLARE
    num NUMBER := 5;          -- Input number for factorial calculation
    factorial_result NUMBER;   -- Variable to store the result
BEGIN
    -- Call the function and assign the result to factorial_result
    factorial_result := factorial_func(num);

    -- Output the result using DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is: ' || factorial_result);
END;
/
--Option 2: Call in a SQL Query
--SELECT factorial_func(5) AS factorial_result FROM dual;

SELECT factorial_func(5) AS factorial_result FROM dual;
