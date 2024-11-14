import 'package:equatable/equatable.dart';

class WorkOrderAssignedEntity extends Equatable {
  final int id;
  final int woId;
  final int userId;
  final int serviceId;
  final int serviceType;
  final int quantity;
  final DateTime? fromDate;
  final DateTime? toDate;
  final String? timesheetFile;
  final String? notes;
  final int? carId;
  final int inspectionType;

  const WorkOrderAssignedEntity({
    required this.id,
    required this.woId,
    required this.userId,
    required this.serviceId,
    required this.serviceType,
    required this.quantity,
    required this.fromDate,
    required this.toDate,
    required this.timesheetFile,
    required this.notes,
    required this.carId,
    required this.inspectionType,
  });

  factory WorkOrderAssignedEntity.fromJson(Map<String, dynamic> json) =>
      WorkOrderAssignedEntity(
        id: json["id"],
        woId: json["wo_id"],
        userId: json["user_id"],
        serviceId: json["service_id"],
        serviceType: json["service_type"],
        quantity: json["quantity"],
        fromDate: json["from_date"] == null
            ? null
            : DateTime.parse(json["from_date"]),
        toDate:
            json["to_date"] == null ? null : DateTime.parse(json["to_date"]),
        timesheetFile: json["timesheet_file"],
        notes: json["notes"],
        carId: json["car_id"],
        inspectionType: json["inspection_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "wo_id": woId,
        "user_id": userId,
        "service_id": serviceId,
        "service_type": serviceType,
        "quantity": quantity,
        "from_date": fromDate?.toIso8601String(),
        "to_date": toDate?.toIso8601String(),
        "timesheet_file": timesheetFile,
        "notes": notes,
        "car_id": carId,
        "inspection_type": inspectionType,
      };

  @override
  List<Object?> get props => [
        id,
        woId,
        userId,
        serviceId,
        serviceType,
        quantity,
        fromDate,
        toDate,
        timesheetFile,
        notes,
        carId,
        inspectionType,
      ];
}
