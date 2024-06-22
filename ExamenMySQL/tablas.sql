Table empleados {
    id int [pk, increment]
    nombre varchar(50)
    telefono varchar(20)
    nif varchar(20)
    numeroSeguridadSocial varchar(20)
    numeroolegiado varchar(20)
    iddireccion int
    idTipoEmpleado int
    idTipoDeContrato int
}

Table direccion {
    id int [pk, increment]
    direccion varchar(100)
    poblacion varchar(50)
    provincia varchar(50)
    codigoPostal varchar(10)
}

Table TipoEmpleado {
    id int [pk, increment]
    tipo varchar(50)
}
Table TipoDeContrato {
    id int [pk, increment]
    tipo varchar(50)
}

Table horario {
    id int [pk, increment]
    idEmpleado int
    horaInicio time
    horaFin time
}

Table Reemplazos {
    id int [pk, increment]
    idEmpleado int
    fechaAlta date
    fechaBaja date
}

Table vacacion {
    id int [pk, increment]
    idEmpleado int
    fechaInicio date
    fechaFin date
}

Table paciente {
    id int [pk, increment]
    nombre varchar(50)
    telefono varchar(20)
    nif varchar(20)
    numeroSeguridadSocial varchar(20)
    iddireccion int
}

Table relacionMedicoPaciente {
    id int [pk, increment]
    idPaciente int
    idMedico int
}


Ref: "Horario"."idEmpleado" > "empleados"."id"
Ref: "Reemplazos"."idEmpleado" > "empleados"."id"
Ref: "Vacacion"."idEmpleado" > "empleados"."id"
Ref: "Paciente"."iddireccion" > "direccion"."id"
Ref: "RelacionMedicoPaciente"."idPaciente" > "Paciente"."id"
Ref: "RelacionMedicoPaciente"."idMeSco" > "eSleados"."id"
Ref: "empleados"."iddireccion" > "DeSion"."idSRef: "empleados"."idTipoEmpleado" > SipoEmplo"."id"

Ref: "empleados"."idTipoDeContrato" < "TipoDeContra"."id"SS