INSERT INTO Proprietario (CPF, Nome, Sexo, Estado, Bairro, Endereco, Cidade, Data_nascimento) VALUES
('17653467509', 'Jose da Silva', 'M', 'DF', 'Asa Sul', 'Rua 1', 'Brasília', '1995-03-15'),
('98467236153', 'Maria Silva', 'F', 'SP', 'Centro', 'Av. Paulista', 'São Paulo', '1988-07-20'),
('08428439021', 'Carlos Oliveira', 'M', 'RJ', 'Copacabana', 'Rua Atlântica', 'Rio de Janeiro', '1975-12-10'),
('34378693452', 'Ana Souza', 'F', 'MG', 'Savassi', 'Rua Bahia', 'Belo Horizonte', '1992-05-30'),
('42358634512', 'Ricardo Lima', 'M', 'RS', 'Moinhos', 'Av. Goethe', 'Porto Alegre', '1980-09-05'),
('34645672345', 'Fernanda Costa', 'F', 'BA', 'Barra', 'Rua Marques', 'Salvador', '1998-02-25'),
('45674352354', 'José Martins', 'M', 'PR', 'Batel', 'Rua Carlos de Carvalho', 'Curitiba', '1983-11-12');

INSERT INTO Agente (Matricula, Data_Contratacao, Tempo_servico) VALUES
(1001, '2015-06-10', INTERVAL '8 years'),
(1002, '2018-02-20', INTERVAL '5 years'),
(1003, '2012-09-15', INTERVAL '11 years'),
(1004, '2020-01-10', INTERVAL '3 years'),
(1005, '2016-11-30', INTERVAL '7 years'),
(1006, '2019-07-01', INTERVAL '4 years'),
(1007, '2014-05-22', INTERVAL '9 years');

INSERT INTO Local (Id_local, Latitude, Longitude, Vel_permitida) VALUES
(1, -15.7942, -47.8822, 60.0),
(2, -23.5505, -46.6333, 50.0),
(3, -22.9068, -43.1729, 80.0),
(4, -19.9167, -43.9345, 70.0),
(5, -30.0346, -51.2177, 60.0),
(6, -12.9777, -38.5016, 50.0),
(7, -25.4284, -49.2733, 80.0);

INSERT INTO Veiculo (Chassi, Placa, Fabricacao, Cor, Cod_modelo, cod_categoria, fk_Proprietario_CPF) VALUES
('ABC12345678901234', 'AAA1234', '2018-05-10', 'Preto', 1, 2, '17653467509'),
('DEF23456789012345', 'BBB2345', '2020-07-15', 'Branco', 2, 3, '98467236153'),
('GHI34567890123456', 'CCC3456', '2015-02-20', 'Azul', 3, 1, '08428439021'),
('JKL45678901234567', 'DDD4567', '2019-09-25', 'Vermelho', 4, 2, '34378693452'),
('MNO56789012345678', 'EEE5678', '2017-11-10', 'Cinza', 5, 3, '42358634512'),
('PQR67890123456789', 'FFF6789', '2021-01-05', 'Verde', 6, 1, '34645672345'),
('STU78901234567890', 'GGG7890', '2016-08-30', 'Amarelo', 7, 2, '45674352354');

INSERT INTO Infracao (Id, Data_hora, cod_tipo, Valor, fk_Veiculo_Chassi, fk_Agente_Matricula, fk_Local_Id_local)
VALUES
(1, '2023-05-01 08:30:00', 101, 150.00, 'ABC12345678901234', 1001, 1),
(2, '2023-06-15 12:00:00', 102, 200.00, 'DEF23456789012345', 1002, 2),
(3, '2023-07-20 14:30:00', 103, 250.00, 'GHI34567890123456', 1003, 3),
(4, '2023-08-10 09:45:00', 104, 100.00, 'JKL45678901234567', 1004, 4),
(5, '2023-09-25 18:00:00', 105, 300.00, 'MNO56789012345678', 1005, 5),
(6, '2023-10-05 16:30:00', 106, 180.00, 'PQR67890123456789', 1006, 6),
(7, '2023-11-13 10:15:00', 107, 120.00, 'STU78901234567890', 1007, 7);
