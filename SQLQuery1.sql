Create DATABASE MyApp
Create TABLE Users (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Surname NVARCHAR (50) NOT NULL,
Email NVARCHAR (50) NOT NULL UNIQUE,
RegistrationDate DATETIME CHECK (RegistrationDate<GETDATE()) DEFAULT ('GETDATE()'),
ContactNumber NVARCHAR (50) DEFAULT ('+994000000000'),
Age INT CHECK (Age>=18),
Address NVARCHAR (50))

INSERT INTO Users (Name, Surname, Email, RegistrationDate, ContactNumber, Age, Address)
VALUES ('Ali', 'Cahangirov', 'alik@gmail.com', '2024.05.30', '+994502505059', 25, 'Abşeron'),
('Samir', 'Abbasov', 'samir@gmail.com', '2024.06.12', '+994504265002',  32, 'Sumqayıt'),
('Abbas', 'Agayev', 'agayev@gmail.com', '2024.02.02', '+994502000000', 19, 'Xizi');

SELECT * FROM Users

Create TABLE Categories (
Id INT PRIMARY KEY IDENTITY (1,1),
Name NVARCHAR (50) NOT NULL,
Slug NVARCHAR (50) NOT NULL UNIQUE,
CreatedAt DATETIME CHECK (CreatedAt<GETDATE()) DEFAULT (GETDATE()),
ContactNumber NVARCHAR (50) DEFAULT ('+994000000000'),
IsActive BIT )

INSERT INTO Categories (Name, Slug, CreatedAt, ContactNumber, IsActive)
VALUES ('Ali', 'abbas', '2024.05.30', '+994502505059', 1),
('Sabir', 'cavid', '2024.05.30', '+994504265002', 0),
('Samir', 'alik','2024.06.12', '+994502000000', 1);

SELECT * FROM Categories

SELECT Name, Surname, Email FROM Users

SELECT Name, IsActive FROM Categories