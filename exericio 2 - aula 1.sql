CREATE DATABASE db_activities; 
USE db_activities; 

CREATE TABLE e_commerce(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NUlL,
    brand VARCHAR(255) NOT NULL,
    product_description VARCHAR(255),
    price DECIMAL(8, 2) NOT NULL,
	amount INT NOT NULL
);
SELECT * FROM e_commerce; 

INSERT INTO e_commerce(product_name, brand, product_description, price, amount) 
VALUES ('Xbox 360', 'Microsoft', 'Um video game com kinect', 1250.00, 200), ('Xbox One', 'Microsoft', 'Um video game com um jogo', 3000.00, 1000),
('Left 4 dead 2', 'Valve', 'Jogo de zombie', 60.00, 4000), ('Super Mario Bros 3D', 'Nintendo', 'Um encanador que come cogumelo', 299.90, 9000), 
('Nintendo switch', 'Nintendo', 'Um video game de fresco', 2199.99, 100), ('Zelda', 'Nintendo', '', 499.99, 100), 
('Minecraft', 'Mojang', 'Quadradolândia', 129.90, 10000), ('Controle de Xbox Series S', 'Microsoft', 'Controle muito caro', 379.99, 2000);

SELECT * FROM e_commerce WHERE price > 500.00; 
SELECT * FROM e_commerce WHERE price < 500.00; 

UPDATE e_commerce SET price = 700.00 WHERE id = 8;
SELECT * FROM e_commerce; 