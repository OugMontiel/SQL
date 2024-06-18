
//////////////
// Part One //
//////////////
import {
    getAllProducsDescription_1_1,
    getAllEmployeesFromOfficeCode_1_2,
    getAllOrdederStatusShipped_1_3,
    getAllPaymentsRealizadosPorCliente_1_4,
    getAllCustomersUSALimiteCreditoSuperiorA_1_5,
    getAllProducsUnionDescripcionForProductLine_2_1,
    getNameAndEmailFromEmployeesRespondenA_2_2,
    getAllOrderForCustomerFromCity_2_3,
    getTotalPayForCustomer_2_4,
    getDetalleOrderForOrderByCustomer_2_5
} from "./module/partOne.js";
import {
    getAvgCreditLimit_3_1,
    getAllStock_3_2,
    getAvgBuyPriceForProducts_3_3,
    getCountNumberOfficesInCountry_3_4,
    getTotalPaymentsReceived_3_5,
    getTotalNumberEmployees_3_6,
    getAvgQuantityProductsInOrdersDetails_3_7,
    getBuyPriceOfAllProducts_3_8,
    getAvgSuggestedPriceOfProducts_3_9,
    getNumberOfEmployeesByJobTitle_3_10
} from "./module/partTwo.js";

console.log(await getAllProducsDescription_1_1());
console.log(await getAllEmployeesFromOfficeCode_1_2({ officeCode: 1 }));
console.log(await getAllOrdederStatusShipped_1_3({ status: "Shipped" }));
console.log(await getAllPaymentsRealizadosPorCliente_1_4({ cliente: 103 }));
console.log(await getAllCustomersUSALimiteCreditoSuperiorA_1_5({ country: "USA", creditLimit: 50000 }));
console.log(await getAllProducsUnionDescripcionForProductLine_2_1());
console.log(await getNameAndEmailFromEmployeesRespondenA_2_2({ codeEmployee: 1143 }));
console.log(await getAllOrderForCustomerFromCity_2_3({ country: "France" }));
console.log(await getTotalPayForCustomer_2_4());
console.log(await getDetalleOrderForOrderByCustomer_2_5({ codeCustomer: 103 }));

//////////////
// Part Two //
//////////////



console.log(await getAvgCreditLimit_3_1());
console.log(await getAllStock_3_2());
console.log(await getAvgBuyPriceForProducts_3_3());
console.log(await getCountNumberOfficesInCountry_3_4());
console.log(await getTotalPaymentsReceived_3_5());
console.log(await getTotalNumberEmployees_3_6());
console.log(await getAvgQuantityProductsInOrdersDetails_3_7());
console.log(await getBuyPriceOfAllProducts_3_8());
console.log(await getAvgSuggestedPriceOfProducts_3_9());
console.log(await getNumberOfEmployeesByJobTitle_3_10());