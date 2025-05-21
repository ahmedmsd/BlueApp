import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/check_list_items/check_list_item.dart';
import 'package:test_workapp/collections/attached_photos/attached_photo.dart';
import 'package:test_workapp/collections/cities/city.dart';
import 'package:test_workapp/collections/load_test_checklist_items/load_test_check_list_item.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/features/certification/domain/entities/certification_entity.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_details_entity.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_entity.dart';
import 'package:test_workapp/features/certification/domain/usecases/create_certification_use_case.dart';
import 'package:test_workapp/helpers/image_picker_helper.dart';
import 'package:test_workapp/isar_service.dart';

part 'certification_state.dart';

class CertificationCubit extends Cubit<CertificationState> {
  final CreateCertificationUseCase certificationUseCase;

  CertificationCubit({
    required this.certificationUseCase,
  }) : super(CertificationInitial());

  Future<CertificationEntity?> createRemoteCertificationFun({
    required int woId,
    required int testType,
    String? aramcoReportNo,
    required String inspectionDate,
    required int eqType,
    required List<CheckListItem> checklistDetails,
    required String testResult,
    required int cityId,
    required String orgCode,
    required String prevSticker,
    required String prevIssuedBy,
    required String eqId,
    required String eqLocation,
    required String eqCapacity,
    required String eqSerial,
    required String eqManf,
    required String eqModel,
    required int newSticker,
    required String stickerExpireDate,
    required int inspectorId,
    required String notes,
    required String correctiveAction,
    required int checklistId,
    required List<File> photos,
    List<LoadTestDetailsEntity>? loadTestDetails,
    LoadTestEntity? loadTest,
  }) async {
    emit(CreateCertificationLoadingState());
    final response = await certificationUseCase(CreateCertificationParams(
      woId: woId,
      testType: testType,
      aramcoReportNo: aramcoReportNo,
      inspectionDate: inspectionDate,
      eqType: eqType,
      checklistDetails: checklistDetails,
      testResult: testResult,
      cityId: cityId,
      orgCode: orgCode,
      prevSticker: prevSticker,
      prevIssuedBy: prevIssuedBy,
      eqId: eqId,
      eqLocation: eqLocation,
      eqCapacity: eqCapacity,
      eqSerial: eqSerial,
      eqManf: eqManf,
      eqModel: eqModel,
      newSticker: newSticker,
      stickerExpireDate: stickerExpireDate,
      inspectorId: inspectorId,
      notes: notes,
      correctiveAction: correctiveAction,
      checklistId: checklistId,
      photos: photos,
      loadTestDetails: loadTestDetails,
      loadTest: loadTest,
    ));
    return response.fold((failure) {
      emit(CreateCertificationErrorState(
          errorMessage: failureToString(failure)));
      return null;
    }, (certificationEntity) {
      emit(CreateCertificationLoadedState(
          certificationEntity: certificationEntity));
      return certificationEntity;
    });
  }

  //! Stepper (index , NextStepFun - PrevStepFun - resetCurrentStepIndex)
  int currentStepIndex = 0;
  void nextStepFun() {
    if (currentStepIndex < 3) {
      currentStepIndex++;
      emit(NextStepState(index: currentStepIndex));
    }
  }

  void prevStepFun() {
    if (currentStepIndex != 0) {
      currentStepIndex--;
      emit(PreviousStepState(index: currentStepIndex));
    }
  }

  void resetCurrentStepIndex() {
    currentStepIndex = 0;
  }

  //! Step one vars & setValuesFun & resetValuesFun
  String? certificationName;
  int? certificationNumber;
  WorkOrder? workOrder;
  // int? woId;
  int? testType;
  String? aramcoReportNo;
  String? inspectionDate;
  int? eqType;
  String? equipmentName;
  // equ aramcoCheckListId for filter checklist (categories items and subitems )
  int? eqAramcoChecklistId;
  void setInformationScreenValues({
    required String certificationName,
    required int certificationNumber,
    required WorkOrder workOrder,
    // required int woId,
    int? testType,
    String? aramcoReportNo,
    required String inspectionDate,
    required int eqType,
    required String equipmentName,
    required int eqAramcoChecklistId,
  }) {
    this.certificationName = certificationName;
    this.certificationNumber = certificationNumber;
    this.workOrder = workOrder;
    // this.woId = woId;
    this.testType = testType;
    this.aramcoReportNo = aramcoReportNo;
    this.inspectionDate = inspectionDate;
    this.eqType = eqType;
    this.equipmentName = equipmentName;
    this.eqAramcoChecklistId = eqAramcoChecklistId;
  }

  void resetInformationScreenValues() {
    certificationName = null;
    certificationNumber = null;
    workOrder = null;
    // woId = null;
    testType = null;
    aramcoReportNo = null;
    inspectionDate = null;
    eqType = null;
    equipmentName = null;
    eqAramcoChecklistId = null;
  }

  //! Step two vars & setValuesFun & resetValuesFun
  //! checklistItems
  List<CheckListItem> tempChecklistItems = [];
  //! checklists category index
  int checkListCategoryIndex = 0;
  void changeCheckListCategoryIndex(int index) {
    checkListCategoryIndex = index;
    emit(ChangeCheckListCategoryState(index: index));
  }

  //! Checklist category selected item id
  int checkListItemId = 0;
  void changeCheckListItemId(int index) {
    emit(CertificationInitial());
    checkListItemId = index;
    emit(ChangeCheckListItemIdState(checkListItemId: index));
  }

  void resetCheckListsScreenValues() {
    checkListCategoryIndex = 0;
    checkListItemId = 0;
    tempChecklistItems = [];
  }

  //! Step three vars  & setValuesFun & resetValuesFun
  City? dropdownCityValue;
  UserDetails? dropdownInspectorValue;
  //!
  String testResult = '1';
  int? cityId;
  String? orgCode;
  String? prevSticker;
  String? prevIssuedBy;
  String? eqId;
  String? eqLocation;
  String? eqCapacity;
  String? eqSerial;
  String? eqManf;
  String? eqModel;
  int? newSticker;
  String? stickerExpireDate;
  int? inspectorId;
  String? notes;
  String? correctiveAction;

  void changeTestResultValue(String testResultValue) {
    testResult = testResultValue;
    emit(ChangeTestResultState(testResultValue: testResultValue));
  }

  void changeCityValue(City cityValue) {
    dropdownCityValue = cityValue;
    emit(ChangeCityState(cityValue: cityValue));
  }

  void changeInspectorValue(UserDetails userDetailsValue) {
    dropdownInspectorValue = userDetailsValue;
    emit(ChangeInspectorState(userDetails: userDetailsValue));
  }

  void changeStickerValue(int newStickerValue) {
    newSticker = newStickerValue;
    emit(ChangeStickerState(stickerNo: newStickerValue));
  }

  void setInspectionDetailsScreenValues({
    required String testResult,
    required int cityId,
    required String orgCode,
    required String prevSticker,
    required String prevIssuedBy,
    required String eqId,
    required String eqLocation,
    required String eqCapacity,
    required String eqSerial,
    required String eqManf,
    required String eqModel,
    required int newSticker,
    required String stickerExpireDate,
    required int inspectorId,
    required String notes,
    required String correctiveAction,
  }) {
    this.testResult = testResult;
    this.cityId = cityId;
    this.orgCode = orgCode;
    this.prevSticker = prevSticker;
    this.prevIssuedBy = prevIssuedBy;
    this.eqId = eqId;
    this.eqLocation = eqLocation;
    this.eqCapacity = eqCapacity;
    this.eqSerial = eqSerial;
    this.eqManf = eqManf;
    this.eqModel = eqModel;
    this.newSticker = newSticker;
    this.stickerExpireDate = stickerExpireDate;
    this.inspectorId = inspectorId;
    this.notes = notes;
    this.correctiveAction = correctiveAction;
  }

  void resetInspectionDetailsScreenValues() {
    dropdownCityValue = null;
    dropdownInspectorValue = null;
    testResult = '1';
    cityId = null;
    orgCode = null;
    prevSticker = null;
    prevIssuedBy = null;
    eqId = null;
    eqLocation = null;
    eqCapacity = null;
    eqSerial = null;
    eqManf = null;
    eqModel = null;
    newSticker = null;
    stickerExpireDate = null;
    inspectorId = null;
    notes = null;
    correctiveAction = null;
  }

  //! Step four vars & setValuesFun & resetValuesFun
  List<File> attachedPhotosList = [];
  List<AttachedPhoto> tempDeletedAttachedPhotos = [];

  Future<void> addAttachedPhotoToListFun({
    required ImageSource imageSource,
  }) async {
    emit(AddAttachedPhotoToListLoadingState());
    try {
      await ImagePickerHelper.pickImage(
              imageSource: imageSource, imageQuality: 30,)
          .then((value) {
        if (value != null) {
          attachedPhotosList.add(value);
        }
      });
      emit(AddAttachedPhotoToListLoadedState());
    } catch (e) {
      emit(AddAttachedPhotoToListErrorState(errorMessage: e));
    }
  }

  void removeAttachedPhotoByIndexFun(index) {
    attachedPhotosList.removeAt(index);
    emit(RemoveAttachedPhotoByIndexState(index: index));
  }

  void resetAttachedPhotosScreenValues() {
    attachedPhotosList = [];
    tempDeletedAttachedPhotos = [];
  }

  void resetTempDeletedAttachedPhotosList() {
    tempDeletedAttachedPhotos = [];
  }

  // Create certification
  Future<Certification?> createLocalCertificationFun({
    required IsarService isarService,
  }) async {
    Certification? certification;
    if (workOrder != null) {
      certification = await isarService.addCertification(Certification(
        certificationName: certificationName,
        certificationNumber: certificationNumber,
        woId: workOrder!.woId,
        testType: testType!,
        aramcoReportNo: aramcoReportNo,
        inspectionDate: inspectionDate!,
        eqType: eqType!,
        equipmentName: equipmentName!,
        checklistId: eqAramcoChecklistId!,
        testResult: testResult,
        cityId: cityId!,
        orgCode: orgCode!,
        prevSticker: prevSticker!,
        prevIssuedBy: prevIssuedBy!,
        eqId: eqId!,
        eqLocation: eqLocation!,
        eqCapacity: eqCapacity!,
        eqSerial: eqSerial!,
        eqManf: eqManf!,
        eqModel: eqModel!,
        newSticker: newSticker!,
        stickerExpireDate: stickerExpireDate!,
        inspectorId: inspectorId!,
        notes: notes,
        correctiveAction: correctiveAction,
        isSynced: false,
      ));
    }

    return certification;
  }

  Future<List<CheckListItem>> storeChecklistItemsFun({
    required IsarService isarService,
    required int certificationId,
  }) async {
    List<CheckListItem> checklistItems = [];
    for (CheckListItem checkListItem in tempChecklistItems) {
      checkListItem.certificationId = certificationId;
      CheckListItem? checklistItem =
          await isarService.addCheckListItem(checkListItem);
      if (checklistItem != null) {
        checklistItems.add(checklistItem);
      }
    }
    return checklistItems;
  }

  Future<List<AttachedPhoto>> storeAttachedPhotosFun({
    required IsarService isarService,
    required int certificationId,
  }) async {
    List<AttachedPhoto> attachedPhotos = [];
    for (File imageFile in attachedPhotosList) {
      List<int> imageBytes = await imageFile.readAsBytes();

      AttachedPhoto? imageEntity = await isarService.addAttachedPhoto(
        imageBytes,
        certificationId,
      );
      if (imageEntity != null) {
        attachedPhotos.add(imageEntity);
      }
    }
    return attachedPhotos;
  }

  Future<void> createCertFun({
    required IsarService isarService,
  }) async {
    emit(CreateLocalCertificationLoadingState());
    Certification? certification =
        await createLocalCertificationFun(isarService: isarService);

    if (certification != null) {
      if (workOrder != null) {
        if (workOrder!.certifications.isEmpty) {
          workOrder!.sequence = workOrder!.sequence! + 1;
        } else {
          workOrder!.sequence = workOrder!.certifications.length + 1;
        }

        workOrder!.certifications.add(certification);
        await isarService.addWorkOrder(workOrder!);
      }

      List<CheckListItem> checklistItems = await storeChecklistItemsFun(
        isarService: isarService,
        certificationId: certification.id,
      );
      certification.checkListItems.addAll(checklistItems);
      List<AttachedPhoto> attachedPhotos = await storeAttachedPhotosFun(
        isarService: isarService,
        certificationId: certification.id,
      );
      certification.attachedPhotos.addAll(attachedPhotos);
      await isarService.addCertification(certification);
    }
    emit(CreateLocalCertificationLoadedState());
  }

  Future<void> updateCertFun({
    required IsarService isarService,
    required Certification oldCertification,
  }) async {
    emit(UpdateLocalCertificationLoadingState());
    Certification? certification;
    if (workOrder != null) {
      certification = await isarService.addCertification(
        oldCertification
          ..certificationName = oldCertification.certificationName
          ..certificationNumber = oldCertification.certificationNumber
          ..woId = workOrder!.woId
          ..testType = testType!
          ..aramcoReportNo = aramcoReportNo
          ..inspectionDate = inspectionDate!
          ..eqType = eqType!
          ..equipmentName = equipmentName!
          ..checklistId = eqAramcoChecklistId!
          ..testResult = testResult
          ..cityId = cityId!
          ..orgCode = orgCode!
          ..prevSticker = prevSticker!
          ..prevIssuedBy = prevIssuedBy!
          ..eqId = eqId!
          ..eqLocation = eqLocation!
          ..eqCapacity = eqCapacity!
          ..eqSerial = eqSerial!
          ..eqManf = eqManf!
          ..eqModel = eqModel!
          ..newSticker = newSticker!
          ..stickerExpireDate = stickerExpireDate!
          ..inspectorId = inspectorId!
          ..notes = notes
          ..correctiveAction = correctiveAction
          ..isSynced = false,
      );
    }

    if (certification != null) {
      for (AttachedPhoto attachedPhoto in tempDeletedAttachedPhotos) {
        await isarService.deleteAttachedPhoto(attachedPhoto.id);
      }
      await isarService
          .deleteAllChecklistsDetailsByCertificationId(certification.id);

      List<CheckListItem> checklistItems = await storeChecklistItemsFun(
        isarService: isarService,
        certificationId: certification.id,
      );
      certification.checkListItems.addAll(checklistItems);
      List<AttachedPhoto> attachedPhotos = await storeAttachedPhotosFun(
        isarService: isarService,
        certificationId: certification.id,
      );
      certification.attachedPhotos.addAll(attachedPhotos);
      await isarService.addCertification(certification);
    }
    emit(UpdateLocalCertificationLoadedState());
  }

  //! Reset certification values fun
  void resetCertificationCubitFun() {
    resetCurrentStepIndex();
    // Step one vars
    resetInformationScreenValues();
    // Step two vars
    resetCheckListsScreenValues();
    // Step three vars
    resetInspectionDetailsScreenValues();
    // Step four vars
    resetAttachedPhotosScreenValues();
  }

  //! view certification
  //! checklists category index
  int viewCertificationCategoryIndex = 0;
  void changeViewCertificationCategoryIndex(int index) {
    viewCertificationCategoryIndex = index;
    emit(ChangeViewCertificationCategoryState(index: index));
  }

  //! Checklist category selected item id
  int viewCertificationCheckListItemId = 0;
  void changeViewCertificationCheckListItemId(int index) {
    viewCertificationCheckListItemId = index;
    emit(ChangeViewCertificationCheckListItemIdState(checkListItemId: index));
  }

  void resetViewCertificationCheckListsValues() {
    viewCertificationCategoryIndex = 0;
    viewCertificationCheckListItemId = 0;
  }

  //!View Certification Stepper (index , NextStepFun - PrevStepFun - resetCurrentStepIndex)
  int viewCertificationCurrentStepIndex = 0;
  void viewCertificationNextStepFun() {
    if (viewCertificationCurrentStepIndex < 3) {
      viewCertificationCurrentStepIndex++;
      emit(ViewCertificationNextStepState(
          index: viewCertificationCurrentStepIndex));
    }
  }

  void viewCertificationPrevStepFun() {
    if (viewCertificationCurrentStepIndex != 0) {
      viewCertificationCurrentStepIndex--;
      emit(ViewCertificationPreviousStepState(
          index: viewCertificationCurrentStepIndex));
    }
  }

  void resetViewCertificationCurrentStepIndex() {
    viewCertificationCurrentStepIndex = 0;
  }

  //!----------------------------------------- Load Test -------------------------------------//

  //! load test stepper (index , nextstepfun - prevstepfun - reset curent stepindex)
  int loadTestCurrentStepIndex = 0;
  void loadTestNextStepfun() {
    if (loadTestCurrentStepIndex < 1) {
      loadTestCurrentStepIndex++;
      emit(LoadTestNextStepState(index: loadTestCurrentStepIndex));
    }
  }

  void loadTestPrevStepFun() {
    if (loadTestCurrentStepIndex != 0) {
      loadTestCurrentStepIndex--;
      emit(LoadTestPreviousStepState(index: loadTestCurrentStepIndex));
    }
  }

  void resetLoadTestCurrentStepIndex() {
    loadTestCurrentStepIndex = 0;
  }

  //! load test checklists
  List<LoadTestCheckListItem> tempLoadTestChecklistItems = [];

  Future<List<LoadTestCheckListItem>> storeLoadTestChecklistItemsFun({
    required IsarService isarService,
    required int certificationId,
  }) async {
    List<LoadTestCheckListItem> loadTestCheckListItems = [];
    for (LoadTestCheckListItem loadTestCheckListItem
        in tempLoadTestChecklistItems) {
      loadTestCheckListItem.certificationId = certificationId;
      LoadTestCheckListItem? loadTestChecklistItem =
          await isarService.addLoadTestCheckListItem(loadTestCheckListItem);
      if (loadTestChecklistItem != null) {
        loadTestCheckListItems.add(loadTestChecklistItem);
      }
    }
    return loadTestCheckListItems;
  }

  void resetLoadTestCheckListsScreenValues() {
    tempLoadTestChecklistItems = [];
  }

  //! Load test  details
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

  void setLoadTestInspectionDetailsScreenValues({
    String? testPerformedBy,
    String? procedureReferenceNo,
    String? refStandardForLoadTest,
    String? weightCalculationVerified,
    String? loadCellUsedToDetermineExactTestLoadWeight,
    String? weightOfLoadAppliedOne,
    String? spanOne,
    String? maxAllowedDeflectionOne,
    String? actualDeflectionOne,
    String? resultOne,
    String? weightOfLoadAppliedTwo,
    String? spanTwo,
    String? maxAllowedDeflectionTwo,
    String? actualDeflectionTwo,
    String? resultTwo,
    String? weightOfLoadAppliedThree,
    String? spanThree,
    String? maxAllowedDeflectionThree,
    String? actualDeflectionThree,
    String? resultThree,
  }) {
    this.testPerformedBy = testPerformedBy;
    this.procedureReferenceNo = procedureReferenceNo;
    this.refStandardForLoadTest = refStandardForLoadTest;
    this.weightCalculationVerified = weightCalculationVerified;
    this.loadCellUsedToDetermineExactTestLoadWeight =
        loadCellUsedToDetermineExactTestLoadWeight;
    this.weightOfLoadAppliedOne = weightOfLoadAppliedOne;
    this.spanOne = spanOne;
    this.maxAllowedDeflectionOne = maxAllowedDeflectionOne;
    this.actualDeflectionOne = actualDeflectionOne;
    this.resultOne = resultOne;
    this.weightOfLoadAppliedTwo = weightOfLoadAppliedTwo;
    this.spanTwo = spanTwo;
    this.maxAllowedDeflectionTwo = maxAllowedDeflectionTwo;
    this.actualDeflectionTwo = actualDeflectionTwo;
    this.resultTwo = resultTwo;
    this.weightOfLoadAppliedThree = weightOfLoadAppliedThree;
    this.spanThree = spanThree;
    this.maxAllowedDeflectionThree = maxAllowedDeflectionThree;
    this.actualDeflectionThree = actualDeflectionThree;
    this.resultThree = resultThree;
  }

  void resetLoadTestInspectionDetailsScreenValues() {
    testPerformedBy = null;
    procedureReferenceNo = null;
    refStandardForLoadTest = null;
    weightCalculationVerified = null;
    loadCellUsedToDetermineExactTestLoadWeight = null;
    weightOfLoadAppliedOne = null;
    spanOne = null;
    maxAllowedDeflectionOne = null;
    actualDeflectionOne = null;
    resultOne = null;
    weightOfLoadAppliedTwo = null;
    spanTwo = null;
    maxAllowedDeflectionTwo = null;
    actualDeflectionTwo = null;
    resultTwo = null;
    weightOfLoadAppliedThree = null;
    spanThree = null;
    maxAllowedDeflectionThree = null;
    actualDeflectionThree = null;
    resultThree = null;
  }

  //! Reset load test for certification values fun
  void resetLoadTestForCertificationFun() {
    resetLoadTestCurrentStepIndex();

    // Step one vars
    resetLoadTestCheckListsScreenValues();

    // Step two vars
    resetLoadTestInspectionDetailsScreenValues();
  }

  //!View LoadTest Stepper (index , NextStepFun - PrevStepFun - resetCurrentStepIndex)
  int viewLoadTestCurrentStepIndex = 0;
  void viewLoadTestNextStepFun() {
    if (viewLoadTestCurrentStepIndex < 1) {
      emit(CertificationInitial());
      viewLoadTestCurrentStepIndex++;
      emit(ViewLoadTestNextStepState(index: viewLoadTestCurrentStepIndex));
    }
  }

  void viewLoadTestPrevStepFun() {
    if (viewLoadTestCurrentStepIndex != 0) {
      emit(CertificationInitial());
      viewLoadTestCurrentStepIndex--;
      emit(ViewLoadTestPreviousStepState(index: viewLoadTestCurrentStepIndex));
    }
  }

  void resetViewLoadTestCurrentStepIndex() {
    viewLoadTestCurrentStepIndex = 0;
  }

  //! add load test to certification
  Future<void> addLoadTestToCertificationFun({
    required IsarService isarService,
    required Certification certification,
    required String testPreformedBy,
    required String procedureReferenceNo,
    required String refStandardForLoadTest,
    required String weightCalculationVerified,
    required String loadCellUsedToDetermineExactTestLoadWeight,
    required String weightOfLoadAppliedOne,
    required String spanOne,
    required String maxAllowedDeflectionOne,
    required String actualDeflectionOne,
    required String resultOne,
    String? weightOfLoadAppliedTwo,
    String? spanTwo,
    String? maxAllowedDeflectionTwo,
    String? actualDeflectionTwo,
    String? resultTwo,
    String? weightOfLoadAppliedThree,
    String? spanThree,
    String? maxAllowedDeflectionThree,
    String? actualDeflectionThree,
    String? resultThree,
  }) async {
    emit(AddLoadTestToCertificationLoadingState());
    certification
      ..testPerformedBy = testPreformedBy
      ..procedureReferenceNo = procedureReferenceNo
      ..refStandardForLoadTest = refStandardForLoadTest
      ..weightCalculationVerified = weightCalculationVerified
      ..loadCellUsedToDetermineExactTestLoadWeight =
          loadCellUsedToDetermineExactTestLoadWeight
      ..weightOfLoadAppliedOne = weightOfLoadAppliedOne
      ..spanOne = spanOne
      ..maxAllowedDeflectionOne = maxAllowedDeflectionOne
      ..actualDeflectionOne = actualDeflectionOne
      ..resultOne = resultOne
      ..weightOfLoadAppliedTwo = weightOfLoadAppliedTwo
      ..spanTwo = spanTwo
      ..maxAllowedDeflectionTwo = maxAllowedDeflectionTwo
      ..actualDeflectionTwo = actualDeflectionTwo
      ..resultTwo = resultTwo
      ..weightOfLoadAppliedThree = weightOfLoadAppliedThree
      ..spanThree = spanThree
      ..maxAllowedDeflectionThree = maxAllowedDeflectionThree
      ..actualDeflectionThree = actualDeflectionThree
      ..resultThree = resultThree
      ..isLoadTestAdded = true;

    await isarService
        .deleteAllLoadTestChecklistsDetailsByCertificationId(certification.id);

    List<LoadTestCheckListItem> loadTestChecklistItems =
        await storeLoadTestChecklistItemsFun(
      isarService: isarService,
      certificationId: certification.id,
    );
    certification.loadTestCheckListItems.addAll(loadTestChecklistItems);
    await isarService.addCertification(certification);

    emit(AddLoadTestToCertificationLoadedState());
  }
}
