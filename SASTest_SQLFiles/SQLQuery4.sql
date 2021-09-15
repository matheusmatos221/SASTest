CREATE TABLE USUARIO (
id_usuario		int			NOT NULL		PRIMARY KEY,
nome			char(200)	NOT NULL,
id_regiao		int			NOT NULL,
);

CREATE TABLE REGIAO (
id_regiao		int				NOT NULL,
regiao			char(11)		NOT NULL,
PRIMARY KEY (id_regiao)
);

CREATE TABLE VENDAS (
id_usuario		int			NOT NULL		PRIMARY KEY,
dat				date		NOT NULL,
quantidade		int			NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES USUARIO (id_usuario)
);
