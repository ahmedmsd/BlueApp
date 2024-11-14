import 'package:isar/isar.dart';

part 'department.g.dart';

@collection
class Department {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? departmentId;
  int? companyId;
  String? departmentNameAr;
  String? departmentNameEn;
  String? enabled;
  int? parentId;
  int? sortorder;

  Department({
    this.departmentId,
    this.companyId,
    this.departmentNameAr,
    this.departmentNameEn,
    this.enabled,
    this.parentId,
    this.sortorder,
  });
}
