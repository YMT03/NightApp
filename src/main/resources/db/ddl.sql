DROP DATABASE IF EXISTS NIGHTAPP;
CREATE DATABASE NIGHTAPP;
USE NIGHTAPP;

DROP TABLE IF EXISTS ROLES;
CREATE TABLE ROLES
(
    ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT ROLES_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

DROP TABLE IF EXISTS PERSONAS;
CREATE TABLE PERSONAS
(
	ID BIGINT AUTO_INCREMENT,
	NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    DNI VARCHAR(15) NOT NULL,
    MAIL VARCHAR(30) NOT NULL UNIQUE,
    MAIL_CONFIRMADO TINYINT(1) NOT NULL,
    DOMICILIO VARCHAR(50) NOT NULL,
    CUIL VARCHAR(20) NULL,
    UNIQUE KEY(NOMBRE, APELLIDO, DNI, CUIL),
    CONSTRAINT PERSONAS_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

DROP TABLE IF EXISTS USUARIOS;
CREATE TABLE USUARIOS
(
	ID BIGINT AUTO_INCREMENT,
	USERNAME VARCHAR(15) NOT NULL,
    PASSWORD VARCHAR(50) NOT NULL,
	PERSONA_ID BIGINT NOT NULL UNIQUE,
    CONSTRAINT USUARIOS_PK PRIMARY KEY(ID),
    CONSTRAINT USUARIOS_FK1 FOREIGN KEY(PERSONA_ID)
        REFERENCES PERSONAS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE USUARIOS_ROLES
(
    USUARIO_ID BIGINT NOT NULL,
    ROL_ID BIGINT NOT NULL,
    CONSTRAINT USUARIOS_ROLES_PK PRIMARY KEY(USUARIO_ID, ROL_ID),
    CONSTRAINT USUARIOS_ROLES_FK1 FOREIGN KEY(USUARIO_ID)
        REFERENCES USUARIOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT USUARIOS_ROLES_FK2 FOREIGN KEY(ROL_ID)
		REFERENCES ROLES(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

DROP TABLE IF EXISTS LOCALIDADES;
CREATE TABLE LOCALIDADES
(
    ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL UNIQUE,
    CONSTRAINT LOCALIDADES_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

DROP TABLE IF EXISTS CIUDADES;
CREATE TABLE CIUDADES
(
    ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(50) NOT NULL,
    LOCALIDAD_ID BIGINT NOT NULL,
    UNIQUE KEY(NOMBRE, LOCALIDAD_ID),
    CONSTRAINT CIUDADES_PK PRIMARY KEY(ID),
    CONSTRAINT CIUDADES_FK1 FOREIGN KEY(LOCALIDAD_ID)
        REFERENCES LOCALIDADES(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

DROP TABLE IF EXISTS UBICACIONES;
CREATE TABLE UBICACIONES
(
	ID BIGINT AUTO_INCREMENT,
	DIRECCION VARCHAR(100) NOT NULL,
	CIUDAD_ID BIGINT NOT NULL,
    LONGITUD VARCHAR(50) NOT NULL,
	LATITUD VARCHAR(50) NOT NULL,
    CONSTRAINT UBICACIONES_PK PRIMARY KEY(ID),
    CONSTRAINT UBICACIONES_FK1 FOREIGN KEY (CIUDAD_ID)
        REFERENCES CIUDADES(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

DROP TABLE IF EXISTS ESTABLECIMIENTOS;
CREATE TABLE ESTABLECIMIENTOS
(
	ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(150) NOT NULL,
    DESCRIPCION TEXT(2000),
    UBICACION_ID BIGINT NULL,
    ACTIVO TINYINT(1),
    RATING TINYINT(1),
    CONSTRAINT ESTABLECIMIENTOS_PK PRIMARY KEY(ID),
    CONSTRAINT ESTABLECIMIENTOS_FK1 FOREIGN KEY(UBICACION_ID)
    		REFERENCES UBICACIONES(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

DROP TABLE IF EXISTS HABILITACIONES;
CREATE TABLE HABILITACIONES
(
    ID BIGINT AUTO_INCREMENT,
    ARCHIVO LONGBLOB NOT NULL,
    ESTABLECIMIENTO_ID BIGINT NOT NULL,
    CONSTRAINT HABILITACIONES_PK PRIMARY KEY(ID),
    CONSTRAINT HABILITACIONES_FK1 FOREIGN KEY(ESTABLECIMIENTO_ID)
        REFERENCES ESTABLECIMIENTOS(ID)  MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

DROP TABLE IF EXISTS COMENTARIOS;
CREATE TABLE COMENTARIOS
(
	ID BIGINT AUTO_INCREMENT,
    ESTABLECIMIENTO_ID BIGINT NOT NULL,
    CALIFICACION TINYINT(1) NOT NULL,
    TITULO VARCHAR(70) NOT NULL,
	DESCRIPCION TEXT(800) NOT NULL,
    CONSTRAINT COMENTARIOS_PK PRIMARY KEY(ID),
	CONSTRAINT COMENTARIOS_FK1 FOREIGN KEY(ESTABLECIMIENTO_ID)
		REFERENCES ESTABLECIMIENTOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE MENUS
(
	ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(50) UNIQUE,
    CONSTRAINT MENUS_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

CREATE TABLE CATEGORIAS
(
	ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(50) UNIQUE,
    CONSTRAINT CATEGORIAS_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

CREATE TABLE ESTABLECIMIENTOS_MENUS
(
    ESTABLECIMIENTO_ID BIGINT NOT NULL,
    MENU_ID BIGINT NOT NULL,
    CONSTRAINT ESTABLECIMIENTOS_MENUS_PK PRIMARY KEY(ESTABLECIMIENTO_ID, MENU_ID),
    CONSTRAINT ESTABLECIMIENTOS_MENUS_FK1 FOREIGN KEY(ESTABLECIMIENTO_ID)
        REFERENCES ESTABLECIMIENTOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT ESTABLECIMIENTOS_MENUS_FK2 FOREIGN KEY(MENU_ID)
		REFERENCES MENUS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE SERVICIOS
(
	ID BIGINT AUTO_INCREMENT,
    NOMBRE VARCHAR(50) UNIQUE,
    CONSTRAINT SERVICIOS_PK PRIMARY KEY(ID)
)ENGINE=INNODB;

CREATE TABLE ESTABLECIMIENTOS_CATEGORIAS
(
    ESTABLECIMIENTO_ID BIGINT NOT NULL,
    CATEGORIA_ID BIGINT NOT NULL,
    CONSTRAINT ESTABLECIMIENTOS_CATEGORIAS_PK PRIMARY KEY(ESTABLECIMIENTO_ID, CATEGORIA_ID),
    CONSTRAINT ESTABLECIMIENTOS_CATEGORIAS_FK1 FOREIGN KEY(ESTABLECIMIENTO_ID)
        REFERENCES ESTABLECIMIENTOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT ESTABLECIMIENTOS_CATEGORIAS_FK2 FOREIGN KEY(CATEGORIA_ID)
		REFERENCES CATEGORIAS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;

CREATE TABLE ESTABLECIMIENTOS_SERVICIOS
(
    ESTABLECIMIENTO_ID BIGINT NOT NULL,
    SERVICIO_ID BIGINT NOT NULL,
    CONSTRAINT ESTABLECIMIENTOS_SERVICIOS_PK PRIMARY KEY(ESTABLECIMIENTO_ID, SERVICIO_ID),
    CONSTRAINT ESTABLECIMIENTOS_SERVICIOS_FK1 FOREIGN KEY(ESTABLECIMIENTO_ID)
        REFERENCES ESTABLECIMIENTOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT EESTABLECIMIENTOS_SERVICIOS_FK2 FOREIGN KEY(SERVICIO_ID)
		REFERENCES SERVICIOS(ID) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
)ENGINE=INNODB;