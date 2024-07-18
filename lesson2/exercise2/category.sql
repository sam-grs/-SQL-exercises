CREATE TABLE tb_category(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    typeof VARCHAR(255) NOT NULL,
    category_description VARCHAR(255) NOT NULL
);

SELECT * FROM tb_category;
drop table tb_category;
INSERT INTO tb_category(typeof, category_description) 
VALUES ('Cosmético', 'Nivea'), ('Cosmético', 'Vult'), ('Remédio', 'Pomada'),
('Remédio', 'Genérico'), ('Remédio', 'Não Genérico');