class Product {
  String name;
  String id;
  double price;

  Product({required this.id, required this.name, required this.price});

  String toString(){
    return "Product(id: $id, name: $name, price: $price)";
  }
}
