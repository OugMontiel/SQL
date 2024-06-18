
//////////////
// Part One //
//////////////
import{
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
