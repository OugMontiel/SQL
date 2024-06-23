CREATE TABLE Empleados (
  id int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50),
  telefono varchar(20),
  nif varchar(20),
  numero_seguridad_social varchar(20),
  numero_colegiado varchar(20),
  idPoblacion int,
  idDireccion int,
  idTipoEmpleado int,
  idTipoDeContrato int
);

CREATE TABLE Direccion (
  id int PRIMARY KEY AUTO_INCREMENT,
  direccion varchar(100),
  idProvincia int,
  idCodigoPostal int
);

CREATE TABLE Poblacion (
  id int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50)
);

CREATE TABLE Provincia (
  id int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50)
);

CREATE TABLE CodigoPostal (
  id int PRIMARY KEY AUTO_INCREMENT,
  codigo varchar(10)
);

CREATE TABLE TipoEmpleado (
  id int PRIMARY KEY AUTO_INCREMENT,
  tipo_de_empleado varchar(50)
);

CREATE TABLE TipoDeContrato (
  id int PRIMARY KEY AUTO_INCREMENT,
  TipoDeContrato varchar(50)
);

CREATE TABLE Horario (
  id int PRIMARY KEY AUTO_INCREMENT,
  idEmpleado int,
  idDia int,
  hora_inicio time,
  hora_fin time
);

CREATE TABLE Dias (
  id int PRIMARY KEY AUTO_INCREMENT,
  dias varchar(20)
);

CREATE TABLE Reemplazos (
  id int PRIMARY KEY AUTO_INCREMENT,
  idEmpleado int,
  idHorario int,
  fecha_alta_inicio date,
  fecha_baja_fin date
);

CREATE TABLE Vacacion (
  id int PRIMARY KEY AUTO_INCREMENT,
  idEmpleado int,
  fecha_inicio date,
  fecha_fin date
);

CREATE TABLE Paciente (
  id int PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(50),
  telefono varchar(20),
  nif varchar(20),
  numero_seguridad_social varchar(20),
  idDireccion int,
  idPoblacion int
);

CREATE TABLE RelacionMedicoPaciente (
  id int PRIMARY KEY AUTO_INCREMENT,
  idPaciente int,
  idMedico int
);

ALTER TABLE Empleados ADD FOREIGN KEY (idPoblacion) REFERENCES Poblacion (id);

ALTER TABLE Empleados ADD FOREIGN KEY (idDireccion) REFERENCES Direccion (id);

ALTER TABLE Empleados ADD FOREIGN KEY (idTipoEmpleado) REFERENCES TipoEmpleado (id);

ALTER TABLE Empleados ADD FOREIGN KEY (idTipoDeContrato) REFERENCES TipoDeContrato (id);

ALTER TABLE Direccion ADD FOREIGN KEY (idProvincia) REFERENCES Provincia (id);

ALTER TABLE Direccion ADD FOREIGN KEY (idCodigoPostal) REFERENCES CodigoPostal (id);

ALTER TABLE Horario ADD FOREIGN KEY (idEmpleado) REFERENCES Empleados (id);

ALTER TABLE Horario ADD FOREIGN KEY (idDia) REFERENCES Dias (id);

ALTER TABLE Reemplazos ADD FOREIGN KEY (idEmpleado) REFERENCES Empleados (id);

ALTER TABLE Reemplazos ADD FOREIGN KEY (idHorario) REFERENCES Horario (id);

ALTER TABLE Vacacion ADD FOREIGN KEY (idEmpleado) REFERENCES Empleados (id);

ALTER TABLE Paciente ADD FOREIGN KEY (idDireccion) REFERENCES Direccion (id);

ALTER TABLE Paciente ADD FOREIGN KEY (idPoblacion) REFERENCES Poblacion (id);

ALTER TABLE RelacionMedicoPaciente ADD FOREIGN KEY (idPaciente) REFERENCES Paciente (id);

ALTER TABLE RelacionMedicoPaciente ADD FOREIGN KEY (idMedico) REFERENCES Empleados (id);
