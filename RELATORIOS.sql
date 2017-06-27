-- 1 ) Liste  todos  os  atletas  (nome,  documento  de  identificação,  nacionalidade e data de nascimento) da modalidade A, que foram atendidos pelo médico B e são treinados pelo treinador C, em que A, B e C são definidos pelo usuário”; 

SELECT A.NOME, A.PASSAPORTE, A.NACAO, A.NASCIMENTO 
    FROM ATLETA A JOIN MODALIDADEATLETA MA ON A.PASSAPORTE=MA.ATLETA
                JOIN MODALIDADEESPORTIVA ME ON MA.MODALIDADE=ME.ID
                JOIN ATLETAMEDICOATENDE AMT ON AMT.ATLETA = A.PASSAPORTE
                JOIN MEDICO M ON M.ID=AMT.MEDICO
                JOIN PREPARADORATLETA PA ON PA.ATLETA=A.PASSAPORTE
                JOIN PREPARADOR P ON PA.PREPARADOR=P.PASSAPORTE
                WHERE (ME.NOME='Futebol' AND M.NOME='Rafoso' AND P.NOME='Rodrigo Mello');
-- ME = MODALIDADE, M = MEDICO, P = PREPARADOR

-- 2) liste todos os médicos que atenderam pelo menos X atletas  de uma nação N, juntamente ao número total de atletas que atenderam, em que X e  são definidos pelo usuário
SELECT M.NOME, COUNT(*) AS ATLETAS_ATENDIDOS
    FROM MEDICO M JOIN ATLETAMEDICOATENDE AMA ON M.ID=AMA.MEDICO
                JOIN ATLETA A ON A.PASSAPORTE=AMA.ATLETA
                WHERE (A.NACAO='Brasil') -- NAÇÃO N
                GROUP BY M.NOME
                HAVING COUNT(*) >= 1; -- ATLETAS X


-- 4) Identifique os treinadores com o maior número de atletas em situação  irregular  devido  ao  doping,  exibindo  os  resultados  da  razão  entre  o  número  de  atletas irregulares pelo total de atletas treinados pelo mesmo treinador

