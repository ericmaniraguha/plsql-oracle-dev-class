/*
PL/SQL block demonstrates how to define and use a record type to store and manipulate multiple 
values of different types (in this case, a student's ID, name, and grade). 
Here’s a breakdown of the code and how to execute it.
*/

DECLARE   
    -- Define a record type named student_t
    TYPE student_t IS RECORD (     
        id NUMBER,     
        name VARCHAR2(20),     
        grade CHAR(1)   
    );   
    
    -- Declare a variable of the record type
    student student_t; 
BEGIN   
    -- Assign values to the record fields
    student.id := 1;   
    student.name := 'Alice';   
    student.grade := 'A';      

    -- Output the values of the record fields
    DBMS_OUTPUT.PUT_LINE('Student ID: ' || student.id);   
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || student.name);   
    DBMS_OUTPUT.PUT_LINE('Student Grade: ' || student.grade); 
END; 
/
