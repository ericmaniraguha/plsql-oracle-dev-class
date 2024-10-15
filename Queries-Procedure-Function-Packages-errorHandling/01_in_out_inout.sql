
/*
Explanation:
a (IN): You pass a value into the procedure; in this case, it's just read (input only).
b (OUT): The procedure calculates and assigns a value to this parameter, and it’s returned to the calling program (output only).
c (IN OUT): The procedure receives an initial value for c (input), modifies it, and returns the updated value (output).
*/
/*
IN (a): Passed into the procedure, but not modified.
OUT (b): Calculated and returned by the procedure.
IN OUT (c): Passed in, modified, and then returned.
*/

CREATE OR REPLACE PROCEDURE calculate_values (
  a IN NUMBER ,     -- X (IN): Input parameter
  b OUT NUMBER,    -- Y (OUT): Output parameter
  c IN OUT NUMBER  -- Z (IN OUT): Input and Output parameter
) IS
BEGIN

  -- Use the IN parameter 'a' to calculate the OUT parameter 'b'
  b := a * 2;

  -- Modify the IN OUT parameter 'c'
  c := c + a;

  -- Log the results to DBMS_OUTPUT for testing purposes
  DBMS_OUTPUT.PUT_LINE('Input a (X): ' || a);
  DBMS_OUTPUT.PUT_LINE('Output b (Y): ' || b);
  DBMS_OUTPUT.PUT_LINE('Input-Output c (Z): ' || c);
END;
/

--Calling the Procedure in PL/SQL

DECLARE
  x NUMBER := 5;  -- IN: Value for 'a'
  y NUMBER;       -- OUT: Value for 'b'
  z NUMBER := 10; -- IN OUT: Initial value for 'c'
BEGIN
  -- Call the procedure and pass the values
  calculate_values(a => x, b => y, c => z);
  
  -- Output the results
  DBMS_OUTPUT.PUT_LINE('After procedure call:');
  DBMS_OUTPUT.PUT_LINE('x (IN): ' || x);
  DBMS_OUTPUT.PUT_LINE('y (OUT): ' || y);  -- This should be 'x * 2' => 10
  DBMS_OUTPUT.PUT_LINE('z (IN OUT): ' || z);  -- This should be 'z + a' => 15
END;
/
