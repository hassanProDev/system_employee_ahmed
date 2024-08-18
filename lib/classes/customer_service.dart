import 'package:system_employee/classes/employee.dart';
import 'package:system_employee/customer/customer.dart';
import 'package:system_employee/customer/data_customer.dart';

class CustomerService extends Employee {
  CustomerService(
      {required super.name,
        super.type="customerService",
      required super.id,
      required super.numberPhone,
      required super.numberCard
      });

  void addCustomer(Customer customer) {
    listOfCustomer.add(customer);
  }
}
