Camilo Andres Navas Medina — Today at 4:00 PM
3.4. Devuelve un listado que solamente muestre los comerciales que no han realizado ningún pedido.
SELECT DISTINCT c.id,c.nombre, CONCAT(c.apellido1,' ',c.apellido2) AS apellido FROM comercial AS c LEFT JOIN pedido AS p ON c.id=p.id_comercial WHERE p.id_comercial IS NULL GROUP BY c.id;
 
Kelly Yojanna López Amaya — Today at 4:00 PM
4.10.Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.
SELECT p.id 'id_pedido'
, c.id 'id_comercial', concat(c.nombre ,'  ', c.apellido1) 'Comercial', max(p.total) 'Max Value' From comercial  c INNER JOIN pedido p ON c.id= p.id_comercial WHERE fecha='2016-08-17' GROUP BY p.id , c.nombre , c.apellido1;
 
Anderson Estiven Mendez Lascarro — Today at 4:00 PM
Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.

    
    SELECT 
    pedidos.id,
    YEAR(pedidos.fecha) AS Año,
    pedidos.total AS 'Maximo Valor',
    pedidos.fecha AS 'Fecha Completa',
    pedidos.id_cliente AS 'ID Cliente',
    pedidos.id_comercial AS 'ID Comercial'
    FROM 
    pedido pedidos JOIN (
      SELECT
      YEAR(fecha) AS Año,
      max(total) AS Valor_Maximo
      FROM 
      pedido
      GROUP BY 
      año 
      ORDER BY 
      año) 
   AS max_ped_por_año 
   ON Año = max_ped_por_año.Año 
   AND pedidos.total = max_ped_por_año.Valor_Maximo;
    
Juan David Rodríguez Ospina — Today at 4:00 PM
Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
SELECT MAX(total) FROM pedido;
 
Samuel David Riveros Angarita — Today at 4:00 PM
Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.

select nombre, apellido1, apellido2 from comercial where comision > 0.05 and comision < 0.11;
Hendrickson Alexander Ruiz Cala — Today at 4:01 PM
6.Calcula cuál es la menor cantidad que aparece en la tabla pedido.
SELECT MIN(total) FROM pedido;
 
Johan Sebastian Diaz Martinez — Today at 4:01 PM
Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
SELECT DISTINCT cliente.nombre, cliente.apellido1, cliente.apellido2 FROM cliente JOIN pedido ON cliente.id = pedido.id_cliente WHERE YEAR(pedido.fecha) = 2017   AND pedido.total BETWEEN 300 AND 1000;
 
Jhoan Sebastian Barreto Infante — Today at 4:01 PM
1.9 Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.

SELECT nombre
FROM cliente
WHERE nombre NOT LIKE 'A%'
ORDER BY nombre;
William David Galvis Cardenas — Today at 4:01 PM
4.8 Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.

SELECT t1.id, t1.nombre, t1.apellido1, MAX(t2.total),     t2.fecha 

FROM cliente t1, pedido t2 

WHERE t2.id_cliente = t1.id GROUP BY t2.fecha, t1.id ORDER BY t2.fecha;
 
Andrés Álvarez Becerra — Today at 4:01 PM
Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0. Puede hacer uso de la función IFNULL.



SELECT C.id, C.nombre, C.apellido1, IFNULL(max(P.total), 0) AS 'Cantidad maxima'
FROM cliente AS C
LEFT JOIN pedido as P
ON C.id = P.id_cliente
GROUP BY C.id;
Juan Sebastián Sáenz Camacho — Today at 4:01 PM
2.2 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.

 select  c.id, c.nombre, c.apellido1, c.apellido2, c.ciudad, c.categoria, p.id, p.total, p.fecha, p.id_cliente, p.id_comercial 
    from cliente c
    inner join pedido p on c.id = p.id_cliente
    order by c.nombre asc, c.apellido1 asc;
Jaime Alexander Riaño Muñoz — Today at 4:01 PM
Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.

select nombre from cliente where nombre like '%n' and nombre like 'a%' or nombre like 'p%' order by nombre asc;
Juan David Martínez Rojas — Today at 4:01 PM
Consultas sobre una tabla/2.Devuelve todos los datos de los dos pedidos de mayor valor 
SELECT * FROM pedido ORDER BY total DESC LIMIT 2; 
David Jose Julio Sanchez — Today at 4:02 PM
Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes durante el año 2017.

select cliente.id, cliente.nombre, cliente.apellido1, cliente.apellido2, count(pedido.id) as cantidad2017 from cliente inner join pedido on pedido.id_cliente = cliente.id where year(pedido.fecha) = 2017 group by cliente.id;
Juan Sebastian Rivas Uribe — Today at 4:03 PM
Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
select distinct(ciudad), max(categoria) from cliente group by ciudad;
 
Santiago Alexander Ospina Pabón — Today at 4:04 PM
Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0.

SELECT cliente.id, cliente.apellido1, cliente.apellido2, COUNT(pedido.id)
FROM cliente
LEFT JOIN pedido ON cliente.id=pedido.id_cliente
GROUP BY cliente.id;
 
Eder Andres Castellanos Jerez — Today at 4:04 PM
Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.

   
SELECT id, CONCAT(nombre,' ', apellido1) AS nombre_completo  FROM cliente WHERE apellido2 IS NOT NULL ORDER BY nombre ASC, apellido1 ASC, 
apellido2 ASC;
   
 
William Alexis Meza Ballesteros — Today at 4:04 PM
Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.

   
   SELECT p.*
   FROM pedido p
   INNER JOIN (
       SELECT id_cliente, fecha, MAX(total) AS max_total
       FROM pedido
       WHERE total > 2000
       GROUP BY id_cliente, fecha
   ) po ON p.id_cliente = po.id_cliente AND p.fecha = po.fecha AND p.total = po.max_total;
   
Gabriel Santiago Garcia Rodri — Today at 4:05 PM
Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.

SELECT c.id AS cliente_id, p.id AS pedido_id, co.id AS comercial_id, co.nombre, co.apellido1 FROM cliente AS c INNER JOIN pedido AS p ON c.id = p.id_cliente INNER JOIN comercial AS co ON p.id_comercial = co.id ORDER BY c.id;
Kevin Santiago Galvis Arias — Today at 4:08 PM
Consultas multitabla (Composición interna)
Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.

Codigo:
SELECT p.id, p.total, p.fecha, p.id_cliente, p.id_comercial, cl.nombre, cl.apellido1, cl.apellido2, cl.comision FROM pedido AS p INNER JOIN comercial AS cl ON cl.id = p.id_comercial ORDER BY nombre;
 
Verónica Ruiz Bautista — Today at 4:08 PM
Devuelve un listado con todos los comerciales junto con los datos de los pedidos que han realizado. Este listado también debe incluir los comerciales que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los comerciales.

   
SELECT co.id, concat(co.apellido1, " " ,co.apellido2, " ", co.nombre) as namefull, pe.total, pe.fecha, pe.id_cliente 
FROM comercial co
left JOIN pedido pe ON pe.id_comercial = co.id 
ORDER BY namefull LIKE 'A%' ASC , namefull;
   # Veronica
  
Juan Manuel Gil Quiroga — Today at 4:11 PM
Devuelve el número total de pedidos que se han realizado cada año.

   
   SELECT YEAR(fecha) AS año, COUNT(*) AS numero_pedido FROM pedido GROUP BY YEAR(fecha) ORDER BY año;
   
Santiago Muñoz Castañeda — Today at 4:18 PM
Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.

   SELECT co.apellido1, co.nombre, co.apellido2
   FROM comercial co
   INNER JOIN pedido p ON p.id_comercial = co.id
   INNER JOIN cliente cl ON cl.id = p.id_cliente
   WHERE
   concat(cl.nombre, ' ',cl.apellido1, ' ',cl.apellido2) = 'Maria Santana Moreno';
   