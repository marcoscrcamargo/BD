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

INSERT INTO Preparador VALUES (1, 'Rodrigo Mello', 'M', 'mello@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (2, 'Moacir Ponti', 'M', 'ponti@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (3, 'Thiago Pardo', 'M', 'thiago@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO Rotina VALUES (1, 1);
INSERT INTO Rotina VALUES (2, 2);
INSERT INTO Rotina VALUES (3, 3);
INSERT INTO Rotina VALUES (4, 4);

INSERT INTO Treino VALUES (1, 'Treino A');
INSERT INTO Treino VALUES (2, 'Treino B');
INSERT INTO Treino VALUES (3, 'Treino C');
INSERT INTO Treino VALUES (4, 'Treino D');
INSERT INTO Treino VALUES (5, 'Treino E');

INSERT INTO Preparo VALUES (1, 'Pr�-Treino A', '200g de carboidratos e 100g de proteinas', 6);
INSERT INTO Preparo VALUES (2, 'Pr�-Treino B', '300g de carboidratos e 200g de proteinas', 8);
INSERT INTO Preparo VALUES (3, 'Pr�-Treino C', '400g de carboidratos e 250g de proteinas', 12);

INSERT INTO AtividadeDeRecuperacao VALUES (1, 'P�s-Treino A');
INSERT INTO AtividadeDeRecuperacao VALUES (2, 'P�s-Treino B');
INSERT INTO AtividadeDeRecuperacao VALUES (3, 'P�s-Treino C');

-- Doenca(\underline{CID}, Descricao)
INSERT INTO Doenca VALUES ('J09', 'Influenza [gripe] devida a v�rus identificado da gripe avi�ria');
INSERT INTO Doenca VALUES ('J67 ', 'Pneumonite hipersensibilidade devida a outras poeiras org�nicas');
INSERT INTO Doenca VALUES ('J30', 'Rinite al�rgica e vasomotora ');

-- M�dico(\underline{ID}, \underline{\underline{Documento de Identidade}}, \underline{\underline{\underline{CRM ou Equivalente}}}, Nome)
INSERT INTO Medico VALUES (1, 123456789, 23, 'Rafoso');
INSERT INTO Medico VALUES (2, 123098456, 55, 'Marcola');
INSERT INTO Medico VALUES (3, 098765432, 33, 'Leticiru');

INSERT INTO AtletaMedicoAtende VALUES (1, 1);
INSERT INTO AtletaMedicoAtende VALUES (2, 2);
INSERT INTO AtletaMedicoAtende VALUES (3, 3);

INSERT INTO Consulta VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1);
INSERT INTO Consulta VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2);
INSERT INTO Consulta VALUES (3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3);

INSERT INTO ConsultaDoenca VAlUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ConsultaDoenca VAlUES ('J30', 2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ConsultaDoenca VAlUES ('J09', 3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO Diagnostico VALUES ('J09', 3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta est� doente.', 1);
INSERT INTO Diagnostico VALUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta n�o est� doente.', 3);
INSERT INTO Diagnostico VALUES ('J30', 2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta est� doente.', 2);

INSERT INTO AtletaMedicoOcorrencia VALUES (1, 1);
INSERT INTO AtletaMedicoOcorrencia VALUES (2, 2);
INSERT INTO AtletaMedicoOcorrencia VALUES (3, 3);

INSERT INTO TipoOcorrenciaOlimpica VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Lesao');
INSERT INTO TipoOcorrenciaOlimpica VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Exame de Doping');
INSERT INTO TipoOcorrenciaOlimpica VALUES (3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Lesao');

INSERT INTO ExameDeDoping VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Exame resultou em positivo.');

INSERT INTO TesteDeDoping VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 2);
