import { connection } from "../../db/connection.js";

//  3. Listar todas las órdenes que tienen un estado de 'Enviado':
export const getAllOrdederStatusShipped_1_3 = async ({ status = "Shipped" } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM orders WHERE status = ? `, [status]
    );
    return result;
}


//  3. Encontrar todas las órdenes realizadas por clientes de 'Francia':
export const getAllOrderForCustomerFromCity_2_3 = async ({country = "France"}={}) => {
    let [result] = await connection.execute(
        `SELECT * FROM orders WHERE customerNumber IN (SELECT customerNumber FROM customers WHERE country = ? )`, [country]
    );
    return result;
}

//  5. Recuperar los detalles de las órdenes, incluyendo los nombres de los productos, para todas las órdenes realizadas por el cliente con el número de cliente 103:
export const getDetalleOrderForOrderByCustomer_2_5 = async ({codeCustomer=103}={}) => {
    let [result] = await connection.query(
        `SELECT od.orderNumber, p.productName, od.productCode, od.quantityOrdered, od.priceEach FROM orderdetails od JOIN products p ON od.productCode = p.productCode WHERE od.orderNumber IN (SELECT orderNumber FROM orders WHERE customerNumber = ? )`, [codeCustomer]
    );
    return result;
}

// 3. Calcular el total de órdenes realizadas por cada cliente:
export const getTotalOrderByCustomer_4_3 = async () => {
    let [result] = await connection.query(
        ` SELECT customerNumber, COUNT(orderNumber) FROM orders GROUP BY customerNumber `
    );
    return result;
}
// 4. Encontrar la cantidad total de productos pedidos por cada cliente:
export const getTotalQuantityOfProductsOrderedByCustome_4_4 = async () => {
    let [result] = await connection.query(
        ` SELECT r.customerNumber, SUM(o.quantityOrdered) AS 'total de productos pedidos' FROM orders r INNER JOIN orderdetails o ON o.orderNumber = r.orderNumber GROUP BY r.customerNumber `
    );
    return result;
}