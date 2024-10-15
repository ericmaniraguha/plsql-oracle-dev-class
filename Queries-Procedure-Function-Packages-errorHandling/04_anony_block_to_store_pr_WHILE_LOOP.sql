/*
  1. Anonymous Block with Comments: using while loop
*/

DECLARE
  -- Declare a variable 'x' of type NUMBER and initialize it with the value 1
  x NUMBER := 1;
BEGIN
  -- Start the WHILE loop, which will continue as long as x is less than or equal to 10
  WHILE x <= 10 LOOP
    -- Output the current value of 'x' using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('x = ' || x);
    
    -- Increment 'x' by 1
    x := x + 1;
  END LOOP;
END;
/

/*
 2. Stored Procedure Version:
*/
-- Create a procedure to print numbers from 1 to 10 using a WHILE loop
CREATE OR REPLACE PROCEDURE print_numbers IS
  -- Declare a variable 'x' of type NUMBER and initialize it with the value 1
  x NUMBER := 1;
BEGIN
  -- Start the WHILE loop, which will continue as long as x is less than or equal to 10
  WHILE x <= 10 LOOP
    -- Output the current value of 'x' using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('x = ' || x);
    
    -- Increment 'x' by 1
    x := x + 1;
  END LOOP;
END;
/

-- Call the procedure
BEGIN
  print_numbers;
END;
/
