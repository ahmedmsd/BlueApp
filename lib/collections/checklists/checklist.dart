import 'package:isar/isar.dart';

part 'checklist.g.dart';

@collection
class Checklist {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? checklistId;
  String? checklistTitle;
  String? standard;
  String? checklistTestCode;
  String? aramcoChecklistCode;

  Checklist({
    this.checklistId,
    this.checklistTitle,
    this.standard,
    this.checklistTestCode,
    this.aramcoChecklistCode,
  });
}
