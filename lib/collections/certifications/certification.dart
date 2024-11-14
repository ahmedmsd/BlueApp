import 'package:isar/isar.dart';
import 'package:test_workapp/collections/check_list_items/check_list_item.dart';
import 'package:test_workapp/collections/attached_photos/attached_photo.dart';
import 'package:test_workapp/collections/load_test_checklist_items/load_test_check_list_item.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';

part 'certification.g.dart';

@collection
class Certification {
  Id id = Isar.autoIncrement;

  String? certificationName;
  int? certificationNumber;

  @Backlink(to: "certifications")
  final workOrder = IsarLink<WorkOrder>();
  int woId;
  int testType;
  String? aramcoReportNo;
  String inspectionDate;
  int eqType;
  String equipmentName;
  int checklistId;

  final checkListItems = IsarLinks<CheckListItem>();

  String testResult;
  int cityId;
  String orgCode;
  String prevSticker;
  String prevIssuedBy;
  String eqId;
  String eqLocation;
  String eqCapacity;
  String eqSerial;
  String eqManf;
  String eqModel;
  int newSticker;
  String stickerExpireDate;
  int inspectorId;
  String? notes;
  String? correctiveAction;

  final attachedPhotos = IsarLinks<AttachedPhoto>();
  bool? isSynced;

  bool? isLoadTestAdded;
  final loadTestCheckListItems = IsarLinks<LoadTestCheckListItem>();
  String? testPerformedBy;
  String? procedureReferenceNo;
  String? refStandardForLoadTest;
  String? weightCalculationVerified;
  String? loadCellUsedToDetermineExactTestLoadWeight;

  String? weightOfLoadAppliedOne;
  String? spanOne;
  String? maxAllowedDeflectionOne;
  String? actualDeflectionOne;
  String? resultOne;

  String? weightOfLoadAppliedTwo;
  String? spanTwo;
  String? maxAllowedDeflectionTwo;
  String? actualDeflectionTwo;
  String? resultTwo;

  String? weightOfLoadAppliedThree;
  String? spanThree;
  String? maxAllowedDeflectionThree;
  String? actualDeflectionThree;
  String? resultThree;

  Certification({
    this.certificationName,
    this.certificationNumber,
    required this.woId,
    required this.testType,
    required this.equipmentName,
    this.aramcoReportNo,
    required this.inspectionDate,
    required this.eqType,
    required this.checklistId,
    required this.testResult,
    required this.cityId,
    required this.orgCode,
    required this.prevSticker,
    required this.prevIssuedBy,
    required this.eqId,
    required this.eqLocation,
    required this.eqCapacity,
    required this.eqSerial,
    required this.eqManf,
    required this.eqModel,
    required this.newSticker,
    required this.stickerExpireDate,
    required this.inspectorId,
    this.notes,
    this.correctiveAction,
    this.isSynced,
    this.isLoadTestAdded,
    this.testPerformedBy,
    this.procedureReferenceNo,
    this.refStandardForLoadTest,
    this.loadCellUsedToDetermineExactTestLoadWeight,
    this.weightOfLoadAppliedOne,
    this.spanOne,
    this.maxAllowedDeflectionOne,
    this.actualDeflectionOne,
    this.resultOne,
    this.weightOfLoadAppliedTwo,
    this.spanTwo,
    this.maxAllowedDeflectionTwo,
    this.actualDeflectionTwo,
    this.resultTwo,
    this.weightOfLoadAppliedThree,
    this.spanThree,
    this.maxAllowedDeflectionThree,
    this.actualDeflectionThree,
    this.resultThree,
  });
}
