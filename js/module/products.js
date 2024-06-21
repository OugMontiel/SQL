import { connection } from "../../db/connection.js";

//  1. Listar todos los productos junto con las descripciones de sus líneas de productos:
export const getAllProducsUnionDescripcionForProductLine_2_1 = async () => {
    let [result] = await connection.query(
        `SELECT concat(p.productName," ",pl.textDescription) AS "productos junto con las descripciones" FROM products p JOIN productlines pl ON p.productLine = pl.productLine`
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

// 6. Obtener el promedio de la cantidad de productos en stock por línea de productos:
export const getAvgStockByProductLine_4_6 = async () => {
    let [result] = await connection.query(
        ` SELECT productLine, AVG(quantityInStock) FROM products GROUP BY productLine `
    );
    return result;
}
// 10. Obtener la cantidad total de productos vendidos por cada línea de productos:
export const getTotalProductsSoldPerProductLine_4_10 = async () => {
    let [result] = await connection.query(
        ` SELECT p.productLine, SUM(o.quantityOrdered) AS 'cantidad total de productos vendidos' FROM products p JOIN orderdetails o USING (productCode) GROUP BY productLine `
    );
    return result;
}

// 13. Obtener el promedio del precio de compra de los productos por línea de productos:
export const getAvgBuyPricePerProductLine_4_13 = async () => {
    let [result] = await connection.query(
        ` SELECT productLine, AVG(buyPrice) AS 'promedio del precio de compra' FROM products GROUP BY productLine `
    );
    return result;
}

// 20. Encontrar el promedio del precio de venta (priceEach) de los productos por línea de productos:
export const getAvgPriceByProductLine_4_20 = async () => {
    let [result] = await connection.query(
        ` SELECT p.productLine, AVG(o.priceEach) as'promedio del precio de venta' FROM products p JOIN orderdetails o USING (productCode) GROUP BY p.productLine `
    );
    return result;
}