-- Criar Banco de Dados
CREATE DATABASE contalogica;

-- Usar Banco de Dados

USE contalogica;

CREATE TABLE Clientes(
   CPF VARCHAR(19) PRIMARY KEY,
   Nome VARCHAR(255) NOT NULL,
   Endereco VARCHAR (255) NOT NULL,
   Telefone VARCHAR (22) NOT NULL,
   Email VARCHAR(255) NOT NULL  
);

CREATE TABLE ContaBancaria(
	NumeroConta INT auto_increment KEY NOT NULL,
    Clientes_CPF VARCHAR(19) ,
    Agencia FLOAT NOT NULL,
    TipoConta VARCHAR (255) NOT NULL,
    Saldo FLOAT NOT NULL,
     FOREIGN KEY (Clientes_CPF) REFERENCES contalogica.Clientes(CPF)
);

-- Consulta entre tabelas

SELECT Clientes.Nome AS 'Nome do Cliente',
       ContaBancaria.Saldo  AS 'Saldo'
FROM Clientes
INNER JOIN ContaBancaria
ON Clientes.CPF= Clientes_CPF;

-- Inserindo Dados Clientes
INSERT INTO Clientes ( CPF, Nome, Endereco, Telefone, Email) VALUES
('064.945.102-12', 'Varel', 'Avenida Antônio Gil Veloso', '71984232212', 'Varel@gmail.com');

INSERT INTO Clientes ( CPF, Nome, Endereco, Telefone, Email) VALUES
('107.046.474-00', 'Kenimon', 'Avenida Antônio Gil Veloso Sao Joao', '719885279614', 'Kenimon@gmail.com');

INSERT INTO Clientes ( CPF, Nome, Endereco, Telefone, Email) VALUES
('566.777.374-03', 'Coymi', 'Avenida Antônio Gil Veloso', '71985269753', 'Coymi@gmail.com');

INSERT INTO Clientes ( CPF, Nome, Endereco, Telefone, Email) VALUES
('238.615.974-46', 'Julio', 'Escadaria Amélia Costalonga', '71978542365', 'julio@gmail.com');

INSERT INTO Clientes ( CPF, Nome, Endereco, Telefone, Email) VALUES
('455.391.784-08', 'Reohi', 'Travessa Sao Joao', '71984232457', 'Reohio@gmail.com');


-- Inserindo Dados ContaBancária
INSERT INTO ContaBancaria (NumeroConta, Agencia, TipoConta, Saldo) VALUES
('8', 400, 'Corrente', 54.9);

INSERT INTO ContaBancaria (NumeroConta, Agencia, TipoConta, Saldo) VALUES
('4', 12, 'Poupança', 1123.2);

INSERT INTO ContaBancaria (NumeroConta, Agencia, TipoConta, Saldo) VALUES
('6', 463, 'Corrente', 112.4);

INSERT INTO ContaBancaria (NumeroConta, Agencia, TipoConta, Saldo) VALUES
('11', 433, 'Poupança', 552.6);

INSERT INTO ContaBancaria (NumeroConta, Agencia, TipoConta, Saldo) VALUES
(' ', 465, 'Corrente', 956.2);





-- Mostrar Tabela

SELECT * FROM Clientes;

SELECT * FROM ContaBancaria;

-- Apagar Tabela
DROP TABLE Clientes;

DROP TABLE ContaBancaria;

DROP DATABASE contalogica;