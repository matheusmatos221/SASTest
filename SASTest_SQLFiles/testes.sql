INSERT INTO CLIENTE (numero, nome, endereco, cpf)
VALUES ('951649517', 'Karttunen Jorge', 'hortolandia', '23425545120');

USE SAS_Test
GO

UPDATE CLIENTE
SET numero = 5
WHERE nome = 'Tom B. Erichsen'

SELECT * FROM CLIENTE


SELECT c.nome, c.numero FROM CLIENTE c

SELECT * FROM CLIENTE_TELEFONE

UPDATE CLIENTE_TELEFONE
SET telefone = 997654321
WHERE cliente = 5


INSERT INTO CLIENTE_TELEFONE (cliente, telefone)
VALUES (5, 123456789)

------------------------------
SELECT it.* FROM CLIENTE c
INNER JOIN INSTALACAO it on c.numero = it.cliente
WHERE c.nome LIKE 'Jorge%' AND it.endereco = 'Avenida Brasil'
