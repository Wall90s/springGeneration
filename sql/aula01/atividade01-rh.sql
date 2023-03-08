# Atividade 1 - RH
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    idade INT(3),
    cargo VARCHAR(30),
    salario DECIMAL(10,2),
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, salario) 
					  VALUES("Raquel Emilly da Rosa", 46, "Supervisora de Vendas", 10000),
							("Vinicius Yago Noah Fogaça", 46, "Vendedor", 8000),
                            ("Cauê Márcio Costa", 60, "Vendedor", 8000),
                            ("Enzo Cauê Dias", 56, "Promotor de vendas", 9500),
                            ("Esther Camila Vieira", 65, "Publicitária", 10000);

SELECT nome FROM tb_colaboradores WHERE salario > 2000;

SELECT nome FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 47 WHERE id = 2;
