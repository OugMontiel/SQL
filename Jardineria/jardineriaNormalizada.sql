CREATE TABLE codigo_postal(
    codigo_postal int not NULL unique
)
CREATE TABLE region (
    id int primary key,
    region VARCHAR(50) not NULL unique
)
CREATE TABLE ciudad(
    id int primary key,
    ciudad VARCHAR(50) not NULL unique
)
CREATE TABLE pais(
    id int primary key,
    pais VARCHAR(50) not NULL unique
)
CREATE TABLE estados(
    id int primary key,
    estados VARCHAR(50) not NULL unique
)
CREATE TABLE formas_pago(
    id int primary key,
    formas_pago VARCHAR(50) not NULL unique
)
CREATE TABLE proveedor(
    id int primary key,
    proveedor VARCHAR(50) not NULL unique
)
CREATE TABLE gama(
    id int primary key,
    gama VARCHAR(50),
	descripcion_texto TEXT,
	descripcion_html TEXT,
	imagen VARCHAR(256)
)
CREATE TABLE producto(
    id int primary key,
	nombre VARCHAR(70) NOT NULL,
	id_gama int,
	dimensiones VARCHAR(25),
	id_proveedor int,
	descripcion TEXT,
	cantidad_en_stock SMALLINT(6) NOT NULL,
	precio_venta DECIMAL(15,2),
	precio_proveedor DECIMAL(15,2),
	FOREIGN KEY (id_gama) REFERENCES gama(id)
	FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)
);
CREATE TABLE oficina(
    id int primary key,
    id_ciudad int,
	id_pais int,
	id_region int,
	id_codigo_postal VARCHAR(10),
    telefono VARCHAR(20) NOT NULL,
    id_direccion int not NULL,	
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id)
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id)
    FOREIGN KEY (id_region) REFERENCES region(id)
    FOREIGN KEY (id_pais) REFERENCES pais(id)
    FOREIGN KEY (id_codigo_postal) REFERENCES codigo_postal(id)
)
CREATE TABLE empleado(
    id INT PRIMARY KEY,    
	nombre VARCHAR(50) NOT NULL,
	apellido1 VARCHAR(50) NOT NULL,
	apellido2 VARCHAR(50),
	extension VARCHAR(10) NOT NULL,
	email VARCHAR(100) NOT NULL unique,
	id_oficina int,
	id_jefe int,
	puesto VARCHAR(50),
	FOREIGN KEY (id_oficina) REFERENCES oficina(id),
	FOREIGN KEY (id_jefe) REFERENCES empleado(id),
)
CREATE TABLE cliente(
    id INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
	nombre_contacto VARCHAR(50),
    telefono VARCHAR(15) NOT NULL,
	fax VARCHAR(15) NOT NULL,
    id_direccion int not NULL,
    id_ciudad int,
	id_region int,
	id_pais int,
	id_codigo_postal VARCHAR(10),
	id_empleado INT,
	limite_credito DECIMAL(15,2),
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id)
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id)
    FOREIGN KEY (id_region) REFERENCES region(id)
    FOREIGN KEY (id_pais) REFERENCES pais(id)
    FOREIGN KEY (id_codigo_postal) REFERENCES codigo_postal(id)
    FOREIGN KEY (id_empleado) REFERENCES empleado(id)
)
CREATE TABLE direcciones(
    id int primary key,
    direccione VARCHAR(50),
    id_oficina int 
    id_clientes int
    FOREIGN KEY (id_clientes) REFERENCES cliente(id)
    FOREIGN KEY (id_oficina) REFERENCES oficina(id)
)
CREATE TABLE pagos(
    id int primary key,
    id_clientes int not NULL,
    fecha_pago DATE NOT NULL,
	total DECIMAL(15,2),
    FOREIGN KEY (id_clientes) REFERENCES cliente(id)
)
CREATE TABLE pedido(
    id int primary key,
	
	fecha_pedido DATE NOT NULL,
	fecha_esperada DATE NOT NULL,
	fecha_entrega DATE,
	id_estado int,
	id_cliente INT,
	comentarios TEXT,
	FOREIGN KEY (id_estado) REFERENCES estados(id)
	FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);