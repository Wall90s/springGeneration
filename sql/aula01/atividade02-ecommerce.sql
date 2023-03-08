# Atividade 02 - e-commerce
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50),
    preco DECIMAL(10,2),
    quantidade INT,
    marca VARCHAR(30),
    frete BOOLEAN,
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, marca, frete) 
			     VALUES("Jogo de Toalhas", 168.90, 7, "Buddemeyer", true),
					   ("Ar Condicionado", 1606, 1, "Consul", false),
                       ("Samsung Galaxy A22", 1099, 1, "Samsung", true),
                       ("Ar Condicionado", 1099, 1, "Consul", false),
                       ("Samsung Galaxy A53", 1959, 1, "Samsung", true),
                       ("Kit 5 Camisetas Slim Fit", 99.90, 5, "Zaroc", true),
                       ("Moto E32", 915, 1, "Motorola", true),
                       ("God of War Ragnarök Standard Edition", 219, 1, "Sony", true);

SELECT * FROM tb_produtos;                    
                       
SELECT nome FROM tb_produtos WHERE preco > 500;

SELECT nome FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 2000 WHERE id = 7;
