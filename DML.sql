-- INSERT INTO ModalidadeEsportiva VALUES (0, 'Judo', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (1, 'Futebol', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (2, 'Ciclismo', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (3, 'Handebol', 'descri��o'); 
INSERT INTO ModalidadeEsportiva VALUES (4, 'Nata��o', 'descri��o');
INSERT INTO ModalidadeEsportiva VALUES (5, 'Atletismo', 'descri��o'); 

-- Inser��o de Na��es
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Brasil', 'America', 1);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Jap�o', 'Asia', 2);
INSERT INTO Nacao(Nome, Continente, Modalidade) VALUES ('Esc�cia', 'Europa', 3);

-- Inser��o de Atletas
INSERT INTO Atleta VALUES (1, 'Marcos Amargo', 'M', 1.68, 68.0, TO_DATE('1997/02/07 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');
INSERT INTO Atleta VALUES (2, 'Victor Forberu', 'M', 1.74, 56.0, TO_DATE('1997/02/19 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Esc�cia');
INSERT INTO Atleta VALUES (3, 'Gbariel Siemmel Nacismento', 'M', 1.72, 70.0, TO_DATE('1995/11/28 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Jap�o');
INSERT INTO Atleta VALUES (4, 'Joegs Monteiro', 'M', 1.72, 69.0, TO_DATE('1996/03/13 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');
INSERT INTO Atleta VALUES (5, 'Gimaraes Trevosa', 'F', 1.62, 50.0, TO_DATE('1996/09/11 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');
INSERT INTO Atleta VALUES (6, 'Lucas Ferro', 'M', 1.72, 53.0, TO_DATE('1997/03/05 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Brasil');

-- Inser��o de Preparadores
INSERT INTO Preparador VALUES (1, 'Rodrigo Mello', 'M', 'mello@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (2, 'Moacir Ponti', 'M', 'ponti@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO Preparador VALUES (3, 'Thiago Pardo', 'M', 'thiago@olimpiadas.com', '12345678', 'S�o Carlos', 'S�o Paulo', 'Brasil', 1, TO_DATE('1997/02/07 00:00:00', 'yyyy/mm/dd hh24:mi:ss'));


-- Inser��o de Rotinas
INSERT INTO Rotina VALUES (1, 4);
INSERT INTO Rotina VALUES (2, 7);
INSERT INTO Rotina VALUES (3, 10);
INSERT INTO Rotina VALUES (4, 15);

-- Inser��o de Treinos
INSERT INTO Treino VALUES (1, 'Treino A');
INSERT INTO Treino VALUES (2, 'Treino B');
INSERT INTO Treino VALUES (3, 'Treino C');
INSERT INTO Treino VALUES (4, 'Treino D');
INSERT INTO Treino VALUES (5, 'Treino E');

-- Inser��o de Preparos
INSERT INTO Preparo VALUES (1, 'Pr�-Treino A', '200g de carboidratos e 100g de proteinas', 6);
INSERT INTO Preparo VALUES (2, 'Pr�-Treino B', '300g de carboidratos e 200g de proteinas', 8);
INSERT INTO Preparo VALUES (3, 'Pr�-Treino C', '400g de carboidratos e 250g de proteinas', 12);

-- Inser��o de Atividades de Recupera��o
INSERT INTO AtividadeDeRecuperacao VALUES (1, 'P�s-Treino A');
INSERT INTO AtividadeDeRecuperacao VALUES (2, 'P�s-Treino B');
INSERT INTO AtividadeDeRecuperacao VALUES (3, 'P�s-Treino C');

-- Inser��o de Doen�a
INSERT INTO Doenca VALUES ('J09', 'Influenza [gripe] devido a v�rus identificado da gripe avi�ria');
INSERT INTO Doenca VALUES ('J67 ', 'Pneumonite hipersensibilidade devido a outras poeiras org�nicas');
INSERT INTO Doenca VALUES ('J30', 'Rinite al�rgica e vasomotora');

-- Inser��o de M�dicos
INSERT INTO Medico VALUES (1, 123456789, 12345, 'Rafoso');
INSERT INTO Medico VALUES (2, 123098456, 54321, 'Marcola');
INSERT INTO Medico VALUES (3, 398765432, 12121, 'Leticiru');
INSERT INTO Medico VALUES (4, 715712381, 12518, 'Jeffrey');
INSERT INTO Medico VALUES (5, 175182381, 56123, 'Bambi');
INSERT INTO Medico VALUES (6, 712512983, 18235, 'House');

-- Inser��o de Atendimento entre Marcos Amargo e Rafoso, Victor Forberu e Marcola e Gbariel Siemmel Nacismento e Leticiru
INSERT INTO AtletaMedicoAtende VALUES (1, 1);
INSERT INTO AtletaMedicoAtende VALUES (2, 2);
INSERT INTO AtletaMedicoAtende VALUES (3, 3);
INSERT INTO AtletaMedicoAtende VALUES (4, 4);
INSERT INTO AtletaMedicoAtende VALUES (5, 5);
INSERT INTO AtletaMedicoAtende VALUES (6, 6);

-- Inser��o de Consulta entre Marcos Amargo e Rafoso, Victor Forberu e Marcola e Gbariel Siemmel Nacismento e Leticiru
INSERT INTO Consulta VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1);
INSERT INTO Consulta VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2);
INSERT INTO Consulta VALUES (3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3);
INSERT INTO Consulta VALUES (4, 4, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 4);
INSERT INTO Consulta VALUES (5, 5, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 5);
INSERT INTO Consulta VALUES (6, 6, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 6);

-- Inser��o de associa��o entre Consultas e Doen�as
INSERT INTO ConsultaDoenca VAlUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ConsultaDoenca VAlUES ('J30', 2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ConsultaDoenca VAlUES ('J09', 3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'));

-- Inser��o de Diagn�sticos
INSERT INTO Diagnostico VALUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta n�o est� doente.', 1);
INSERT INTO Diagnostico VALUES ('J30', 2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta est� doente.', 2);
INSERT INTO Diagnostico VALUES ('J09', 3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Atleta � doente.', 3);

-- Inser��o de rela��es de Ocorr�ncias Ol�mpicas
INSERT INTO AtletaMedicoOcorrencia VALUES (1, 1);
INSERT INTO AtletaMedicoOcorrencia VALUES (2, 2);
INSERT INTO AtletaMedicoOcorrencia VALUES (3, 3);
INSERT INTO AtletaMedicoOcorrencia VALUES (4, 4);
INSERT INTO AtletaMedicoOcorrencia VALUES (5, 5);
INSERT INTO AtletaMedicoOcorrencia VALUES (6, 6);

-- Inser��o de entidades que relacionam Ocorr�ncias Ol�mpicas a um tipo
INSERT INTO TipoOcorrenciaOlimpica VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Lesao');
INSERT INTO TipoOcorrenciaOlimpica VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Exame de Doping');
INSERT INTO TipoOcorrenciaOlimpica VALUES (3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Lesao');
INSERT INTO TipoOcorrenciaOlimpica VALUES (4, 4, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 4, 'Exame de Doping');
INSERT INTO TipoOcorrenciaOlimpica VALUES (5, 5, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 5, 'Exame de Doping');
INSERT INTO TipoOcorrenciaOlimpica VALUES (6, 6, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 6, 'Lesao');

-- Inser��o de Exames de Doping
INSERT INTO ExameDeDoping VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Exame resultou em positivo.');
INSERT INTO ExameDeDoping VALUES (4, 4, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Exame resultou em negativo.');
INSERT INTO ExameDeDoping VALUES (5, 5, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O Exame resultou em negativo.');

-- Inser��o de Testes de Doping de cada Exame
INSERT INTO TesteDeDoping VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 2);
INSERT INTO TesteDeDoping VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 2);
INSERT INTO TesteDeDoping VALUES (4, 4, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 1);
INSERT INTO TesteDeDoping VALUES (5, 5, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 4, 2);

-- Inser��o de M�todos de Tratamento
INSERT INTO MetodoDeTratamento VALUES ('J09', 1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 3, 'Repousar', 'Efetividade m�dia');
INSERT INTO MetodoDeTratamento VALUES ('J30', 2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 2, 'Rem�dio Injetavel', 'Muito efetivo');
INSERT INTO MetodoDeTratamento VALUES ('J09', 3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 1, 'Tomar remedios', 'Efetivo');

-- Inser��o de Les�es
INSERT INTO Lesao VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O atleta quebrou a perna esquerda');
INSERT INTO Lesao VALUES (3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O atleta torceu o p� esquerdo');
INSERT INTO Lesao VALUES (6, 6, TO_DATE('2017/06/06 16:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'O atleta luxou a m�o direita');

-- Inser��o de Rela��es entre Modalidades e Atletas
INSERT INTO ModalidadeAtleta VALUES (1, 1);
INSERT INTO ModalidadeAtleta VALUES (2, 2);
INSERT INTO ModalidadeAtleta VALUES (3, 3);
INSERT INTO ModalidadeAtleta VALUES (2, 4);
INSERT INTO ModalidadeAtleta VALUES (3, 5);
INSERT INTO ModalidadeAtleta VALUES (3, 6);

-- Inser��o de Rela��es entre Preparadores e Atletas
INSERT INTO PreparadorAtleta VALUES (1, 1);
INSERT INTO PreparadorAtleta VALUES (2, 2);
INSERT INTO PreparadorAtleta VALUES (3, 3);
INSERT INTO PreparadorAtleta VALUES (1, 4);
INSERT INTO PreparadorAtleta VALUES (2, 5);
INSERT INTO PreparadorAtleta VALUES (3, 6);

-- Inser��o de Rela��es entre Rotinas e Treinos
INSERT INTO RotinaTreino VALUES (1, 1);
INSERT INTO RotinaTreino VALUES (2, 2);
INSERT INTO RotinaTreino VALUES (3, 3);

-- Inser��o de Rela��es entre Treinos e Preparos
INSERT INTO TreinoPreparo VALUES (1, 1);
INSERT INTO TreinoPreparo VALUES (2, 2);
INSERT INTO TreinoPreparo VALUES (3, 3);

-- Inser��o de Rela��es entre Treinos e Atividades de Recupera��o
INSERT INTO TreinoAtividadeDeRecuperacao VALUES (1, 1);
INSERT INTO TreinoAtividadeDeRecuperacao VALUES (2, 2);
INSERT INTO TreinoAtividadeDeRecuperacao VALUES (3, 3);

-- Inser��o de Rela��es entre Rotinas e Atletas
INSERT INTO RotinaAtleta VALUES (1, 1);
INSERT INTO RotinaAtleta VALUES (1, 4);
INSERT INTO RotinaAtleta VALUES (2, 2);
INSERT INTO RotinaAtleta VALUES (2, 5);
INSERT INTO RotinaAtleta VALUES (3, 3);
INSERT INTO RotinaAtleta VALUES (3, 6);

-- Inser��o de Rela��es entre Preparadores e Rotinas
INSERT INTO PreparadorRotina VALUES (1, 1);
INSERT INTO PreparadorRotina VALUES (2, 2);
INSERT INTO PreparadorRotina VALUES (3, 3);

-- Inser��o Telefones dos Preparadores
INSERT INTO TelefonePreparador VALUES (16, 50506060, 1);
INSERT INTO TelefonePreparador VALUES (16, 20307070, 2);
INSERT INTO TelefonePreparador VALUES (16, 20304050, 3);

-- Inser��o de Telefones dos M�dicos
INSERT INTO TelefoneMedico VALUES (16, 15151213, 1);
INSERT INTO TelefoneMedico VALUES (16, 34626514, 2);
INSERT INTO TelefoneMedico VALUES (16, 27638541, 3);
INSERT INTO TelefoneMedico VALUES (16, 21512561, 4);
INSERT INTO TelefoneMedico VALUES (16, 13136513, 5);
INSERT INTO TelefoneMedico VALUES (16, 71141243, 6);

-- Inser��o de Rela��es entre Dia da Semana e Rotina
INSERT INTO RotinaDiaDaSemana VALUES (1, 'Segunda');
INSERT INTO RotinaDiaDaSemana VALUES (2, 'Terca');
INSERT INTO RotinaDiaDaSemana VALUES (3, 'Quarta');

-- Inser��o de Endere�os dos M�dicos
INSERT INTO EnderecoMedico VALUES (1, 'Carlos de Camargo Salles', 306, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');
INSERT INTO EnderecoMedico VALUES (2, 'Carlos de Camargo Salles', 346, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');
INSERT INTO EnderecoMedico VALUES (3, 'Carlos de Camargo Salles', 386, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');
INSERT INTO EnderecoMedico VALUES (4, 'Carlos de Camargo Salles', 406, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');
INSERT INTO EnderecoMedico VALUES (5, 'Carlos de Camargo Salles', 426, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');
INSERT INTO EnderecoMedico VALUES (6, 'Carlos de Camargo Salles', 446, 'Ap. 2', 13550650, 'S�o Carlos', 'S�o Paulo');

-- Inser��o dos Sintomas registrados das consultas
INSERT INTO Sintoma VALUES (1, 1, TO_DATE('2017/06/06 8:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Nariz escorrendo, falta de ar');
INSERT INTO Sintoma VALUES (2, 2, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Dor de cabe�a');
INSERT INTO Sintoma VALUES (3, 3, TO_DATE('2017/06/06 14:00:00', 'yyyy/mm/dd hh24:mi:ss'), 'Dor no p�');
