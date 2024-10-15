SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE my_first_procedure
AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World!');
    
END;

-----RUND MY PROCEDURE

BEGIN 
my_first_procedure;
END;