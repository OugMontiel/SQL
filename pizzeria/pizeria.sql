-- Creación de la base de datos
CREATE DATABASE PizzaFiesta;
USE PizzaFiesta;

-- Tabla de clientes
CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15) no NULL UNIQUE,
    direccion VARCHAR(255) NOT NULL
);
-- Tabla de pedidos
CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_detalle_pedido INT
    fecha_pedido DATETIME NOT NULL,
    total DECIMAL(10,2), -- Contual y suma de detalle_pedido
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
    FOREIGN KEY (id_detalle_pedido) REFERENCES detalle_pedido(id)
);
-- Tabla de detalle pedido
CREATE TABLE detalle_pedido(
    id_pedido INT --foranea
    id_detalle_pizza INT
    id_detalle_bebida INT
)
CREATE TABLE detalle_pizza(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT
    id_pizza INT
    precio_unidad int -- Consulta de Pizza
    cantidad int 
    precio int
)
CREATE TABLE detalle_bebida(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT
    id_bebida INT
    precio_unidad int -- Consulta de bebida
    cantidad int 
    precio int
)
-- Tabla de productos
CREATE TABLE pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
);
CREATE TABLE bebida(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
)
CREATE TABLE ingredientes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id:pizzas int
)

-- Tabla intermedia para los ingredientes en las pizzas
CREATE TABLE pizza_ingrediente (
    id_pizza INT,
    id_ingrediente INT,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_pizza) REFERENCES pizzas(id),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id),
    PRIMARY KEY (id_pizza, id_ingrediente)
);
