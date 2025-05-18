// using { com.company.contracts as db } from '../db/schema';

// service ContractService {
//   entity Employees as projection on db.Employee;
//   entity Contracts as projection on db.Contract;
//   entity Managers as projection on db.Manager;
//   entity ExpiringContracts as projection on db.ExpiringContract;

//   action getExpiringContracts() returns array of ExpiringContracts;
// }

//v2
// using { com.company.contracts as db } from '../db/schema';

// service ContractService {
//   entity Employees as projection on db.Employee;
//   entity Contracts as projection on db.Contract;
//   entity Managers as projection on db.Manager;
//   entity ExpiringContracts as projection on db.ExpiringContract;
// }

//using my.company as my;
using { my.company as my } from '../db/schema';

service ContractService {
   entity Employees as projection on my.Employee;
   entity Managers as projection on my.Manager;

  action CheckExpiringContracts() returns Integer;

  action ContractRenewal(
    employeeID: UUID
  ) returns String;

  action NonRenewal(
    employeeID: UUID
  ) returns String;

  action RenewalWithStatusChange(
    employeeID: UUID,
    newType: String
  ) returns String;
}
