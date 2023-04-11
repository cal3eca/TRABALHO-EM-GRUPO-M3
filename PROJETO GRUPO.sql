CREATE TABLE Alunos (
    Matricula SMALLINT PRIMARY KEY NOT NULL,
    Nome VARCHAR (200),
    Telefone VARCHAR (15),
    CPF VARCHAR(11),
    Endereco VARCHAR (200),
    Email VARCHAR (100)
);

CREATE TABLE Funcao (
    ID SMALLINT PRIMARY KEY NOT NULL,
    Nome VARCHAR (200),
    Salario DECIMAL (7,2)
);

CREATE TABLE Departamento (
    ID SMALLINT PRIMARY KEY NOT NULL,
    ID_gerente SMALLINT ,
    Local VARCHAR (200),
    Nome VARCHAR (200)
);


CREATE TABLE Funcionarios (
    ID SMALLINT PRIMARY KEY NOT NULL,
    ID_departamento SMALLINT,
    ID_funcao SMALLINT,
    Nome VARCHAR (200),
    CPF VARCHAR(11),
    Endereco VARCHAR(200),
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    Salario DECIMAL (7,2),
    FOREIGN KEY (ID_departamento) REFERENCES Departamento(ID),
    FOREIGN KEY (ID_funcao) REFERENCES Funcao(ID)
    );


CREATE TABLE Facilitadores (
    ID SMALLINT PRIMARY KEY NOT NULL,
    ID_funcionario SMALLINT NOT NULL,
    Nome VARCHAR (200),
    Endereco VARCHAR(200),
    CPF VARCHAR (11),
    Telefone VARCHAR (15),
    Email VARCHAR (100),
    Salario DECIMAL (7,2),
    FOREIGN KEY (ID_funcionario) REFERENCES Funcionarios(ID)  
);

CREATE TABLE Departamento_Pessoal (
    ID SMALLINT PRIMARY KEY NOT NULL,
    ID_funcionario SMALLINT NOT NULL,
    Nome VARCHAR(200),
    Endereco VARCHAR(200),
    CPF VARCHAR(11),
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    Salario DECIMAL(7,2),
    FOREIGN KEY (ID_funcionario) REFERENCES Funcionarios(ID) 
);

CREATE TABLE Cursos (
    ID SMALLINT PRIMARY KEY NOT NULL,
    Nome VARCHAR (200),
    Carga_Horaria SMALLINT,
    Preco DECIMAL (7,2)
);

CREATE TABLE Alunos_Cursos (
    Matricula_aluno SMALLINT NOT NULL,
    ID_cursos SMALLINT NOT NULL,
    Turno VARCHAR (6),
    PRIMARY KEY (Matricula_aluno, ID_cursos),
    FOREIGN KEY (Matricula_aluno) REFERENCES Alunos(Matricula),
    FOREIGN KEY (ID_cursos) REFERENCES Cursos(ID)
);

CREATE TABLE Cursos_Facilitadores (
    ID_facilitadores SMALLINT,
    ID_cursos SMALLINT,
    Turno VARCHAR (6),
    PRIMARY KEY (ID_facilitadores, ID_cursos),
    FOREIGN KEY (ID_facilitadores) REFERENCES Facilitadores(ID),
    FOREIGN KEY (ID_cursos) REFERENCES Cursos(ID)
);


CREATE TABLE Modulos (
    ID SMALLINT PRIMARY KEY,
    Nome VARCHAR
);

CREATE TABLE Cursos_Modulos (
    ID_modulos SMALLINT,
    ID_cursos SMALLINT,
    PRIMARY KEY (ID_modulos, ID_cursos),
    FOREIGN KEY (ID_modulos) REFERENCES Modulos(ID),
    FOREIGN KEY (ID_cursos) REFERENCES Cursos(ID)
);

ALTER TABLE Departamento
ADD CONSTRAINT ID_gerente FOREIGN KEY (ID_gerente) REFERENCES Funcionarios(ID);
