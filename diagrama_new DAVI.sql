CREATE DATABASE skateshop;
USE skateshop;

CREATE TABLE cliente (
  cpf INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
  );



CREATE TABLE categoria (
  id_categoria INT NOT NULL,
  nome_categoria VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_categoria)
  );




CREATE TABLE fornecedores (
  id_fornecedor INT NOT NULL auto_increment,
  nome_do_fornecedor VARCHAR(45) NOT NULL,
  quantidade_de_fornecedores INT NOT NULL,
  PRIMARY KEY (id_fornecedor)
  );



CREATE TABLE pecas (
  id_pecas INT NOT NULL auto_increment,
  quantidade_de_produtos INT NOT NULL,
  valor FLOAT NOT NULL,
  categoria_id_categoria INT NOT NULL,
  fornecedores_id_fornecedor INT NOT NULL,
  PRIMARY KEY (id_pecas, categoria_id_categoria, fornecedores_id_fornecedor),
    FOREIGN KEY (categoria_id_categoria)
    REFERENCES mydb.categoria (id_categoria),
    FOREIGN KEY (fornecedores_id_fornecedor)
    REFERENCES mydb.fornecedores (id_fornecedor)
 );



CREATE TABLE venda_pedido (
  nome INT NOT NULL,
  valor_produto_vendido INT NOT NULL,
  forma_de_pagamento VARCHAR(45) NOT NULL,
  cliente_cpf INT NOT NULL,
  PRIMARY KEY (nome, cliente_cpf),
    FOREIGN KEY (cliente_cpf)
    REFERENCES mydb.cliente (cpf)
);



CREATE TABLE itens_pedido (
  pedidos_id_nome INT NOT NULL,
  pecas_id_pecas INT NOT NULL,
  PRIMARY KEY (pedidos_id_nome, pecas_id_pecas),
    FOREIGN KEY (pedidos_id_nome)
    REFERENCES mydb.venda_pedido (nome),
    FOREIGN KEY (pecas_id_pecas)
    REFERENCES mydb.pecas (id_pecas)
  );



