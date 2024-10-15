SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE pr_GreetingToSome IS
    var_name VARCHAR2(10) := 'Kalisa';
    var_web VARCHAR2(20) := 'technology.com';
    
BEGIN   

    DBMS_OUTPUT.PUT_LINE('What up internet? I am ' || var_name || ' from ' || var_web);
    
END pr_GreetingToSome;
/

--The EXEC command

EXEC pr_GreetingToSome;

--Anonymous PL/SQL block instead of the EXEC command

BEGIN
    pr_GreetingToSome;
END;
/