-- Create Animals Table
CREATE TABLE Animals (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(100),
    protection_status VARCHAR2(50)
);

-- Create Observations Table
CREATE TABLE Observations (
    observation_id NUMBER PRIMARY KEY,
    animal_id NUMBER,
    place VARCHAR2(100),
    observation_date DATE,
    observation_time VARCHAR2(10),
    FOREIGN KEY (animal_id) REFERENCES Animals(animal_id)
);

-- Create Areas Table
CREATE TABLE Areas (
    area_id NUMBER PRIMARY KEY,
    area_name VARCHAR2(100),
    environment_type VARCHAR2(50)
);

-- Create Studies Table
CREATE TABLE Studies (
    study_id NUMBER PRIMARY KEY,
    area_id NUMBER,
    animal_id NUMBER,
    scientist_name VARCHAR2(100),
    study_goal VARCHAR2(255),
    study_date DATE,
    FOREIGN KEY (area_id) REFERENCES Areas(area_id),
    FOREIGN KEY (animal_id) REFERENCES Animals(animal_id)
);

-- Insert Animals Data
INSERT INTO Animals (animal_id, animal_name, protection_status)
VALUES (1, 'Mountain Gorilla', 'Critically Endangered');

INSERT INTO Animals (animal_id, animal_name, protection_status)
VALUES (2, 'Golden Eagle', 'Least Concern');

-- Insert Areas Data
INSERT INTO Areas (area_id, area_name, environment_type)
VALUES (1, 'Virunga', 'Rainforest');

INSERT INTO Areas (area_id, area_name, environment_type)
VALUES (2, 'Rocky Mountains', 'Alpine');

-- Insert Observations
INSERT INTO Observations (observation_id, animal_id, place, observation_date, observation_time)
VALUES (1001, 1, 'Virunga National Park', TO_DATE('2023-07-15', 'YYYY-MM-DD'), '10:30');

INSERT INTO Observations (observation_id, animal_id, place, observation_date, observation_time)
VALUES (1002, 2, 'Rocky Mountain Range', TO_DATE('2023-08-22', 'YYYY-MM-DD'), '14:00');

-- Insert Studies Data
INSERT INTO Studies (study_id, area_id, animal_id, scientist_name, study_goal, study_date)
VALUES (2001, 1, 1, 'Dr. Emily Green', 'Analyze gorilla family dynamics', TO_DATE('2023-07-20', 'YYYY-MM-DD'));

INSERT INTO Studies (study_id, area_id, animal_id, scientist_name, study_goal, study_date)
VALUES (2002, 2, 2, 'Dr. Mark Brown', 'Monitor eagle nesting patterns', TO_DATE('2023-08-25', 'YYYY-MM-DD'));

-- Retrieve animal names and protection status
SELECT animal_name, protection_status FROM Animals;

-- Retrieve animal observation details
SELECT a.animal_name, o.place, o.observation_date, o.observation_time
FROM Animals a
JOIN Observations o ON a.animal_id = o.animal_id;

-- Retrieve study details with animals
SELECT a.animal_name, s.scientist_name, s.study_goal, s.study_date
FROM Animals a
JOIN Studies s ON a.animal_id = s.animal_id;

-- Transactions and Operations
-- Update protection status of an animal
UPDATE Animals
SET protection_status = 'Endangered'
WHERE animal_name = 'Mountain Gorilla';

-- Delete study data by scientist
DELETE FROM Studies
WHERE scientist_name = 'Dr. Mark Brown';
