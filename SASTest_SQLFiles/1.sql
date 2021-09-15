--1-A

SELECT * FROM CLIENTE
WHERE nome LIKE 'Jorge%'

--1-B

SELECT c.* FROM CLIENTE c
INNER JOIN CLIENTE_TELEFONE ct on c.numero = ct.cliente
WHERE c.nome LIKE 'Jorge%' AND ct.telefone LIKE '99%'

--1-C

SELECT * FROM CLIENTE
WHERE nome NOT LIKE 'Jorge%'

--1-D

SELECT * FROM CLIENTE
WHERE numero BETWEEN 1000 AND 5000

--1-E
SELECT * FROM CLIENTE
WHERE numero > 12000

--1-F

SELECT it.* FROM CLIENTE c
INNER JOIN INSTALACAO it on c.numero = it.cliente
WHERE c.nome LIKE 'Jorge%' AND it.endereco = 'Avenida Brasil'


--1-G
SELECT COUNT(*)'Qtd_instalacoes' FROM INSTALACAO it 
WHERE it.endereco = 'Avenida Brasil'

--1-H

SELECT it.* FROM CLIENTE as c
INNER JOIN INSTALACAO as it on c.numero = it.cliente
INNER JOIN CONSUMO as cons on it.numero = cons.instalacao
WHERE c.nome LIKE 'Jorge%' 
AND it.endereco = 'Avenida Brasil'
AND cons.consumo > 20

--1-I

SELECT AVG(cons.consumo)'Consumo_Médio' FROM CLIENTE as c
INNER JOIN INSTALACAO as it on c.numero = it.cliente
INNER JOIN CONSUMO as cons on it.numero = cons.instalacao
WHERE it.endereco = 'Avenida Brasil'

--1-J
A)	DELETE FROM CONSUMO
WHERE instalacao IN
(SELECT numero FROM INSTALACAO WHERE cliente = 10);
