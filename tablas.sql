
CREATE TABLE airlines (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE countries (
  id varchar(5) NOT NULL,
  name varchar(30) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE documenttypes (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(40) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE flightfares (
  id int NOT NULL AUTO_INCREMENT,
  description varchar(20) DEFAULT NULL,
  details text,
  value double(7,3) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE manufacturers (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(40) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE statuses (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE trips (
  id int NOT NULL AUTO_INCREMENT,
  trip_date date DEFAULT NULL,
  price_tripe double DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE tripulationroles (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(40) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE cities (
  id varchar(5) NOT NULL,
  name varchar(30) DEFAULT NULL,
  idcountry varchar(5) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY Fk_city (idcountry),
  CONSTRAINT Fk_city FOREIGN KEY (idcountry) REFERENCES countries (id)
);
CREATE TABLE airports (
  id varchar(5) NOT NULL,
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  idcity varchar(5) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_id_city_airport (idcity),
  CONSTRAINT fk_id_city_airport FOREIGN KEY (idcity) REFERENCES cities (id)
);
CREATE TABLE customers (
  id varchar(20) NOT NULL,
  name varchar(30) DEFAULT NULL,
  age int DEFAULT NULL,
  iddocument int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY Fk_customers (iddocument),
  CONSTRAINT Fk_customers FOREIGN KEY (iddocument) REFERENCES documenttypes (id)
);
CREATE TABLE gates (
  id int NOT NULL AUTO_INCREMENT,
  gatenumber varchar(10) DEFAULT NULL,
  idairport varchar(5) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_airport_gate (idairport),
  CONSTRAINT fk_airport_gate FOREIGN KEY (idairport) REFERENCES airports (id)
);
CREATE TABLE models (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) DEFAULT NULL,
  manufacturerid int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY Fk_manufacturerid (manufacturerid),
  CONSTRAINT Fk_manufacturerid FOREIGN KEY (manufacturerid) REFERENCES manufacturers (id)
);
CREATE TABLE tripbooking (
  id int NOT NULL AUTO_INCREMENT,
  date date DEFAULT NULL,
  idtrips int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_trips (idtrips),
  CONSTRAINT fk_trips FOREIGN KEY (idtrips) REFERENCES trips (id)
);
CREATE TABLE employees (
  id varchar(20) NOT NULL,
  name varchar(40) DEFAULT NULL,
  idrol int DEFAULT NULL,
  ingressdate date DEFAULT NULL,
  idairline int DEFAULT NULL,
  idairport varchar(5) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_rol_employee (idrol),
  KEY fk_airline_employee (idairline),
  KEY fk_airport_employee (idairport),
  CONSTRAINT fk_airline_employee FOREIGN KEY (idairline) REFERENCES airlines (id),
  CONSTRAINT fk_airport_employee FOREIGN KEY (idairport) REFERENCES airports (id),
  CONSTRAINT fk_rol_employee FOREIGN KEY (idrol) REFERENCES tripulationroles (id)
);
CREATE TABLE revision_details (
  id varchar(20) NOT NULL,
  description text,
  id_employee varchar(20) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_employee_revision_detail (id_employee),
  CONSTRAINT fk_employee_revision_detail FOREIGN KEY (id_employee) REFERENCES employees (id)
);
CREATE TABLE planes (
  id int NOT NULL AUTO_INCREMENT,
  plates varchar(30) DEFAULT NULL,
  capacity int DEFAULT NULL,
  fabrication_date date DEFAULT NULL,
  id_status int DEFAULT NULL,
  id_model int DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY plates (plates),
  KEY fk_id_status_plane (id_status),
  KEY fk_id_model_plane (id_model),
  CONSTRAINT fk_id_model_plane FOREIGN KEY (id_model) REFERENCES models (id),
  CONSTRAINT fk_id_status_plane FOREIGN KEY (id_status) REFERENCES statuses (id)
);
CREATE TABLE revisions (
  id int NOT NULL AUTO_INCREMENT,
  revision_date date DEFAULT NULL,
  id_plane int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_id_plane_revision (id_plane),
  CONSTRAINT fk_id_plane_revision FOREIGN KEY (id_plane) REFERENCES planes (id)
);
CREATE TABLE flight_connections (
  id int NOT NULL AUTO_INCREMENT,
  connection_number varchar(20) DEFAULT NULL,
  id_trip int DEFAULT NULL,
  id_plane int DEFAULT NULL,
  id_airport varchar(5) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_trip_connection (id_trip),
  KEY fk_plane_connection (id_plane),
  KEY fk_airport_connection (id_airport),
  CONSTRAINT fk_airport_connection FOREIGN KEY (id_airport) REFERENCES airports (id),
  CONSTRAINT fk_plane_connection FOREIGN KEY (id_plane) REFERENCES planes (id),
  CONSTRAINT fk_trip_connection FOREIGN KEY (id_trip) REFERENCES trips (id)
);
CREATE TABLE revemployee (
  idemployee varchar(20) NOT NULL,
  idrevision int NOT NULL,
  PRIMARY KEY (idemployee,idrevision),
  KEY fk_id_revision_revemployee (idrevision),
  CONSTRAINT fk_id_employee_revemployee FOREIGN KEY (idemployee) REFERENCES employees (id),
  CONSTRAINT fk_id_revision_revemployee FOREIGN KEY (idrevision) REFERENCES revisions (id)
);
CREATE TABLE tripbookingdetails (
  id int NOT NULL AUTO_INCREMENT,
  idtripbooking int DEFAULT NULL,
  idcustomers varchar(20) DEFAULT NULL,
  idfares int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY fk_tripbooking (idtripbooking),
  KEY fk_conection_trip_booking_details (idcustomers),
  KEY fk_flightfares_trip_booking_details (idfares),
  CONSTRAINT fk_conection_trip_booking_details FOREIGN KEY (idcustomers) REFERENCES customers (id),
  CONSTRAINT fk_flightfares_trip_booking_details FOREIGN KEY (idfares) REFERENCES flightfares (id),
  CONSTRAINT fk_tripbooking FOREIGN KEY (idtripbooking) REFERENCES tripbooking (id)
);
CREATE TABLE tripcrews (
  idemployees varchar(20) NOT NULL,
  idconection int NOT NULL,
  PRIMARY KEY (idconection,idemployees),
  KEY fk_employees (idemployees),
  CONSTRAINT fk_conection FOREIGN KEY (idconection) REFERENCES flight_connections (id),
  CONSTRAINT fk_employees FOREIGN KEY (idemployees) REFERENCES employees (id)
);