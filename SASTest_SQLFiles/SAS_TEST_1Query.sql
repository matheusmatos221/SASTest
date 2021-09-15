CREATE TABLE CLIENTE (
numero		int				NOT NULL		PRIMARY KEY,
nome		varchar(200)	NOT NULL,
endereco	char(200)		NOT NULL,
cpf			char(11)		NOT NULL		UNIQUE
);

CREATE TABLE CLIENTE_TELEFONE (
cliente		int				NOT NULL,
telefone	char(11)		NOT NULL,
PRIMARY KEY (cliente, telefone),
FOREIGN KEY (cliente) REFERENCES CLIENTE (numero)
);

CREATE TABLE INSTALACAO (
numero		int				NOT NULL		PRIMARY KEY,
cliente		int				NOT NULL,
endereco	char(200)		NOT NULL,
FOREIGN KEY (cliente) REFERENCES CLIENTE (numero)
);

CREATE TABLE CONSUMO (
instalacao	int				NOT NULL,
anomes		char(6)			NOT NULL,
consumo		int				NOT NULL,
num_dias	smallint		NOT NULL,
PRIMARY KEY (instalacao, anomes),
FOREIGN KEY (instalacao) REFERENCES INSTALACAO (numero)
);