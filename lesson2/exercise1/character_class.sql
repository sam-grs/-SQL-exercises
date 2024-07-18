USE db_game; 

CREATE TABLE tb_character_class(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    typeof VARCHAR(255) NOT NULL,
    class_description VARCHAR(255)
);
SELECT * FROM tb_character_class; 

INSERT INTO tb_character_class(typeof, class_description) 
VALUES ('Guerreiro', 'Força, Constituição e Defesa'), ('Mago', 'Inteligência, Sabedoria e Mana'),
('Ladino', 'Destreza, Agilidade e Percepção'), ('Clérigo ', 'Fé, Sabedoria e Cura'), 
('Arqueiro', 'Precisão, Alcance e Estratégia');