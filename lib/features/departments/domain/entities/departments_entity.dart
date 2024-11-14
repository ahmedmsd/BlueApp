import 'package:equatable/equatable.dart';

class DepartmentEntity extends Equatable {
  final int departmentId;
  final int companyId;
  final String? departmentNameAr;
  final String departmentNameEn;
  final String enabled;
  final int parentId;
  final int? sortorder;

  const DepartmentEntity({
    required this.departmentId,
    required this.companyId,
    this.departmentNameAr,
    required this.departmentNameEn,
    required this.enabled,
    required this.parentId,
    this.sortorder,
  });

  factory DepartmentEntity.fromJson(Map<String, dynamic> json) =>
      DepartmentEntity(
        departmentId: json["department_id"],
        companyId: json["company_id"],
        departmentNameAr: json["department_name_ar"],
        departmentNameEn: json["department_name_en"],
        enabled: json["enabled"],
        parentId: json["parent_id"],
        sortorder: json["sortorder"],
      );

  Map<String, dynamic> toJson() => {
        "department_id": departmentId,
        "company_id": companyId,
        "department_name_ar": departmentNameAr,
        "department_name_en": departmentNameEn,
        "enabled": enabled,
        "parent_id": parentId,
        "sortorder": sortorder,
      };

  @override
  List<Object?> get props => [
        departmentId,
        companyId,
        departmentNameAr,
        departmentNameEn,
        enabled,
        parentId,
        sortorder,
      ];
}
