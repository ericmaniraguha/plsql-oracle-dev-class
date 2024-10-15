--This procedure will accept the number of rows for the triangle and print the pattern.

CREATE OR REPLACE PROCEDURE draw_triangle_pattern (p_rows IN NUMBER)
IS
BEGIN
    -- Loop through each row
    FOR i IN 1..p_rows LOOP
        -- Inner loop to print '*' characters
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('*');
        END LOOP;
        
        -- Move to the next line after each row
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END draw_triangle_pattern;
/

--Step 2: Call the Procedure 
BEGIN
    draw_triangle_pattern(5);  -- Call the procedure with 5 rows
END;
/
