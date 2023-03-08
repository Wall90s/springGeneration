# Cria um Banco de dados
CREATE DATABASE db_quitanda;

# Seleciona o Banco de dados a ser utilizado
USE db_quitanda;

# Cria uma tabela
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome_produto VARCHAR(30),
    preco DECIMAL(6,2), # 6 números no total, 2 depois da vírgula
    
    PRIMARY KEY(id)
);

# Retorna todos os dados da tabela
SELECT * FROM tb_produtos;

# Insere uma nova linha na tabela com os dados fornecidos
INSERT INTO tb_produtos(nome_produto, preco) 
				 VALUES("Banana", 5.00), 
					   ("Abacaxi", 7.00);
                       
# Desativa o modo seguro do MySQL e permitindo UPDATE e DELETE
SET SQL_SAFE_UPDATES = 0;

# Atualiza um dado na tabela
UPDATE tb_produtos SET preco = 7.90 WHERE id = 2;