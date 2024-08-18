import 'package:system_employee/classes/account.dart';
import 'package:system_employee/products/product.dart';

class Customer {
  String? name;
 static int id=1000;
 int? gId;
 int? age;
  double? padgetSeals;
  Account ?account;

  Customer({
     this.name,
     this.gId,
     this.padgetSeals,
     this.age,

     this.account,
  }){
    gId=id;
    id++;
  }
getId()=>id;
  List<Product> payedProducts = [];

  void buyProduct(Product product) {
    payedProducts.add(product);
  }

  @override
  String toString() {
    // TODO: implement toString
    return " Customer(name: $name, id: $id, padgetSeals: $padgetSeals, age: $age)";
  }
}
