import 'package:equatable/equatable.dart';

class WorkOrderEntity extends Equatable {
  final int woId;
  final int customerId;
  final int qrId;
  final DateTime woDate;
  final String contactPLocation;
  final int workLocation;
  final String? locationDetails;
  final int sequence;
  final int coordinatorId;
  final DateTime? dateAdded;
  final int? collectedCode;
  final int? closeCode;
  final String? customerName;
  final String? customerBadge;
  final String? customerMobile;
  final String? customerSign;

  const WorkOrderEntity({
    required this.woId,
    required this.customerId,
    required this.qrId,
    required this.woDate,
    required this.contactPLocation,
    required this.workLocation,
    required this.locationDetails,
    required this.sequence,
    required this.coordinatorId,
    required this.dateAdded,
    required this.collectedCode,
    required this.closeCode,
    required this.customerName,
    required this.customerBadge,
    required this.customerMobile,
    required this.customerSign,
  });

  factory WorkOrderEntity.fromJson(Map<String, dynamic> json) =>
      WorkOrderEntity(
        woId: json["wo_id"],
        customerId: json["customer_id"],
        qrId: json["qr_id"],
        woDate: DateTime.parse(json["wo_date"]),
        contactPLocation: json["contact_p_location"],
        workLocation: json["work_location"],
        locationDetails: json["location_details"],
        sequence: json["sequence"],
        coordinatorId: json["coordinator_id"],
        dateAdded: json["date_added"] == null
            ? null
            : DateTime.parse(json["date_added"]),
        collectedCode: json["collected_code"],
        closeCode: json["close_code"],
        customerName: json["customer_name"],
        customerBadge: json["customer_badge"],
        customerMobile: json["customer_mobile"],
        customerSign: json["customer_sign"],
      );

  Map<String, dynamic> toJson() => {
        "wo_id": woId,
        "customer_id": customerId,
        "qr_id": qrId,
        "wo_date": woDate.toIso8601String(),
        "contact_p_location": contactPLocation,
        "work_location": workLocation,
        "location_details": locationDetails,
        "sequence": sequence,
        "coordinator_id": coordinatorId,
        "date_added": dateAdded?.toIso8601String(),
        "collected_code": collectedCode,
        "close_code": closeCode,
        "customer_name": customerName,
        "customer_badge": customerBadge,
        "customer_mobile": customerMobile,
        "customer_sign": customerSign,
      };

  @override
  List<Object?> get props => [
        woId,
        customerId,
        qrId,
        woDate,
        contactPLocation,
        workLocation,
        locationDetails,
        sequence,
        coordinatorId,
        dateAdded,
        collectedCode,
        closeCode,
        customerSign,
        customerName,
        customerBadge,
        customerMobile,
      ];
}
