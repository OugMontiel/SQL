import { 
    getAllEmployeesFromOfficeCode,
    getAllProducsDescription
 } from "./module/partOne.js";

// console.log(await getAllProducsDescription())
console.log(await getAllEmployeesFromOfficeCode({officeCode:1}));