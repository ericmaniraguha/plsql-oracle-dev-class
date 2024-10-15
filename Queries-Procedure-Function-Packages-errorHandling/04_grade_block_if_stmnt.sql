DECLARE
    score NUMBER := 75; -- Student's score
    grade CHAR(1); -- Variable to hold the grade
BEGIN
    IF score >= 90 THEN
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

    DBMS_OUTPUT.PUT_LINE('Grade: ' || grade);
END;
/
