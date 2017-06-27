-- ALTER DATE MODE
alter session set nls_date_format = 'dd/MON/yyyy hh24:mi:ss';


-- INSERT INTO ModalidadeEsportiva VALUES (0, 'Judo', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (1, 'Futebol', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (2, 'Ciclismo', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (3, 'Handebal', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (4, 'Nata��o', 'descri��o');
INSERT INTO ModalidadeEsportiva VALUES (5, 'Atletismo', 'descri��o'); 


INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Brasil', 'America', 1);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Jap�o', 'Asia', 2);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Indonesia', 'Asia', 3);


INSERT INTO Atleta VALUES (1, 'Marcos', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');
INSERT INTO Atleta VALUES (2, 'Victor', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Indonesia');
INSERT INTO Atleta VALUES (3, 'Gabriel', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Jap�o');

-- Preparador(\underline{Passaporte}, Nome, Sexo, E-mail, Senha, Cidade, Estado, Dia, Mes, Ano, Nacao, Modalidade)

INSERT INTO Preparador VALUES (1, 'Rodrigo Mello', 'M', 'mello@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));

