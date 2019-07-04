--Selects --

-- Select distinct
-- Seleciona quais esp�cies diferentes existem no "Consult�rio".
SELECT distinct especie
FROM animal;

-- Select order by
-- Seleciona os veterin�rios, os ordenando plantonistas primeiro.
SELECT * 
FROM veterinario
ORDER BY plantonista desc, crmv asc;

-- Select count(*)
--  Conta a quantidade de atendimentos que cada veterin�rio fez, agrupando por
-- veterin�rio e ordenando por maior n�mero de atendimentos
SELECT Vet.nome, COUNT(*) atendimentos
FROM atendimento Aten, veterinario Vet
WHERE Vet.CRMV = Aten.CRMV
GROUP BY Vet.nome
ORDER BY atendimentos DESC;

-- Select like, in
-- Seleciona os clientes que come�am com �Ma�.
SELECT * FROM cliente
WHERE nome like  'Ma%';

-- Select Fun��es de manipula��o de datas
-- Seleciona as consultas e diz quantos meses faz desde a �ltima	
SELECT cod_atendimento, floor(MONTHS_BETWEEN(trunc(data_atendimento),trunc(sysdate)) * -1)
AS "Meses desde a �ltima consulta"
FROM atendimento;





-- Inner Join

-- Seleciona os clientes e diz quais s�o seus pets
SELECT CLI.nome "Dono", ANM.especie "Especie", ANM.raca "Ra�a"
FROM cliente CLI
 INNER JOIN animal ANM
ON CLI.cod_cliente = ANM.cod_cliente;

-- Seleciona os veterin�rios relacionados com os atendimentos dos animais
SELECT ANM.especie, ANM.raca, VET.nome AS "Veterin�rio"
FROM animal ANM
 INNER JOIN atendimento ATN
ON ANM.cod_animal = ATN.cod_animal
 INNER JOIN veterinario VET
ON ATN.crmv = VET.crmv;

-- Seleciona os exames realizados nos respectivos animais
SELECT ANM.especie, ANM.raca, TEX.descricao
FROM animal ANM
 INNER JOIN atendimento ATN
ON ANM.cod_animal = ATN.cod_animal
 INNER JOIN exame EXA
ON ATN.cod_atendimento = EXA.cod_atendimento
 INNER JOIN tipo_exames TEX
ON EXA.cod_exames = TEX.cod_exames;

-- Seleciona os clientes e mostra o pre�o praticado nos exames
SELECT CLI.nome, EXA.preco_praticado
FROM cliente CLI
 INNER JOIN animal ANM
ON CLI.cod_cliente = ANM.cod_cliente
 INNER JOIN atendimento ATN
ON ANM.cod_animal = ATN.cod_animal
 INNER JOIN exame EXA
ON ATN.cod_atendimento = EXA.cod_atendimento;

-- Seleciona os clientes e mostra a diferen�a entre o pre�o praticado e tabelado
SELECT CLI.nome, abs(EXA.preco_praticado - TEX.preco_tabelado) AS "Diferen�a de pre�o"
FROM cliente CLI
 INNER JOIN animal ANM
ON CLI.cod_cliente = ANM.cod_cliente
 INNER JOIN atendimento ATN
ON ANM.cod_animal = ATN.cod_animal
 INNER JOIN exame EXA
ON ATN.cod_atendimento = EXA.cod_atendimento
 INNER JOIN tipo_exames TEX
ON EXA.cod_exames = TEX.cod_exames;





-- Group by -- Having --

--Seleciona os atendimentos que possuem mais de um exame
SELECT ani.nome, ate.cod_atendimento Atendimento
FROM atendimento ate, exame exa, animal ani
WHERE ate.cod_atendimento = exa.cod_atendimento
AND ate.cod_animal = ani.cod_animal
GROUP BY ani.nome, ate.cod_atendimento
HAVING count(exa.cod_exames) > 1;

--Seleciona os exames que o pre�o praticado � inferior ao tabelado
-- e que aparecem mais de uma vez
SELECT exa.preco_praticado
FROM exame exa, tipo_exames exat
WHERE exa.cod_exames = exat.cod_exames
AND exa.preco_praticado < exat.preco_tabelado
GROUP BY exa.preco_praticado
HAVING count(exa.preco_praticado) > 1;


--Seleciona os precos praticados maiores que o valor m�nimo da tabela
SELECT preco_praticado
FROM exame
GROUP BY preco_praticado
HAVING preco_praticado >
                        ANY (SELECT MIN(preco_tabelado) FROM tipo_exames)
ORDER BY preco_praticado;





-- Sub-consultas

--Seleciona o pre�o praticado inferior ao menor pre�o tabelado
SELECT preco_praticado
FROM exame
WHERE preco_praticado <
                    (SELECT MIN(preco_tabelado)
                     FROM tipo_exames);

--Seleciona a ultima consulta realizada na petshop
SELECT data_atendimento
FROM atendimento
WHERE data_atendimento >=
                         (SELECT MAX(data_atendimento)
                          FROM atendimento);