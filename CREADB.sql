CREATE DATABASE EstudiantesDB;
GO

USE EstudiantesDB;
GO

CREATE TABLE Carreras (
    IdCarrera INT PRIMARY KEY IDENTITY(1,1),
    NombreCarrera NVARCHAR(100) NOT NULL
);
GO

INSERT INTO Carreras (NombreCarrera) VALUES 
('Ingeniería en Sistemas'),
('Biología'),
('Derecho'),
('Comercio'),
('Educación'),
('Psicología'),
('Matemáticas'),
('Química'),
('Economía'),
('Administración'),
('Mercadotecnia');
GO

CREATE TABLE Estudiantes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombres NVARCHAR(100) NOT NULL,
    Apellidos NVARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Direccion NVARCHAR(255) NOT NULL,
    Sexo NVARCHAR(10) NOT NULL CHECK (Sexo IN ('Masculino', 'Femenino', 'Otro')),
    CURP CHAR(18) NOT NULL UNIQUE,
    Telefono NVARCHAR(15) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    IdCarrera INT NOT NULL,
    EsBecado BIT NOT NULL,
    Modalidad NVARCHAR(10) NOT NULL CHECK (Modalidad IN ('Presencial', 'Online', 'Ambos')),

    -- Opcionales
    DescripcionPersonal NVARCHAR(MAX) NULL,
    TieneMascotas BIT NULL,
    TiposMascotas NVARCHAR(100) NULL,
    HorarioComida NVARCHAR(100) NULL,

    FOREIGN KEY (IdCarrera) REFERENCES Carreras(IdCarrera)
);
GO
