namespace my.company;

entity Employee {
  key ID: String;
  name: String;
  email: String;
  contractEndDate: Date;
  contractType: String; // annually, 6-months
  status: String;       // active, terminated
  manager: Association to Manager;
}

entity Manager {
  key ID: UUID;
  name: String;
  email: String;
}













// namespace com.company.contracts;

// entity Employee {
//   key ID : UUID;
//   name : String(100);
//   email : String(100);
//   manager : Association to Manager;
//   contract : Association to Contract;
// }

// entity Contract {
//   key ID : UUID;
//   employee : Association to Employee;
//   startDate : Date;
//   endDate : Date;
//   status : String(50); // e.g., 'Annual', '6Months'
// }

// entity Manager {
//   key ID : UUID;
//   name : String(100);
//   email : String(100);
// }

// entity ExpiringContract {
//   employeeID : UUID;
//   employeeName : String(100);
//   employeeEmail : String(100);
//   contractID : UUID;
//   contractEndDate : Date;
//   contractStatus : String(50);
//   managerID : UUID;
//   managerName : String(100);
//   managerEmail : String(100);
// }
