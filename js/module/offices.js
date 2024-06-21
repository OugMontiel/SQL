import { connection } from "../../db/connection.js";

// 4. Contar la cantidad de oficinas en cada país:
export const getCountNumberOfficesInCountry_3_4 = async () => {
    let [result] = await connection.query(
        ` SELECT country, COUNT(officeCode) FROM offices GROUP BY country `
    );
    return result;
}

// 17. Encontrar el total de ventas realizadas por cada oficina:
export const getTotalSalesByOffice_4_17 = async () => {
    let [result] = await connection.query(
        ` SELECT o.officeCode, o.city, o.country , SUM(p.amount) as'total de ventas' FROM offices o JOIN employees e USING (officeCode) JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber JOIN payments p USING (customerNumber) GROUP BY o.officeCode ORDER BY SUM(p.amount) desc `
    );
    return result;
}
