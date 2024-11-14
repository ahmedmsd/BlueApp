import 'package:equatable/equatable.dart';

class CertificationEntity extends Equatable {
  final int? certId;
  final String? checklistId;
  final String? woId;
  final int? id;

  const CertificationEntity({
    this.certId,
    this.checklistId,
    this.woId,
    this.id,
  });

  factory CertificationEntity.fromJson(Map<String, dynamic> json) =>
      CertificationEntity(
        certId: json["cert_id"],
        checklistId: json["checklist_id"],
        woId: json["wo_id"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "cert_id": certId,
        "checklist_id": checklistId,
        "wo_id": woId,
        "id": id,
      };

  @override
  List<Object?> get props => [
        certId,
        checklistId,
        woId,
        id,
      ];
}
// class CertificationEntity extends Equatable {
//   final String woId;
//   final String inspectorId;
//   final String notes;
//   final String eqSerial;
//   final String testType;
//   final String correctiveAction;
//   final String eqLocation;
//   final String orgCode;
//   final String testResult;
//   final DateTime stickerExpireDate;
//   final String eqCapacity;
//   final String eqType;
//   final String eqId;
//   final String cityId;
//   final String prevSticker;
//   final String aramcoReportNo;
//   final String eqModel;
//   final DateTime inspectionDate;
//   final String newSticker;
//   final String eqManf;
//   final String prevIssuedBy;
//   final int testId;

//   const CertificationEntity({
//     required this.woId,
//     required this.inspectorId,
//     required this.notes,
//     required this.eqSerial,
//     required this.testType,
//     required this.correctiveAction,
//     required this.eqLocation,
//     required this.orgCode,
//     required this.testResult,
//     required this.stickerExpireDate,
//     required this.eqCapacity,
//     required this.eqType,
//     required this.eqId,
//     required this.cityId,
//     required this.prevSticker,
//     required this.aramcoReportNo,
//     required this.eqModel,
//     required this.inspectionDate,
//     required this.newSticker,
//     required this.eqManf,
//     required this.prevIssuedBy,
//     required this.testId,
//   });

//   factory CertificationEntity.fromJson(Map<String, dynamic> json) =>
//       CertificationEntity(
//         woId: json["wo_id"],
//         inspectorId: json["inspector_id"],
//         notes: json["notes"],
//         eqSerial: json["eq_serial"],
//         testType: json["test_type"],
//         correctiveAction: json["corrective_action"],
//         eqLocation: json["eq_location"],
//         orgCode: json["org_code"],
//         testResult: json["test_result"],
//         stickerExpireDate: DateTime.parse(json["sticker_expire_date"]),
//         eqCapacity: json["eq_capacity"],
//         eqType: json["eq_type"],
//         eqId: json["eq_id"],
//         cityId: json["city_id"],
//         prevSticker: json["prev_sticker"],
//         aramcoReportNo: json["aramco_report_no"],
//         eqModel: json["eq_model"],
//         inspectionDate: DateTime.parse(json["inspection_date"]),
//         newSticker: json["new_sticker"],
//         eqManf: json["eq_manf"],
//         prevIssuedBy: json["prev_issued_by"],
//         testId: json["test_id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "wo_id": woId,
//         "inspector_id": inspectorId,
//         "notes": notes,
//         "eq_serial": eqSerial,
//         "test_type": testType,
//         "corrective_action": correctiveAction,
//         "eq_location": eqLocation,
//         "org_code": orgCode,
//         "test_result": testResult,
//         "sticker_expire_date": stickerExpireDate.toIso8601String(),
//         "eq_capacity": eqCapacity,
//         "eq_type": eqType,
//         "eq_id": eqId,
//         "city_id": cityId,
//         "prev_sticker": prevSticker,
//         "aramco_report_no": aramcoReportNo,
//         "eq_model": eqModel,
//         "inspection_date": inspectionDate.toIso8601String(),
//         "new_sticker": newSticker,
//         "eq_manf": eqManf,
//         "prev_issued_by": prevIssuedBy,
//         "test_id": testId,
//       };

//   @override
//   List<Object?> get props => [
//         woId,
//         inspectorId,
//         notes,
//         eqSerial,
//         testType,
//         correctiveAction,
//         eqLocation,
//         orgCode,
//         testResult,
//         stickerExpireDate,
//         eqCapacity,
//         eqType,
//         eqId,
//         cityId,
//         prevSticker,
//         aramcoReportNo,
//         eqModel,
//         inspectionDate,
//         newSticker,
//         eqManf,
//         prevIssuedBy,
//         testId,
//       ];
// }
