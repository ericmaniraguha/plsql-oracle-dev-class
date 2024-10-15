DECLARE
    grade CHAR(1) := 'B'; -- Example grade
    message VARCHAR2(100); -- Variable to hold the message
BEGIN
    CASE grade
        WHEN 'A' THEN
            message := 'Excellent work!';
        WHEN 'B' THEN
            message := 'Good job!';
        WHEN 'C' THEN
            message := 'Fair performance.';
        WHEN 'D' THEN
            message := 'Needs improvement.';
        WHEN 'F' THEN
            message := 'Failed. Please try again.';
        ELSE
            message := 'Invalid grade.';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Message: ' || message);
END;
/
