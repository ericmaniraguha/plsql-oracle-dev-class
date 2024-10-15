--Combined Query to Get All Columns for the Provided Tables

SELECT table_name, column_name, data_type, data_length
FROM user_tab_columns
WHERE table_name IN ('ALLOWANCES', 'ATTENDANCE', 'COUNTRIES', 'DEPARTMENTS', 'EMPLOYEES', 'ROLES')
ORDER BY table_name, column_id;
