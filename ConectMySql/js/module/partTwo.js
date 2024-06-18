import { connection } from "../../db/connection.js";

/////////////////////////////////
// Consultas de una sola tabla //
/////////////////////////////////


// 1. Obtener el promedio del límite de crédito de todos los clientes:
export const getAvgCreditLimit_3_1 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(creditLimit) FROM customers `
    );
    return result;
}

// 2. Calcular el total de productos en stock:
export const getAllStock_3_2 = async () => {
    let [result] = await connection.query(
        ` SELECT productName, quantityInStock FROM products UNION ALL SELECT 'total de productos en stock', SUM(quantityInStock) FROM products `
    );
    return result;
}

// 3. Encontrar el precio medio de compra de todos los productos:
export const getAvgBuyPriceForProducts_3_3 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(buyPrice) FROM products `
    );
    return result;
}

// 4. Contar la cantidad de oficinas en cada país:
export const getCountNumberOfficesInCountry_3_4 = async () => {
    let [result] = await connection.query(
        ` SELECT country, COUNT(officeCode) FROM offices GROUP BY country `
    );
    return result;
}

// 5. Calcular el total de pagos recibidos:
export const getTotalPaymentsReceived_3_5 = async () => {
    let [result] = await connection.query(
        ` SELECT SUM(amount) FROM payments `
    );
    return result;
}

// 6. Obtener la cantidad total de empleados:
export const getTotalNumberEmployees_3_6 = async () => {
    let [result] = await connection.query(
        ` SELECT COUNT(employeeNumber) FROM employees `
    );
    return result;
}

// 7. Calcular la cantidad media de productos pedidos en las órdenes:
export const getAvgQuantityProductsInOrdersDetails_3_7 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(quantityOrdered) FROM orderdetails `
    );
    return result;
}

// 8. Encontrar el precio total de todos los productos:
export const getBuyPriceOfAllProducts_3_8 = async () => {
    let [result] = await connection.query(
        ` SELECT SUM(buyPrice) FROM products `
    );
    return result;
}

// 9. Calcular el promedio del precio sugerido (MSRP) de los productos:
export const getAvgSuggestedPriceOfProducts_3_9 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(MSRP) FROM products `
    );
    return result;
}

// 10. Contar la cantidad de empleados por título de trabajo:
export const getNumberOfEmployeesByJobTitle_3_10 = async () => {
    let [result] = await connection.query(
        ` SELECT jobTitle, COUNT(employeeNumber) FROM employees GROUP BY jobTitle `
    );
    return result;
}

///////////////////////////////////
// Consultas de múltiples tablas //
///////////////////////////////////


// 1. Calcular el total de pagos recibidos por cada cliente:
export const get_4_1 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, SUM(p.amount) AS 'total de pagos' FROM customers c INNER JOIN payments p ON p.customerNumber = c.customerNumber GROUP BY p.customerNumber UNION ALL SELECT 'total de pagos recibidos', SUM(amount) FROM payments `
    );
    return result;
}

// 2. Obtener el promedio del límite de crédito de los clientes por país:
export const get_4_2 = async () => {
    let [result] = await connection.query(
        ` SELECT country, AVG(creditLimit) FROM customers GROUP BY country `
    );
    return result;
}

// 3. Calcular el total de órdenes realizadas por cada cliente:
export const get_4_3 = async () => {
    let [result] = await connection.query(
        ` SELECT customerNumber, COUNT(orderNumber) FROM orders GROUP BY customerNumber `
    );
    return result;
}

// 4. Encontrar la cantidad total de productos pedidos por cada cliente:
export const get_4_4 = async () => {
    let [result] = await connection.query(
        ` SELECT r.customerNumber, SUM(o.quantityOrdered) AS 'total de productos pedidos' FROM orders r INNER JOIN orderdetails o ON o.orderNumber = r.orderNumber GROUP BY r.customerNumber `
    );
    return result;
}

// 5. Calcular el total de ventas (cantidad ordenada por precio cada uno) por cada cliente:
export const get_4_5 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, SUM(p.amount) AS 'total de ventas' FROM customers c INNER JOIN payments p ON c.customerNumber = p.customerNumber GROUP BY c.customerNumber ORDER BY SUM(p.amount) `
    );
    return result;
}

// 6. Obtener el promedio de la cantidad de productos en stock por línea de productos:
export const get_4_6 = async () => {
    let [result] = await connection.query(
        ` SELECT productLine, AVG(quantityInStock) FROM products GROUP BY productLine `
    );
    return result;
}

// 7. Calcular el total de pagos recibidos por cada país:
export const get_4_7 = async () => {
    let [result] = await connection.query(
        ` SELECT c.country, SUM(p.amount) FROM customers c INNER JOIN payments p GROUP BY c.country `
    );
    return result;
}

// 8. Encontrar el promedio de ventas (cantidad ordenada por precio cada uno) por cada empleado:
export const get_4_8 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employee', AVG(p.amount) AS 'promedio de ventas' FROM employees e INNER JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber INNER JOIN payments p ON c.customerNumber = p.customerNumber GROUP BY e.employeeNumber ORDER BY AVG(p.amount) `
    );
    return result;
}

// 9. Calcular el total de órdenes gestionadas por cada empleado:
export const get_4_9 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', COUNT(o.orderNumber) AS 'total de órdenes gestionadas' FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber GROUP BY c.salesRepEmployeeNumber `
    );
    return result;
}

// 10. Obtener la cantidad total de productos vendidos por cada línea de productos:
export const get_4_10 = async () => {
    let [result] = await connection.query(
        ` SELECT p.productLine, SUM(o.quantityOrdered) AS 'cantidad total de productos vendidos' FROM products p JOIN orderdetails o USING (productCode) GROUP BY productLine `
    );
    return result;
}

// 11. Encontrar el promedio de la cantidad de productos ordenados por cada cliente:
export const get_4_11 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, AVG(o.quantityOrdered) AS ' promedio de productos ordenados' FROM customers c JOIN orders USING (customerNumber) JOIN orderdetails o USING  (orderNumber) GROUP BY c.customerNumber `
    );
    return result;
}

// 12. Calcular el total de ventas realizadas en cada país:
export const get_4_12 = async () => {
    let [result] = await connection.query(
        ` SELECT c.country, SUM(p.amount) AS 'total de ventas' FROM customers c JOIN payments p USING (customerNumber) GROUP BY c.country ORDER BY SUM(p.amount) `
    );
    return result;
}

// 13. Obtener el promedio del precio de compra de los productos por línea de productos:
export const get_4_13 = async () => {
    let [result] = await connection.query(
        ` SELECT productLine, AVG(buyPrice) AS 'promedio del precio de compra' FROM products GROUP BY productLine `
    );
    return result;
}

// 14. Encontrar la cantidad total de productos vendidos por cada vendedor:
export const get_4_14 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', SUM(o.quantityOrdered) AS 'cantidad total de productos vendidos' FROM employees e JOIN customers ON e.employeeNumber = customers.salesRepEmployeeNumber JOIN orders USING (customerNumber) JOIN orderdetails o USING (orderNumber) GROUP BY e.employeeNumber  `
    );
    return result;
}

// 15. Calcular el total de pagos recibidos por cada vendedor:
export const get_4_15 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ', e.lastName) AS 'Full name employees', COUNT(p.customerNumber) AS 'Cuantos pagos', SUM(p.amount) AS 'Total del pago' FROM employees e JOIN customers ON customers.salesRepEmployeeNumber = e.employeeNumber JOIN payments p USING (customerNumber) GROUP BY e.employeeNumber ORDER BY SUM(p.amount), COUNT(p.customerNumber) `
    );
    return result;
}

// 16. Obtener el promedio del límite de crédito de los clientes atendidos por cada vendedor:
export const get_4_16 = async () => {
    let [result] = await connection.query(
        ` SELECT e.employeeNumber, CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', AVG(c.creditLimit) AS 'promedio del límite de crédito' FROM employees e JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber GROUP BY e.employeeNumber `
    );
    return result;
}

// 17. Encontrar el total de ventas realizadas por cada oficina:
export const get_4_17 = async () => {
    let [result] = await connection.query(
        ` SELECT o.officeCode, o.city, o.country , SUM(p.amount) as'total de ventas' FROM offices o JOIN employees e USING (officeCode) JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber JOIN payments p USING (customerNumber) GROUP BY o.officeCode ORDER BY SUM(p.amount) desc `
    );
    return result;
}

// 18. Calcular la cantidad media de productos pedidos por cada cliente:
export const get_4_18 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(o.quantityOrdered) AS 'media de productos pedidos', c.customerName AS 'Customer full Names' FROM customers c JOIN orders USING (customerNumber) JOIN orderdetails o USING (orderNumber) GROUP BY c.customerNumber `
    );
    return result;
}

// 19. Obtener el total de pagos realizados en cada año:
export const get_4_19 = async () => {
    let [result] = await connection.query(
        ` SELECT YEAR(paymentDate) AS años, SUM(amount) AS 'Total de pagos realizados'  FROM payments GROUP BY YEAR(paymentDate) `
    );
    return result;
}

// 20. Encontrar el promedio del precio de venta (priceEach) de los productos por línea de productos:
export const get_4_20 = async () => {
    let [result] = await connection.query(
        ` SELECT p.productLine, AVG(o.priceEach) as'promedio del precio de venta' FROM products p JOIN orderdetails o USING (productCode) GROUP BY p.productLine `
    );
    return result;
}