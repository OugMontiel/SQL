import { connection } from "../../db/connection.js";

// 1. Recuperar todas las líneas de productos con sus descripciones:
export const getAllProducsDescription_1_1 = async () => {
    let [result] = await connection.query(
        `SELECT concat(productLine, textDescription) FROM productlines`
    )
    return result
}