import { connection } from "../../db/connection.js";

// 7. Calcular la cantidad media de productos pedidos en las órdenes:
export const getAvgQuantityProductsInOrdersDetails_3_7 = async () => {
    let [result] = await connection.query(
        ` SELECT AVG(quantityOrdered) FROM orderdetails `
    );
    return result;
}

