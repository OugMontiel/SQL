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
    getNumberOfEmployeesByJobTitle_3_10,
    getPaymentsReceivedByClient_4_1,
    getAvgCreditLimitByCountry_4_2,
    getTotalOrderByCustomer_4_3,
    getTotalQuantityOfProductsOrderedByCustome_4_4,
    getTotalSalesByCustomer_4_5,
    getAvgStockByProductLine_4_6,
    getTotalPaymentsByCountry_4_7,
    getAvgSalesPerEmployee_4_8,
    getTotalOrdersPerEmployee_4_9,
    getTotalProductsSoldPerProductLine_4_10,
    getAvgProductsOrderedPerCustomer_4_11,
    getTotalSalesPerCountry_4_12,
    getAvgBuyPricePerProductLine_4_13,
    getTotalProductsSoldByEmployees_4_14,
    getTotalPaymentsReceivedByEmployees_4_15,
    getAverageCreditLimitBySalesperson_4_16,
    getTotalSalesByOffice_4_17,
    getAvgProductsOrderedPerCustomer_4_18,
    getTotalPaymentsPerYear_4_19,
    getAvgPriceByProductLine_4_20
} from "./module/partTwo.js";

//////////////
// Part One //
//////////////

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

console.log(await getPaymentsReceivedByClient_4_1());
console.log(await getAvgCreditLimitByCountry_4_2());
console.log(await getTotalOrderByCustomer_4_3());
console.log(await getTotalQuantityOfProductsOrderedByCustome_4_4());
console.log(await getTotalSalesByCustomer_4_5());
console.log(await getAvgStockByProductLine_4_6());
console.log(await getTotalPaymentsByCountry_4_7());
console.log(await getAvgSalesPerEmployee_4_8());
console.log(await getTotalOrdersPerEmployee_4_9());
console.log(await getTotalProductsSoldPerProductLine_4_10());
console.log(await getAvgProductsOrderedPerCustomer_4_11());
console.log(await getTotalSalesPerCountry_4_12());
console.log(await getAvgBuyPricePerProductLine_4_13());
console.log(await getTotalProductsSoldByEmployees_4_14());
console.log(await getTotalPaymentsReceivedByEmployees_4_15());
console.log(await getAverageCreditLimitBySalesperson_4_16());
console.log(await getTotalSalesByOffice_4_17());
console.log(await getAvgProductsOrderedPerCustomer_4_18());
console.log(await getTotalPaymentsPerYear_4_19());
console.log(await getAvgPriceByProductLine_4_20());