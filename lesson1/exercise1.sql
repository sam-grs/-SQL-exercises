CREATE DATABASE db_activities; 
USE db_activities; 

CREATE TABLE employee(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NUlL,
    years_experience INT NOT NULL,
    employee_age VARCHAR(255) NOT NUlL,
    salary DECIMAL(7, 2) NOT NULL
);
SELECT * FROM employee; 

INSERT INTO employee(employee_name, years_experience, employee_age, salary) 
VALUES ('Jaqueline', 2, '25 anos', 1800.00), ('Yuri', 10, '27 anos', 30000.00),
('Samira', 2, '21 anos', 3000.00), ('Akira', 1, '18 anos', 1500.00), 
('Lucas', 1, '30 anos', 1000.00);

SELECT * FROM employee WHERE salary > 2000.00; 
SELECT * FROM employee WHERE salary < 2000.00; 

UPDATE employee SET years_experience = 3, employee_age = 32, salary = 1.99 WHERE id = 5;
UPDATE employee SET years_experience = 13, employee_age = 29, salary = 29.90 WHERE id = 2;  
SELECT * FROM employee; 