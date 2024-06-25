# Hospital

Se desea diseñar una base de datos para guardar la información sobre médicos, empleados y pacientes de un centro de salud. 

De los médicos se desea saber 
    su nombre, dirección, teléfono, población, provincia, código postal, NIF, número de la seguridad social, número de colegiado y

    si es médico titular, médico interino o médico sustituto. 

    Cada médico tiene un horario en el que pasa consulta, pudiendo ser diferente cada día de la semana. 

    Los datos de los médicos sustitutos no desaparecen cuando finalizan una sustitución, se les da una fecha de baja. Así, cada sustituto puede tener varias fechas de alta y fechas de baja, dependiendo de las sustituciones que haya realizado. 

    Si la última fecha de alta es posterior a la última fecha de baja, el médico está realizando una sustitución en la actualidad en el centro de salud. 

El resto de empleados 
    son los ATS, ATS de zona, auxiliares de enfermería, celadores y administrativos. 

    De todos ellos se desea conocer su nombre, dirección, teléfono, población, provincia, código postal, NIF y número de la seguridad social. 
    
De todos, médicos y empleados, se mantiene también información sobre los períodos de vacaciones que tienen planificados y de los que ya han disfrutado. 

Por último, de los pacientes 
    se conoce su nombre, dirección, teléfono, código postal, NIF, número de la seguridad social y médico que les corresponde.

# Consultas

### 1. Número de pacientes atendidos por cada médico

```sql
Select idMedico as 'Codigo Medico', count(idPaciente) as 'Numero de pasientes' from RelacionMedicoPaciente group by idMedico;
```

### 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado

```sql
Select idEmpleado, DATEDIFF(fecha_fin,fecha_inicio)as 'días de vacaciones' from Vacacion; -- group by idEmpleado
```

### 3. Médicos con mayor cantidad de horas de consulta en la semana

```sql
SELECT idEmpleado, SEC_TO_TIME(SUM(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)))) AS 'horas a la semana' FROM Horario GROUP BY idEmpleado ORDER BY  SEC_TO_TIME(SUM(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)))) DESC;
```

### 4.  Número de sustituciones realizadas por cada médico sustituto

```sql
select count(id), idEmpleado from Reemplazos where idEmpleado in ( select id from Empleados where idTipoDeContrato = 3 )group by idEmpleado ;

```

### 5.  Número de médicos que están actualmente en sustitución

```sql
SELECT COUNT(DISTINCT idEmpleado) AS 'Numero de Medicos en Sustitucion' FROM Reemplazos WHERE fecha_alta_inicio<CURDATE() and fecha_baja_fin > CURDATE();

```

### 6. Horas totales de consulta por médico por día de la semana

```sql
Select idEmpleado, idDia, TIMEDIFF(hora_fin, hora_inicio) as 'Horas totales' from Horario;
```

### 7.  Médico con mayor cantidad de pacientes asignados

```sql
Select idMedico as 'Codigo Medico', count(idPaciente) as 'Numero de pasientes' from RelacionMedicoPaciente group by idMedico Order by count(idPaciente) desc limit 1;
```

### 8. Empleados con más de 10 días de vacaciones disfrutadas

```sql
Select idEmpleado, DATEDIFF(fecha_fin,fecha_inicio)as 'días de vacaciones' from Vacacion where DATEDIFF(fecha_fin,fecha_inicio) > 10;
```

### 9.  Médicos que actualmente están realizando una sustitución

```sql
SELECT idEmpleado AS 'Medicos en Sustitucion' FROM Reemplazos WHERE fecha_alta_inicio<CURDATE() and fecha_baja_fin > CURDATE();

```

### 10.  Promedio de horas de consulta por médico por día de la semana

```sql
select idEmpleado, idDia, SEC_TO_TIME(avg(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)))) as 'Promedio de horas de consulta' FROM Horario group by idEmpleado, idDia;
```

### 11.  Empleados con mayor número de pacientes atendidos por los médicos bajo su supervisión

```sql



```

### 12.  Médicos con más de 5 pacientes y total de horas de consulta en la semana

```sql

SELECT idEmpleado, SEC_TO_TIME(SUM(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)))) AS 'horas a la semana' FROM Horario where idEmpleado in (Select idMedico from RelacionMedicoPaciente group by idMedico HAVING COUNT(idPaciente) > 5) GROUP BY idEmpleado; 

```

### 13.  Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado

```sql
Select e.idTipoEmpleado, sum(DATEDIFF(v.fecha_fin,v.fecha_inicio))as 'días de vacaciones' 
from Vacacion v join Empleados e on v.idEmpleado = e.id
group by e.idTipoEmpleado;
```

### 14. Total de pacientes por cada tipo de médico

```sql
select e.idTipoDeContrato, sum(r.idPaciente) 
from Empleados e join RelacionMedicoPaciente r on r.idMedico=e.id
group by e.idTipoDeContrato;
```

### 15. Total de horas de consulta por médico y día de la semana

```sql
select idEmpleado, idDia, SEC_TO_TIME(sum(TIME_TO_SEC(TIMEDIFF(hora_fin, hora_inicio)))) as 'total de horas de consulta' FROM Horario group by idEmpleado, idDia;
```

### 16. Número de sustituciones por tipo de médico

```sql
select e.idTipoDeContrato, count(r.id) 
from Empleados e join Reemplazos r on r.idEmpleado=e.id
group by e.idTipoDeContrato;
```

### 17. Total de pacientes por médico y por provincia

```sql
select Count(r.idPaciente) as 'Total de pacientes', e.nombre as Medico, p.nombre as 'Provincia' 
from RelacionMedicoPaciente r join Empleados e on r.idMedico=e.id join Direccion d on e.idDireccion=d.id join Provincia p on p.id=d.idProvincia group by e.id, p.id;
```

### 18. Empleados y médicos con más de 20 días de vacaciones planificadas

```sql
Select idEmpleado, DATEDIFF(fecha_fin,fecha_inicio)as 'días de vacaciones' from Vacacion where DATEDIFF(fecha_fin,fecha_inicio) > 20 and fecha_inicio > CURDATE();
```

### 19. Médicos con el mayor número de pacientes actualmente en sustitución

```sql

Select idMedico as 'Codigo Medico', count(idPaciente) as 'Numero de pasientes' from RelacionMedicoPaciente  where idMedico in (select idEmpleado from Reemplazos where fecha_alta_inicio < CURDATE() and fecha_baja_fin > CURDATE()) group by idMedico;

```

### 20. Total de horas de consulta por provincia y día de la semana

```sql
select SEC_TO_TIME(sum(TIME_TO_SEC(TIMEDIFF(h.hora_fin, h.hora_inicio)))) as 'Total de horas', p.nombre as 'Provincia', di.dias as 'Dia'
from Horario h join Empleados e on h.idEmpleado=e.id join Direccion d on e.idDireccion=d.id join Provincia p on p.id=d.idProvincia join Dias di on di.id=h.idDia group by p.id, di.id;

```
