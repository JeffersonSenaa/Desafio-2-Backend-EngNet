CREATE DATABASE detrandb;

CREATE TABLE IF NOT EXISTS Proprietario (
    CPF VARCHAR(11) PRIMARY KEY UNIQUE,
    Nome VARCHAR(50),
    Sexo CHAR(1),
    Estado VARCHAR(50),
    Bairro VARCHAR(50),
    Endereco VARCHAR(50),
    Cidade VARCHAR(50),
    Data_nascimento DATE
);

CREATE TABLE IF NOT EXISTS Agente (
    Matricula INT PRIMARY KEY UNIQUE,
    Data_Contratacao DATE,
    Tempo_servico INTERVAL 
);

CREATE TABLE IF NOT EXISTS Local (
    Id_local INT PRIMARY KEY UNIQUE,
    Latitude DECIMAL(10, 7),
    Longitude DECIMAL(10, 7),
    Vel_permitida FLOAT
);

CREATE TABLE IF NOT EXISTS Veiculo (
    Chassi VARCHAR(17) PRIMARY KEY, 
    Placa VARCHAR(7),
    Fabricacao DATE,
    Cor VARCHAR(50),
    Cod_modelo INT,
    cod_categoria INT,
    fk_Proprietario_CPF VARCHAR(11),
    FOREIGN KEY (fk_Proprietario_CPF) REFERENCES Proprietario(CPF)
);

CREATE TABLE IF NOT EXISTS Infracao (
    Id INT NOT NULL PRIMARY KEY UNIQUE,
    Data_hora TIMESTAMP,
    cod_tipo INT,
    Valor NUMERIC(10,2), 
    fk_Veiculo_Chassi VARCHAR(17), 
    fk_Agente_Matricula INT,
    fk_Local_Id_local INT,
    FOREIGN KEY (fk_Veiculo_Chassi) REFERENCES Veiculo(Chassi),
    FOREIGN KEY (fk_Agente_Matricula) REFERENCES Agente(Matricula),
    FOREIGN KEY (fk_Local_Id_local) REFERENCES Local(Id_local)
);
