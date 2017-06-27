-- ALTER DATE MODE
alter session set nls_date_format = 'dd/MON/yyyy hh24:mi:ss';

-- INSERT INTO ModalidadeEsportiva VALUES (0, 'Judo', 'descrição'); 
INSERT INTO ModalidadeEsportiva VALUES (1, 'Futebol', 'descrição'); 
INSERT INTO ModalidadeEsportiva VALUES (2, 'Ciclismo', 'descrição'); 
INSERT INTO ModalidadeEsportiva VALUES (3, 'Handebal', 'descrição'); 
INSERT INTO ModalidadeEsportiva VALUES (4, 'Natação', 'descrição');
INSERT INTO ModalidadeEsportiva VALUES (5, 'Atletismo', 'descrição'); 

INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Brasil', 'America', 1);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Japão', 'Asia', 2);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Indonesia', 'Asia', 3);

INSERT INTO Atleta VALUES (1, 'Marcos Amargo', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');
INSERT INTO Atleta VALUES (2, 'Victor Forberu', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Indonesia');
INSERT INTO Atleta VALUES (3, 'Gabriel Siemmel Nacismento', 'M', 1.68, 70.0, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 'Japão');

INSERT INTO Preparador VALUES (1, 'Rodrigo Mello', 'M', 'mello@olimpiadas.com', '12345678', 'São Carlos', 'São Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (2, 'Moacir Ponti', 'M', 'ponti@olimpiadas.com', '12345678', 'São Carlos', 'São Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (3, 'Thiago Pardo', 'M', 'thiago@olimpiadas.com', '12345678', 'São Carlos', 'São Paulo', 'Brasil', 1, TO_DATE('1997/02/07 21:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO Rotina VALUES (1, 1);
INSERT INTO Rotina VALUES (2, 2);
INSERT INTO Rotina VALUES (3, 3);
INSERT INTO Rotina VALUES (4, 4);

INSERT INTO Treino VALUES (1, 'Treino A');
INSERT INTO Treino VALUES (2, 'Treino B');
INSERT INTO Treino VALUES (3, 'Treino C');
INSERT INTO Treino VALUES (4, 'Treino D');
INSERT INTO Treino VALUES (5, 'Treino E');

INSERT INTO Preparo VALUES (1, 'Pré-Treino A', '200g de carboidratos e 100g de proteinas', 6);
INSERT INTO Preparo VALUES (2, 'Pré-Treino B', '300g de carboidratos e 200g de proteinas', 8);
INSERT INTO Preparo VALUES (3, 'Pré-Treino C', '400g de carboidratos e 250g de proteinas', 12);

INSERT INTO AtividadeDeRecuperacao VALUES (1, 'Pós-Treino A');
INSERT INTO AtividadeDeRecuperacao VALUES (2, 'Pós-Treino B');
INSERT INTO AtividadeDeRecuperacao VALUES (3, 'Pós-Treino C');

-- Doenca(\underline{CID}, Descricao)
INSERT INTO Doenca VALUES ('J09', 'Influenza [gripe] devida a vírus identificado da gripe aviária');
INSERT INTO Doenca VALUES ('J67 ', 'Pneumonite hipersensibilidade devida a outras poeiras orgânicas');
INSERT INTO Doenca VALUES ('J30', 'Rinite alérgica e vasomotora ');

-- Médico(\underline{ID}, \underline{\underline{Documento de Identidade}}, \underline{\underline{\underline{CRM ou Equivalente}}}, Nome)
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

INSERT INTO Diagnostico VALUES ('J09', 3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta está doente.', 1);
INSERT INTO Diagnostico VALUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta não está doente.', 3);
INSERT INTO Diagnostico VALUES ('J30', 2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta está doente.', 2);

INSERT INTO AtletaMedicoOcorrencia VALUES (1, 1);
INSERT INTO AtletaMedicoOcorrencia VALUES (2, 2);
INSERT INTO AtletaMedicoOcorrencia VALUES (3, 3);

INSERT INTO TipoOcorrenciaOlimpica VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Lesao');
INSERT INTO TipoOcorrenciaOlimpica VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Exame de Doping');
INSERT INTO TipoOcorrenciaOlimpica VALUES (3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Lesao');

INSERT INTO ExameDeDoping VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Exame resultou em positivo.');

INSERT INTO TesteDeDoping VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 2);

INSERT INTO MetodoDeTratamento VALUES ('J09', 3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Tomar remedios', 'Efetivo');
INSERT INTO MetodoDeTratamento VALUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Repousar', 'Efetividade média');
INSERT INTO MetodoDeTratamento VALUES ('J30', 2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Remédio Injetavel', 'Muito efetivo');

INSERT INTO Lesao VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O atleta quebrou a perna');
INSERT INTO Lesao VALUES (3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O atleta torceu o pé');

INSERT INTO ModalidadeAtleta VALUES (1, 1);
INSERT INTO ModalidadeAtleta VALUES (2, 2);
INSERT INTO ModalidadeAtleta VALUES (3, 3);

INSERT INTO PreparadorAtleta VALUES (1, 1);
INSERT INTO PreparadorAtleta VALUES (2, 2);
INSERT INTO PreparadorAtleta VALUES (3, 3);

INSERT INTO RotinaTreino VALUES (1, 1);
INSERT INTO RotinaTreino VALUES (2, 2);
INSERT INTO RotinaTreino VALUES (3, 3);

INSERT INTO TreinoPreparo VALUES (1, 1);
INSERT INTO TreinoPreparo VALUES (2, 2);
INSERT INTO TreinoPreparo VALUES (3, 3);

INSERT INTO TreinoAtividadeDeRecuperacao VALUES (1, 1);
INSERT INTO TreinoAtividadeDeRecuperacao VALUES (2, 2);
INSERT INTO TreinoAtividadeDeRecuperacao VALUES (3, 3);

INSERT INTO RotinaAtleta VALUES (1, 1);
INSERT INTO RotinaAtleta VALUES (2, 2);
INSERT INTO RotinaAtleta VALUES (3, 3);

INSERT INTO RotinaAtleta VALUES (1, 1);
INSERT INTO RotinaAtleta VALUES (2, 2);
INSERT INTO RotinaAtleta VALUES (3, 3);

INSERT INTO PreparadorRotina VALUES (1, 1);
INSERT INTO PreparadorRotina VALUES (2, 2);
INSERT INTO PreparadorRotina VALUES (3, 3);

INSERT INTO TelefonePreparador VALUES (16, 50506060, 1);
INSERT INTO TelefonePreparador VALUES (16, 20307070, 2);
INSERT INTO TelefonePreparador VALUES (16, 20304050, 3);

INSERT INTO TelefoneMedico VALUES (13, 50506060, 1);
INSERT INTO TelefoneMedico VALUES (13, 20307070, 2);
INSERT INTO TelefoneMedico VALUES (13, 20304050, 3);

INSERT INTO RotinaDiaDaSemana VALUES (1, 'Segunda');
INSERT INTO RotinaDiaDaSemana VALUES (2, 'Terca');
INSERT INTO RotinaDiaDaSemana VALUES (3, 'Quarta');

INSERT INTO EnderecoMedico VALUES (1, 'Carlos de Camargo Salles', 306, 'ap 2', 13550650, 'São Carlos', 'São Paulo');
INSERT INTO EnderecoMedico VALUES (2, 'Carlos de Camargo Salles', 306, 'ap 2', 13550650, 'São Carlos', 'São Paulo');
INSERT INTO EnderecoMedico VALUES (3, 'Carlos de Camargo Salles', 306, 'ap 2', 13550650, 'São Carlos', 'São Paulo');

INSERT INTO Sintoma VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Nariz escorrendo, falta de ar');
INSERT INTO Sintoma VALUES (2, 2, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Dor de Cabeça');
INSERT INTO Sintoma VALUES (3, 3, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Dor no pé');
