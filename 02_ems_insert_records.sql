-- Inserting more countries
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Rwanda', 'RWA');
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Uganda', 'UGA');
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Kenya', 'KEN');
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Tanzania', 'TZA');
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Burundi', 'BDI');

COMMIT;

-- Inserting data into Departments table
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('IT Support', 'Kigali', 1);
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('Research Development', 'Dar es Salaam', 4);
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('Sales', 'Huye', 1);
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('Customer Support', 'Kibitoki', 5);

COMMIT;


-- Inserting data into Roles table
INSERT INTO Roles (Role_ID, Role_Name) VALUES (1, 'Manager');
INSERT INTO Roles (Role_ID, Role_Name) VALUES (2, 'Team Lead');
INSERT INTO Roles (Role_ID, Role_Name) VALUES (3, 'Senior Staff');
INSERT INTO Roles (Role_ID, Role_Name) VALUES (4, 'Junior Staff');
INSERT INTO Roles (Role_ID, Role_Name) VALUES (5, 'Intern');

COMMIT;

-- Inserting data into Allowances table
INSERT INTO Allowances (Role_ID, Allowance_Amount, Effective_Date, Is_Applicable, Comments) 
VALUES (1, 10000, SYSDATE, 'Y', 'Fuel allowance');

INSERT INTO Allowances (Role_ID, Allowance_Amount, Effective_Date, Is_Applicable, Comments) 
VALUES (2, 5000, SYSDATE, 'Y', 'Transportation allowance');

INSERT INTO Allowances (Role_ID, Allowance_Amount, Effective_Date, Is_Applicable, Comments) 
VALUES (3, 3000, SYSDATE, 'Y', 'Meal allowance');

COMMIT;


-- Inserting randomized data into the Employees Table

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Joseph', 'Manizabayo', 'josephmanizabayo@example.com', '0777777772', 'Kigali, Rwanda', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2, 1, 50000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Alain', 'ISHIMWE Pacifique', 'alainishimwe@example.com', '0777777773', 'Kigali, Rwanda', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 3, 2, 55000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('David', 'Mucyo', 'davidmucyo@example.com', '0777777774', 'Kigali, Rwanda', TO_DATE('2021-05-25', 'YYYY-MM-DD'), 1, 3, 60000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Allan', 'Ntarindwanshuti', 'allanntarind@example.com', '0777777775', 'Kigali, Rwanda', TO_DATE('2022-07-30', 'YYYY-MM-DD'), 2, 1, 52000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Josue', 'IRIRWANIRIRA', 'josueirirwan@example.com', '0777777776', 'Kigali, Rwanda', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 3, 2, 53000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Bienfait', 'Ndahiriwe', 'bienfaitndahiriwe@example.com', '0777777777', 'Kigali, Rwanda', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 1, 3, 54000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Daniella', 'Ineza Ndazaro', 'daniellaineza@example.com', '0777777778', 'Kigali, Rwanda', TO_DATE('2022-08-18', 'YYYY-MM-DD'), 2, 1, 56000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Kevine', 'Mukamisha', 'kevinemukamisha@example.com', '0777777779', 'Kigali, Rwanda', TO_DATE('2021-06-12', 'YYYY-MM-DD'), 3, 2, 57000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Kevin', 'Nshuti', 'kevinnshuti@example.com', '0777777780', 'Kigali, Rwanda', TO_DATE('2023-05-28', 'YYYY-MM-DD'), 1, 3, 58000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Deborah', 'ISHIMWE', 'deborahishimwe@example.com', '0777777781', 'Kigali, Rwanda', TO_DATE('2021-11-01', 'YYYY-MM-DD'), 2, 1, 59000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Thoti', 'NIBISHAKA PACIFIQUE', 'thotinibishaka@example.com', '0777777782', 'Kigali, Rwanda', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 1, 3, 60000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Dieu-Merci', 'Shyaka', 'dieumerci@example.com', '0777777783', 'Kigali, Rwanda', TO_DATE('2022-10-10', 'YYYY-MM-DD'), 2, 2, 61000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Bonheur', 'Nkomejimihigo', 'bonheurnkomeji@example.com', '0777777784', 'Kigali, Rwanda', TO_DATE('2023-06-20', 'YYYY-MM-DD'), 3, 1, 62000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Lorraine', 'UFITINEMA Kayinamura', 'lorraineufitinem@example.com', '0777777785', 'Kigali, Rwanda', TO_DATE('2021-09-09', 'YYYY-MM-DD'), 1, 2, 63000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Carine', 'Uwera', 'carineuwera@example.com', '0777777786', 'Kigali, Rwanda', TO_DATE('2022-05-11', 'YYYY-MM-DD'), 2, 1, 64000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Daniel', 'Habimana', 'danielhabimana@example.com', '0777777787', 'Kigali, Rwanda', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 3, 2, 65000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Raissa', 'Hahirwa', 'raissahahirwa@example.com', '0777777788', 'Kigali, Rwanda', TO_DATE('2022-04-12', 'YYYY-MM-DD'), 1, 3, 66000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Ahmat', 'Bechir', 'ahmatbechir@example.com', '0777777789', 'Kigali, Rwanda', TO_DATE('2023-01-25', 'YYYY-MM-DD'), 2, 1, 67000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Jonathan', 'Ndayizeye', 'jonathandayizeye@example.com', '0777777790', 'Kigali, Rwanda', TO_DATE('2021-03-30', 'YYYY-MM-DD'), 3, 2, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Mustafa', 'Bukenya', 'mustafabukenya@example.com', '0777777791', 'Kigali, Rwanda', TO_DATE('2023-08-17', 'YYYY-MM-DD'), 1, 1, 69000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Alexis', 'Ndayambaje', 'alexisndayambaje@example.com', '0777777792', 'Kigali, Rwanda', TO_DATE('2021-12-01', 'YYYY-MM-DD'), 2, 2, 70000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Ishimwe', 'PACIFIQUE', 'ishimwepacifique@example.com', '0777777793', 'Kigali, Rwanda', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 3, 3, 71000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Ketsia', 'Niyonsaba', 'ketsianiyonsaba@example.com', '0777777794', 'Kigali, Rwanda', TO_DATE('2023-07-22', 'YYYY-MM-DD'), 1, 1, 72000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Marianne', 'Nkurunziza', 'mariannekurunziza@example.com', '0777777795', 'Kigali, Rwanda', TO_DATE('2021-10-15', 'YYYY-MM-DD'), 2, 2, 73000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Amani', 'Kabera', 'amanikabera@example.com', '0777777796', 'Kigali, Rwanda', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 3, 3, 74000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Alexis', 'Nishimwe', 'alexisnishimwe@example.com', '0777777797', 'Kigali, Rwanda', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 1, 1, 75000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Blossom', 'Innocent', 'blossominno@example.com', '0777777798', 'Kigali, Rwanda', TO_DATE('2022-09-12', 'YYYY-MM-DD'), 2, 2, 76000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Hillary', 'Nkunda', 'hillarynkunda@example.com', '0777777799', 'Kigali, Rwanda', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 3, 3, 77000);


INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Emmanuel', 'Habimana', 'emmanuelhabimana@example.com', '0777777800', 'Kigali, Rwanda', TO_DATE('2021-11-10', 'YYYY-MM-DD'), 2, 1, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Grace', 'Uwase', 'graceuwase@example.com', '0777777801', 'Kigali, Rwanda', TO_DATE('2023-03-21', 'YYYY-MM-DD'), 1, 2, 73000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('David', 'Nkurunziza', 'davidnkurunziza@example.com', '0777777802', 'Kigali, Rwanda', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 3, 3, 74000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Rose', 'Nyirahabineza', 'rosenyirahabineza@example.com', '0777777803', 'Kigali, Rwanda', TO_DATE('2021-06-25', 'YYYY-MM-DD'), 2, 1, 65000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('John', 'Mukiza', 'johnmukiza@example.com', '0777777804', 'Kigali, Rwanda', TO_DATE('2022-12-11', 'YYYY-MM-DD'), 3, 2, 70000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Patricia', 'Niyonsenga', 'patricianiyonsenga@example.com', '0777777805', 'Kigali, Rwanda', TO_DATE('2023-01-08', 'YYYY-MM-DD'), 1, 1, 76000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Joseph', 'Bimenyimana', 'josephbimenyimana@example.com', '0777777806', 'Kigali, Rwanda', TO_DATE('2022-04-29', 'YYYY-MM-DD'), 3, 3, 78000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Esther', 'Uwimana', 'estheruwimana@example.com', '0777777807', 'Kigali, Rwanda', TO_DATE('2021-09-17', 'YYYY-MM-DD'), 2, 2, 72000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Sylvestre', 'Kabagwira', 'sylvestrekabagwira@example.com', '0777777808', 'Kigali, Rwanda', TO_DATE('2023-05-14', 'YYYY-MM-DD'), 1, 1, 75000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Carine', 'Mukasine', 'carinemukasine@example.com', '0777777809', 'Kigali, Rwanda', TO_DATE('2022-08-19', 'YYYY-MM-DD'), 3, 3, 77000);



INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Iradukunda', 'Marie', 'iradukundamarie@example.com', '0777777810', 'Kigali, Rwanda', TO_DATE('2022-03-10', 'YYYY-MM-DD'), 1, 1, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Claude', 'Mugisha', 'claudemugisha@example.com', '0777777811', 'Kigali, Rwanda', TO_DATE('2021-11-05', 'YYYY-MM-DD'), 2, 2, 67000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Jules', 'Niyonzima', 'julesniyonzima@example.com', '0777777812', 'Kigali, Rwanda', TO_DATE('2023-06-12', 'YYYY-MM-DD'), 3, 3, 78000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Bruno', 'Habiyaremye', 'brunohabiyaremye@example.com', '0777777813', 'Kigali, Rwanda', TO_DATE('2021-05-18', 'YYYY-MM-DD'), 1, 2, 75000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Anna', 'Mukamurenzi', 'annamukamurenzi@example.com', '0777777814', 'Kigali, Rwanda', TO_DATE('2022-11-09', 'YYYY-MM-DD'), 2, 1, 72000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Felix', 'Mutabazi', 'felixmutabazi@example.com', '0777777815', 'Kigali, Rwanda', TO_DATE('2023-02-11', 'YYYY-MM-DD'), 3, 3, 77000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Christelle', 'Uwimbabazi', 'christelleuwimbabazi@example.com', '0777777816', 'Kigali, Rwanda', TO_DATE('2021-10-21', 'YYYY-MM-DD'), 1, 1, 74000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Didier', 'Ntakirutimana', 'dntakirutimana@example.com', '0777777817', 'Kigali, Rwanda', TO_DATE('2022-12-22', 'YYYY-MM-DD'), 2, 2, 71000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Jacqueline', 'Murekatete', 'jmurekatete@example.com', '0777777818', 'Kigali, Rwanda', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 3, 3, 79000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Gedeon', 'Uwizeyimana', 'gedeonuwizeyimana@example.com', '0777777819', 'Kigali, Rwanda', TO_DATE('2022-06-08', 'YYYY-MM-DD'), 1, 2, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Nicole', 'Mutoni', 'nicolemutoni@example.com', '0777777820', 'Kigali, Rwanda', TO_DATE('2021-08-15', 'YYYY-MM-DD'), 2, 1, 67000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Isaac', 'Karangwa', 'isaackarangwa@example.com', '0777777821', 'Kigali, Rwanda', TO_DATE('2023-01-23', 'YYYY-MM-DD'), 3, 3, 69000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Liliane', 'Banyarwanda', 'lilianebanyarwanda@example.com', '0777777822', 'Kigali, Rwanda', TO_DATE('2022-09-19', 'YYYY-MM-DD'), 1, 1, 75000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Patrick', 'Mugabe', 'patrickmugabe@example.com', '0777777823', 'Kigali, Rwanda', TO_DATE('2021-03-10', 'YYYY-MM-DD'), 2, 2, 74000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Sandrine', 'Iradukunda', 'sandrineiradukunda@example.com', '0777777824', 'Kigali, Rwanda', TO_DATE('2023-05-01', 'YYYY-MM-DD'), 3, 3, 77000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Benjamin', 'Nsengiyumva', 'benjaminnsengiyumva@example.com', '0777777825', 'Kigali, Rwanda', TO_DATE('2022-02-28', 'YYYY-MM-DD'), 1, 1, 70000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Yvette', 'Muhire', 'yvettemuhire@example.com', '0777777826', 'Kigali, Rwanda', TO_DATE('2023-03-18', 'YYYY-MM-DD'), 2, 2, 66000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Claude', 'Manzi', 'claudemanzi@example.com', '0777777827', 'Kigali, Rwanda', TO_DATE('2021-12-08', 'YYYY-MM-DD'), 3, 3, 73000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Innocent', 'Ndahimana', 'innocentndahimana@example.com', '0777777828', 'Kigali, Rwanda', TO_DATE('2022-11-29', 'YYYY-MM-DD'), 1, 1, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Joyce', 'Niyonkuru', 'joyceniyonkuru@example.com', '0777777829', 'Kigali, Rwanda', TO_DATE('2023-07-04', 'YYYY-MM-DD'), 2, 2, 75000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Thierry', 'Ndayishimiye', 'thierryndayishimiye@example.com', '0777777830', 'Kigali, Rwanda', TO_DATE('2021-06-06', 'YYYY-MM-DD'), 3, 3, 78000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Moses', 'Murenzi', 'mosesmurenzi@example.com', '0777777831', 'Kigali, Rwanda', TO_DATE('2022-04-12', 'YYYY-MM-DD'), 1, 1, 69000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Claudine', 'Ndagijimana', 'claudinen@example.com', '0777777832', 'Kigali, Rwanda', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 2, 2, 74000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Phiona', 'Uwase', 'phionauwase@example.com', '0777777833', 'Kigali, Rwanda', TO_DATE('2021-07-14', 'YYYY-MM-DD'), 3, 3, 71000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Samuel', 'Havugimana', 'samuelhavugimana@example.com', '0777777834', 'Kigali, Rwanda', TO_DATE('2022-10-02', 'YYYY-MM-DD'), 1, 1, 67000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Diane', 'Uwimana', 'dianeuwimana@example.com', '0777777835', 'Kigali, Rwanda', TO_DATE('2023-03-30', 'YYYY-MM-DD'), 2, 2, 69000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Elie', 'Mukarugwiza', 'eliemukarugwiza@example.com', '0777777836', 'Kigali, Rwanda', TO_DATE('2021-05-07', 'YYYY-MM-DD'), 3, 3, 76000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Josephine', 'Nsabimana', 'josephinensabimana@example.com', '0777777837', 'Kigali, Rwanda', TO_DATE('2022-08-25', 'YYYY-MM-DD'), 1, 1, 68000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Giselle', 'Ishimwe', 'giselleishimwe@example.com', '0777777838', 'Kigali, Rwanda', TO_DATE('2023-02-19', 'YYYY-MM-DD'), 2, 2, 77000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Victor', 'Rukundo', 'victorrukundo@example.com', '0777777839', 'Kigali, Rwanda', TO_DATE('2021-12-30', 'YYYY-MM-DD'), 3, 3, 78000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Christophe', 'Ntirenganya', 'christophentirenganya@example.com', '0777777840', 'Kigali, Rwanda', TO_DATE('2022-03-22', 'YYYY-MM-DD'), 1, 1, 72000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Jeannette', 'Habimana', 'jeannettehabimana@example.com', '0777777841', 'Kigali, Rwanda', TO_DATE('2023-04-14', 'YYYY-MM-DD'), 2, 2, 66000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Noel', 'Nzeyimana', 'noelnzeyimana@example.com', '0777777842', 'Kigali, Rwanda', TO_DATE('2021-07-25', 'YYYY-MM-DD'), 3, 3, 71000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Teta', 'Mukasine', 'tetamukasine@example.com', '0777777843', 'Kigali, Rwanda', TO_DATE('2022-11-03', 'YYYY-MM-DD'), 1, 1, 77000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Eric', 'Karangwa', 'erickarangwa@example.com', '0777777844', 'Kigali, Rwanda', TO_DATE('2023-06-15', 'YYYY-MM-DD'), 2, 2, 79000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Chantal', 'Nirere', 'chantalnirere@example.com', '0777777845', 'Kigali, Rwanda', TO_DATE('2021-05-16', 'YYYY-MM-DD'), 3, 3, 70000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Jean', 'Nziza', 'jeannziza@example.com', '0777777846', 'Kigali, Rwanda', TO_DATE('2022-07-08', 'YYYY-MM-DD'), 1, 1, 69000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Sarah', 'Nkurunziza', 'sarahnkurunziza@example.com', '0777777847', 'Kigali, Rwanda', TO_DATE('2023-08-01', 'YYYY-MM-DD'), 2, 2, 76000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('John', 'Niyonzima', 'johnniyonzima@example.com', '0777777848', 'Kigali, Rwanda', TO_DATE('2021-09-10', 'YYYY-MM-DD'), 3, 3, 78000);

INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary) 
VALUES ('Grace', 'Uwizeyimana', 'graceuwizeyimana@example.com', '0777777849', 'Kigali, Rwanda', TO_DATE('2022-12-18', 'YYYY-MM-DD'), 1, 1, 71000);

COMMIT;



-- Insert data into Attendance Table
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (1, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (2, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (3, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (4, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (5, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (6, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (7, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (8, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (9, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (10, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (11, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (12, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (13, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (14, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (15, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (16, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (17, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (18, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (19, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (20, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (21, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (22, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (23, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (24, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (25, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (26, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Absent');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (27, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Leave');
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (28, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Present');

COMMIT;



