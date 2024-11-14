import 'package:isar/isar.dart';

part 'work_order_assigned.g.dart';

@collection
class WorkOrderAssigned {
  Id id = Isar.autoIncrement;

  int? iD;
  int? woId;
  int? userId;
  int? serviceId;
  int? serviceType;
  int? quantity;
  DateTime? fromDate;
  DateTime? toDate;
  String? timesheetFile;
  String? notes;
  int? carId;
  int? inspectionType;

  WorkOrderAssigned({
    this.iD,
    this.woId,
    this.userId,
    this.serviceId,
    this.serviceType,
    this.quantity,
    this.fromDate,
    this.toDate,
    this.timesheetFile,
    this.notes,
    this.carId,
    this.inspectionType,
  });
}
