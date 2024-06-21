-- Creación de la tabla de zoológicos
CREATE TABLE zoologico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pais_zoo VARCHAR(100) NOT NULL,
    ciudad_zoo VARCHAR(100) NOT NULL,
    nombre_zoo VARCHAR(100) NOT NULL,
    tamaño_zoo DECIMAL(10,2) NOT NULL,
    presupuesto_zoo DECIMAL(10,2) NOT NULL
);

-- Creación de la tabla de animales
CREATE TABLE animales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_vulgar VARCHAR(100) NOT NULL,
    nombre_cientifico VARCHAR(100) NOT NULL,
    especie_familia VARCHAR(100) NOT NULL,
    en_extincion BOOLEAN NOT NULL
);

-- Creación de la tabla de especies albergadas
CREATE TABLE especie_albergada (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_zoologico INT,
    id_animales INT,
    especie VARCHAR(100) NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    nacimiento DATE NOT NULL,
    origen_pais VARCHAR(100) NOT NULL,
    continente_pais VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_zoologico) REFERENCES zoologico(id),
    FOREIGN KEY (id_animales) REFERENCES animales(id)
);


Tipos_alimentación:
Herbívoros: Se alimentan de plantas, como las aves que comen semillas o los koalas que consumen bambú.
Carnívoros: Se alimentan exclusivamente de carne de otros animales.
Omnívoros: Consumen tanto plantas como carne.
tipo_hábitat:
Terrestres: Viven en tierra firme.
Acuáticos: Viven en el agua.
Aéreos: Viven en el aire.
tipo_especie:
mamiferos
reptiles
anfibios
eves
pecces
inceptpos
