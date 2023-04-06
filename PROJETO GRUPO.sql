CREATE TABLE Departamento (
    id_departamento INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT
);

CREATE TABLE Curso (
    id_curso INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    departamento_id INTEGER,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Facilitador (
    id_facilitador INTEGER PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    departamento_id INTEGER,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Modulo (
    id_modulo INTEGER PRIMARY KEY,
    nome TEXT,
    descricao TEXT,
    curso_id INTEGER,
    facilitador_id INTEGER,
    FOREIGN KEY (curso_id) REFERENCES Curso(id_curso),
    FOREIGN KEY (facilitador_id) REFERENCES Facilitador(id_facilitador)
);

CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    data_nascimento DATE,
    turma_id INTEGER, 
    curso_id INTEGER,
    modulo_atual_id INTEGER,
    data_inicio DATE,
    data_conclusao DATE,
    nota FLOAT,
    FOREIGN KEY (curso_id) REFERENCES Curso(id_curso),
    FOREIGN KEY (modulo_atual_id) REFERENCES Modulo(id_modulo)
);
