/*

Below is an example of a PL/SQL procedure that calculates tax for a purchase based on the purchase amount and the tax rate. 
I'll also show how to call the procedure after it's created.

PL/SQL Procedure to Calculate Tax for a Purchase:
*/


CREATE OR REPLACE PROCEDURE calculate_tax (
   p_purchase_amount IN NUMBER,   -- Input: Purchase amount
   p_tax_rate        IN NUMBER,   -- Input: Tax rate as a percentage (e.g., 10 for 10%)
   p_tax_amount      OUT NUMBER   -- Output: Calculated tax amount
) IS
BEGIN
   -- Check if purchase amount or tax rate is negative
   IF p_purchase_amount < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Error: Purchase amount cannot be negative.');
      p_tax_amount := 0;  -- Set tax amount to 0 if invalid
   ELSIF p_tax_rate < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Error: Tax rate cannot be negative.');
      p_tax_amount := 0;  -- Set tax amount to 0 if invalid
   ELSE
      -- Calculate the tax based on the purchase amount and tax rate
      p_tax_amount := (p_purchase_amount * p_tax_rate) / 100;
   END IF;
EXCEPTION
   -- Handle any unexpected errors
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An unexpected error occurred while calculating tax.');
      DBMS_OUTPUT.PUT_LINE('Error Code: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('Error Message: ' || SQLERRM);
      p_tax_amount := 0;  -- Set tax amount to 0 in case of an error
END calculate_tax;


/*
Example of Calling the Procedure:
*/

DECLARE
   v_tax_amount NUMBER;  -- Variable to hold the calculated tax amount
BEGIN
   -- Call the procedure and pass the purchase amount and tax rate
   calculate_tax(500, 10, v_tax_amount);  -- 500 is the purchase amount, 10% is the tax rate

   -- Output the calculated tax amount
   DBMS_OUTPUT.PUT_LINE('The calculated tax is: ' || v_tax_amount);
END;
