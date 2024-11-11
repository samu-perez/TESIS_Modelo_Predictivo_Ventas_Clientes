USE COMIDA_RAPIDA;

CREATE TABLE COMPANIA (
	ID_compania INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripción VARCHAR(200)
);

INSERT INTO COMPANIA(nombre) VALUES ("Industria de Hamburguesas");
INSERT INTO COMPANIA(nombre) VALUES ("Industria de Pollo");
INSERT INTO COMPANIA(nombre) VALUES ("Industria de Pizza");

CREATE TABLE RESTAURANTE (
	ID_restaurante INT AUTO_INCREMENT PRIMARY KEY,
    ID_compania INT NOT NULL,
    nombre VARCHAR(100),
    ubicacion VARCHAR(200),
    estado BOOLEAN,
    FOREIGN KEY (ID_compania) REFERENCES COMPANIA(ID_compania)
);

INSERT INTO RESTAURANTE(ID_compania, nombre, estado) VALUES (1, "Restaurante de Hamburguesas 1", 1);
INSERT INTO RESTAURANTE(ID_compania, nombre, estado) VALUES (2, "Restaurante de Pollo 1", 1);
INSERT INTO RESTAURANTE(ID_compania, nombre, estado) VALUES (3, "Restaurante de Pizza 1", 1);

CREATE TABLE VENTA_TOTAL (
	ID_vental_total INT AUTO_INCREMENT PRIMARY KEY,
    ID_restaurante INT NOT NULL,
    fecha DATE,
    total_venta DECIMAL(10,2),
    total_clientes INT,
    FOREIGN KEY (ID_restaurante) REFERENCES RESTAURANTE(ID_restaurante)
);

CREATE TABLE VENTA_TRANSACCION (
	ID_venta INT AUTO_INCREMENT PRIMARY KEY,
    ID_restaurante INT NOT NULL,
    fecha DATE,
    venta DECIMAL(10,2),
    FOREIGN KEY (ID_restaurante) REFERENCES RESTAURANTE(ID_restaurante)
);

CREATE TABLE PROMOCION (
	ID_promocion INT AUTO_INCREMENT PRIMARY KEY,
    ID_compania INT NOT NULL,
    nombre VARCHAR(100),
    descripcion VARCHAR(200),
    fecha_inicio DATE,
    fecha_fin DATE,
    estado BOOLEAN,
    FOREIGN KEY (ID_compania) REFERENCES COMPANIA(ID_compania)
);

CREATE TABLE VENTA_PROMOCION (
	ID_venta_promocion INT AUTO_INCREMENT PRIMARY KEY,
    ID_venta INT NOT NULL,
    ID_promocion INT NOT NULL,
    FOREIGN KEY (ID_venta) REFERENCES VENTA_TRANSACCION(ID_venta),
    FOREIGN KEY (ID_promocion) REFERENCES PROMOCION(ID_promocion)
);

CREATE TABLE EVENTO_EXTERNO (
	ID_evento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(200)
);

INSERT INTO EVENTO_EXTERNO(nombre) VALUES ("Día lluvioso o mal clima");
INSERT INTO EVENTO_EXTERNO(nombre) VALUES ("Fechas antes del día de pago");
INSERT INTO EVENTO_EXTERNO(nombre) VALUES ("Problemas de tráfico o difícil acceso al restaurante");
INSERT INTO EVENTO_EXTERNO(nombre) VALUES ("Aumento en el costo de los productos o servicios");
INSERT INTO EVENTO_EXTERNO(nombre) VALUES ("Falta de promociones o descuentos atractivos");

CREATE TABLE VENTA_EVENTO (
	ID_venta_evento INT AUTO_INCREMENT PRIMARY KEY,
    ID_venta INT NOT NULL,
    ID_evento INT NOT NULL,
    FOREIGN KEY (ID_venta) REFERENCES VENTA_TRANSACCION(ID_venta),
    FOREIGN KEY (ID_evento) REFERENCES EVENTO_EXTERNO(ID_evento)
);