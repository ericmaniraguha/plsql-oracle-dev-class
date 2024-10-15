/*
 1. This approach is called PLSQL Block
*/

DECLARE
  -- Declare a variable 'x' of type NUMBER and initialize it with the value 1
  x NUMBER := 1;
BEGIN
  -- Start the loop
  LOOP
    -- Output the current value of 'x' using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('x = ' || x);
    
    -- Increment 'x' by 1
    x := x + 1;
    
    -- Exit the loop when 'x' is greater than 10
    EXIT WHEN x > 10;
  END LOOP;
END;
/


/*
2. Transfrom the previous PLSQL Block in Store procedure
*/

-- Create a procedure to loop through numbers 1 to 10
CREATE OR REPLACE PROCEDURE print_loop IS
  -- Declare the variable x
  x NUMBER := 1;
BEGIN
  -- Start the loop
  LOOP
    -- Print the current value of x
    DBMS_OUTPUT.PUT_LINE('x = ' || x);
    
    -- Increment x by 1
    x := x + 1;
    
    -- Exit the loop when x exceeds 10
    EXIT WHEN x > 10;
  END LOOP;
END;
/

-- Call the procedure
BEGIN
  print_loop;
END;
/
