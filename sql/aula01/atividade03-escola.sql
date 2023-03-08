# Atividade 3 - Escola
CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    idade INT,
    responsavel VARCHAR(30),
    ano VARCHAR(10),
    periodo VARCHAR(10),
    nota DECIMAL(4,2),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, idade, responsavel, ano, periodo, nota)
                   VALUES("Iago Cláudio Cavalcanti", 14, "Enzo Gustavo Emanuel Mendes", "7°ano", "Tarde", 6),
						 ("Catarina Marlene Alves", 17, "Isaac Murilo Baptista", "3°ano", "Noite", 9),
                         ("Danilo Erick Assis", 12, "Louise Marli Clarice da Rocha", "5°ano", "Tarde", 10),
                         ("Thomas Diogo Guilherme Peixoto", 19, "Esther Simone Santos", "3°ano", "Noite", 7),
                         ("Nelson Ruan Rocha", 18, "Juan Kevin Luiz Rezende", "3°ano", "Noite", 8),
                         ("Sophia Josefa Duarte", 17, "Louise Ayla Moura", "3°ano", "Noite", 4),
                         ("Murilo Levi Marcos Costa", 14, "Regina Laura Brenda Silveira", "7°ano", "Tarde", 8),
                         ("Yago Antonio Breno de Paula", 19, "Augusto Felipe Renan Caldeira", "3°ano", "Noite", 8);
                         
SELECT * FROM tb_estudantes;                         
                         
SELECT nome FROM tb_estudantes WHERE nota > 7;

SELECT nome FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET responsavel = "Bruno Carlos Cardoso" WHERE id = 3;
