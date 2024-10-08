CREATE DATABASE torneosebas;

USE torneosebas; 

CREATE TABLE equipos ( 

    id INT PRIMARY KEY, 
    nombre VARCHAR(45), 
    fecha_fundado DATE 
); 

CREATE TABLE arbitros ( 
    id INT PRIMARY KEY, 
    nombre VARCHAR(45), 
    apellido VARCHAR(45) 
); 

CREATE TABLE jugadores ( 
    id INT PRIMARY KEY, 
    nombre VARCHAR(45), 
    apellido VARCHAR(45), 
    nacionalidad VARCHAR(45), 
    posicion VARCHAR(45), 
    id_equipo INT, 

    FOREIGN KEY (id_equipo) REFERENCES equipos(id) 
); 

CREATE TABLE partidos ( 

    id INT PRIMARY KEY, 
    id_equipo_local INT, 
    id_equipo_visitante INT, 
    goles_equipo_local INT, 
    goles_equipo_visitante INT, 

    id_arbitro INT, 
    FOREIGN KEY (id_equipo_local) REFERENCES equipos(id), 
    FOREIGN KEY (id_equipo_visitante) REFERENCES equipos(id), 
    FOREIGN KEY (id_arbitro) REFERENCES arbitros(id) 
); 