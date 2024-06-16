CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_telefono INT,
    id_direccion INT,
    FOREIGN KEY (id_telefono) REFERENCES Telefonos(id),
    FOREIGN KEY (id_direccion) REFERENCES Direciones(id)
);

CREATE TABLE Direciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Direccion VARCHAR(255) NOT NULL
);

CREATE TABLE Telefonos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Telefonos VARCHAR(15) NOT NULL
);

CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha_pedido DATETIME NOT NULL,
    subtotal DECIMAL(10, 2),
    impuesto DECIMAL(10, 2),
    total DECIMAL(10, 2),
    id_telefono INT,
    id_direccion INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_telefono) REFERENCES Telefonos(id),
    FOREIGN KEY (id_direccion) REFERENCES Direciones(id)
);

CREATE TABLE detalle_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_detalle_pizza INT,
    id_detalle_productos INT,
    id_detalle_extra INT,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_detalle_pizza) REFERENCES detalle_pizza(id),
    FOREIGN KEY (id_detalle_productos) REFERENCES detalle_otrosProductos(id),
    FOREIGN KEY (id_detalle_extra) REFERENCES detalle_extra(id)
);

CREATE TABLE detalle_extra (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_ingredientes INT,
    precio_unidad DECIMAL(10, 2),
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (id_ingredientes) REFERENCES ingredientes(id)
);

CREATE TABLE detalle_pizza (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pizza INT,
    precio_unidad DECIMAL(10, 2),
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (id_pizza) REFERENCES pizzas(id)
);

CREATE TABLE detalle_otrosProductos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_producto INT,
    precio_unidad DECIMAL(10, 2),
    cantidad INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

CREATE TABLE pizzas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id_tamaño INT,
    precio DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_tamaño) REFERENCES tamaños(id)
);

CREATE TABLE tamaños (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tamaño VARCHAR(50) NOT NULL
);

CREATE TABLE productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL
);

CREATE TABLE ingredientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    id_pizza INT,
    FOREIGN KEY (id_pizza) REFERENCES pizzas(id)
);
