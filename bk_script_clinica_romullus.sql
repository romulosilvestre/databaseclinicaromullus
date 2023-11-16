CREATE DATABASE ClinicaRomullus;--crie o banco
GO
USE ClinicaRomullus; --use o banco
GO
CREATE TABLE Medico ( --cria a tabela
    Id INT PRIMARY KEY IDENTITY(1,1),
    CRM NCHAR(8) NOT NULL,
    Nome VARCHAR(80) NOT NULL
);
GO
CREATE TABLE Paciente (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(80),
    DataNascimento DATE,
    CPF NCHAR(11)
);
GO
INSERT INTO Paciente(Nome,DataNascimento,CPF)VALUES('Eduardo Costa','01-01-2000','88888888888');
GO
SELECT  * FROM Paciente;
INSERT INTO Medico(CRM,Nome)VALUES('DF224455','Yuri Luz');
INSERT INTO Medico(CRM,Nome)VALUES('GO114455','Thainah');
GO
SELECT * FROM Medico;
GO
INSERT INTO Medico(CRM,Nome)VALUES('GO114455','Thainah');
TRUNCATE TABLE Medico;
GO
ALTER TABLE Medico
ADD CONSTRAINT UQ_CRM UNIQUE (CRM);
GO
SELECT * FROM Medico;