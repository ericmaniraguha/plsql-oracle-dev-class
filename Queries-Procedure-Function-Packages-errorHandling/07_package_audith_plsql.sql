-- Create a package named 'aa_pkg'
CREATE OR REPLACE PACKAGE aa_pkg AUTHID DEFINER IS
  -- Declare an associative array type 'aa_type', indexed by VARCHAR2(15), with INTEGER values
  TYPE aa_type IS TABLE OF INTEGER INDEX BY VARCHAR2(15);
END;
/

-- Create a procedure 'print_aa' that takes an associative array of type 'aa_pkg.aa_type' as a parameter
CREATE OR REPLACE PROCEDURE print_aa (
  aa aa_pkg.aa_type
) AUTHID DEFINER IS
  -- Declare a variable 'i' of type VARCHAR2(15) to hold the current key in the associative array
  i  VARCHAR2(15);
BEGIN
  -- Initialize 'i' with the first key in the associative array
  i := aa.FIRST;
 
  -- Loop through the associative array while the key 'i' is not NULL
  WHILE i IS NOT NULL LOOP
    -- Print the value corresponding to the key 'i' and the key itself using DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE (aa(i) || '  ' || i);
    
    -- Get the next key in the associative array
    i := aa.NEXT(i);
  END LOOP;
END;
/


-- Declare a block to test the package and procedure
DECLARE
  -- Declare a variable 'aa_var' of the associative array type defined in the 'aa_pkg' package
  aa_var  aa_pkg.aa_type;
BEGIN
  -- Assign values to the associative array using string keys ('zero', 'one', 'two')
  aa_var('zero') := 0;
  aa_var('one') := 1;
  aa_var('two') := 2;

  -- Call the 'print_aa' procedure to output the associative array values and keys
  print_aa(aa_var);
END;
/

