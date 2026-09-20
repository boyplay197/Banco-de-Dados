CREATE DATABASE IF NOT EXISTS Faculdade;
USE Faculdade;

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    salario DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY (id_professor)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    data_nascimento DATE,
    ativo BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (id_aluno)
);

CREATE TABLE disciplina (
    id_disciplina INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT DEFAULT 60,
    id_professor INT,
    PRIMARY KEY (id_disciplina),
    FOREIGN KEY (id_professor)
        REFERENCES professor(id_professor)
);

INSERT INTO professor (nome, email, salario) VALUES
('Carlos Silva', 'carlos@faculdade.com', 4500.00),
('Maria Souza', 'maria@faculdade.com', 5200.00),
('João Oliveira', 'joao@faculdade.com', 4800.00);

INSERT INTO aluno (nome, email, data_nascimento) VALUES
('Ana Santos', 'ana@email.com', '2002-05-10'),
('Pedro Lima', 'pedro@email.com', '2001-08-22'),
('Lucas Ferreira', 'lucas@email.com', '2003-01-15');

INSERT INTO disciplina (nome, carga_horaria, id_professor) VALUES
('Banco de Dados', 80, 1),
('Programação', 80, 2),
('Engenharia de Software', 60, 3);