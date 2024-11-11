CREATE DATABASE COMIDA_RAPIDA;

USE COMIDA_RAPIDA;

CREATE TABLE MOMENTO_CONSUMO (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

INSERT INTO MOMENTO_CONSUMO(descripcion) VALUES ("Mañana (desayuno)");
INSERT INTO MOMENTO_CONSUMO(descripcion) VALUES ("Mediodía (almuerzo)");
INSERT INTO MOMENTO_CONSUMO(descripcion) VALUES ("Tarde (merienda)");
INSERT INTO MOMENTO_CONSUMO(descripcion) VALUES ("Noche (cena)");

CREATE TABLE FRECUENCIA (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

INSERT INTO FRECUENCIA(descripcion) VALUES ("Diariamente");
INSERT INTO FRECUENCIA(descripcion) VALUES ("Varias veces a la semana");
INSERT INTO FRECUENCIA(descripcion) VALUES ("Una vez a la semana (semanalmente)");
INSERT INTO FRECUENCIA(descripcion) VALUES ("Una vez al mes (mensualmente)");
INSERT INTO FRECUENCIA(descripcion) VALUES ("Rara vez");

CREATE TABLE AUMENTO_VENTA_PROMOCION (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    factor INT
);

INSERT INTO AUMENTO_VENTA_PROMOCION(descripcion) VALUES ("Menos del 10%");
INSERT INTO AUMENTO_VENTA_PROMOCION(descripcion) VALUES ("Entre 10% y 20%");
INSERT INTO AUMENTO_VENTA_PROMOCION(descripcion) VALUES ("Entre 20% y 50%");
INSERT INTO AUMENTO_VENTA_PROMOCION(descripcion) VALUES ("Más del 50%");

CREATE TABLE AUMENTO_VENTA_FINDE (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    factor INT
);

INSERT INTO AUMENTO_VENTA_FINDE(descripcion) VALUES ("Sí, son aproximadamente el doble o más");
INSERT INTO AUMENTO_VENTA_FINDE(descripcion) VALUES ("Sí, pero solo entre un 20% y 50% más");
INSERT INTO AUMENTO_VENTA_FINDE(descripcion) VALUES ("No, son similares");
INSERT INTO AUMENTO_VENTA_FINDE(descripcion) VALUES ("No, los días entre semana tienen más ventas");


CREATE TABLE IMPACTO_VENTA_EVENTO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100)
);

INSERT INTO IMPACTO_VENTA_EVENTO(descripcion) VALUES ("No afectadas");
INSERT INTO IMPACTO_VENTA_EVENTO(descripcion) VALUES ("Poco afectadas");
INSERT INTO IMPACTO_VENTA_EVENTO(descripcion) VALUES ("Moderadamente afectadas");
INSERT INTO IMPACTO_VENTA_EVENTO(descripcion) VALUES ("Muy afectadas");

CREATE TABLE CLIENTES_PROMEDIO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    minimo INT,
    maximo INT
);

INSERT INTO CLIENTES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Menos de 200", 0, 199);
INSERT INTO CLIENTES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Entre 200 y 400", 200, 400);
INSERT INTO CLIENTES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Entre 400 y 600", 400, 600);
INSERT INTO CLIENTES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Más de 600", 601, null);

CREATE TABLE ORDENES_PROMEDIO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    minimo INT,
    maximo INT
);

INSERT INTO ORDENES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Menos de 300", 0, 299);
INSERT INTO ORDENES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Entre 300 y 600", 300, 600);
INSERT INTO ORDENES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Entre 600 y 1000", 600, 1000);
INSERT INTO ORDENES_PROMEDIO(descripcion, minimo, maximo) VALUES ("Más de 1000", 1001, null);

CREATE TABLE PCT_VENTA_ENTREGA (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    factor INT
);

INSERT INTO PCT_VENTA_ENTREGA(descripcion) VALUES ("Menos del 10%");
INSERT INTO PCT_VENTA_ENTREGA(descripcion) VALUES ("Entre 10% y 30%");
INSERT INTO PCT_VENTA_ENTREGA(descripcion) VALUES ("Entre 30% y 50%");
INSERT INTO PCT_VENTA_ENTREGA(descripcion) VALUES ("Más del 50%");