CREATE DATABASE db_activities; 
USE db_activities; 

CREATE TABLE school(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255) NOT NUlL,
    school_level VARCHAR(255) NOT NULL,
    grade DECIMAL(8, 2) NOT NULL,
    school_subject VARCHAR(255) NOT NULL
);
SELECT * FROM school; 

INSERT INTO school(student_name, school_level, grade, school_subject) 
VALUES ('Samira', 'Ensino médio', 5.5, 'Matemática'), ('Vinicius', 'Ensino médio', 6, 'História'),
('Anderson', 'Ensino fundamental 1', 9.2, 'Ciências'), ('Julha', 'Ensino fundamental 2', 7.0, 'Geografia'), 
('Margo', 'Ensino médio', 10.0, 'Matemática'), ('Mario', 'Ensino fundamental 2', 4.0, 'Artes'), 
('Suzane', 'Ensino fundamental 2', 10.0, 'Inglês'), ('Bruno', 'Ensino Médio', 9.0, 'Artes');
-- DROP TABLE school;

SELECT * FROM school WHERE grade > 7.0; 
SELECT * FROM school WHERE grade <= 7.0; 

UPDATE school SET school_level = 'Ensino médio' WHERE id = 7;
SELECT * FROM school; 