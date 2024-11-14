import 'package:equatable/equatable.dart';

class StickerEntity extends Equatable {
  final int stickerType;
  final int fromNo;
  final int toNo;
  final String bookNo;
  final int assignedTo;
  final int assignedBy;
  final DateTime assignedDate;
  final String returned;

  const StickerEntity({
    required this.stickerType,
    required this.fromNo,
    required this.toNo,
    required this.bookNo,
    required this.assignedTo,
    required this.assignedBy,
    required this.assignedDate,
    required this.returned,
  });

  factory StickerEntity.fromJson(Map<String, dynamic> json) => StickerEntity(
        stickerType: json["sticker_type"],
        fromNo: json["from_no"],
        toNo: json["to_no"],
        bookNo: json["book_no"],
        assignedTo: json["assigned_to"],
        assignedBy: json["assigned_by"],
        assignedDate: DateTime.parse(json["assigned_date"]),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "sticker_type": stickerType,
        "from_no": fromNo,
        "to_no": toNo,
        "book_no": bookNo,
        "assigned_to": assignedTo,
        "assigned_by": assignedBy,
        "assigned_date": assignedDate.toIso8601String(),
        "returned": returned,
      };

  @override
  List<Object?> get props => [
        stickerType,
        fromNo,
        toNo,
        bookNo,
        assignedTo,
        assignedBy,
        assignedDate,
        returned,
      ];
}
