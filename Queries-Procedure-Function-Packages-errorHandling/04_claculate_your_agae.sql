/*
Create the Procedure: First, create the procedure in your database. 
You can do this using an SQL client (like SQL*Plus, Oracle SQL Developer, etc.) where you can run SQL commands.
*/
CREATE OR REPLACE PROCEDURE calculate_age IS
    today DATE := SYSDATE; 
    birthday DATE := TO_DATE('1990-01-01', 'YYYY-MM-DD'); 
    age NUMBER; 
BEGIN 
    age := FLOOR(MONTHS_BETWEEN(today, birthday) / 12); 
    DBMS_OUTPUT.PUT_LINE('Age: ' || age); 
END; 
/

SET SERVEROUTPUT ON; --Enable Output (if using SQL*Plus or SQL Developer):




BEGIN  --Call the Procedure: After creating the procedure, you can call it as follows:
    calculate_age; 
END; 
/

