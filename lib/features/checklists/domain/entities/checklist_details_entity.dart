import 'package:equatable/equatable.dart';

class ChecklistDetailsEntity extends Equatable {
  final int itemId;
  final int checklistId;
  final int parentId;
  final String itemTitle;
  final String? reference;
  final int? sortorder;

  const ChecklistDetailsEntity({
    required this.itemId,
    required this.checklistId,
    required this.parentId,
    required this.itemTitle,
    this.reference,
    this.sortorder,
  });

  factory ChecklistDetailsEntity.fromJson(Map<String, dynamic> json) =>
      ChecklistDetailsEntity(
        itemId: json["item_id"],
        checklistId: json["checklist_id"],
        parentId: json["parent_id"],
        itemTitle: json["item_title"],
        reference: json["reference"],
        sortorder: json["sortorder"],
      );

  Map<String, dynamic> toJson() => {
        "item_id": itemId,
        "checklist_id": checklistId,
        "parent_id": parentId,
        "item_title": itemTitle,
        "reference": reference,
        "sortorder": sortorder,
      };

  @override
  List<Object?> get props => [
        itemId,
        checklistId,
        parentId,
        itemTitle,
        reference,
        sortorder,
      ];
}
