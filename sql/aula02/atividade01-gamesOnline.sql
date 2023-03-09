# Atividade 1 - Games Online
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe BIGINT AUTO_INCREMENT,
    tipo VARCHAR(10),
    arma_inicial VARCHAR(15),
    
	PRIMARY KEY(id_classe)
);

CREATE TABLE tb_personagens(
	id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(30),
    classe BIGINT,
    ataque INT,
    defesa INT,
    
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (classe) REFERENCES tb_classes(id_classe)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(tipo, arma_inicial) 
				VALUES("Arqueiro", "Arco"),
					  ("Clerigo", "Água benta"),
                      ("Guerreiro", "Sais"),
                      ("Assassino", "Pistola"),
                      ("Pirata", "Cimitarra");
                      
INSERT INTO tb_personagens(nome, classe, ataque, defesa)
				    VALUES("Ember", 1, 1000, 500),
						  ("Volkov", 2, 1700, 300),
                          ("Ragnir", 3, 2100, 1000),
                          ("Nix", 4, 2100, 600),
                          ("Thatch", 5, 1300, 1200),
                          ("Scarlet", 5, 1900, 500),
                          ("Rayman", 2, 1000, 700),
                          ("Magyar", 4, 1900, 1500);

# Retorna todos os personagens cujo poder de ataque é maior do que 2000
SELECT nome, ataque FROM tb_personagens WHERE ataque > 2000;

# Retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT nome, defesa FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

# Retorna todos os personagens que possuam a letra C no atributo nome utilizando o operador LIKE
SELECT nome FROM tb_personagens WHERE nome LIKE "%C%";

# Retorna a união dos dados da tabela tb_personagens com os dados da tabela tb_classes utilizando a cláusula INNER JOIN
SELECT * FROM tb_personagens INNER JOIN tb_classes 
	ON tb_personagens.classe = tb_classes.id_classe;

/* Retorna apenas os personagens que pertençam a uma classe específica 
 * unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
 * Exemplo: Todes os personagens da classe dos arqueiros */
SELECT * FROM tb_personagens INNER JOIN tb_classes
	ON tb_personagens.classe = tb_classes.id_classe WHERE id_classe = 5;