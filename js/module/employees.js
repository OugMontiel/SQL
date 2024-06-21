import { connection } from "../../db/connection.js";

// 2. Encontrar todos los empleados que trabajan en la oficina de 'San Francisco':
export const getAllEmployeesFromOfficeCode_1_2 = async ({ officeCode = 1 } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM employees WHERE officeCode = ?`, [officeCode]
    );
    return result;
}

//  2. Obtener los nombres y direcciones de correo electrónico de los empleados que reportan al empleado con el número de empleado 1143:
export const getNameAndEmailFromEmployeesRespondenA_2_2 = async ({codeEmployee = 1143}={}) => {
    let [result] = await connection.execute(
        `SELECT lastName, email FROM employees WHERE reportsTo = ?`, [codeEmployee]
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

// 10. Contar la cantidad de empleados por título de trabajo:
export const getNumberOfEmployeesByJobTitle_3_10 = async () => {
    let [result] = await connection.query(
        ` SELECT jobTitle, COUNT(employeeNumber) FROM employees GROUP BY jobTitle `
    );
    return result;
}

// 8. Encontrar el promedio de ventas (cantidad ordenada por precio cada uno) por cada empleado:
export const getAvgSalesPerEmployee_4_8 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employee', AVG(p.amount) AS 'promedio de ventas' FROM employees e INNER JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber INNER JOIN payments p ON c.customerNumber = p.customerNumber GROUP BY e.employeeNumber ORDER BY AVG(p.amount) `
    );
    return result;
}
// 14. Encontrar la cantidad total de productos vendidos por cada vendedor:
export const getTotalProductsSoldByEmployees_4_14 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', SUM(o.quantityOrdered) AS 'cantidad total de productos vendidos' FROM employees e JOIN customers ON e.employeeNumber = customers.salesRepEmployeeNumber JOIN orders USING (customerNumber) JOIN orderdetails o USING (orderNumber) GROUP BY e.employeeNumber  `
    );
    return result;
}

// 15. Calcular el total de pagos recibidos por cada vendedor:
export const getTotalPaymentsReceivedByEmployees_4_15 = async () => {
    let [result] = await connection.query(
        ` SELECT CONCAT(e.firstName, ' ', e.lastName) AS 'Full name employees', COUNT(p.customerNumber) AS 'Cuantos pagos', SUM(p.amount) AS 'Total del pago' FROM employees e JOIN customers ON customers.salesRepEmployeeNumber = e.employeeNumber JOIN payments p USING (customerNumber) GROUP BY e.employeeNumber ORDER BY SUM(p.amount), COUNT(p.customerNumber) `
    );
    return result;
}

// 16. Obtener el promedio del límite de crédito de los clientes atendidos por cada vendedor:
export const getAverageCreditLimitBySalesperson_4_16 = async () => {
    let [result] = await connection.query(
        ` SELECT e.employeeNumber, CONCAT(e.firstName, ' ' ,e.lastName) AS 'Full Name employees', AVG(c.creditLimit) AS 'promedio del límite de crédito' FROM employees e JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber GROUP BY e.employeeNumber `
    );
    return result;
}