DECLARE
    v_name     VARCHAR2(50);
BEGIN
    -- Attempt to select a name, assuming it might raise an exception
    SELECT first_name
    INTO v_name
    FROM employees
    WHERE employee_id = 1000;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with the given ID.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found with the given ID.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

