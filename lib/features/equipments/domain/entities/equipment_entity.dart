import 'package:equatable/equatable.dart';

class EquipmentEntity extends Equatable {
  final int eqId;
  final dynamic categoryId;
  final String eqName;
  final String standard;
  final int checklistId;
  final int? aramcoChecklistId;
  final String enabled;

  const EquipmentEntity({
    required this.eqId,
    this.categoryId,
    required this.eqName,
    required this.standard,
    required this.checklistId,
    this.aramcoChecklistId,
    required this.enabled,
  });

  factory EquipmentEntity.fromJson(Map<String, dynamic> json) =>
      EquipmentEntity(
        eqId: json["eq_id"],
        categoryId: json["category_id"],
        eqName: json["eq_name"],
        standard: json["standard"],
        checklistId: json["checklist_id"],
        aramcoChecklistId: json["aramco_checklist_id"],
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "eq_id": eqId,
        "category_id": categoryId,
        "eq_name": eqName,
        "standard": standard,
        "checklist_id": checklistId,
        "aramco_checklist_id": aramcoChecklistId,
        "enabled": enabled,
      };

  @override
  List<Object?> get props => [
        eqId,
        categoryId,
        eqName,
        standard,
        checklistId,
        aramcoChecklistId,
        enabled,
      ];
}
