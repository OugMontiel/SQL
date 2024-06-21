import { connection } from "../../db/connection.js";

//  5. Recuperar todos los clientes de 'USA' que tienen un límite de crédito superior a 50000:
export const getAllCustomersUSALimiteCreditoSuperiorA_1_5 = async ({ country = "USA", creditLimit = 50000 } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM customers WHERE country = ? AND creditLimit > ?`, [country, creditLimit]
    );
    return result;
}

// 1. Obtener el promedio del límite de crédito de todos los clientes:
export const getAvgCreditLimit_3_1 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(creditLimit) FROM customers `
    );
    return result;
}

// 1. Calcular el total de pagos recibidos por cada cliente:
export const getPaymentsReceivedByClient_4_1 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, SUM(p.amount) AS 'total de pagos' FROM customers c INNER JOIN payments p ON p.customerNumber = c.customerNumber GROUP BY p.customerNumber UNION ALL SELECT 'total de pagos recibidos', SUM(amount) FROM payments `
    );
    return result;
}
// 2. Obtener el promedio del límite de crédito de los clientes por país:
export const getAvgCreditLimitByCountry_4_2 = async () => {
    let [result] = await connection.query(
        ` SELECT country, AVG(creditLimit) FROM customers GROUP BY country `
    );
    return result;
}

// 5. Calcular el total de ventas (cantidad ordenada por precio cada uno) por cada cliente:
export const getTotalSalesByCustomer_4_5 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, SUM(p.amount) AS 'total de ventas' FROM customers c INNER JOIN payments p ON c.customerNumber = p.customerNumber GROUP BY c.customerNumber ORDER BY SUM(p.amount) `
    );
    return result;
}
// 7. Calcular el total de pagos recibidos por cada país:
export const getTotalPaymentsByCountry_4_7 = async () => {
    let [result] = await connection.query(
        ` SELECT c.country, SUM(p.amount) FROM customers c INNER JOIN payments p GROUP BY c.country `
    );
    return result;
}
// 9. Calcular el total de órdenes gestionadas por cada empleado:
export const getTotalOrdersPerEmployee_4_9 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', COUNT(o.orderNumber) AS 'total de órdenes gestionadas' FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber GROUP BY c.salesRepEmployeeNumber `
    );
    return result;
}

// 11. Encontrar el promedio de la cantidad de productos ordenados por cada cliente:
export const getAvgProductsOrderedPerCustomer_4_11 = async () => {
    let [result] = await connection.query(
        ` SELECT c.customerName, AVG(o.quantityOrdered) AS ' promedio de productos ordenados' FROM customers c JOIN orders USING (customerNumber) JOIN orderdetails o USING  (orderNumber) GROUP BY c.customerNumber `
    );
    return result;
}
// 12. Calcular el total de ventas realizadas en cada país:
export const getTotalSalesPerCountry_4_12 = async () => {
    let [result] = await connection.query(
        ` SELECT c.country, SUM(p.amount) AS 'total de ventas' FROM customers c JOIN payments p USING (customerNumber) GROUP BY c.country ORDER BY SUM(p.amount) `
    );
    return result;
}

// 18. Calcular la cantidad media de productos pedidos por cada cliente:
export const getAvgProductsOrderedPerCustomer_4_18 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(o.quantityOrdered) AS 'media de productos pedidos', c.customerName AS 'Customer full Names' FROM customers c JOIN orders USING (customerNumber) JOIN orderdetails o USING (orderNumber) GROUP BY c.customerNumber `
    );
    return result;
}
