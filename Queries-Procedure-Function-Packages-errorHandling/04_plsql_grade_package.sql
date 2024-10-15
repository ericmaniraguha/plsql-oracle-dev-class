/*
Step 1: Create the Package Specification
The package specification defines the public interface of the package, including the procedure for calculating grades.
*/
CREATE OR REPLACE PACKAGE grade_package AS
    -- Declaration of the procedure
    PROCEDURE calculate_grade_pr (
        score IN NUMBER,      -- Input parameter for the score
        grade OUT CHAR       -- Output parameter for the grade
    );
END grade_package;
/

/*
Step 2: Create the Package Body
The package body contains the implementation of the procedures declared in the specification.
*/

CREATE OR REPLACE PACKAGE BODY grade_package AS

    PROCEDURE calculate_grade_pr (
        score IN NUMBER,      -- Input parameter for the score
        grade OUT CHAR       -- Output parameter for the grade
    ) AS
    BEGIN
        -- Check for valid score input
        IF score < 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Score cannot be negative.');
        ELSIF score >= 90 THEN
            grade := 'A';
        ELSIF score >= 80 THEN
            grade := 'B';
        ELSIF score >= 70 THEN
            grade := 'C';
        ELSIF score >= 60 THEN
            grade := 'D';
        ELSE
            grade := 'F';
        END IF;

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
            grade := 'X';  -- Assign an invalid grade in case of an error
    END calculate_grade_pr;

END grade_package;
/

/*
Step 3: Calling the Procedure from the Package
You can call the procedure defined in the package in an anonymous PL/SQL block as follows:
*/
DECLARE
    student_score NUMBER := 75;  -- Student's score
    student_grade CHAR(1);        -- Variable to hold the grade
BEGIN
    -- Call the procedure to calculate the grade from the package
    grade_package.calculate_grade_pr(student_score, student_grade);
    
    -- Output the result
    DBMS_OUTPUT.PUT_LINE('Student Score: ' || student_score);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || student_grade);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred during the grade calculation: ' || SQLERRM);
END;
/

