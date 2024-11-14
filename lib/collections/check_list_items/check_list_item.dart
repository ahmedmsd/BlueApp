import 'package:isar/isar.dart';
import 'package:test_workapp/collections/certifications/certification.dart';

part 'check_list_item.g.dart';

@collection
class CheckListItem {
  Id id = Isar.autoIncrement;
  int? certificationId;
  int? checklistId;
  int? parentId;
  int? checklistItemId;
  String? passFail;
  String? comment;
  String? itemTitle;
  String? reference;

  @Backlink(to: "checkListItems")
  final certification = IsarLink<Certification>();

  CheckListItem({
    this.certificationId,
    this.checklistId,
    this.parentId,
    this.checklistItemId,
    this.passFail,
    this.comment,
    this.itemTitle,
    this.reference,
  });

  Map<String, dynamic> toJson() {
    return {
      'checklist_id': checklistId,
      'checklist_item_id': checklistItemId,
      'pass_fail': passFail,
      'comments': comment,
    };
  }
}
