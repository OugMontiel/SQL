INSERT INTO Provincia (nombre) VALUES 
('Floridablanca'), ('Girón'), ('Piedecuesta'), ('Los Santos');

INSERT INTO CodigoPostal (codigo) VALUES
('671001'), ('671002'), ('671003'), ('671004'), ('671005'), ('671006'), ('671007'), ('671008'), ('671009'), ('671010'), ('671011'), ('671012'), ('671013'), ('671014'), ('671015'), ('671016'), ('671017'), ('671018'), ('671019'), ('671020'), ('680001'), ('680002'), ('680003'), ('680004'), ('680005'), ('680006'), ('680007'), ('680008'), ('680009'), ('684001'), ('684002'), ('684003'), ('684004'), ('684005'), ('684006'), ('684007'), ('684008'), ('684009'), ('684010'), ('684011'), ('684012'), ('686001'), ('686002'), ('686003'), ('686004'), ('686005'), ('686006'), ('686007'), ('686008'), ('686009'), ('686010'), ('686011'), ('686012'), ('686013'), ('686014'), ('686015'), ('686016'), ('686017'), ('686018'), ('686019'), ('686020'), ('686021'), ('686022'), ('686023'), ('686024'), ('686025'), ('684067'); 

INSERT INTO Poblacion (nombre, descripcion) VALUES 
('Población indígena', 'Comunidades con una conciencia étnica como lengua, tradiciones y creencias religiosas.'), ('Población afrocolombiana', 'Incluye a los descendientes de africanos traídos durante la época colonial.'), ('Población mestiza', 'Personas con ascendencia mixta indígena y europea.'), ('Población raizal', 'Habitantes del Archipiélago de San Andrés, Providencia y Santa Catalina.'), ('Población rom o gitana', 'El pueblo gitano.'), ('Población palenquera', 'Los habitantes de San Basilio, un pueblo fundado por esclavos liberados.'), ('Población campesina', 'Personas que viven en áreas rurales y se dedican a la agricultura.'), ('Población LGBT', 'Personas lesbianas, gais, bisexuales y transgénero.');

INSERT INTO Direccion (direccion, idProvincia, idCodigoPostal) VALUES 
('Calle Principal 123', 1, 1),('Avenida Central 456', 1, 2),('Carrera 7 Este 789', 1, 3), ('Calle 10 Norte 1011', 1, 4), ('Carrera 15 12-34', 1, 5), ('Avenida 20 Sur 567', 1, 6), ('Calle 25 Oeste 789', 1, 7), ('Avenida 30 8910', 1, 8),('Carrera 35 1112', 1, 9),('Avenida 40 1314', 1, 10),('Calle 45 1516', 1, 11),('Carrera 50 1718', 1, 12),('Calle 55 1920', 1, 13),('Avenida 60 2122', 1, 14),('Carrera 65 2324', 1, 15),('Calle 70 2526', 1, 16),('Avenida 75 2728', 1, 17),           ('Carrera 80 2930', 1, 18),('Calle 85 3132', 1, 19),('Carrera 90 3334', 1, 20),('Carrera 100 3536', 1, 21),('Carrera 105 3738', 1, 22),('Carrera 110 3940', 1, 23),('Avenida 115 4142', 1, 24),('Calle 120 4344', 1, 25);      

INSERT INTO TipoEmpleado (tipo_de_empleado) VALUES
('Médico'),('ATS'),('ATS de zona'),('Auxiliares de enfermería'),('Celadores'),('Administrativos');

INSERT INTO TipoDeContrato (TipoDeContrato) VALUES
('Médico titular'),('Médico interino'),('Médico sustituto'),('OtroEmpleado');

INSERT INTO Dias (dias) VALUES 
('Lunes'), ('Martes'), ('Miércoles'), ('Jueves'), ('Viernes'), ('Sábado'), ('Domingo');

INSERT INTO Empleados (nombre, telefono, nif, numero_seguridad_social, numero_colegiado, idPoblacion, idDireccion, idTipoEmpleado, idTipoDeContrato) VALUES
('Juan Pérez', '123456789', '12345678A', '9876543210', 'MED123', 1, 1, 1, 1),('María Rodríguez', '987654321', '87654321B', '0123456789', NULL, 2, 2, 2, 4),('Carlos García', '654987321', '76543210C', '4567890123', NULL, 3, 3, 3, 4),('Laura Gómez', '321654987', '65432109D', '7890123456', NULL, 4, 4, 4, 4),('Pedro López', '987321654', '54321098E', '2345678901', NULL, 5, 5, 5, 4),('Ana Martínez', '456789123', '43210987F', '5678901234', NULL, 6, 6, 6, 4),('Luisa Hernández', '987654321', '76543210A', '1234567890', 'MED124', 1, 1, 1, 1),('Javier Gutiérrez', '654987321', '65432109B', '2345678901', NULL, 2, 2, 2, 4),('Elena Sánchez', '321654987', '54321098C', '3456789012', NULL, 3, 3, 3, 4),('Marcos Rodríguez', '987321654', '43210987D', '4567890123', NULL, 4, 4, 4, 4),('Sara Martín', '456789123', '32109876E', '5678901234', NULL, 5, 5, 5, 4),('David Pérez', '123456789', '21098765F', '6789012345', NULL, 6, 6, 6, 4),('Paula Gómez', '987654321', '09876543G', '7890123456', 'MED125', 7, 7, 1, 1),('Antonio Ramírez', '654987321', '98765432H', '8901234567', NULL, 8, 8, 2, 4),('Carmen Martínez', '321654987', '87654321I', '9012345678', NULL, 1, 9, 3, 4),('Jorge Castro', '987321654', '76543210J', '0123456789', NULL, 5, 10, 4, 4),('Marina López', '456789123', '65432109K', '1234567890', NULL, 7, 11, 5, 4),('Adrián Vargas', '123456789', '54321098L', '2345678901', NULL, 3, 12, 6, 4),('Isabel García', '987654321', '43210987M', '3456789012', 'MED126', 5, 13, 1, 1),('Pablo Ruiz', '654987321', '32109876N', '4567890123', NULL, 4, 14, 2, 4),('Laura Díaz', '321654987', '21098765O', '5678901234', NULL, 1, 15, 3, 4);
INSERT INTO Empleados (nombre, telefono, nif, numero_seguridad_social, numero_colegiado, idPoblacion, idDireccion, idTipoEmpleado, idTipoDeContrato) VALUES
('Juan ', '123456789', '12345678A', '9876543210', 'MED321', 1, 1, 1, 3),('Camilo ', '123456789', '12345678A', '9876543210', 'MED322', 1, 1, 1, 3),('lucas ', '123456789', '12345678A', '9876543210', 'MED322', 1, 1, 1, 2),('Matias ', '123456789', '12345678A', '9876543210', 'MED322', 1, 1, 1, 2),('Juan Matias ', '123456789', '12345678A', '9876543210', 'MED322', 1, 1, 1, 3);


INSERT INTO Horario (idEmpleado, idDia, hora_inicio, hora_fin) VALUES
(1, 1, '08:00:00', '13:00:00'),(1, 2, '08:00:00', '13:00:00'),(1, 3, '08:00:00', '13:00:00'),(1, 4, '08:00:00', '13:00:00'),(1, 5, '08:00:00', '13:00:00'),(7, 1, '09:00:00', '14:00:00'),(7, 2, '09:00:00', '14:00:00'),(7, 3, '09:00:00', '14:00:00'),(7, 4, '09:00:00', '14:00:00'),(7, 5, '09:00:00', '14:00:00'),(13, 1, '10:00:00', '15:00:00'),(13, 2, '10:00:00', '15:00:00'),(13, 3, '10:00:00', '15:00:00'),(13, 4, '10:00:00', '15:00:00'),(13, 5, '10:00:00', '15:00:00'),(19, 1, '11:00:00', '16:00:00'),(19, 2, '11:00:00', '16:00:00'),(19, 3, '11:00:00', '16:00:00'),(19, 4, '11:00:00', '16:00:00'),(19, 5, '11:00:00', '16:00:00');

INSERT INTO Reemplazos (idEmpleado, idHorario, fecha_alta_inicio, fecha_baja_fin) VALUES
(3, 1, '2024-07-01', '2024-07-10'),(7, 1, '2024-08-01', '2024-08-15'),(13, 7, '2024-07-15', '2024-08-01'),(19, 13, '2024-07-20', '2024-07-25'),(22, 13, '2024-08-10', '2024-08-20'),(24, 19, '2024-07-05', '2024-07-15'),(25, 19, '2024-08-05', '2024-08-10'),(7, 20, '2024-07-01', '2024-07-20'),(27, 20, '2024-08-01', '2024-08-15');
INSERT INTO Reemplazos (idEmpleado, idHorario, fecha_alta_inicio, fecha_baja_fin) VALUES
(1, 1, '2024-06-01', '2024-07-10');

INSERT INTO Vacacion (idEmpleado, fecha_inicio, fecha_fin) VALUES
(1, '2024-07-01', '2024-07-15'),(2, '2024-07-10', '2024-07-20'),(3, '2024-08-01', '2024-08-10'),(4, '2024-08-15', '2024-08-25'),(5, '2024-09-01', '2024-09-05'),(6, '2024-09-10', '2024-09-20'),(7, '2024-10-01', '2024-10-15'),(8, '2024-10-10', '2024-10-20'),(9, '2024-11-01', '2024-11-10'),(10, '2024-11-15', '2024-11-25'),(11, '2024-12-01', '2024-12-05'),(12, '2024-12-10', '2024-12-20'),(13, '2025-01-01', '2025-01-15'),(14, '2025-01-10', '2025-01-20'),(15, '2025-02-01', '2025-02-10'),(16, '2025-02-15', '2025-03-01'),(17, '2025-03-05', '2025-03-15'),(18, '2025-04-01', '2025-04-10'),(19, '2025-04-15', '2025-04-25'),(20, '2025-05-01', '2025-05-15'),(21, '2025-05-20', '2025-05-30');

INSERT INTO Paciente (nombre, telefono, nif, numero_seguridad_social, idDireccion, idPoblacion) VALUES
('Juan Pérez', '123456789', '12345678A', '987654321', 1, 1),('María Gómez', '987654321', '87654321B', '123456789', 2, 2),('Pedro Rodríguez', '555555555', '7654321C', '234567890', 3, 3),('Luisa Martínez', '111111111', '654321C', '345678901', 4, 4),('Ana Sánchez', '999999999', '54321D', '456789012', 5, 5),('Carlos López', '777777777', '4321E', '567890123', 6, 6),('Laura Díaz', '888888888', '321E', '678901234', 7, 7),('Jorge Ramírez', '666666666', '21F', '789012345', 8, 8),('Gabriela Vargas', '555111222', '12345678X', '987654321', 9, 1),('Manuel Jiménez', '777888999', '87654321Y', '123456789', 10, 2),('Elena Pérez', '333444555', '7654321Z', '234567890', 11, 3),('Ricardo Gómez', '999000111', '654321A', '345678901', 12, 4),('Sofía Ramírez', '222333444', '54321B', '456789012', 13, 5),('David Martínez', '444555666', '4321C', '567890123', 14, 6),('Claudia López', '666777888', '321C', '678901234', 15, 7),('Andrés Castro', '888999000', '21D', '789012345', 16, 8);

INSERT INTO RelacionMedicoPaciente (idPaciente, idMedico) VALUES
(1, 1),(2, 7),(3, 13),(4, 10),(5, 15),(6, 11),(7, 17);
INSERT INTO RelacionMedicoPaciente (idPaciente, idMedico) VALUES 
(10,1),(5,1),(9,1),(13,1),(12,1);