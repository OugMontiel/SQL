## Parte 1/2

### Consultas de una sola tabla

1. **Recuperar todas las líneas de productos con sus descripciones:**

   ```sql
   SELECT concat(productLine, textDescription) FROM productlines;
   ```

2. **Encontrar todos los empleados que trabajan en la oficina de 'San Francisco':**

   ```sql
   select * from employees where officeCode = 1;
   ```

3. **Listar todas las órdenes que tienen un estado de 'Enviado':**

   ```sql
   select * from orders where status ='Shipped';
   ```

4. **Obtener los detalles de todos los pagos realizados por el cliente con el número de cliente 103:**

   ```sql
   select * from payments where customerNumber=103;
   ```

5. **Recuperar todos los clientes de 'USA' que tienen un límite de crédito superior a 50000:**

   ```sql
   select * from customers where country = 'USA' and creditLimit>50000;
   ```

### Consultas de múltiples tablas

1. **Listar todos los productos junto con las descripciones de sus líneas de productos:**

   ```sql
    SELECT concat(p.productName," ",pl.textDescription) as "productos junto con las descripciones" FROM products p JOIN productlines pl ON p.productLine = pl.productLine;
   
   ```

2. **Obtener los nombres y direcciones de correo electrónico de los empleados que reportan al empleado con el número de empleado 1143:**

   ```sql
   select lastName, email from employees where reportsTo =1143;
   ```

3. **Encontrar todas las órdenes realizadas por clientes de 'Francia':**

   ```sql
   select * from orders where customerNumber In (select customerNumber from customers where country = "France")
   ```

4. **Listar el monto total de los pagos recibidos de cada cliente:**

   ```sql
   SELECT customerNumber, SUM(amount) AS totalPayments FROM payments GROUP BY customerNumber;
   ```

5. **Recuperar los detalles de las órdenes, incluyendo los nombres de los productos, para todas las órdenes realizadas por el cliente con el número de cliente 101:**

   ```sql
   SELECT od.orderNumber, p.productName, od.productCode, od.quantityOrdered, od.priceEach
   FROM orderdetails od
   JOIN products p ON od.productCode = p.productCode
   WHERE od.orderNumber IN (SELECT orderNumber FROM orders WHERE customerNumber = 103);
   ```

## Parte 2/2

### Consultas de una sola tabla

1. **Obtener el promedio del límite de crédito de todos los clientes:**

   ```sql
   select avg(creditLimit) from customers;
   ```

2. **Calcular el total de productos en stock:**

   ```sql
   select productName, quantityInStock from products
   union all
   select 'total de productos en stock', sum(quantityInStock) from products;
   ```

3. **Encontrar el precio medio de compra de todos los productos:**

   ```sql
   select avg(buyPrice) from products;
   ```

4. **Contar la cantidad de oficinas en cada país:**

   ```sql
   select country, count(officeCode) from offices group by country;
   ```

5. **Calcular el total de pagos recibidos:**

   ```sql
   select sum(amount) from payments;
   ```

6. **Obtener la cantidad total de empleados:**

   ```sql
   select count(employeeNumber) from employees;
   ```

7. **Calcular la cantidad media de productos pedidos en las órdenes:**

   ```sql
   select avg(quantityOrdered) from orderdetails;
   ```

8. **Encontrar el precio total de todos los productos:**

   ```sql
   SELECT SUM(buyPrice) FROM products;
   ```

9. **Calcular el promedio del precio sugerido (MSRP) de los productos:**

   ```sql
   select avg(MSRP) from products;
   ```

10. **Contar la cantidad de empleados por título de trabajo:**

   ```sql
   select jobTitle, count(employeeNumber) from employees group by jobTitle;
   ```


### Consultas de múltiples tablas

1. **Calcular el total de pagos recibidos por cada cliente:**

   ```sql
   select c.customerName, sum(p.amount) as 'total de pagos' from customers c inner join payments p on p.customerNumber = c.customerNumber group by p.customerNumber
   union all
   select 'total de pagos recibidos', sum(amount) from payments;
   ```

2. **Obtener el promedio del límite de crédito de los clientes por país:**

   ```sql
   select country, avg(creditLimit) from customers group by country;
   ```

3. **Calcular el total de órdenes realizadas por cada cliente:**

   ```sql
   select customerNumber, count(orderNumber) from orders group by customerNumber;
   ```

4. **Encontrar la cantidad total de productos pedidos por cada cliente:**

   ```sql
   select r.customerNumber, sum(o.quantityOrdered) as 'total de productos pedidos' from orders r inner join orderdetails o on o.orderNumber = r.orderNumber group by r.customerNumber;
   ```

5. **Calcular el total de ventas (cantidad ordenada por precio cada uno) por cada cliente:**

   ```sql
   select c.customerName, sum(p.amount) as 'total de ventas' from customers c inner join payments p on c.customerNumber = p.customerNumber group by c.customerNumber Order By sum(p.amount);
   ```

6. **Obtener el promedio de la cantidad de productos en stock por línea de productos:**

   ```sql
   select productLine, avg(quantityInStock) from products group by productLine;
   ```

7. **Calcular el total de pagos recibidos por cada país:**

   ```sql
   select c.country, sum(p.amount) from customers c inner join payments p group by c.country;
   ```

8. **Encontrar el promedio de ventas (cantidad ordenada por precio cada uno) por cada empleado:**

   ```sql
   Select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employee', avg(p.amount) as 'promedio de ventas' from employees e inner join customers c on c.salesRepEmployeeNumber = e.employeeNumber inner join payments p on c.customerNumber = p.customerNumber group by e.employeeNumber order by avg(p.amount);
   ```

9. **Calcular el total de órdenes gestionadas por cada empleado:**

   ```sql
   select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', count(o.orderNumber) as 'total de órdenes gestionadas' from customers c join orders o on c.customerNumber = o.customerNumber join employees e on e.employeeNumber = c.salesRepEmployeeNumber group by c.salesRepEmployeeNumber;
   ```

10. **Obtener la cantidad total de productos vendidos por cada línea de productos:**

    ```sql
    select p.productLine, sum(o.quantityOrdered) as 'cantidad total de productos vendidos' from products p join orderdetails o using (productCode) group by productLine;
    ```

11. **Encontrar el promedio de la cantidad de productos ordenados por cada cliente:**

    ```sql
    select c.customerName, avg(o.quantityOrdered) as ' promedio de productos ordenados' from customers c 
    join orders using (customerNumber)
    join orderdetails o using  (orderNumber)
    group by c.customerNumber;
    ```

12. **Calcular el total de ventas realizadas en cada país:**

    ```sql
    select c.country, sum(p.amount) as 'total de ventas' from customers c join payments p using (customerNumber) group by c.country order by sum(p.amount);
    ```

13. **Obtener el promedio del precio de compra de los productos por línea de productos:**

    ```sql
    select productLine, avg(buyPrice) as 'promedio del precio de compra' from products group by productLine;
    ```

14. **Encontrar la cantidad total de productos vendidos por cada vendedor:**

    ```sql
    select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', sum(o.quantityOrdered) as 'cantidad total de productos vendidos' from employees e join customers on e.employeeNumber = customers.salesRepEmployeeNumber join orders using (customerNumber) join orderdetails o using (orderNumber) group by e.employeeNumber;
    ```

15. **Calcular el total de pagos recibidos por cada vendedor:**

    ```sql 
    select concat(e.firstName, ' ', e.lastName) as 'Full name employees', count(p.customerNumber) as 'Cuantos pagos', sum(p.amount) as 'Total del pago' from employees e join customers on customers.salesRepEmployeeNumber = e.employeeNumber join payments p using (customerNumber) group by e.employeeNumber order by sum(p.amount), count(p.customerNumber) ;
    ```

16. **Obtener el promedio del límite de crédito de los clientes atendidos por cada vendedor:**

    ```sql
    select e.employeeNumber, concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', avg(c.creditLimit) as 'promedio del límite de crédito' from employees e join customers c on e.employeeNumber = c.salesRepEmployeeNumber group by e.employeeNumber ;
    ```

17. **Encontrar el total de ventas realizadas por cada oficina:**

    ```sql
    select o.officeCode, o.city, o.country , sum(p.amount) as'total de ventas' from offices o join employees e using (officeCode) join customers c on e.employeeNumber = c.salesRepEmployeeNumber join payments p using (customerNumber) group by o.officeCode Order by sum(p.amount) desc;
    ```

18. **Calcular la cantidad media de productos pedidos por cada cliente:**

    ```sql
    select avg(o.quantityOrdered) as 'media de productos pedidos', c.customerName as 'Customer full Names' from customers c join orders using (customerNumber) join orderdetails o using (orderNumber) group by c.customerNumber;
    ```

19. **Obtener el total de pagos realizados en cada año:**

    ```sql
    select year(paymentDate) as años, sum(amount) as 'Total de pagos realizados'  from payments group by year(paymentDate);
    ```

20. **Encontrar el promedio del precio de venta (priceEach) de los productos por línea de productos:**

    ```sql
    select p.productLine, avg(o.priceEach) as'promedio del precio de venta' from products p join orderdetails o using (productCode) group by p.productLine;
    ```