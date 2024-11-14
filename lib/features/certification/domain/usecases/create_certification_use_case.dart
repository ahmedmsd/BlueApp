import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/collections/check_list_items/check_list_item.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/certification/domain/entities/certification_entity.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_details_entity.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_entity.dart';
import 'package:test_workapp/features/certification/domain/repositories/certification_repository.dart';

class CreateCertificationUseCase
    implements UseCase<CertificationEntity, CreateCertificationParams> {
  final CertificationRepository certificationRepository;

  CreateCertificationUseCase({required this.certificationRepository});

  @override
  Future<Either<Failure, CertificationEntity>> call(
      CreateCertificationParams createCertificationParams) async {
    return await certificationRepository.createCertification(
        certificationParams: createCertificationParams);
  }
}

class CreateCertificationParams extends Equatable {
  final int woId;
  final int testType;
  final String? aramcoReportNo;
  final String inspectionDate;
  final int eqType;
  final List<CheckListItem> checklistDetails;
  final String testResult;
  final int cityId;
  final String orgCode;
  final String prevSticker;
  final String prevIssuedBy;
  final String eqId;
  final String eqLocation;
  final String eqCapacity;
  final String eqSerial;
  final String eqManf;
  final String eqModel;
  final int newSticker;
  final String stickerExpireDate;
  final int inspectorId;
  final String notes;
  final String correctiveAction;
  final int checklistId;
  final List<File> photos;
  final List<LoadTestDetailsEntity>? loadTestDetails;
  final LoadTestEntity? loadTest;

  const CreateCertificationParams({
    required this.woId,
    required this.testType,
    this.aramcoReportNo,
    required this.inspectionDate,
    required this.eqType,
    required this.checklistDetails,
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
    required this.notes,
    required this.correctiveAction,
    required this.checklistId,
    required this.photos,
    this.loadTestDetails,
    this.loadTest,
  });

  @override
  List<Object?> get props => [
        woId,
        testType,
        aramcoReportNo,
        inspectionDate,
        eqType,
        checklistDetails,
        testResult,
        cityId,
        orgCode,
        prevSticker,
        prevIssuedBy,
        eqId,
        eqLocation,
        eqCapacity,
        eqSerial,
        eqManf,
        eqModel,
        newSticker,
        stickerExpireDate,
        inspectorId,
        notes,
        correctiveAction,
        checklistId,
        photos,
        loadTestDetails,
        loadTest,
      ];
}
