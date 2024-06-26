-- #############################
-- ###### EJERCICIO DIA 4 ######
-- #############################
-- Basado en el archivo jardineria.png
-- Creacion y uso de la BBDD "jardineria"

CREATE DATABASE jardineria;
USE jardineria;

-- Creacion tabla gama_producto
CREATE TABLE gama_producto(
	gama VARCHAR(50) PRIMARY KEY,
	descripcion_texto TEXT,
	descripcion_html TEXT,
	imagen VARCHAR(256)
);

-- Creacion tabla producto
CREATE TABLE producto(
	codigo_producto VARCHAR(50) PRIMARY KEY,
	nombre VARCHAR(70) NOT NULL,
	gama VARCHAR(50),
	dimensiones VARCHAR(25),
	proveedor VARCHAR(50),
	descripcion TEXT,
	cantidad_en_stock SMALLINT(6) NOT NULL,
	precio_venta DECIMAL(15,2),
	precio_proveedor DECIMAL(15,2),
	FOREIGN KEY (gama) REFERENCES gama_producto(gama)
);

-- Creacion tabla oficina

CREATE TABLE oficina(
	codigo_oficina VARCHAR(10) PRIMARY KEY,
	ciudad VARCHAR(30) NOT NULL,
	pais VARCHAR(50) NOT NULL,
	region VARCHAR(50) ,
	codigo_postal VARCHAR(10) NOT NULL,
	telefono VARCHAR(20) NOT NULL,
	linea_direccion1 VARCHAR(50) NOT NULL,
	linea_direccion2 VARCHAR(50)
);


-- Creacion tabla empleado

direccion
ciudad
region
pais
codigo_postal
empleado;

-- Creacion tabla cliente

CREATE TABLE cliente(
	codigo_cliente INT(11) PRIMARY KEY,
	nombre_cliente VARCHAR(50) NOT NULL,
	nombre_contacto VARCHAR(30),
	apellido_contacto VARCHAR(30),
	telefono VARCHAR(15) NOT NULL,
	fax VARCHAR(15) NOT NULL,
	linea_direccion1 VARCHAR(50) NOT NULL,
	linea_direccion2 VARCHAR(50),
	ciudad VARCHAR(50) NOT NULL,
	region VARCHAR(50),
	pais VARCHAR(50),
	codigo_postal VARCHAR(10),
	codigo_empleado_rep_ventas INT(11),
	limite_credito DECIMAL(15,2),
	FOREIGN KEY (codigo_empleado_rep_ventas) REFERENCES empleado(codigo_empleado)
);

-- Creacion tabla pedido
CREATE TABLE pedido(
	codigo_pedido INT(11) PRIMARY KEY,
	fecha_pedido DATE NOT NULL,
	fecha_esperada DATE NOT NULL,
	fecha_entrega DATE,
	estado VARCHAR(15) NOT NULL,
	comentarios TEXT,
	codigo_cliente INT(11),
	FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)
);
-- Creacion tabla detalle pedido (tabla intermedia)

CREATE TABLE detalle_pedido(
	codigo_pedido INT(11),
	codigo_producto VARCHAR(15),
	cantidad INT(11) NOT NULL,
	precio_unidad DECIMAL(15,2) NOT NULL,
	numero_linea SMALLINT(6) NOT NULL,
	FOREIGN KEY(codigo_pedido) REFERENCES pedido(codigo_pedido),
	FOREIGN KEY(codigo_producto) REFERENCES producto(codigo_producto)
);

-- creacion table pago
CREATE TABLE pago(
	codigo_cliente INT(11),
	forma_pago VARCHAR(40) NOT NULL,
	id_transaccion VARCHAR(50) PRIMARY KEY,
	fecha_pago DATE NOT NULL,
	total DECIMAL(15,2),
	FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)
);




