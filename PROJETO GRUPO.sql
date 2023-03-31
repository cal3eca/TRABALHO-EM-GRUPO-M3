CREATE TABLE Aluno (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(255),
    data_nascimento DATE,
    curso_id INT,
    modulo_atual_id INT,
    data_inicio DATE,
    data_conclusao DATE,
    nota FLOAT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id),
    FOREIGN KEY (modulo_atual_id) REFERENCES Modulo(id)
);

CREATE TABLE Facilitador (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(255),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);

CREATE TABLE Departamento (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE Modulo (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    curso_id INT,
    facilitador_id INT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id),
    FOREIGN KEY (facilitador_id) REFERENCES Facilitador(id)
);

CREATE TABLE Curso (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);