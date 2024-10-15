/*
Collections: 
These are composite data types that store multiple values of the same type. 
PL/SQL supports associative arrays, nested tables, and varrays. Various methods and operators can be used for manipulating collection elements.
*/
DECLARE   
    -- Define a nested table type named numbers_t to hold a collection of NUMBER values
    TYPE numbers_t IS TABLE OF NUMBER;   
    
    -- Declare a variable 'numbers' of type 'numbers_t' and initialize it with three elements (1, 2, 3)
    numbers numbers_t := numbers_t(1, 2, 3); 
BEGIN   
    -- Extend the collection to accommodate one more element
    numbers.EXTEND;   
    
    -- Assign a value to the newly added element (4) at index 4
    numbers(4) := 4;      
    
    -- Loop through all elements in the collection from the first to the last index
    FOR i IN numbers.FIRST .. numbers.LAST LOOP     
        -- Output the current index and the corresponding value from the collection
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || numbers(i));      
    END LOOP; 
END; 
/
