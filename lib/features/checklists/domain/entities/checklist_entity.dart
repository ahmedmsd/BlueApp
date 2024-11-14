import 'package:equatable/equatable.dart';

class ChecklistEntity extends Equatable {
  final int checklistId;
  final String checklistTitle;
  final String? standard;
  final String? checklistTestCode;
  final String? aramcoChecklistCode;

  const ChecklistEntity({
    required this.checklistId,
    required this.checklistTitle,
    this.standard,
    this.checklistTestCode,
    this.aramcoChecklistCode,
  });

  factory ChecklistEntity.fromJson(Map<String, dynamic> json) =>
      ChecklistEntity(
        checklistId: json["checklist_id"],
        checklistTitle: json["checklist_title"],
        standard: json["standard"],
        checklistTestCode: json["checklist_test_code"],
        aramcoChecklistCode: json["aramco_checklist_code"],
      );

  Map<String, dynamic> toJson() => {
        "checklist_id": checklistId,
        "checklist_title": checklistTitle,
        "standard": standard,
        "checklist_test_code": checklistTestCode,
        "aramco_checklist_code": aramcoChecklistCode,
      };

  @override
  List<Object?> get props => [
        checklistId,
        checklistTitle,
        standard,
        checklistTestCode,
        aramcoChecklistCode,
      ];
}
