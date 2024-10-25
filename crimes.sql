SELECT * FROM herois.crimes;

SELECT 
    H.ID_HEROI,
    H.NOME_REAL,
    H.NOME_HEROI,
    H.NIVEL_FORCA,
    H.POPULARIDADE,
    H.STATUS_HEROI,
    C.ID_CRIME,
    C.NOME_CRIME,
    C.DESCRICAO_CRIME,
    C.SEVERIDADE_CRIME
FROM 
    HEROIS.HEROI H
JOIN 
    HEROIS.HEROI_CRIME HC ON H.ID_HEROI = HC.FK_ID_HEROI_HC
JOIN 
    HEROIS.CRIMES C ON HC.FK_ID_CRIME_HC = C.ID_CRIME;


INSERT INTO herois.crimes (id_crime, nome_crime, descricao_crime, data_crime, severidade_crime)
VALUES 
(1, 'Dano à propriedade', 'Destruição de uma estátua pública.', '2018-05-15', 6),
(2, 'Negligência no dever', 'Falha em resgatar um civil durante uma missão.', '2019-06-20', 7),
(3, 'Uso excessivo de força', 'Emprego desnecessário de violência.', '2017-09-11', 8),
(4, 'Homicídio involuntário', 'A-Train matou acidentalmente um civil.', '2019-02-10', 9),
(5, 'Abandono de missão', 'Fugiu de uma missão para salvar sua própria vida.', '2020-01-23', 5),
(6, 'Homicídio doloso', 'Assassinato de um civil em confronto.', '2019-11-14', 10),
(7, 'Tortura', 'Agressão severa a inimigos capturados.', '2021-03-30', 10),
(8, 'Dano em propriedade pública', 'Destruição de um prédio público.', '2022-07-01', 7),
(9, 'Sequestro', 'Captura ilegal de inimigos.', '2018-06-19', 8),
(10, 'Ameaças a autoridades', 'Homelander ameaçou oficiais do governo.', '2022-08-21', 9),
(11, 'Assassinato em massa', 'Kimiko matou diversos membros de gangues.', '2020-02-17', 9),
(12, 'Terrorismo', 'Kimiko realizou ataques para intimidar civis.', '2021-05-10', 10),
(13, 'Execução sumária', 'Black Noir matou prisioneiros sem julgamento.', '2019-09-14', 8),
(14, 'Conspiração', 'Black Noir participou de conspirações contra heróis.', '2020-07-22', 7),
(15, 'Morte de oficiais', 'Butcher matou oficiais corruptos.', '2018-03-19', 9),
(16, 'Destruição de propriedade privada', 'Butcher destruiu instalações de Vought.', '2021-08-30', 6),
(17, 'Crimes de guerra', 'Stormfront cometeu atrocidades durante a Segunda Guerra Mundial.', '1945-05-10', 10),
(18, 'Incitação ao ódio', 'Stormfront incitou a violência contra minorias.', '2020-09-15', 10);

INSERT INTO herois.heroi_crime (fk_id_heroi_hc, fk_id_crime_hc)
VALUES 
(1, 1),	-- The Deep: Dano à propriedade
(1, 2), -- The Deep: Negligência no dever
(2, 4), -- A-Train: Homicídio involuntário
(2, 5), -- A-Train: Abandono de missão
(3, 6), -- Queen Maeve: Homicídio doloso
(4, 7), -- Homelander: Tortura
(4, 8), -- Homelander: Dano em propriedade pública
(4, 10), -- Homelander: Ameaças a autoridades
(5, 9), -- Starlight: Sequestro
(6, 11), -- Kimiko: Assassinato em massa
(6, 12), -- Kimiko: Terrorismo
(7, 13), -- Black Noir: Execução sumária
(7, 14), -- Black Noir: Conspiração
(8, 15), -- Billy Butcher: Morte de oficiais
(8, 16), -- Billy Butcher: Destruição de propriedade privada
(9, 17), -- Stormfront: Crimes de guerra
(9, 18); -- Stormfront: Incitação ao ódio
