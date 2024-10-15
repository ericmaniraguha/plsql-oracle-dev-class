/*
1. Example of a PL/SQL Block with Exception Handling:
*/

DECLARE
    v_divisor   NUMBER := 0;
    v_result    NUMBER;
BEGIN
    -- Example of code that can raise an exception
    v_result := 10 / v_divisor;

EXCEPTION
    -- Handling a specific predefined exception (division by zero)
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero occurred.');
    
    -- Handling any other unknown exception
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;

