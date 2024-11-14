import 'package:isar/isar.dart';

part 'customer.g.dart';

@collection
class Customer {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? customerId;
  String? customerName;

  Customer({
    this.customerId,
    this.customerName,
  });
}
