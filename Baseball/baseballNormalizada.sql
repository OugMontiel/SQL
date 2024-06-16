-- Tabla de tipos de cliente
CREATE TABLE tipos_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipoCliente VARCHAR(50) NOT NULL
);

-- Tabla de artículos
CREATE TABLE articulos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombreArticulo VARCHAR(100) NOT NULL,
    descripcionArticulo TEXT,
    precio_unidad DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Tabla de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    id_tipoCliente INT,
    FOREIGN KEY (id_tipoCliente) REFERENCES tipos_cliente(id)
);

-- Tabla de representantes de ventas
CREATE TABLE representantes_ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de facturas
CREATE TABLE facturas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_representanteVentas INT,
    fecha_compra DATETIME NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    impuesto DECIMAL(10, 2) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_representanteVentas) REFERENCES representantes_ventas(id)
);

-- Tabla de items de factura
CREATE TABLE items_factura (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_factura INT,
    id_articulo INT,
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_factura) REFERENCES facturas(id),
    FOREIGN KEY (id_articulo) REFERENCES articulos(id)
);

-- Tabla de quejas
CREATE TABLE quejas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_representanteVentas INT,
    queja TEXT NOT NULL,
    id_factura INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_representanteVentas) REFERENCES representantes_ventas(id),
    FOREIGN KEY (id_factura) REFERENCES facturas(id)
);
