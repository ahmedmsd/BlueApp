import 'package:isar/isar.dart';

part 'equipment.g.dart';

@collection
class Equipment {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? eqId;
  int? categoryId;
  String? eqName;
  String? standard;
  int? checklistId;
  int? aramcoChecklistId;
  String? enabled;

  Equipment({
    this.eqId,
    this.categoryId,
    this.eqName,
    this.standard,
    this.checklistId,
    this.aramcoChecklistId,
    this.enabled,
  });
}
