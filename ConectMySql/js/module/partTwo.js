import { connection } from "../../db/connection.js";

/////////////////////////////////
// Consultas de una sola tabla //
/////////////////////////////////


// 1. **Obtener el promedio del límite de crédito de todos los clientes:**
export const get_3_1 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select avg(creditLimit) from customers;
   ```

// 2. **Calcular el total de productos en stock:**
export const get_3_2 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select productName, quantityInStock from products
   union all
   select 'total de productos en stock', sum(quantityInStock) from products;
   ```

// 3. **Encontrar el precio medio de compra de todos los productos:**
export const get_3_3 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select avg(buyPrice) from products;
   ```

// 4. **Contar la cantidad de oficinas en cada país:**
export const get_3_4 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select country, count(officeCode) from offices group by country;
   ```

// 5. **Calcular el total de pagos recibidos:**
export const get_3_5 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select sum(amount) from payments;
   ```

// 6. **Obtener la cantidad total de empleados:**
export const get_3_6 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select count(employeeNumber) from employees;
   ```

// 7. **Calcular la cantidad media de productos pedidos en las órdenes:**
export const get_3_7 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select avg(quantityOrdered) from orderdetails;
   ```

// 8. **Encontrar el precio total de todos los productos:**
export const get_3_8 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   SELECT SUM(buyPrice) FROM products;
   ```

// 9. **Calcular el promedio del precio sugerido (MSRP) de los productos:**
export const get_3_9 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select avg(MSRP) from products;
   ```

// 10. **Contar la cantidad de empleados por título de trabajo:**
export const get_3_10 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select jobTitle, count(employeeNumber) from employees group by jobTitle;
   ```

///////////////////////////////////
// Consultas de múltiples tablas //
///////////////////////////////////


// 1. **Calcular el total de pagos recibidos por cada cliente:**
export const get_4_1 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select c.customerName, sum(p.amount) as 'total de pagos' from customers c inner join payments p on p.customerNumber = c.customerNumber group by p.customerNumber
   union all
   select 'total de pagos recibidos', sum(amount) from payments;
   ```

// 2. **Obtener el promedio del límite de crédito de los clientes por país:**
export const get_4_2 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select country, avg(creditLimit) from customers group by country;
   ```

// 3. **Calcular el total de órdenes realizadas por cada cliente:**
export const get_4_3 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select customerNumber, count(orderNumber) from orders group by customerNumber;
   ```

// 4. **Encontrar la cantidad total de productos pedidos por cada cliente:**
export const get_4_4 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select r.customerNumber, sum(o.quantityOrdered) as 'total de productos pedidos' from orders r inner join orderdetails o on o.orderNumber = r.orderNumber group by r.customerNumber;
   ```

// 5. **Calcular el total de ventas (cantidad ordenada por precio cada uno) por cada cliente:**
export const get_4_5 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select c.customerName, sum(p.amount) as 'total de ventas' from customers c inner join payments p on c.customerNumber = p.customerNumber group by c.customerNumber Order By sum(p.amount);
   ```

// 6. **Obtener el promedio de la cantidad de productos en stock por línea de productos:**
export const get_4_6 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select productLine, avg(quantityInStock) from products group by productLine;
   ```

// 7. **Calcular el total de pagos recibidos por cada país:**
export const get_4_7 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select c.country, sum(p.amount) from customers c inner join payments p group by c.country;
   ```

// 8. **Encontrar el promedio de ventas (cantidad ordenada por precio cada uno) por cada empleado:**
export const get_4_8 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   Select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employee', avg(p.amount) as 'promedio de ventas' from employees e inner join customers c on c.salesRepEmployeeNumber = e.employeeNumber inner join payments p on c.customerNumber = p.customerNumber group by e.employeeNumber order by avg(p.amount);
   ```

// 9. **Calcular el total de órdenes gestionadas por cada empleado:**
export const get_4_9 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
   select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', count(o.orderNumber) as 'total de órdenes gestionadas' from customers c join orders o on c.customerNumber = o.customerNumber join employees e on e.employeeNumber = c.salesRepEmployeeNumber group by c.salesRepEmployeeNumber;
   ```

// 10. **Obtener la cantidad total de productos vendidos por cada línea de productos:**
export const get_4_10 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select p.productLine, sum(o.quantityOrdered) as 'cantidad total de productos vendidos' from products p join orderdetails o using (productCode) group by productLine;
    ```

// 11. **Encontrar el promedio de la cantidad de productos ordenados por cada cliente:**
export const get_4_11 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select c.customerName, avg(o.quantityOrdered) as ' promedio de productos ordenados' from customers c 
    join orders using (customerNumber)
    join orderdetails o using  (orderNumber)
    group by c.customerNumber;
    ```

// 12. **Calcular el total de ventas realizadas en cada país:**
export const get_4_12 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select c.country, sum(p.amount) as 'total de ventas' from customers c join payments p using (customerNumber) group by c.country order by sum(p.amount);
    ```

// 13. **Obtener el promedio del precio de compra de los productos por línea de productos:**
export const get_4_13 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select productLine, avg(buyPrice) as 'promedio del precio de compra' from products group by productLine;
    ```

// 14. **Encontrar la cantidad total de productos vendidos por cada vendedor:**
export const get_4_14 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', sum(o.quantityOrdered) as 'cantidad total de productos vendidos' from employees e join customers on e.employeeNumber = customers.salesRepEmployeeNumber join orders using (customerNumber) join orderdetails o using (orderNumber) group by e.employeeNumber;
    ```

// 15. **Calcular el total de pagos recibidos por cada vendedor:**
export const get_4_15 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql 
    select concat(e.firstName, ' ', e.lastName) as 'Full name employees', count(p.customerNumber) as 'Cuantos pagos', sum(p.amount) as 'Total del pago' from employees e join customers on customers.salesRepEmployeeNumber = e.employeeNumber join payments p using (customerNumber) group by e.employeeNumber order by sum(p.amount), count(p.customerNumber) ;
    ```

// 16. **Obtener el promedio del límite de crédito de los clientes atendidos por cada vendedor:**
export const get_4_16 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select e.employeeNumber, concat(e.firstName, ' ' ,e.lastName) as 'Full Name employees', avg(c.creditLimit) as 'promedio del límite de crédito' from employees e join customers c on e.employeeNumber = c.salesRepEmployeeNumber group by e.employeeNumber ;
    ```

// 17. **Encontrar el total de ventas realizadas por cada oficina:**
export const get_4_17 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select o.officeCode, o.city, o.country , sum(p.amount) as'total de ventas' from offices o join employees e using (officeCode) join customers c on e.employeeNumber = c.salesRepEmployeeNumber join payments p using (customerNumber) group by o.officeCode Order by sum(p.amount) desc;
    ```

// 18. **Calcular la cantidad media de productos pedidos por cada cliente:**
export const get_4_18 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select avg(o.quantityOrdered) as 'media de productos pedidos', c.customerName as 'Customer full Names' from customers c join orders using (customerNumber) join orderdetails o using (orderNumber) group by c.customerNumber;
    ```

// 19. **Obtener el total de pagos realizados en cada año:**
export const get_4_19 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select year(paymentDate) as años, sum(amount) as 'Total de pagos realizados'  from payments group by year(paymentDate);
    ```

// 20. **Encontrar el promedio del precio de venta (priceEach) de los productos por línea de productos:**
export const get_4_20 = async () => {
    let [result] = await connection.query(

    );
    return result;
}

```sql
    select p.productLine, avg(o.priceEach) as'promedio del precio de venta' from products p join orderdetails o using (productCode) group by p.productLine;
    ```