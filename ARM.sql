--DROP DATABASE ARM;
--DROP DATABASE ARM;
CREATE DATABASE ARM;
USE ARM;

--DROP TABLE account
--DROP TABLE sp_role
--DROP TABLE ARM
--DROP TABLE basket

CREATE TABLE sp_role
(
id_role INT IDENTITY(1,1) PRIMARY KEY,
name_role NVARCHAR(45) NULL,
);

CREATE TABLE account
(
    id_account INT IDENTITY(1,1) PRIMARY KEY,
    Login NVARCHAR(45) NULL,
    Password NVARCHAR(100) NULL,
    id_role INT FOREIGN KEY (id_role) REFERENCES sp_role(id_role),
    Surname NVARCHAR(45) NULL,
	Name NVARCHAR(45) NULL
);

INSERT INTO sp_role( name_role )
VALUES 
( 'Поставщик'),
('Заказчик');


INSERT INTO account( Login, Password, id_role, Surname, Name)
VALUES 
('post', 'post', 1, 'Самойлов','Иван'),
('post', 'post', 2, 'Головач','Лена'),
('zak', 'zak', 2, 'Бал','Матье');


CREATE TABLE ARM
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Наименование NVARCHAR(100) NULL,
    Производитель NVARCHAR(100) NULL,
    Поставщик  NVARCHAR(100) NULL,
	Стоимость NVARCHAR(100) NULL,
	Количество NVARCHAR(100) NULL
);

INSERT INTO ARM( Наименование, Производитель, Поставщик, Стоимость, Количество )
VALUES 
('Domestos', 'Domestos', 'CapsiCo', '50', '340'),
('Жидкий Утёнок', 'Henkel', 'Henkel', '45', '450'),
('Fairy', 'Linas', 'Hadear', '60', '390'),
('Миф', 'Henkel', 'Henkel', '60', '590'),
('Laska', 'Алада', 'GuerShop', '220', '270'),
('Persil', 'Henkel', 'Byrion', '140', '340'),
('Tied', 'Henkel', 'Byrion', '150', '510'),
('Ariel', 'Эксмо', 'Право', '175', '302');

CREATE TABLE basket
(
    ID INT NULL,
    Наименование NVARCHAR(100) NULL,
    Производитель NVARCHAR(100) NULL,
    Поставщик  NVARCHAR(100) NULL,
	Стоимость NVARCHAR(100) NULL,
	Количество NVARCHAR(100) NULL
);
INSERT INTO basket(Наименование, Производитель, Поставщик, Стоимость, Количество )
VALUES 
('Domestos', 'Domestos', 'CapsiCo', '50', '340')

SELECT * FROM ARM WHERE ID = 1
SELECT * FROM sp_role;
SELECT * FROM account;
SELECT * FROM basket;
SELECT Стоимость FROM ARM;

INSERT INTO basket(ID, Наименование, Производитель, Поставщик, Стоимость, Количество ) VALUES('5',  'Laska', 'Алада', 'GuerShop','220', '270') 