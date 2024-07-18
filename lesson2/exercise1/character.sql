CREATE DATABASE db_game; 
USE db_game; 

CREATE TABLE tb_character(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    your_name VARCHAR(255) NOT NUlL,
    power DECIMAL(7, 2) NOT NULL,
    shield INT, 
    gender VARCHAR(255),
    character_level INT NOT NULL
);

ALTER TABLE tb_character ADD class_id BIGINT;
ALTER TABLE tb_character ADD CONSTRAINT fk_character_class
FOREIGN KEY (class_id) REFERENCES tb_character_class(id);

INSERT INTO tb_character(your_name, power, shield, gender, character_level, class_id) 
VALUES ('Nevascan', 6666.66, 0, 'Hermafrodita', 666, 1), ('Yuri', 1001, 1000, 'Não tenho', 22, 3),
('Samira', 1900, 2000, '', 3, 2), ('Akira', 1080, 1200, 'Macho', 1, 4), 
('Lucas', 3000.20, 200, 'Fêmea', 1000, 5), ('Luana', 300.20, 190, '', 2, 3), ('Nilce', 30000.20, 2900, 'Mulher', 666, 4),
('Marcos', 666, 1666, 'inumano', 666, 1);
SELECT * FROM tb_character; 

SELECT * FROM tb_character WHERE power > 2000.00; 
SELECT * FROM tb_character WHERE power BETWEEN 1000 AND 2000; 
SELECT * FROM tb_character WHERE your_name LIKE "%c%";

SELECT your_name, power, shield, gender, character_level, typeof, class_description FROM tb_character
INNER JOIN tb_character_class ON tb_character.class_id = tb_character_class.id;
SELECT your_name, power, shield, gender, character_level, typeof, class_description, class_id FROM tb_character
INNER JOIN tb_character_class ON tb_character.class_id = tb_character_class.id WHERE class_id = 3;
