import 'package:isar/isar.dart';

part 'sticker.g.dart';

@collection
class Sticker {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? stickerType;
  int? fromNo;
  int? toNo;
  String? bookNo;
  int? assignedTo;
  int? assignedBy;
  DateTime? assignedDate;
  String? returned;

  Sticker({
    this.stickerType,
    this.fromNo,
    this.toNo,
    this.bookNo,
    this.assignedTo,
    this.assignedBy,
    this.assignedDate,
    this.returned,
  });
}
