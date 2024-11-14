import 'package:isar/isar.dart';

part 'checklist_details.g.dart';

@collection
class ChecklistDetails {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? itemId;
  int? checklistId;
  int? parentId;
  String? itemTitle;
  String? reference;
  int? sortorder;

  ChecklistDetails({
    this.itemId,
    this.checklistId,
    this.parentId,
    this.itemTitle,
    this.reference,
    this.sortorder,
  });
}
