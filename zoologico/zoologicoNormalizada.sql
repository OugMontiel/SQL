-- Tabla de continentes
CREATE TABLE continente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de países
CREATE TABLE pais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_continente INT NOT NULL,
    FOREIGN KEY (id_continente) REFERENCES continente(id)
);

-- Tabla de ciudades
CREATE TABLE ciudad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

-- Tabla de años
CREATE TABLE año (
    id INT PRIMARY KEY AUTO_INCREMENT,
    año DATE NOT NULL
);

-- Tabla de presupuestos
CREATE TABLE presupuesto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_año INT NOT NULL,
    presupuesto DECIMAL(10,2),
    FOREIGN KEY (id_año) REFERENCES año(id)
);

-- Tabla de zoológicos
CREATE TABLE zoologico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_ciudad INT NOT NULL,
    tamaño DECIMAL(10,2) NOT NULL,
    id_presupuesto INT NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id),
    FOREIGN KEY (id_presupuesto) REFERENCES presupuesto(id)
);

-- Tabla de familias
CREATE TABLE familia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de especies
CREATE TABLE especie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_familia INT NOT NULL,
    FOREIGN KEY (id_familia) REFERENCES familia(id)
);

-- Tabla de alimentaciones
CREATE TABLE alimentacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de hábitats
CREATE TABLE habitat (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de nombres vulgares
CREATE TABLE nombres_vulgares (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres_vulgares VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id)
);

-- Tabla de animales
CREATE TABLE animales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_nombres_vulgares INT NOT NULL,
    nombre_cientifico VARCHAR(100) NOT NULL,
    id_especie INT NOT NULL,
    id_alimentacion INT NOT NULL,
    id_habitat INT NOT NULL,
    en_extincion BOOLEAN NOT NULL,
    FOREIGN KEY (id_nombres_vulgares) REFERENCES nombres_vulgares(id),
    FOREIGN KEY (id_especie) REFERENCES especie(id),
    FOREIGN KEY (id_alimentacion) REFERENCES alimentacion(id),
    FOREIGN KEY (id_habitat) REFERENCES habitat(id)
);

-- Tabla de especies albergadas
CREATE TABLE especie_albergada (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_zoologico INT NOT NULL,
    id_animales INT NOT NULL,
    id_especie INT NOT NULL,
    genero BOOLEAN NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_pais_origen INT NOT NULL,
    FOREIGN KEY (id_zoologico) REFERENCES zoologico(id),
    FOREIGN KEY (id_animales) REFERENCES animales(id),
    FOREIGN KEY (id_especie) REFERENCES especie(id),
    FOREIGN KEY (id_pais_origen) REFERENCES pais(id)
);
