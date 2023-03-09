# Atividade 1 - RH
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    idade INT(3),
    cargo VARCHAR(30),
    salario DECIMAL(10,2),
    vt BOOLEAN,
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, salario, vt) 
					  VALUES("Raquel Emilly da Rosa", 46, "Supervisora de Vendas", 10000, false),
							("Vinicius Yago Noah Fogaça", 46, "Vendedor", 8000, true),
                            ("Cauê Márcio Costa", 60, "Vendedor", 8000, true),
                            ("Enzo Cauê Dias", 56, "Promotor de vendas", 9500, false),
                            ("Esther Camila Vieira", 65, "Publicitária", 10000, true);

SELECT nome FROM tb_colaboradores WHERE salario > 2000;

SELECT nome FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 47 WHERE id = 2;
