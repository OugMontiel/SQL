import {connection} from "../../db/connection.js";

// 1. Recuperar todas las líneas de productos con sus descripciones:
export const getAllProducsDescription_1_1 = async()=>{
    let [result] = await connection.query(
        `SELECT concat(productLine, textDescription) FROM productlines`
    )
    return result
}

// 2. Encontrar todos los empleados que trabajan en la oficina de 'San Francisco':
export const getAllEmployeesFromOfficeCode_1_2 = async ({ officeCode = 1 } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM employees WHERE officeCode = ?`,
        [officeCode]
    );
    return result;
}


//  3. Listar todas las órdenes que tienen un estado de 'Enviado':
export const getAllOrdederStatusShipped_1_3 =async()=>{
    let [result]= await connection.query(
        `SELECT * FROM orders WHERE status ='Shipped' `
    );
    return result;
}

//  4. Obtener los detalles de todos los pagos realizados por el cliente con el número de cliente 103:
export const getAllPaymentsRealizadosPorCliente_1_4 =async()=>{
    let [result]= await connection.query(
        `SELECT * FROM payments WHERE customerNumber=103`
    );
    return result;
}

//  5. Recuperar todos los clientes de 'USA' que tienen un límite de crédito superior a 50000:
export const getAllCustomersUSALimiteCreditoSuperiorA50Mil_1_5 =async()=>{
    let [result]= await connection.query(
        `SELECT * FROM customers WHERE country = 'USA' AND creditLimit>50000`
    );
    return result;
}

// # Consultas de múltiples tablas

//  1. Listar todos los productos junto con las descripciones de sus líneas de productos:
export const getAllProducsUnionDescripcionForProductLine_2_1 =async()=>{
    let [result]= await connection.query(
        `SELECT concat(p.productName," ",pl.textDescription) AS "productos junto con las descripciones" FROM products p JOIN productlines pl ON p.productLine = pl.productLine`
    );
    return result;
}

//  2. Obtener los nombres y direcciones de correo electrónico de los empleados que reportan al empleado con el número de empleado 1143:
export const getNameAndEmailFromEmployeesRespondenA_2_2 =async()=>{
    let [result]= await connection.query(
        `SELECT lastName, email FROM employees WHERE reportsTo =1143`
    );
    return result;
}

//  3. Encontrar todas las órdenes realizadas por clientes de 'Francia':
export const getAllOrderForCustomerFromCity_2_3 =async()=>{
    let [result]= await connection.query(
        `SELECT * FROM orders WHERE customerNumber IN (SELECT customerNumber FROM customers WHERE country = "France")`
    );
    return result;
}

//  4. Listar el monto total de los pagos recibidos de cada cliente:
export const getTotalPayForCustomer_2_4 =async()=>{
    let [result]= await connection.query(
        `SELECT customerNumber, SUM(amount) AS totalPayments FROM payments GROUP BY customerNumber`
    );
    return result;
}

//  5. Recuperar los detalles de las órdenes, incluyendo los nombres de los productos, para todas las órdenes realizadas por el cliente con el número de cliente 101:
export const getDetalleOrderForOrderByCustomer =async()=>{
    let [result]= await connection.query(
        `SELECT od.orderNumber, p.productName, od.productCode, od.quantityOrdered, od.priceEach FROM orderdetails od JOIN products p ON od.productCode = p.productCode WHERE od.orderNumber IN (SELECT orderNumber FROM orders WHERE customerNumber = 103)`
    );
    return result;
}
