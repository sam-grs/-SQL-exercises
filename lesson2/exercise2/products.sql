CREATE DATABASE db_farmacy; 
USE db_farmacy; 
drop database db_farmacy;

CREATE TABLE tb_products(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NUlL,
    price DECIMAL(6, 2) NOT NULL,
    amount INT NOT NULL, 
    validate DATE NOT NULL
);

ALTER TABLE tb_products ADD category_id BIGINT;
ALTER TABLE tb_products ADD CONSTRAINT fk_products_category
FOREIGN KEY (category_id) REFERENCES tb_category(id);

INSERT INTO tb_products(product_name, price, amount, validate, category_id) 
VALUES ('Batom', 59.99, 220, '2028-12-27', 2), ('Creme facial de limão', 5.90, 300, '2028-12-10', 1),
('Luftal', 12.90, 1000, '2030-12-08', 5), ('Buscofem', 55.99, 10, '2024-12-10', 4), 
('Protetor solar', 90.99, 3000, '2028-08-29', 1), ('Rímel', 10.90, 600, '2029-05-10', 2), ('Pomet', 20.90, 1000, '2028-12-10', 3),
('Plasivet', 25.90, 1000, '2028-12-10', 4);
SELECT * FROM tb_products; 

SELECT * FROM tb_products WHERE price > 50; 
SELECT * FROM tb_products WHERE price BETWEEN 5 AND 60; 
SELECT * FROM tb_products WHERE product_name LIKE "%c%";

SELECT product_name, price, amount, validate, category_id, typeof, category_description FROM tb_products
INNER JOIN tb_category ON tb_products.category_id = tb_category.id;
SELECT product_name, price, amount, validate, category_id, typeof, category_description FROM tb_products
INNER JOIN tb_category ON tb_products.category_id = tb_category.id WHERE category_id = 4;
