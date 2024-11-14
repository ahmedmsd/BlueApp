import 'package:isar/isar.dart';
import 'package:test_workapp/collections/certifications/certification.dart';

part 'load_test_check_list_item.g.dart';

@collection
class LoadTestCheckListItem {
  Id id = Isar.autoIncrement;
  int? certificationId;
  int? checklistId;
  int? parentId;
  int? checklistItemId;
  String? passFail;
  String? comment;
  String? itemTitle;
  String? reference;

  @Backlink(to: "loadTestCheckListItems")
  final certification = IsarLink<Certification>();

  LoadTestCheckListItem({
    this.certificationId,
    this.checklistId,
    this.parentId,
    this.checklistItemId,
    this.passFail,
    this.comment,
    this.itemTitle,
    this.reference,
  });
}
