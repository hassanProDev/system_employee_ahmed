import 'dart:io';

import 'package:system_employee/products/data_prod.dart';
import 'package:system_employee/products/product.dart';

import '../customer/customer.dart';
import '../customer/data_customer.dart';
import 'employee.dart';

class Sales extends Employee {
  Sales(
      {required super.name,
      required super.id,
      required super.numberPhone,
      required super.numberCard,
      super.type = "sales",
      super.dateHiring});

  void sale() {
    Customer customer = Customer();
    print("hello Customer You Have Account ?Y/N");
    String data = stdin.readLineSync()!;
    for (; data != "exit";) {
      if (data.toUpperCase() == "Y") {
        print("Please Enter Name");
        String name = stdin.readLineSync()!;
        print(listOfCustomer.firstWhere((e) => e.name == name));
      } else {
        print("Enter Please name");
        customer.name = stdin.readLineSync()!;
        print("Please Enter Age ");
        customer.age = int.parse(stdin.readLineSync()!);
        print("please Enter Padget");

        customer.padgetSeals = double.parse(stdin.readLineSync()!);
        listOfCustomer.add(customer);
      }
      print("hello Customer You Have Account ?Y/N");
      data = stdin.readLineSync()!;
    }
  }

  void addProduct(Product product) {
    listOfProduct.add(product);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Seals(name: $name, id: $id, numberPhone: $numberPhone, numberCard: $numberCard,Date Hiring: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
  }
}
