import 'package:system_employee/classes/customer_service.dart';
import 'package:system_employee/classes/employee.dart';
import 'package:system_employee/classes/manager.dart';
import 'package:system_employee/classes/seales.dart';
import 'package:system_employee/customer/customer.dart';
import 'package:system_employee/customer/data_customer.dart';
import 'package:system_employee/list_of_data.dart';

void main() {
  Manager m = Manager(
      name: "name",
      id: "id",
      numberPhone: "numberPhone",
      numberCard: "numberCard");
  listOfEmployee.add(m);
  m.hiring(Employee(
      name: "Ahmed",
      id: "dd3d543",
      numberPhone: " 222222222222222222",
      numberCard: "4354444"));
  m.hiring(
    Sales(
        name: "Hassan",
        id: "644646<M<",
        numberPhone: '0126546565464',
        numberCard: '3454666666666664'),
  );
  m.hiring(CustomerService(
      name: "ahmedShaban",
      id: "dd555555dd",
      numberPhone: "016",
      numberCard: "numberCard"));
  m.hiring(
    Manager(
        name: "AhmedSh",
        id: "544545dddss",
        numberPhone: '012644343434',
        numberCard: '545das'),
  );

  CustomerService customerService = listOfEmployee
      .firstWhere((e) => e.type == "customerService") as CustomerService;
  // customerService.addCustomer(
  //     Customer(name: "name", id: "id", padgetSeals: 58120, age: 15));

  Sales sales = listOfEmployee.firstWhere((e) => e.type == "sales") as Sales;
 sales.sale();
 print(listOfCustomer);
}
