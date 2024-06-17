import {connection} from "../../db/connection.js";

// 1. **Recuperar todas las líneas de productos con sus descripciones:**
export const getAllProducsDescription = async()=>{
    let [result] = await connection.query("SELECT concat(productLine, textDescription) FROM productlines")
    return result
}

// 2. **Encontrar todos los empleados que trabajan en la oficina de 'San Francisco':**

export const getAllEmployeesFromOfficeCode = async ({ officeCode = 1 } = {}) => {
    let [result] = await connection.execute(
        `SELECT * FROM employees WHERE officeCode = ?`,
        [officeCode]
    );
    return result;
}


// 3. **Listar todas las órdenes que tienen un estado de 'Enviado':**

//    ```sql
//    select * from orders where status ='Shipped';
//    ```

// 4. **Obtener los detalles de todos los pagos realizados por el cliente con el número de cliente 103:**

//    ```sql
//    select * from payments where customerNumber=103;
//    ```

// 5. **Recuperar todos los clientes de 'USA' que tienen un límite de crédito superior a 50000:**

//    ```sql
//    select * from customers where country = 'USA' and creditLimit>50000;
//    ```

// ### Consultas de múltiples tablas

// 1. **Listar todos los productos junto con las descripciones de sus líneas de productos:**

//    ```sql
//     SELECT concat(p.productName," ",pl.textDescription) as "productos junto con las descripciones" FROM products p JOIN productlines pl ON p.productLine = pl.productLine;
   
//    ```

// 2. **Obtener los nombres y direcciones de correo electrónico de los empleados que reportan al empleado con el número de empleado 1143:**

//    ```sql
//    select lastName, email from employees where reportsTo =1143;
//    ```

// 3. **Encontrar todas las órdenes realizadas por clientes de 'Francia':**

//    ```sql
//    select * from orders where customerNumber In (select customerNumber from customers where country = "France")
//    ```

// 4. **Listar el monto total de los pagos recibidos de cada cliente:**

//    ```sql
//    SELECT customerNumber, SUM(amount) AS totalPayments FROM payments GROUP BY customerNumber;
//    ```

// 5. **Recuperar los detalles de las órdenes, incluyendo los nombres de los productos, para todas las órdenes realizadas por el cliente con el número de cliente 101:**

//    ```sql
//    SELECT od.orderNumber, p.productName, od.productCode, od.quantityOrdered, od.priceEach
//    FROM orderdetails od
//    JOIN products p ON od.productCode = p.productCode
//    WHERE od.orderNumber IN (SELECT orderNumber FROM orders WHERE customerNumber = 103);
//    ```
