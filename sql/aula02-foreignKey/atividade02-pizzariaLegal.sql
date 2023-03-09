# Atividade 2 - Pizzaria Legal
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT,
    entrega BOOLEAN,
    tamanho VARCHAR(15),
    
    PRIMARY KEY(id_categoria)
);

CREATE TABLE tb_pizzas(
	id_pizza BIGINT AUTO_INCREMENT,
	sabor VARCHAR(30),
    doce BOOLEAN,
	borda_recheada BOOLEAN,
    categoria BIGINT,
    preco DECIMAL(4,2),
    
    PRIMARY KEY(id_pizza),
	FOREIGN KEY (categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias (entrega, tamanho)
					VALUES(false, "Pedaço"),
						  (false, "Brotinho"),
                          (true, "Média"),
                          (true, "Grande"),
                          (true, "Giga");
						
INSERT INTO tb_pizzas (sabor, doce, borda_recheada, categoria, preco)
					VALUES("Calabresa", false, false, 1, 5),
						  ("Calabresa", false, false, 2, 13),
                          ("Frango com Catupiry", false, false, 3, 30),
						  ("Baiana", false, true, 4, 34),
                          ("Portuguesa", false, true, 5, 47),
						  ("Vegetariana", false, true, 5, 44),
                          ("Muçarela", false, false, 3, 25),
						  ("Brigadeiro", true, false, 2, 23);
                          
# Retorna todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45;

# Retorna todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

# Retorna todas as pizzas que possuam a letra M no atributo nome utilizando o operador LIKE
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

/* Retorna apenas as pizzas que pertençam a uma categoria específica
 * unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias 
 * Exemplo: Todas as pizzas que são doce */
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
	ON tb_pizzas.categoria = tb_categorias.id_categoria WHERE doce = true;