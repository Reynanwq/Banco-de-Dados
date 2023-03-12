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
INSERT INTO africa (continente_name, populacao, qtd_paises, tam) VALUES ('África', 1225080510, 54, 30.37);
INSERT INTO america (continente_name, populacao, qtd_paises, tam) VALUES ('América', 902892047, 36, 42.189120);
INSERT INTO antartica (continente_name, populacao, qtd_paises, tam) VALUES ('Antártida', 4000, 0, 14.000000);
INSERT INTO asia (continente_name, populacao, qtd_paises, tam) VALUES ('Ásia', 446267673, 49, 43.810582);
INSERT INTO europa (continente_name, populacao, qtd_paises) VALUES ('Europa', 741447158, 50);
INSERT INTO oceania (continente_name, populacao, qtd_paises, tam) VALUES ('Oceania', 40117432, 24, 8480355);
INSERT INTO oceanos (name, tam) VALUES ('Atlântico Sul', 185); -- MIL
INSERT INTO oceanos (name, tam) VALUES ('Índico', 70.5); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Glacial Ártico', 15.5); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Glacial Antártico', 21.9); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Pacífico Norte', 107.0); -- MIL
INSERT INTO oceanos (name, tam) VALUES ('Pacífico Sul', 37.0); -- EM MILHOES
INSERT INTO oceanos (name, tam) VALUES ('Atlântico Norte', 107.0); -- EM MILHOES

-- INSERINDO DADOS DOS PAISES AFRICANOS
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('África do Sul', 'Cidade do Caboo', 57780000, 1221037, 'Inglês', 'África Meridional');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Angola', 'Luanda', 328700000, 1247000, 'Português', 'África Central');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Argélia', 'Argel');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Benim', 'Porto Novo');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bostwana', 'Garobone');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Burquina Faso', 'Ouagadougou');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Barundi', 'Gitega');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Camarões', 'Yaoundé'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Chande', 'N djamena');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Costa do Marfim', 'Abidjan');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Djibouti', 'Djibouti');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Egito', 'Cairo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Eritreia', 'Asmara');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Etiópia', 'Adis Abeba');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Gabão', 'Libreville'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Gâmbia', 'Banjul');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Gana', 'Acra');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guiné', 'Conacri');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guiné-Bissau', 'Bissau');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Guiné Equatorial', 'Malabo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de Madagascar', 'Antananarivo');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de Cabo Verde', 'Praia'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilha de Comores', 'Maroni');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas de São Tomé e Príncipe', 'São Tomé');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ilhas Seychelles', 'Victoria');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Lesoto', 'Maseru');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Libéria', 'Monróvia');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Líbia', 'Trípoli');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Malawi', 'Lilongwe'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mali', 'Bamako');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Marrocos', 'Rabat');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mauritânia', 'Nouakchott');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Moçambique', 'Maputo');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Namíbia', 'Windhoek');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Níger', 'Niamey');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Nigéria', 'Abuja'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Quênia', 'Nairóbi');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('República Centro-Africana', 'Bangui');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('República Democrática do Congo', 'Kinshasa');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('República do Congo', 'Brazzaville');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('República de Maurício', 'Port Louis');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Ruanda', 'Kaligali');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Senegal', 'Dacar'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Serra Leoa', 'Freetown');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Somália', 'Magadíscio');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Eswatini', 'Lobamba');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sudão', 'Cartum');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sudão do Sul', 'Juba');
INSERT INTO paises_Africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tanzânia', 'Dodoma');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Togo', 'Lomé'); 
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tunúsia', 'Tunes');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Uganda', 'Kampala');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Zâmbia', 'Lusaka');
INSERT INTO paises_africanos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Zimbábue', 'Harare');

-- INSERINDO DADDOS DOS PAISES DA ASIA
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Afeganistão', 'Cabul', , , '', ''); 
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Arábia Saudita', 'Riad', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Armênia', 'Yerevan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Azerbaijão', 'Baku', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bahrein', 'Manama', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Bangladesh', 'Daca', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Brunei', 'Bandar Seri Begawan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Butão', 'Timbu', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Camboja', 'Phnom Penh', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Cazaquistão', 'Nursultan', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Catar', 'Doha', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('China', 'Pequim', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Chipre', 'Nicósia', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Cingapura', 'Cingapura', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Coreia do Norte', 'Pyongyang', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Coreia do Sul', 'Seul', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Egito', 'Cairo', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Emirados Árabes', 'Abu Dhabi', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Filipinas', 'Manila', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Geórgia', 'Tbilisi', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Iêmen', 'Sana', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Íncia', 'Nova Deli', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Indonésia', 'Jacarta', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Irã', 'Teerã', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Iraque', 'Bagdá', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Israel', 'Jerusalém', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Japão', 'Tóquio', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Jordânia', 'Amã', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Kuwait', 'Kuwait', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Laos', 'Vienciana', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Líbano', 'Beirute', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Malásia', 'Kuala Lumpur', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Maldivas', 'Malé', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Miamar', 'Nay Puy Taw', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Mongólia', 'Ulan Bator', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Nepal', 'Katmandu', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Omã', 'Mascate', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Paquistão', 'Islamabad', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Quirguistão', 'Bishkek', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Rússia', 'Moscou', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Síria', 'Damasco', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Sri Lanka', 'Kotte', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tajiquistão', 'Dushanbe', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Tailândia', 'Bangkok', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Timor-Leste', 'Díli', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Turcomenistão', 'Asgabate', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Turquia', 'Ancara', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Uzbequistão', 'Tashkent', , , '', '');
INSERT INTO paises_asiaticos (pais, capital, populacao, tam, idioma, regiao) VALUES ('Vietnã', 'Hanói', , , '', '');

-- ADICIONANDO DADOS DOS PAISES DA AMERICA LATINA
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Canada', , , 'America do Norte', 'Ottawa');
INSERT INTO paises_da_america (pais, populacao, tam, continente_na_america, capital) VALUES ('Estados Unidos', , , 'América do Norte', 'Washington D.C.');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('México', , , 'América do Norte', 'Cidade do México');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('Antígua e Barbuda', , , 'América Central', 'Saint John s');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('Bahamas', , , 'América Central', 'Nassau');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('Barbados', , , 'América Central', 'Bridgetown');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', '');
INSERT INTO Paises_da_americca (pais, populacao, tam, continente_na_america, capital) VALUES ('', , , '', ''); 

Belize 
Belmopan 
América Central  

Costa Rica 
São José 
América Central  

Cuba 
Havana 
América Central  

Dominica 
Roseau 
América Central  

El Salvador  
São Salvador 
América Central  

Granada 
Saint George's 
América Central  

Guatemala 
Cidade da Guatemala 
América Central  

Haiti 
Porto Príncipe 
América Central  

Honduras 
Tegucigalpa 
América Central  

Jamaica 
Kingston 
América Central  

Nicarágua 
Manágua 
América Central  

Panamá 
Cidade do Panamá 
América Central  

República Dominicana 
Santo Domingo 
América Central  

Santa Lúcia 
Castries 
América Central  

São Cristóvão e Névis 
Basseterre 
América Central  

São Vicente e Granadinas 
Kingstown 
América Central  

Trinidad e Tobago 
Porto Espanha 
América Central  

Argentina 
Buenos Aires 
América do Sul  

Bolívia 
La Paz  
América do Sul 

Brasil 
Brasília 
América do Sul 

Chile 
Santiago 
América do Sul 

Colômbia 
Bogotá 
América do Sul 

Equador 
Quito 
América do Sul 

Guiana 
Georgetown 
América do Sul 

Guiana Francesa 
Caiena 
América do Sul 

Paraguai 
Assunção 
América do Sul 

Peru 
Lima 
América do Sul 

Suriname 
Paramaribo 
América do Sul 

Uruguai 
Montevidéu 
América do Sul 

Venezuela 
Caracas 
América do Sul"


