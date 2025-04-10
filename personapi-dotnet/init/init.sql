-- Crear base de datos
CREATE DATABASE persona_db;
GO

USE persona_db;
GO

-- Tabla persona
CREATE TABLE persona (
  cc INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  genero CHAR(1) CHECK (genero IN ('M', 'F')) NOT NULL,
  edad INT NULL
);
GO

-- Tabla profesion
CREATE TABLE profesion (
  id INT NOT NULL PRIMARY KEY,
  nom VARCHAR(90) NOT NULL,
  des TEXT NULL
);
GO

-- Tabla estudios
CREATE TABLE estudios (
  id_prof INT NOT NULL,
  cc_per INT NOT NULL,
  fecha DATE NULL,
  univer VARCHAR(50) NULL,
  PRIMARY KEY (id_prof, cc_per),
  CONSTRAINT estudio_profesion_fk FOREIGN KEY (id_prof) REFERENCES profesion(id),
  CONSTRAINT estudio_persona_fk FOREIGN KEY (cc_per) REFERENCES persona(cc)
);
GO

-- Tabla telefono
CREATE TABLE telefono (
  num VARCHAR(15) NOT NULL PRIMARY KEY,
  oper VARCHAR(45) NOT NULL,
  duenio INT NOT NULL,
  CONSTRAINT telefono_persona_fk FOREIGN KEY (duenio) REFERENCES persona(cc)
);
GO
