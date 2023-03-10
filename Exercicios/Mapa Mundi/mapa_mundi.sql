CREATE DATABASE Mapa_Mundi;
USE Mapa_Mundi;

-- SELECIONANDO
SELECT * FROM africa;
SELECT * FROM america;
SELECT * FROM antartica;
SELECT * FROM asia;
SELECT * FROM europa;
SELECT * FROM oceania;
SELECT * FROM oceanos;
SELECT * FROM paises_africanos;


-- CRIANDO TABELAS
CREATE TABLE africa(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL,
    tam FLOAT NOT NULL
);

CREATE TABLE america(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL,
    tam FLOAT NOT NULL
);

CREATE TABLE antartica(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL,
    tam FLOAT NOT NULL
);

CREATE TABLE asia(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL,
    tam FLOAT NOT NULL
);

CREATE TABLE europa(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL
);

CREATE TABLE oceania(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    continente_name VARCHAR(70) NOT NULL,
    populacao INT NOT NULL,
    qtd_paises INT NOT NULL,
    tam FLOAT NOT NULL
);

CREATE TABLE oceanos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL, 
    tam FLOAT NOT NULL
);

CREATE TABLE paises_africanos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(300) NOT NULL,
    capital VARCHAR(200) NOT NULL,
    populacao INT NOT NULL,
    tam FLOAT NOT NULL,
    idioma VARCHAR(100) NOT NULL,
    regiao VARCHAR(100) NOT NULL
);

CREATE TABLE paises_da_america(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(300) NOT NULL,
    populacao INT NOT NULL,
    tam FLOAT NOT NULL,
    continente_na_america VARCHAR(200) NOT NULL,
    capital VARCHAR(200) NOT NULL
);

CREATE TABLE paises_asiaticos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(300) NOT NULL,
    capital VARCHAR(200) NOT NULL,
    populacao INT NOT NULL,
    tam FLOAT NOT NULL,
    idioma VARCHAR(100) NOT NULL,
    regiao VARCHAR(200) NOT NULL
);

CREATE TABLE paises_europeus(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(300) NOT NULL,
    capital VARCHAR(200) NOT NULL,
    populacao INT NOT NULL,
    idioma VARCHAR(100) NOT NULL,
    tam FLOAT NOT NULL,
    regiao VARCHAR(200) NOT NULL
);

CREATE TABLE paises_da_oceania(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(300) NOT NULL,
    capital VARCHAR(200) NOT NULL,
    populacao INT NOT NULL,
    idioma VARCHAR(100) NOT NULL,
    tam FLOAT NOT NULL,
    regiao VARCHAR(200) NOT NULL
);

-- INSERINDO DADOS
INSERT INTO africa (continente_name, populacao, qtd_paises, tam) VALUES ('??frica', 1225080510, 54, 30.37);
INSERT INTO america (continente_name, populacao, qtd_paises, tam) VALUES ('Am??rica', 902892047, 36, 42.189120);
INSERT INTO antartica (continente_name, populacao, qtd_paises, tam) VALUES ('Ant??rtida', 4000, 0, 14.000000);
INSERT INTO asia (continente_name, populacao, qtd_paises, tam) VALUES ('??sia', 446267673, 49, 43.810582);
INSERT INTO europa (continente_name, populacao, qtd_paises) VALUES ('Europa', 741447158, 50);
INSERT INTO oceania (continente_name, populacao, qtd_paises, tam) VALUES ('Oceania', 40117432, 24, 8480355);
INSERT INTO oceanos (name, tam) VALUES ('Atl??ntico Sul', 185); -- MIL
INSERT INTO oceanos (name, tam) VALUES ('??ndico', 70.5); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Glacial ??rtico', 15.5); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Glacial Ant??rtico', 21.9); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Pac??fico Norte', 107.0); -- MIL
INSERT INTO oceanos (name, tam) VALUES ('Pac??fico Sul', 37.0); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Atl??ntico Norte', 107.0); -- EM MILHOES

-- INSERINDO DADOS DOS PAISES AFRICANOS
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('??frica do Sul', 'Cidade do Caboo', 57780000, 1221037, 'Ingl??s', '??frica Meridional');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Angola', 'Luanda', 328700000, 1247000, 'Portugu??s', '??frica Central');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Arg??lia', 'Argel');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Benim', 'Porto Novo');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bostwana', 'Garobone');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Burquina Faso', 'Ouagadougou');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Barundi', 'Gitega');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Camar??es', 'Yaound??'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Chande', 'N djamena');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Costa do Marfim', 'Abidjan');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Djibouti', 'Djibouti');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Egito', 'Cairo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Eritreia', 'Asmara');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Eti??pia', 'Adis Abeba');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Gab??o', 'Libreville'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('G??mbia', 'Banjul');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Gana', 'Acra');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guin??', 'Conacri');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guin??-Bissau', 'Bissau');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guin?? Equatorial', 'Malabo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de Madagascar', 'Antananarivo');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de Cabo Verde', 'Praia'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilha de Comores', 'Maroni');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de S??o Tom?? e Pr??ncipe', 'S??o Tom??');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas Seychelles', 'Victoria');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Lesoto', 'Maseru');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Lib??ria', 'Monr??via');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('L??bia', 'Tr??poli');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Malawi', 'Lilongwe'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mali', 'Bamako');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Marrocos', 'Rabat');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Maurit??nia', 'Nouakchott');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mo??ambique', 'Maputo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Nam??bia', 'Windhoek');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('N??ger', 'Niamey');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Nig??ria', 'Abuja'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Qu??nia', 'Nair??bi');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Rep??blica Centro-Africana', 'Bangui');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Rep??blica Democr??tica do Congo', 'Kinshasa');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Rep??blica do Congo', 'Brazzaville');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Rep??blica de Maur??cio', 'Port Louis');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ruanda', 'Kaligali');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Senegal', 'Dacar'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Serra Leoa', 'Freetown');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Som??lia', 'Magad??scio');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Eswatini', 'Lobamba');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sud??o', 'Cartum');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sud??o do Sul', 'Juba');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tanz??nia', 'Dodoma');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Togo', 'Lom??'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tun??sia', 'Tunes');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Uganda', 'Kampala');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Z??mbia', 'Lusaka');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Zimb??bue', 'Harare');

-- INSERINDO DADDOS DOS PAISES DA ASIA
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Afeganist??o', 'Cabul', , , '', ''); 
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ar??bia Saudita', 'Riad', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Arm??nia', 'Yerevan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Azerbaij??o', 'Baku', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bahrein', 'Manama', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bangladesh', 'Daca', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Brunei', 'Bandar Seri Begawan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('But??o', 'Timbu', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Camboja', 'Phnom Penh', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Cazaquist??o', 'Nursultan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Catar', 'Doha', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('China', 'Pequim', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Chipre', 'Nic??sia', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Cingapura', 'Cingapura', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Coreia do Norte', 'Pyongyang', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Coreia do Sul', 'Seul', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Egito', 'Cairo', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Emirados ??rabes', 'Abu Dhabi', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Filipinas', 'Manila', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ge??rgia', 'Tbilisi', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('I??men', 'Sana', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('??ncia', 'Nova Deli', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Indon??sia', 'Jacarta', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ir??', 'Teer??', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Iraque', 'Bagd??', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Israel', 'Jerusal??m', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Jap??o', 'T??quio', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Jord??nia', 'Am??', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Kuwait', 'Kuwait', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Laos', 'Vienciana', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('L??bano', 'Beirute', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mal??sia', 'Kuala Lumpur', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Maldivas', 'Mal??', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Miamar', 'Nay Puy Taw', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mong??lia', 'Ulan Bator', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Nepal', 'Katmandu', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Om??', 'Mascate', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Paquist??o', 'Islamabad', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Quirguist??o', 'Bishkek', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('R??ssia', 'Moscou', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('S??ria', 'Damasco', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sri Lanka', 'Kotte', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tajiquist??o', 'Dushanbe', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tail??ndia', 'Bangkok', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Timor-Leste', 'D??li', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Turcomenist??o', 'Asgabate', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Turquia', 'Ancara', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Uzbequist??o', 'Tashkent', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Vietn??', 'Han??i', , , '', '');

-- ADICIONANDO DADOS DOS PAISES DA AMERICA LATINA
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Canada', , , 'America do Norte', 'Ottawa');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Estados Unidos', , , 'Am??rica do Norte', 'Washington D.C.');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('M??xico', , , 'Am??rica do Norte', 'Cidade do M??xico');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Ant??gua e Barbuda', , , 'Am??rica Central', 'Saint John s');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Bahamas', , , 'Am??rica Central', 'Nassau');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Barbados', , , 'Am??rica Central', 'Bridgetown');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Beliza', , , 'Am??rica Central', 'Belmopan');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Costa Rica', , , 'Am??rica Central', 'S??o Jos??');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Cuba', , , 'Am??rica Central', 'Havana');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Dominica', , , 'Am??rica Central', 'Roseau');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('El Salvador', , , 'Am??rica Central', 'S??o Salvador');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Granada', , , 'Am??rica Central', 'Saint George s');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Guatemala', , , 'Am??rica Central', 'Cidade da Guatemala');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Haiti', , , 'Am??rica Central', 'Porto Principe');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Honduras', , , 'Am??rica Central', 'Teguciagalpa');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Jamaica', , , 'Am??rica Central', 'Kingston');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Nicar??gua', , , 'Am??rica Central', 'Man??gua');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Panam??', , , 'Am??rica Central', 'Cidade do Panam??');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Rep??blica DOminicana', , , 'Am??rica Central', 'Santo Domingo');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Santa L??cia', , , 'Am??rica Central', 'Castries');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('S??o Crist??v??o e N??vis', , , 'Am??rica Central', 'Basseterre');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('S??o Viccente e Granadinas', , , 'America Central', 'Kingstown');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Trinidad e Tobago', , , 'Am??rica Central', 'Porto Espanha');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Argentina', , , 'Am??rica do Sul', 'Buenos Aires');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Bol??via', , , 'Am??rica do Sul', 'La Paz');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Brazil', , , 'Am??rica do Sul', 'Bras??lia');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Chile', , , 'Am??rica do Sul', 'Santiago');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Col??mbia', , , 'Am??rica do Sul', 'Bogot??');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Equador', , , 'Am??rica do Sul', 'Quito');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Guiana', , , 'Am??rica do Sul', 'Georgetown');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Guiana Francesa', , , 'Am??rica do Sul', 'Caiena');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Paraguai', , , 'Am??rica do Sul', 'Assun????o');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Peru', , , 'Am??rica do Sul', 'Lima');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Suriname', , , 'Am??rica do Sul', 'Paramaribo');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Uruguai', , , 'Am??rica do Sul', 'Montevid??u');  
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Venezuela', , , 'Am??rica do Sul', 'Caracas'); 

INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Australia', 'Camberra', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Estados Federados da Micron??sia', 'Palikir', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Fiji', 'Suva', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Ilhas Marshal', 'Majuro', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('ILhas Salom??o', 'Honiara', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Kiribati', 'Tarawa do Sul', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Nauru', 'Yaren', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('NOva Zel??ndia', 'Wellington', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Palau', 'Ngerulmud', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Papua-Nova Guin??', 'Port Moresby', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Samoa', 'Apia', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Tonga', 'Naki alofa', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Tuvalu', 'Funafuti', , '', , '');
INSERT INTO paises_da_oceania (pais, capital, populacao, idioma, tam, regiao) VALUES ('Vanuatu', 'Port Vila', , '', , '');
