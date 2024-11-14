part of 'certification_cubit.dart';

abstract class CertificationState extends Equatable {
  const CertificationState();

  @override
  List<Object> get props => [];
}

class CertificationInitial extends CertificationState {}

class ChangeCheckListCategoryState extends CertificationState {
  final int index;

  const ChangeCheckListCategoryState({required this.index});

  @override
  List<Object> get props => [index];
}

class ChangeCheckListItemIdState extends CertificationState {
  final int checkListItemId;

  const ChangeCheckListItemIdState({required this.checkListItemId});

  @override
  List<Object> get props => [checkListItemId];
}

class AddAttachedPhotoToListLoadingState extends CertificationState {}

class AddAttachedPhotoToListErrorState extends CertificationState {
  final dynamic errorMessage;
  const AddAttachedPhotoToListErrorState({required this.errorMessage});
}

class AddAttachedPhotoToListLoadedState extends CertificationState {}

class RemoveAttachedPhotoByIndexState extends CertificationState {
  final int index;

  const RemoveAttachedPhotoByIndexState({required this.index});

  @override
  List<Object> get props => [index];
}

class NextStepState extends CertificationState {
  final int index;

  const NextStepState({required this.index});

  @override
  List<Object> get props => [index];
}

class PreviousStepState extends CertificationState {
  final int index;

  const PreviousStepState({required this.index});

  @override
  List<Object> get props => [index];
}

//load test stepper
class LoadTestNextStepState extends CertificationState {
  final int index;

  const LoadTestNextStepState({required this.index});

  @override
  List<Object> get props => [index];
}

class LoadTestPreviousStepState extends CertificationState {
  final int index;

  const LoadTestPreviousStepState({required this.index});

  @override
  List<Object> get props => [index];
}

// create certification
class CreateCertificationLoadingState extends CertificationState {}

class CreateCertificationErrorState extends CertificationState {
  final dynamic errorMessage;
  const CreateCertificationErrorState({required this.errorMessage});
}

class CreateCertificationLoadedState extends CertificationState {
  final CertificationEntity certificationEntity;

  const CreateCertificationLoadedState({required this.certificationEntity});
  @override
  List<Object> get props => [certificationEntity];
}

// change test result value
class ChangeTestResultState extends CertificationState {
  final String testResultValue;

  const ChangeTestResultState({required this.testResultValue});

  @override
  List<Object> get props => [testResultValue];
}

// change city value

class ChangeCityState extends CertificationState {
  final City cityValue;

  const ChangeCityState({required this.cityValue});

  @override
  List<Object> get props => [cityValue];
}

// change city value

class ChangeInspectorState extends CertificationState {
  final UserDetails userDetails;

  const ChangeInspectorState({required this.userDetails});

  @override
  List<Object> get props => [userDetails];
}

// change sticker value

class ChangeStickerState extends CertificationState {
  final int stickerNo;

  const ChangeStickerState({required this.stickerNo});

  @override
  List<Object> get props => [stickerNo];
}

// create local certification

class CreateLocalCertificationLoadingState extends CertificationState {}

class CreateLocalCertificationLoadedState extends CertificationState {}

// update local certification

class UpdateLocalCertificationLoadingState extends CertificationState {}

class UpdateLocalCertificationLoadedState extends CertificationState {}

// view certification checklistCategories and items

class ChangeViewCertificationCategoryState extends CertificationState {
  final int index;

  const ChangeViewCertificationCategoryState({required this.index});

  @override
  List<Object> get props => [index];
}

class ChangeViewCertificationCheckListItemIdState extends CertificationState {
  final int checkListItemId;

  const ChangeViewCertificationCheckListItemIdState(
      {required this.checkListItemId});
  @override
  List<Object> get props => [checkListItemId];
}

// view certification stepper

class ViewCertificationNextStepState extends CertificationState {
  final int index;

  const ViewCertificationNextStepState({required this.index});

  @override
  List<Object> get props => [index];
}

class ViewCertificationPreviousStepState extends CertificationState {
  final int index;

  const ViewCertificationPreviousStepState({required this.index});

  @override
  List<Object> get props => [index];
}

// view load test stepper

class ViewLoadTestNextStepState extends CertificationState {
  final int index;

  const ViewLoadTestNextStepState({required this.index});

  @override
  List<Object> get props => [index];
}

class ViewLoadTestPreviousStepState extends CertificationState {
  final int index;

  const ViewLoadTestPreviousStepState({required this.index});

  @override
  List<Object> get props => [index];
}

// add load test to  certification

class AddLoadTestToCertificationLoadingState extends CertificationState {}

class AddLoadTestToCertificationLoadedState extends CertificationState {}
