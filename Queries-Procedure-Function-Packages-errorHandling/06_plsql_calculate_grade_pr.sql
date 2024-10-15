/*
Procedure with Exception Handling for Grading
*/

CREATE OR REPLACE PROCEDURE calculate_grade_pr (
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
END;
/

/*
Calling the procedure
You can call the procedure in an anonymous PL/SQL block to test it:
*/
DECLARE
    student_score NUMBER := 75;  -- Student's score
    student_grade CHAR(1);        -- Variable to hold the grade
BEGIN
    -- Call the procedure to calculate the grade
    calculate_grade(student_score, student_grade);
    
    -- Output the result
    DBMS_OUTPUT.PUT_LINE('Student Score: ' || student_score);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || student_grade);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred during the grade calculation: ' || SQLERRM);
END;
/


