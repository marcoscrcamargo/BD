-- ModalidadeEsportiva(\underline{ID}, \underline{\underline{Nome}}, Descricao)
CREATE TABLE ModalidadeEsportiva(
    ID integer NOT NULL,
        CHECK (ID > 0),
    Nome varchar2(60) NOT NULL,
    Descricao varchar2(1000) NOT NULL,

    PRIMARY KEY (ID),
    UNIQUE (Nome)
);

-- Nacao(\underline{Nome}, Continente, Imagem da Bandeira, Hino Nacional, Modalidade)
CREATE TABLE Nacao(
    Nome varchar2(60) NOT NULL,
    Continente varchar2(7) NOT NULL,
        CHECK (Continente in ('America', 'Asia', 'Europa', 'Africa', 'Oceania')),
    ImagemDaBandeira blob DEFAULT EMPTY_BLOB(),
    HinoNacional blob DEFAULT EMPTY_BLOB(),
    Modalidade integer NOT NULL,

    PRIMARY KEY (Nome),
    FOREIGN KEY (Modalidade) REFERENCES ModalidadeEsportiva(ID)
);


-- Atleta(\underline{Passaporte}, Nome, Sexo, Altura, Peso, Dia, Mes, Ano, Nacao)
CREATE TABLE Atleta(
    Passaporte integer NOT NULL,
        CHECK (Passaporte > 0),
    Nome varchar2(60) NOT NULL,
    Sexo varchar2(1) NOT NULL,
        CHECK (Sexo in ('M', 'F')),
    Altura decimal(5, 2) NOT NULL,
        CHECK (Altura BETWEEN 0.0 AND 2.5),
    Peso decimal(5, 2) NOT NULL,
        CHECK (Peso BETWEEN 0.0 AND 500.0),
    Nascimento date NOT NULL,
    Nacao varchar2(60) NOT NULL,

    PRIMARY KEY (Passaporte),
    FOREIGN KEY (Nacao) REFERENCES Nacao(Nome)
);

-- Preparador(\underline{Passaporte}, Nome, Sexo, E-mail, Senha, Cidade, Estado, Dia, Mes, Ano, Nacao, Modalidade)
CREATE TABLE Preparador(
    Passaporte integer NOT NULL,
        CHECK (Passaporte > 0),
    Nome varchar2(60) NOT NULL,
    Sexo varchar2(1) NOT NULL,
        CHECK (Sexo in ('M', 'F')),
    Email varchar2(255) NOT NULL,
        CHECK (REGEXP_LIKE(Email, '^[a-zA-Z0-9.\_]+@[a-zA-Z]+(\.[a-z]+)+$')),
    Senha varchar2(30) NOT NULL,
        CHECK (LENGTH(Senha) >= 6),
    Cidade varchar2(60) NOT NULL,
    Estado varchar2(60) NOT NULL,
    Nacao varchar2(60) NOT NULL,
    Modalidade integer NOT NULL,
    Nascimento date NOT NULL,

    PRIMARY KEY (Passaporte),
    FOREIGN KEY (Nacao) REFERENCES Nacao(Nome),
    FOREIGN KEY (Modalidade) REFERENCES ModalidadeEsportiva(ID)
);

-- Rotina(\underline{ID}, Tempo de Repeticao)
CREATE TABLE Rotina(
    ID integer NOT NULL,
        CHECK (ID > 0),
    TempoDeRepeticao number(3) NOT NULL,
        CHECK (TempoDeRepeticao < 256),

    PRIMARY KEY (ID)
);

-- Treino(\underline{ID}, Descricao)
CREATE TABLE Treino(
    ID integer NOT NULL,
        CHECK (ID > 0),
    Descricao varchar2(1000) NOT NULL,

    PRIMARY KEY (ID)
);

-- Preparo(\underline{ID}, Descricao, Alimentacao, Horas de Descanso)
CREATE TABLE Preparo(
    ID integer NOT NULL,
        CHECK (ID > 0),
    Descricao varchar2(1000) NOT NULL,
    Alimentacao varchar2(1000) NOT NULL,
    HorasDeDescanso number(2) NOT NULL,

    PRIMARY KEY (ID)
);

-- AtividadeDeRecuperacao(\underline{ID}, Descricao)
CREATE TABLE AtividadeDeRecuperacao(
    ID integer NOT NULL,
        CHECK (ID > 0),
    Descricao varchar2(1000) NOT NULL,

    PRIMARY KEY (ID)
);

-- Médico(\underline{ID}, \underline{\underline{Documento de Identidade}}, \underline{\underline{\underline{CRM ou Equivalente}}}, Nome)
CREATE TABLE Medico(
    ID integer NOT NULL,
        CHECK (ID > 0),
    DocumentoDeIdentidade integer NOT NULL,
        CHECK (DocumentoDeIdentidade > 0),
    CRM integer NOT NULL,
        CHECK (CRM > 0),
    Nome varchar2(60) NOT NULL,

    PRIMARY KEY (ID),
    UNIQUE (DocumentoDeIdentidade),
    UNIQUE (CRM)
);
-- Doenca(\underline{CID}, Descricao)
CREATE TABLE Doenca(
    CID varchar2(5) NOT NULL,
    Descricao varchar2(1000) NOT NULL,

    PRIMARY KEY (CID)
);

-- AtletaMédicoAtende(\underline{Atleta}, \underline{Médico})
CREATE TABLE AtletaMedicoAtende(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,

    PRIMARY KEY (Atleta, Medico),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte),
    FOREIGN KEY (Medico) REFERENCES Medico(ID)
);

-- Consulta(\underline{Médico}, \underline{Atleta}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, \underline{\underline{ID}})
CREATE TABLE Consulta(
    Medico integer NOT NULL,
    Atleta integer NOT NULL,
    DataHora Date NOT NULL,
    ID integer NOT NULL,
        CHECK (ID > 0),
        
    PRIMARY KEY (Medico, Atleta, DataHora),
    FOREIGN KEY (Medico, Atleta) REFERENCES AtletaMedicoAtende(Medico, Atleta),
    UNIQUE (ID)
);

-- ConsultaDoenca(\underline{Doenca}, \underline{Médico}, \underline{Atleta}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano})    
CREATE TABLE ConsultaDoenca(
    Doenca varchar2(5) NOT NULL,
    Medico integer NOT NULL,
    Atleta integer NOT NULL,
    DataHora Date NOT NULL,
    
    PRIMARY KEY (Doenca, Medico, Atleta, DataHora),
    FOREIGN KEY (Doenca) REFERENCES Doenca(CID),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte),
    FOREIGN KEY (Medico) REFERENCES Medico(ID)
);

-- Diagnóstico(\underline{Doenca}, \underline{Médico}, \underline{Atleta}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, \underline{\underline{ID}}, Descricao)
CREATE TABLE Diagnostico(
    Doenca varchar2(5) NOT NULL,
    Medico integer NOT NULL,
    Atleta integer NOT NULL,
    DataHora Date NOT NULL,
    Descricao varchar2(1000),
    ID integer NOT NULL,
        CHECK (ID > 0),
        
    PRIMARY KEY (Doenca, Medico, Atleta, DataHora),
    FOREIGN KEY (Doenca, Medico, Atleta, DataHora) REFERENCES ConsultaDoenca(Doenca, Medico, Atleta, DataHora),
    UNIQUE (ID)
);

-- AtletaMédicoOcorrencia(\underline{Atleta}, \underline{Médico})
CREATE TABLE AtletaMedicoOcorrencia(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,
    
    PRIMARY KEY (Atleta, Medico),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte),
    FOREIGN KEY (Medico) REFERENCES Medico(ID)
);

-- TipoOcorrenciaOlímpica(\underline{Atleta}, \underline{Médico}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, \underline{\underline{ID}}, Tipo)
CREATE TABLE TipoOcorrenciaOlimpica(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,
    DataHora Date NOT NULL,
    ID integer NOT NULL,
        CHECK (ID > 0),
    Tipo varchar2(15) NOT NULL,
        CHECK (Tipo in ('Lesao', 'Exame de Doping')),
    
    PRIMARY KEY (Atleta, Medico, DataHora),
    FOREIGN KEY (Atleta, Medico) REFERENCES AtletaMedicoOcorrencia(Atleta, Medico),
    UNIQUE (ID)
);

-- ExameDeDoping(\underline{Atleta}, \underline{Médico}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, Descricao dos resultados)    
CREATE TABLE ExameDeDoping(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,
    DataHora Date NOT NULL,
    DesricaoDosResultados varchar2(1000) NOT NULL,
    
    PRIMARY KEY (Atleta, Medico, DataHora),
    FOREIGN KEY (Atleta, Medico, DataHora) REFERENCES TipoOcorrenciaOlimpica(Atleta, Medico, DataHora)
);

-- TesteDeDoping(\underline{Atleta}, \underline{Médico}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, \underline{ID}, Modalidade)
CREATE TABLE TesteDeDoping(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,
    DataHora Date NOT NULL,
    ID integer NOT NULL,
        CHECK (ID > 0),
    Modalidade integer NOT NULL,
    
    PRIMARY KEY (Atleta, Medico, DataHora),
    FOREIGN KEY (Atleta, Medico, DataHora) REFERENCES ExameDeDoping(Atleta, Medico, DataHora),
    FOREIGN KEY (Modalidade) REFERENCES ModalidadeEsportiva(ID)
);

-- MétodoDeTratamento(\underline{Doenca}, \underline{Médico}, \underline{Atleta}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, \underline{ID}, Descricao do Método, Descricao da Efetividade)
CREATE TABLE MetodoDeTratamento(
    Doenca varchar2(5) NOT NULL,
    Medico integer NOT NULL,
    Atleta integer NOT NULL,
    DataHora Date NOT NULL,
    ID integer NOT NULL,
        CHECK (ID > 0),
    DescricaoDoMetodo varchar2(1000),
    DescricaoDaEfetividade varchar2(1000),
    
    PRIMARY KEY (Doenca, Medico, Atleta, DataHora),
    FOREIGN KEY (Doenca, Medico, Atleta, DataHora) REFERENCES Diagnostico(Doenca, Medico, Atleta, DataHora)
);
-- Lesao(\underline{Atleta}, \underline{Médico}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, Descricao)
CREATE TABLE Lesao(
    Atleta integer NOT NULL,
    Medico integer NOT NULL,
    DataHora Date NOT NULL,
    Descricao varchar2(1000),
    
    PRIMARY KEY (Medico, Atleta, DataHora),
    FOREIGN KEY (Medico, Atleta, DataHora) REFERENCES TipoOcorrenciaOlimpica(Medico, Atleta, DataHora)
);

-- ModalidadeAtleta(\underline{Modalidade}, \underline{Atleta})
CREATE TABLE ModalidadeAtleta(
    Modalidade integer NOT NULL,
    Atleta integer NOT NULL,
    
    PRIMARY KEY (Modalidade, Atleta),
    FOREIGN KEY (Modalidade) REFERENCES ModalidadeEsportiva(ID),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte)
    
);
-- PreparadorAtleta(\underline{Preparador}, \underline{Atleta})
CREATE TABLE PreparadorAtelta(
    Preparador integer NOT NULL,
    Atleta integer NOT NULL,
    
    PRIMARY KEY (Preparador, Atleta),
    FOREIGN KEY (Preparador) REFERENCES Preparador(Passaporte),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte)
);

-- RotinaTreino(\underline{Rotina}, \underline{Treino})
CREATE TABLE RotinaTreino(
    Rotina integer NOT NULL,
    Treino integer NOT NULL,
    
    PRIMARY KEY (Rotina, Treino),
    FOREIGN KEY (Rotina) REFERENCES Rotina(ID),
    FOREIGN KEY (Treino) REFERENCES Treino(ID)
);

-- TreinoPreparo(\underline{Treino}, \underline{Preparo})
CREATE TABLE TreinoPreparo(
    Treino integer NOT NULL,
    Preparo integer NOT NULL,

    PRIMARY KEY (Treino, Preparo),
    FOREIGN KEY (Preparo) REFERENCES Preparo(ID),
    FOREIGN KEY (Treino) REFERENCES Treino(ID)
);

-- TreinoAtividadeDeRecuperacao(\underline{Treino}, \underline{Atividade de Recuperacao})
CREATE TABLE TreinoAtividadeDeRecuperacao(
    Treino integer NOT NULL,
    AtividadeDeRecuperacao integer NOT NULL,
    
    PRIMARY KEY (Treino, AtividadeDeRecuperacao),
    FOREIGN KEY (AtividadeDeRecuperacao) REFERENCES AtividadeDeRecuperacao(ID),
    FOREIGN KEY (Treino) REFERENCES Treino(ID)
);

-- RotinaAtleta(\underline{Rotina}, \underline{Atleta})
CREATE TABLE RotinaAtleta(
    Rotina integer NOT NULL,
    Atleta integer NOT NULL,
    
    PRIMARY KEY (Rotina, Atleta),
    FOREIGN KEY (Rotina) REFERENCES Rotina(ID),
    FOREIGN KEY (Atleta) REFERENCES Atleta(Passaporte)
);

-- PreparadorRotina(\underline{Rotina}, Preparador)
CREATE TABLE PreparadorRotina(
    Preparador integer NOT NULL,
    Rotina integer NOT NULL,
    
    PRIMARY KEY (Preparador, Rotina),
    FOREIGN KEY (Preparador) REFERENCES Preparador(Passaporte),
    FOREIGN KEY (Rotina) REFERENCES Rotina(ID)

);

-- TelefonePreparador(\underline{DDD}, \underline{Número}, \underline{Preparador})
CREATE TABLE TelefonePreparador(
    DDD number(2) NOT NULL,
    Numero integer NOT NULL, 
    Preparador integer NOT NULL,

    PRIMARY KEY (DDD, Numero, Preparador),
    FOREIGN KEY (Preparador) REFERENCES Preparador(Passaporte)
);

-- RotinaDiaDaSemana(\underline{Rotina}, \underline{Dia da Semana})
CREATE TABLE RotinaDiaDaSemana(
    Rotina integer NOT NULL,
    DiaDaSemana varchar2(7) NOT NULL,
        CHECK (DiaDaSemana in ('Segunda', 'Terca', 'Quarta', 'Quinta', 'Sexta', 'Sabado', 'Domingo')),

    PRIMARY KEY (Rotina),
    FOREIGN KEY (Rotina) REFERENCES Rotina(ID)
);

-- TelefoneMédico(\underline{DDD}, \underline{Número}, \underline{Médico})
CREATE TABLE TelefoneMedico(
    DDD number(2) NOT NULL,
    Numero integer NOT NULL, 
    Medico integer NOT NULL,

    PRIMARY KEY (DDD, Numero, Medico),
    FOREIGN KEY (Medico) REFERENCES Medico(ID)
);

-- EnderecoMédico(\underline{Médico}, Rua, Número, Complemento, CEP, Cidade, Estado)
CREATE TABLE EnderecoMedico(
    Medico integer NOT NULL,
    Rua varchar2(40) NOT NULL,
    Numero integer NOT NULL,
        CHECK (Numero > 0),
    Complemento varchar2(60) NOT NULL,
    CEP integer NOT NULL,
        CHECK (CEP > 0),
    Cidade varchar2(60) NOT NULL,
    Estado varchar2(60) NOT NULL,
   
    PRIMARY KEY (Medico),
    FOREIGN KEY (Medico) REFERENCES Medico(ID)
);

-- Sintoma(\underline{Médico}, \underline{Atleta}, \underline{Hora}, \underline{Dia}, \underline{Mes}, \underline{Ano}, Sintoma)
CREATE TABLE Sintoma(
    Medico integer NOT NULL,
    Atleta integer NOT NULL,
    DataHora Date NOT NULL,
    Sintoma varchar2(1000) NOT NULL,
    
    PRIMARY KEY (Medico, Atleta, DataHora),
    FOREIGN KEY (Medico, Atleta, DataHora) REFERENCES Consulta(Medico, Atleta, DataHora)

);
