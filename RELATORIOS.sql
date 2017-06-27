-- 1 ) Liste  todos  os  atletas  (nome,  documento  de  identifica��o,  nacionalidade e data de nascimento) da modalidade A, que foram atendidos pelo m�dico B e s�o treinados pelo treinador C, em que A, B e C s�o definidos pelo usu�rio�; 

SELECT A.NOME, A.PASSAPORTE, A.NACAO, A.NASCIMENTO 
    FROM ATLETA A JOIN MODALIDADEATLETA MA ON A.PASSAPORTE=MA.ATLETA
                JOIN MODALIDADEESPORTIVA ME ON MA.MODALIDADE=ME.ID
                JOIN ATLETAMEDICOATENDE AMT ON AMT.ATLETA = A.PASSAPORTE
                JOIN MEDICO M ON M.ID=AMT.MEDICO
                JOIN PREPARADORATLETA PA ON PA.ATLETA=A.PASSAPORTE
                JOIN PREPARADOR P ON PA.PREPARADOR=P.PASSAPORTE
                WHERE (ME.NOME='Futebol' AND M.NOME='Rafoso' AND P.NOME='Rodrigo Mello');
-- ME = MODALIDADE, M = MEDICO, P = PREPARADOR

-- 2) liste todos os m�dicos que atenderam pelo menos X atletas  de uma na��o N, juntamente ao n�mero total de atletas que atenderam, em que X e  s�o definidos pelo usu�rio
SELECT M.NOME, COUNT(*) AS ATLETAS_ATENDIDOS
    FROM MEDICO M JOIN ATLETAMEDICOATENDE AMA ON M.ID=AMA.MEDICO
                JOIN ATLETA A ON A.PASSAPORTE=AMA.ATLETA
                WHERE (A.NACAO='Brasil') -- NA��O N
                GROUP BY M.NOME
                HAVING COUNT(*) >= 1; -- ATLETAS X


-- 4) Identifique os treinadores com o maior n�mero de atletas em situa��o  irregular  devido  ao  doping,  exibindo  os  resultados  da  raz�o  entre  o  n�mero  de  atletas irregulares pelo total de atletas treinados pelo mesmo treinador

