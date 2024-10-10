CREATE DATABASE vendas;

CREATE TABLE Produto (
    Codigo_Produto INT PRIMARY KEY,
    Descricao_Produto VARCHAR(255),
    Preco FLOAT
);

CREATE TABLE Nota_fiscal (
    Numero_NF INT PRIMARY KEY,
    Data_NF DATE,
    Valor_NF FLOAT
);

CREATE TABLE Itens (
    Codigo_Produto INT,
    Numero_NF INT,
    Quantidade INT,
    Valor_Unitario FLOAT,
    PRIMARY KEY (Codigo_Produto, Numero_NF),
    FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo_Produto),
    FOREIGN KEY (Numero_NF) REFERENCES Nota_fiscal(Numero_NF)
);

ALTER TABLE Produto
MODIFY Descricao_Produto VARCHAR(50);

ALTER TABLE Nota_fiscal
ADD ICMS FLOAT AFTER Numero_NF;

ALTER TABLE Produto
ADD Peso FLOAT;

ALTER TABLE Itens
ADD Num_item INT AUTO_INCREMENT PRIMARY KEY FIRST;

DESCRIBE Produto;

DESCRIBE Nota_fiscal;

ALTER TABLE Nota_fiscal
CHANGE Valor_NF `Valor Total_NF` FLOAT;

ALTER TABLE Nota_fiscal
DROP COLUMN Data_NF;

DROP TABLE Itens;

ALTER TABLE Nota_fiscal
RENAME TO Venda;






