SELECT * FROM Veiculo  LEFT JOIN proprietario 
ON Veiculo.fk_Proprietario_CPF = proprietario.cpf
WHERE cpf = '98467236153';

SELECT * FROM proprietario WHERE nome LIKE '%Silva%';

SELECT infracao.* , veiculo.* FROM infracao 
JOIN veiculo ON infracao.fk_veiculo_chassi = chassi
WHERE infracao.data_hora
BETWEEN '2023-02-12' AND '2023-09-12'; 

SELECT Cod_modelo, COUNT(*) AS Numero_de_Veiculos
FROM Veiculo
GROUP BY Cod_modelo
ORDER BY Numero_de_Veiculos DESC;
