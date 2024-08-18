import '../list_of_data.dart';
import 'Hiring.dart';
import 'employee.dart';

class Hr extends Employee implements Hiring {
  Hr(
      {required super.name,
      required super.id,
      required super.numberPhone,
      required super.numberCard,
      super.type = "hr",
      super.dateHiring});

  @override
  void hiring(Employee employee) {
    // TODO: implement hiring

    dateHiring = DateTime.now();
    listOfEmployee.add(employee);
  }

  void getInterview(Employee emp) {
    hiring(emp);
  }
  @override
  String toString() {
    // TODO: implement toString
    return "Hr(name: 4name, id: $id, numberPhone: $numberPhone, numberCard: $numberCard,Date Hiring: ${dateHiring!.day}/${dateHiring!.month}/${dateHiring!.year})";
  }
}
