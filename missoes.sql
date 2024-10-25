SELECT 
    H.ID_HEROI,
    H.NOME_REAL,
    H.NOME_HEROI,
    H.NIVEL_FORCA,
    H.POPULARIDADE,
    H.STATUS_HEROI,
    M.ID_MISSAO,
    M.NOME_MISSAO,
    M.DESCRICAO_MISSAO,
    M.RESULTADO,
    M.RECOMPENSA
FROM 
    HEROIS.HEROI H
JOIN 
    HEROIS.HEROI_MISSAO HM ON H.ID_HEROI = HM.FK_ID_HEROI_HM
JOIN 
    HEROIS.MISSOES M ON HM.FK_ID_MISSAO_HM = M.ID_MISSAO;


INSERT INTO HEROIS.MISSOES (ID_MISSAO, NOME_MISSAO, DESCRICAO_MISSAO, RESULTADO, RECOMPENSA)
VALUES 
(1, 'Resgate no Edifício Empire', 'Resgate de reféns no Empire State Building.', 'sucesso', 50),
(2, 'Neutralização de Bomba', 'Desarmar uma bomba colocada por terroristas.', 'fracasso', 30),
(3, 'Infiltração no Quartel Inimigo', 'Infiltrar e coletar informações de um quartel inimigo.', 'sucesso', 70);

INSERT INTO HEROIS.HEROI_MISSAO (FK_ID_HEROI_HM, FK_ID_MISSAO_HM)
VALUES 
(1, 1), -- The Deep participou do resgate no Edifício Empire
(2, 1), -- A-Train participou do resgate no Edifício Empire
(3, 2), -- Queen Maeve falhou na neutralização de bomba
(4, 2), -- Homelander falhou na neutralização de bomba
(5, 3), -- Starlight teve sucesso na infiltração no quartel inimigo
(6, 3), -- The Female teve sucesso na infiltração no quartel inimigo
(7, 1), -- Black Noir participou do resgate no Edifício Empire
(8, 3), -- Billy Butcher participou da infiltração no quartel inimigo
(9, 2); -- Stormfront falhou na neutralização de bomba