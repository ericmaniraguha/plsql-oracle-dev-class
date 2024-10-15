/*
Creating a Pipelined Function in Oracle
Overview:
Pipelined functions in Oracle allow you to process and return rows incrementally, which is particularly useful for handling large datasets. 
Below are the steps to create a pipelined function that generates a sequence of numbers.
*/

/*
Steps to Create a Pipelined Function
1. Create a Custom Collection Type
Define a collection type that will serve as the return type for the pipelined function.
*/

CREATE OR REPLACE TYPE num_array AS TABLE OF NUMBER;
/

/*
 2. Create the Pipelined Function
Define the pipelined function that generates a sequence of numbers.
*/


CREATE OR REPLACE FUNCTION gen_numbers(n IN NUMBER DEFAULT NULL)
RETURN num_array PIPELINED
AS
BEGIN
   FOR i IN 1 .. NVL(n, 999999999) LOOP
      PIPE ROW(i); -- Outputs each number as a row
   END LOOP;
   RETURN; -- This is optional in pipelined functions
END;
/

/*
PIPELINED: This keyword allows the function to return rows as they are generated.
PIPE ROW(i): This statement outputs the current value of i as a row.
 3. Using the Pipelined Function
You can use the function in a SQL query like a regular table. For example, to generate 10 rows:
*/

SELECT * FROM TABLE(gen_numbers(10));