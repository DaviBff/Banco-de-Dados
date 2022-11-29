DROP DATABASE skateshop ; 
CREATE DATABASE skateshop;
USE skateshop;



CREATE TABLE cliente (
  cpf VARCHAR(14) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  PRIMARY KEY (cpf)
  );



CREATE TABLE categoria (
  id_categoria INT NOT NULL,
  nome_categoria VARCHAR(45) NOT NULL,
  produto VARCHAR(256) NOT NULL,
  PRIMARY KEY (id_categoria)
  );




CREATE TABLE fornecedores (
  id_fornecedor INT NOT NULL auto_increment,
  nome_do_fornecedor VARCHAR(45) NOT NULL,
  CEP VARCHAR(45) not null,
  PRIMARY KEY (id_fornecedor)
  );

CREATE TABLE venda_pedido (
  nome INT NOT NULL,
  valor_produto_vendido INT NOT NULL,
  forma_de_pagamento VARCHAR(45) NOT NULL,
  cliente_cpf VARCHAR(14) NOT NULL,
  PRIMARY KEY (nome, cliente_cpf),
    FOREIGN KEY (cliente_cpf) REFERENCES cliente (cpf)
);



CREATE TABLE pecas (
  id_pecas INT NOT NULL auto_increment,
  quantidade_de_produtos INT NOT NULL,
  valor FLOAT NOT NULL,
  categoria_id_categoria INT NOT NULL,
  fornecedores_id_fornecedor INT NOT NULL,
  PRIMARY KEY (id_pecas, categoria_id_categoria, fornecedores_id_fornecedor),
    FOREIGN KEY (categoria_id_categoria) REFERENCES categoria (id_categoria),
    FOREIGN KEY (fornecedores_id_fornecedor) REFERENCES fornecedores (id_fornecedor)
 );

CREATE TABLE itens_pedido (
  pedidos_id_nome INT NOT NULL,
  pecas_id_pecas INT NOT NULL,
  PRIMARY KEY (pedidos_id_nome, pecas_id_pecas),
    FOREIGN KEY (pedidos_id_nome)
    REFERENCES venda_pedido (nome),
    FOREIGN KEY (pecas_id_pecas)REFERENCES pecas (id_pecas)
  );

INSERT INTO cliente (cpf, nome, email, telefone)
VALUES
('427.450.394-15', 'Genilda Maria da Silva Queiroz', 'genildamariaqueiroz@yahoo.com.b', '(18) 3944-3584'),
('877.109.980-89', 'Otávio Novaes', 'otavin@yahoo.com.b', '(61) 2786-8851'),
('715.616.000-16', 'Alana Dias', 'alaninha@yahoo.com.b', '(82) 3556-2636'),
('596.568.230-10', 'Nathan Dias', 'nathan@yahoo.com.b', '(51) 3014-6271'),
('246.060.430-08', 'Srta. Vitória Ferreira', 'viii@yahoo.com.b', '(84) 2117-1894'),
('102.146.180-64', 'Sabrina Monteiro', 'sabrina@yahoo.com.b', '(66) 2766-4333'),
('543.982.940-74', 'Sra. Maria Vitória da Luz', 'marivi@yahoo.com.b', '(62) 2143-2959'),
('534.226.330-14', 'Eduardo das Neves', 'eduNovaes@yahoo.com.b', '(15) 2641-7167'),
('289.727.630-47', 'Dra. Milena Teixeira', 'mileninha@yahoo.com.b', '(83) 3038-7244'),
('280.185.120-51', 'Júlia Teixeira', 'juju@yahoo.com.b', '(92) 2653-0728');

INSERT INTO categoria (id_categoria, nome_categoria, produto)
VALUES
( 1,'INICIANTE','SKATE MONTADO AHEAD INFANTIL MILITARY ALL BLUE'),
( 2,'INICIANTE','SKATE COMPLETO AHEAD MILITARY ALL PINK'),
( 3,'INICIANTE','SKATE MONTADO AHEAD INFANTIL MILITARY ALL RED'),
( 4,'INICIANTE','SKATE COMPLETO AHEAD INFANTIL MILITARY ALL GRENN'),
( 5,'INTERMEDIARIO','SHAPE ELEMENT 8.0 QUADRANT'),
( 6,'INTERMEDIARIO','SHAPE SANTA CRUZ 8.5 SCREAMING HAND WOOD'),
( 7,'INTERMEDIARIO','SHAPE NINECLOUDS 8.5 LOGO MOEDA BLACK'),
( 8,'PROFISSIONAL','TRUCK INDEPENDENT 139MM STAGE STANDARD 11 PAR'),
( 9,'PROFISSIONAL','TRUCK INDEPENDENT 144MM STAGE 11 HOLLOW SILVER - PAR'),
( 10,'PROFISSIONAL','RODA RICTA 53MM WIREFRAME SPARX WHITE 99A');

INSERT INTO fornecedores (id_fornecedor,nome_do_fornecedor,CEP)
VALUES
(1 ,'Felipe Martins','58808-255'),
(2,'Mirella Sales','59114-071'),
(3,'Caio Costa','69550-625'),
(4,'Lorenzo Nogueira','94190-500'),
(5,'Ana Laura da Mata','58700-390'),
(6,'Daniela Fernandes','85858-250'),
(7,'Marcela Rocha','64013-548'),
(8,'Agatha Barros','64020-635'),
(9,'Maitê Mendes','50110-735'),
(10,'Júlia Ramos','29101-568');





