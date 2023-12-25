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
( '���������'),
('��������');


INSERT INTO account( Login, Password, id_role, Surname, Name)
VALUES 
('post', 'post', 1, '��������','����'),
('post', 'post', 2, '�������','����'),
('zak', 'zak', 2, '���','�����');


CREATE TABLE ARM
(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ������������ NVARCHAR(100) NULL,
    ������������� NVARCHAR(100) NULL,
    ���������  NVARCHAR(100) NULL,
	��������� NVARCHAR(100) NULL,
	���������� NVARCHAR(100) NULL
);

INSERT INTO ARM( ������������, �������������, ���������, ���������, ���������� )
VALUES 
('Domestos', 'Domestos', 'CapsiCo', '50', '340'),
('������ �����', 'Henkel', 'Henkel', '45', '450'),
('Fairy', 'Linas', 'Hadear', '60', '390'),
('���', 'Henkel', 'Henkel', '60', '590'),
('Laska', '�����', 'GuerShop', '220', '270'),
('Persil', 'Henkel', 'Byrion', '140', '340'),
('Tied', 'Henkel', 'Byrion', '150', '510'),
('Ariel', '�����', '�����', '175', '302');

CREATE TABLE basket
(
    ID INT NULL,
    ������������ NVARCHAR(100) NULL,
    ������������� NVARCHAR(100) NULL,
    ���������  NVARCHAR(100) NULL,
	��������� NVARCHAR(100) NULL,
	���������� NVARCHAR(100) NULL
);
INSERT INTO basket(������������, �������������, ���������, ���������, ���������� )
VALUES 
('Domestos', 'Domestos', 'CapsiCo', '50', '340')

SELECT * FROM ARM WHERE ID = 1
SELECT * FROM sp_role;
SELECT * FROM account;
SELECT * FROM basket;
SELECT ��������� FROM ARM;

INSERT INTO basket(ID, ������������, �������������, ���������, ���������, ���������� ) VALUES('5',  'Laska', '�����', 'GuerShop','220', '270') 