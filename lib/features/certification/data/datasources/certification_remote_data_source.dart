import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/features/certification/domain/entities/certification_entity.dart';
import 'package:test_workapp/features/certification/domain/usecases/create_certification_use_case.dart';
import 'package:http_parser/http_parser.dart' show MediaType;

abstract class CertificationRemoteDataSource {
  Future<CertificationEntity> createCertification(
      {required CreateCertificationParams createCertificationParams});
}

class CertificationRemoteDataSourceImpl
    implements CertificationRemoteDataSource {
  final ApiConsumer apiConsumer;

  CertificationRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<CertificationEntity> createCertification({
    required CreateCertificationParams createCertificationParams,
  }) async {
    List<MultipartFile> photoFiles = [];

    for (var photo in createCertificationParams.photos) {
      final file = await MultipartFile.fromFile(
        photo.path,
        filename: photo.path.split('/').last,
        contentType: MediaType('image', 'png'),
      );
      photoFiles.add(file);
    }

    // log(createCertificationParams.loadTestDetails!
    //     .map((loadTestDetails) => loadTestDetails.toJson())
    //     .toList()
    //     .toString());
    // log(createCertificationParams.checklistDetails
    //     .map((checklistitem) => checklistitem.toJson())
    //     .where((element) => element['checklist_id'] != 168)
    //     .toList()
    //     .toString());
    // log(createCertificationParams.checklistDetails
    //     .map((checklistitem) => checklistitem.toJson())
    //     .where((element) => element['checklist_id'] != 168)
    //     .toList()
    //     .length
    //     .toString());
    // log(createCertificationParams.checklistDetails
    //     .map((checklistitem) => checklistitem.toJson())
    //     .where((element) => element['checklist_id'] == 168)
    //     .toList()
    //     .toString());
    // log(createCertificationParams.checklistDetails
    //     .map((checklistitem) => checklistitem.toJson())
    //     .where((element) => element['checklist_id'] == 168)
    //     .toList()
    //     .length
    //     .toString());

    final response = await apiConsumer.post(
      Endpoints.certificationsUrl,
      isFormData: true,
      body: {
        'wo_id': createCertificationParams.woId,
        'test_type': createCertificationParams.testType,
        'aramco_report_no': createCertificationParams.aramcoReportNo,
        'inspection_date': createCertificationParams.inspectionDate,
        'eq_type': createCertificationParams.eqType,
        'checklist_details': createCertificationParams.checklistDetails
            .map((checklistitem) => checklistitem.toJson())
            .where((element) => element['checklist_id'] != 168)
            .toList(),
        'test_result': createCertificationParams.testResult,
        'city_id': createCertificationParams.cityId,
        'org_code': createCertificationParams.orgCode,
        'prev_sticker': createCertificationParams.prevSticker,
        'prev_issued_by': createCertificationParams.prevIssuedBy,
        'eq_id': createCertificationParams.eqId,
        'eq_location': createCertificationParams.eqLocation,
        'eq_capacity': createCertificationParams.eqCapacity,
        'eq_serial': createCertificationParams.eqSerial,
        'eq_manf': createCertificationParams.eqManf,
        'eq_model': createCertificationParams.eqModel,
        'new_sticker': createCertificationParams.newSticker,
        'sticker_expire_date': createCertificationParams.stickerExpireDate,
        'inspector_id': createCertificationParams.inspectorId,
        'notes': createCertificationParams.notes,
        'corrective_action': createCertificationParams.correctiveAction,
        'checklist_id': createCertificationParams.checklistId,
        'photos': photoFiles,
        'load_checklist_id':
            createCertificationParams.loadTestDetails != null ? "168" : null,
        'load_checklist_details':
            createCertificationParams.loadTestDetails != null
                ? createCertificationParams.checklistDetails
                    .map((checklistitem) => checklistitem.toJson())
                    .where((element) => element['checklist_id'] == 168)
                    .toList()
                : null,
        'load_test_details': createCertificationParams.loadTestDetails != null
            ? createCertificationParams.loadTestDetails!
                .map((loadTestDetails) => loadTestDetails.toJson())
                .toList()
            : null,
        'load_test': createCertificationParams.loadTest != null
            ? {
                "test_by": createCertificationParams.loadTest!.testBy,
                "procedure_no": createCertificationParams.loadTest!.procedureNo,
                "ref_standard": createCertificationParams.loadTest!.refStandard,
                "weight_calculation":
                    createCertificationParams.loadTest!.weightCalculation,
                "load_cell_used":
                    createCertificationParams.loadTest!.loadCellUsed,
              }
            : null
      },
    );

    return CertificationEntity.fromJson(response['data']);
  }
}
