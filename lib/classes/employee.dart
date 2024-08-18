class Employee {
  String name;
  String id;
  String numberCard;
  String numberPhone;
  String? type;
  DateTime? dateHiring;

  Employee(
      {required this.name,
      required this.id,
      required this.numberPhone,
      required this.numberCard,
      this.type,
      this.dateHiring});

  @override
  String toString() {
    // TODO: implement toString
    return "Employee(name: $name, id: $id, numberPhone: $numberPhone, numberCard: $numberCard,Date Hiring: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year})";
  }
}
