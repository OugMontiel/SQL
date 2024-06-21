import { connection } from "../../db/connection.js";

//  4. Obtener los detalles de todos los pagos realizados por el cliente con el número de cliente 103:
export const getAllPaymentsRealizadosPorCliente_1_4 = async ({ cliente = 103 } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM payments WHERE customerNumber=?`, [cliente]
    );
    return result;
}

//  4. Listar el monto total de los pagos recibidos de cada cliente:
export const getTotalPayForCustomer_2_4 = async () => {
    let [result] = await connection.query(
        `SELECT customerNumber, SUM(amount) AS totalPayments FROM payments GROUP BY customerNumber`
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

// 19. Obtener el total de pagos realizados en cada año:
export const getTotalPaymentsPerYear_4_19 = async () => {
    let [result] = await connection.query(
        ` SELECT YEAR(paymentDate) AS años, SUM(amount) AS 'Total de pagos realizados'  FROM payments GROUP BY YEAR(paymentDate) `
    );
    return result;
}