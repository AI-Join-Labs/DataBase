CREATE DATABASE IF NOT EXISTS Gestion_Hospitales;
USE Gestion_Hospitales;

-- Tabla Pacientes
CREATE TABLE Pacientes (
    ID_Paciente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Género ENUM('F', 'M') NOT NULL,
    Telefono INT
);

-- Tabla Médicos
CREATE TABLE Medicos (
    ID_Medico INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Especialidad VARCHAR(50) NOT NULL,
    Telefono INT
);

-- Tabla Citas
CREATE TABLE Citas (
    ID_Cita INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    ID_Paciente INT,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla Tratamientos
CREATE TABLE Tratamientos (
    ID_Tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    Descripcion TINYTEXT NOT NULL,
    Costo DECIMAL(10, 2) NOT NULL,
    ID_Paciente INT,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla Medicamentos
CREATE TABLE Medicamentos (
    ID_Medicamento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Dosis VARCHAR(10) NOT NULL
);

-- Tabla Historial_Medico
CREATE TABLE Historial_Medico (
    ID_Historial INT AUTO_INCREMENT PRIMARY KEY,
    ID_Paciente INT,
    Alergias VARCHAR(50),
    Enfermedades_Previas VARCHAR(50),
    Notas TINYTEXT,
    FOREIGN KEY (ID_Paciente) REFERENCES Pacientes(ID_Paciente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE Tratamientos_Medicamentos (
    ID_Tratamiento INT,
    ID_Medicamento INT,
    PRIMARY KEY (ID_Tratamiento, ID_Medicamento),
    FOREIGN KEY (ID_Tratamiento) REFERENCES Tratamientos(ID_Tratamiento)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (ID_Medicamento) REFERENCES Medicamentos(ID_Medicamento)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

ALTER TABLE Citas
ADD COLUMN ID_Medico INT,
ADD FOREIGN KEY (ID_Medico) REFERENCES Medicos(ID_Medico) ON DELETE CASCADE;
