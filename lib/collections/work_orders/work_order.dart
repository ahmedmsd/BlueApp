import 'package:isar/isar.dart';
import 'package:test_workapp/collections/certifications/certification.dart';

part 'work_order.g.dart';

@collection
class WorkOrder {
  Id id = Isar.autoIncrement;

  int woId;
  int? customerId;
  int? qrId;
  DateTime? woDate;
  String? contactPLocation;
  int? workLocation;
  String? locationDetails;
  int? sequence;
  int? coordinatorId;
  DateTime? dateAdded;
  int? collectedCode;
  int? closeCode;
  String? customerSign;
  String? customerName;
  String? customerBadge;
  String? customerMobile;
  bool? isSynced;
  bool? isUploaded;
  final certifications = IsarLinks<Certification>();

  WorkOrder({
    required this.woId,
    this.customerId,
    this.qrId,
    this.woDate,
    this.contactPLocation,
    this.workLocation,
    this.locationDetails,
    this.sequence,
    this.coordinatorId,
    this.dateAdded,
    this.collectedCode,
    this.closeCode,
    this.customerSign,
    this.customerName,
    this.customerBadge,
    this.customerMobile,
    this.isSynced,
    this.isUploaded,
  });
}
