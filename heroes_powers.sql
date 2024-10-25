SELECT * FROM herois.heroi;


INSERT INTO herois.heroi (id_heroi, nome_real, nome_heroi, sexo, altura, peso, data_nasc, local_nasc, nivel_forca, popularidade, status_heroi, vitorias, derrotas)
VALUES
	(1, 'Kevin Moskowitz', 'The Deep', 'm', 1.83, 85.00, '1986-05-02', 'Des Moines, Iowa', 60, 40, 'ativo', 3, 5),
	(2, 'Reggie Franklin', 'A-Train', 'm', 1.75, 72.00, '1990-03-29', 'San Diego, Califórnia', 85, 70, 'ativo', 7, 3),
	(3, 'Maggie Shaw', 'Queen Maeve', 'f', 1.80, 75.00, '1989-11-12', 'Seattle, Washington', 90, 85, 'inativo', 15, 2),
	(4, 'John Gillman', 'Homelander', 'm', 1.85, 95.00, '1981-09-11', 'Desconhecido', 100, 95, 'ativo', 50, 0),
	(5, 'Annie January', 'Starlight', 'f', 1.67, 60.00, '1992-06-14', 'Evanston, Illinois', 75, 80, 'ativo', 9, 1),
	(6, 'Kimiko Miyashiro', 'The Female', 'f', 1.60, 55.00, '1991-04-10', 'Tóquio, Japão', 80, 65, 'ativo', 6, 2),
	(7, 'Earving', 'Black Noir', 'm', 1.88, 90.00, '2004-11-29', 'Desconhecido', 95, 70, 'banido', 12, 1),
	(8, 'William Butcher', 'Billy Butcher', 'm', 1.80, 85.00, '1972-03-18', 'Londres, Inglaterra', 80, 90, 'ativo', 20, 4),
	(9, 'Klara Risinger', 'Stormfront', 'f', 1.75, 70.00, '1919-07-15', 'Berlim, Alemanha', 90, 50, 'inativo', 8, 2);


SELECT id_heroi FROM herois.heroi;

SELECT * FROM herois.poderes;

-- Inserindo poderes
INSERT INTO herois.poderes (id_poder, nome_poder, descricao_poder, fk_id_heroi_poder)
VALUES 
(1, 'Comunicação com criaturas marinhas', 'The Deep pode se comunicar com a vida marinha.', 1),
(2, 'Super força', 'Capacidade sobre-humana de força física.', 1),
(3, 'Capacidade de respirar debaixo d’água', 'The Deep pode respirar embaixo d’água.', 1),
(4, 'Super velocidade', 'A-Train é o homem mais rápido do mundo.', 2),
(5, 'Resistência a impactos', 'A-Train possui resistência física a impactos de alta velocidade.', 2),
(6, 'Controle de luz', 'Starlight pode manipular energia luminosa.', 5),
(7, 'Poder de voo', 'Homelander pode voar.', 4),
(8, 'Visão de raio-x', 'Homelander tem visão de raio-x.', 4),
(9, 'Poder regenerativo', 'The Female possui habilidades de regeneração.', 6),
(10, 'Invulnerabilidade', 'Black Noir é invulnerável à maioria dos danos.', 7),
(11, 'Táticas de combate', 'Billy Butcher é mestre em combate corpo-a-corpo e táticas militares.', 8),
(12, 'Liderança estratégica', 'Butcher é um líder implacável e estrategista da equipe The Boys.', 8),
(13, 'Manipulação psicológica', 'Butcher tem a habilidade de manipular e enganar seus inimigos.', 8),
(14, 'Controle de eletricidade', 'Stormfront pode manipular eletricidade.', 9),
(15, 'Imortalidade', 'Stormfront é praticamente imortal.', 9);
