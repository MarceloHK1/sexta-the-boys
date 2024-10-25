CREATE SCHEMA herois;

CREATE TABLE herois.heroi (
	id_heroi INT NOT NULL PRIMARY KEY,
    nome_real VARCHAR(50) NOT NULL,
    nome_heroi VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL CHECK(sexo IN ('f', 'm')),
    altura DECIMAL(4, 2) NOT NULL,
    peso DECIMAL(5, 2) NOT NULL,
    data_nasc DATE NOT NULL,
    local_nasc VARCHAR(50) NOT NULL,
    nivel_forca INT NOT NULL CHECK(nivel_forca BETWEEN 0 AND 100),
    popularidade INT NOT NULL CHECK(popularidade BETWEEN 0 AND 100),
    status_heroi VARCHAR(10) NOT NULL CHECK(status_heroi IN ('ativo', 'inativo', 'banido')),
    vitorias INT NOT NULL,
    derrotas INT NOT NULL
);

CREATE TABLE herois.crimes (
	id_crime INT NOT NULL PRIMARY KEY,
    nome_crime VARCHAR(50) NOT NULL,
    descricao_crime VARCHAR(100),
    data_crime DATE NOT NULL,
    severidade_crime INT NOT NULL CHECK(severidade_crime BETWEEN 1 AND 10)
);

CREATE TABLE herois.heroi_crime (
	fk_id_heroi_hc INT NOT NULL,
    fk_id_crime_hc INT NOT NULL,
    
    PRIMARY KEY (fk_id_heroi_hc, fk_id_crime_hc),
    FOREIGN KEY (fk_id_heroi_hc) REFERENCES herois.heroi(id_heroi),
    FOREIGN KEY (fk_id_crime_hc) REFERENCES herois.crimes(id_crime)
);

CREATE TABLE herois.missoes (
	id_missao INT NOT NULL PRIMARY KEY,
    nome_missao VARCHAR(50) NOT NULL,
    descricao_missao VARCHAR(100),
    resultado VARCHAR(10) NOT NULL CHECK(resultado IN ('sucesso', 'fracasso')),
    recompensa INT NOT NULL CHECK(recompensa BETWEEN 0 AND 100)
);

CREATE TABLE herois.heroi_missao (
	fk_id_heroi_hm INT NOT NULL,
    fk_id_missao_hm INT NOT NULL,
    
    PRIMARY KEY (fk_id_heroi_hm, fk_id_missao_hm),
    FOREIGN KEY (fk_id_heroi_hm) REFERENCES herois.heroi(id_heroi),
    FOREIGN KEY (fk_id_missao_hm) REFERENCES herois.missoes(id_missao)
);

CREATE TABLE herois.poderes (
	id_poder INT NOT NULL PRIMARY KEY,
    nome_poder VARCHAR(50) NOT NULL,
    descricao_poder VARCHAR(100),
    fk_id_heroi_poder INT,
    
    FOREIGN KEY (fk_id_heroi_poder) REFERENCES herois.heroi(id_heroi)
);
