import 'package:system_employee/products/data_prod.dart';
import 'package:system_employee/products/product.dart';

import '../list_of_data.dart';
import 'Hiring.dart';
import 'employee.dart';

class Manager extends Employee implements Hiring {
  Manager(
      {required super.name,
      required super.id,
      required super.numberPhone,
      required super.numberCard,
      super.type = "manager",
      super.dateHiring});

  void deleteHiring(Employee employee) {
    listOfEmployee.removeWhere((element) => element.id == employee.id);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Manager(name: $name, id: $id, numberPhone: $numberPhone, numberCard: $numberCard,Date Hiring: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year})";
  }
void addProduct(Product product){
    listOfProduct.add(product);
}
  @override
  void hiring(Employee employee) {
    dateHiring = DateTime.now();
    listOfEmployee.add(employee);
  }
}