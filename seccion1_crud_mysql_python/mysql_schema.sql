CREATE DATABASE gestion_usarios;
USE gestion_usarios;

CREATE TABLE IF NOT EXIST usuarios(
    id INT PRIMARY AUTO_INCREMENT,
    nombre varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)