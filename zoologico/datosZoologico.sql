-- Insertar registros en la tabla continente
INSERT INTO continente (nombre) VALUES
('América'),
('Europa'),
('Asia'),
('África'),
('Oceanía');

-- Insertar países
INSERT INTO pais (nombre, id_continente) VALUES
('Estados Unidos', 1),   -- América (ID del continente: 1)
('Canadá', 1),
('México', 1),
('Brasil', 1),
('Argentina', 1),
('España', 2),           -- Europa (ID del continente: 2)
('Francia', 2),
('Alemania', 2),
('Italia', 2),
('Reino Unido', 2),
('China', 3),             -- Asia (ID del continente: 3)
('Japón', 3),
('India', 3),
('Corea del Sur', 3),
('Australia', 4),         -- Oceanía (ID del continente: 4)
('Nueva Zelanda', 4),
('Fiyi', 4),
('Papúa Nueva Guinea', 4),
('Sudáfrica', 5),         -- África (ID del continente: 5)
('Nigeria', 5),
('Egipto', 5),
('Kenia', 5);

-- Insertar ciudades con zoológicos famosos
INSERT INTO ciudad (nombre, id_pais) VALUES
('San Diego', 1),         -- San Diego Zoo, Estados Unidos
('Chicago', 1),           -- Lincoln Park Zoo, Estados Unidos
('Sao Paulo', 4),         -- Sao Paulo Zoo, Brasil
('Buenos Aires', 5),      -- Buenos Aires Zoo, Argentina
('Madrid', 6),            -- Zoo Aquarium de Madrid, España
('Berlin', 7),            -- Zoo Berlin, Alemania
('Tokyo', 11),            -- Ueno Zoo, Japón
('Beijing', 12),          -- Beijing Zoo, China
('Sydney', 16),           -- Taronga Zoo, Australia
('Cape Town', 19);        -- Cape Town Zoo, Sudáfrica

-- Insertar años del 2010 al 2024 a la tabla años

-- Paso 1: Agregar una nueva columna temporal de tipo YEAR
ALTER TABLE año ADD COLUMN año_temp YEAR;
-- Paso 2: Copiar los datos de la columna existente a la nueva columna temporal
UPDATE año SET año_temp = YEAR(año);
-- Paso 3: Eliminar la columna antigua de tipo DATE
ALTER TABLE año DROP COLUMN año;
-- Paso 4: Renombrar la columna temporal a 'año'
ALTER TABLE año CHANGE COLUMN año_temp año YEAR NOT NULL;
-- Insertar años del 2010 al 2024
INSERT INTO año (año) VALUES
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020),
(2021),
(2022),
(2023),
(2024);

-- Insertar 10 registros en la tabla presupuesto
INSERT INTO presupuesto (id_año, presupuesto) VALUES
(1, 500000.00),
(2, 520000.00),
(3, 540000.00),
(4, 560000.00),
(5, 580000.00),
(6, 600000.00),
(7, 620000.00),
(8, 640000.00),
(9, 660000.00),
(10, 680000.00);

-- Insertar 10 registros en la tabla zoologico
INSERT INTO zoologico (nombre, id_ciudad, tamaño, id_presupuesto) VALUES
('San Diego Zoo', 1, 100.50, 1),
('Lincoln Park Zoo', 2, 85.25, 2),
('São Paulo Zoo', 3, 150.75, 3),
('Buenos Aires Zoo', 4, 120.00, 4),
('Zoo Aquarium de Madrid', 5, 95.60, 5),
('Berlin Zoological Garden', 6, 135.80, 6),
('Ueno Zoo', 7, 110.45, 7),
('Beijing Zoo', 8, 145.30, 8),
('Taronga Zoo', 9, 130.20, 9),
('Cape Town Zoo', 10, 90.00, 10);

-- Insertar 10 registros en la tabla familia
INSERT INTO familia (nombre) VALUES
('Felidae'),
('Canidae'),
('Ursidae'),
('Elephantidae'),
('Cervidae'),
('Bovidae'),
('Hominidae'),
('Crocodylidae'),
('Psittacidae'),
('Testudinidae');

-- Insertar 10 registros en la tabla especie
INSERT INTO especie (nombre, id_familia) VALUES
('Panthera leo', 1),         -- León, familia Felidae
('Canis lupus', 2),          -- Lobo, familia Canidae
('Ursus arctos', 3),         -- Oso pardo, familia Ursidae
('Loxodonta africana', 4),   -- Elefante africano, familia Elephantidae
('Cervus elaphus', 5),       -- Ciervo rojo, familia Cervidae
('Bos taurus', 6),           -- Vaca, familia Bovidae
('Homo sapiens', 7),         -- Ser humano, familia Hominidae
('Crocodylus niloticus', 8), -- Cocodrilo del Nilo, familia Crocodylidae
('Ara macao', 9),            -- Guacamayo rojo, familia Psittacidae
('Testudo graeca', 10);      -- Tortuga mora, familia Testudinidae

-- Insertar 10 registros en la tabla habitat
INSERT INTO habitat (nombre) VALUES
('Savana'),
('Bosque tropical'),
('Desierto'),
('Tundra'),
('Pantano'),
('Pradera'),
('Montaña'),
('Bosque templado'),
('Océano'),
('Río');

-- Nombres vulgares
INSERT INTO nombres_vulgares (nombres_vulgares, id_pais) VALUES
('León', 1),
('Rey de la Selva', 1),
('Simba', 1),
('Elefante', 2),
('Jumbo', 2),
('Paquidermo', 2),
('Tigre', 3),
('Gato grande', 3),
('Bengalí', 3),
('Oso polar', 4),
('Oso blanco', 4),
('Nanook', 4),
('Canguro', 5),
('Saltador', 5),
('Marsupial', 5),
('Delfín', 6),
('Flipper', 6),
('Nariz de botella', 6),
('Águila', 7),
('Halcón', 7),
('Pájaro nacional', 7),
('Panda', 8),
('Oso panda', 8),
('Bear cat', 8),
('Cocodrilo', 9),
('Reptil', 9),
('Dragón', 9),
('Flamenco', 10),
('Flamingo', 10),
('Pájaro rosa', 10);

-- Animales
INSERT INTO animales (id_nombres_vulgares, nombre_cientifico, id_especie, id_alimentacion, id_habitat, en_extincion) VALUES
(1, 'Panthera leo', 1, 1, 1, 0),
(4, 'Loxodonta africana', 2, 2, 1, 1),
(7, 'Panthera tigris tigris', 1, 1, 2, 1),
(10, 'Ursus maritimus', 3, 1, 3, 1),
(13, 'Macropus rufus', 4, 2, 4, 0),
(16, 'Delphinus delphis', 5, 1, 8, 0),
(19, 'Haliaeetus leucocephalus', 6, 1, 7, 0),
(22, 'Ailuropoda melanoleuca', 3, 2, 8, 1),
(25, 'Crocodylus niloticus', 7, 1, 9, 0),
(28, 'Phoenicopterus roseus', 8, 3, 5, 0);
