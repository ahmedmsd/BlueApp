part of 'checklists_cubit.dart';

abstract class ChecklistsState extends Equatable {
  const ChecklistsState();

  @override
  List<Object> get props => [];
}

class ChecklistsInitial extends ChecklistsState {}

// get checklists
class GetChecklistsLoadingState extends ChecklistsState {}

class GetChecklistsErrorState extends ChecklistsState {
  final dynamic errorMessage;
  const GetChecklistsErrorState({required this.errorMessage});
}

class GetChecklistsLoadedState extends ChecklistsState {
  final List<ChecklistEntity> checklists;

  const GetChecklistsLoadedState({required this.checklists});
  @override
  List<Object> get props => [checklists];
}

// get checklists details
class GetChecklistsDetailsLoadingState extends ChecklistsState {}

class GetChecklistsDetailsErrorState extends ChecklistsState {
  final dynamic errorMessage;
  const GetChecklistsDetailsErrorState({required this.errorMessage});
}

class GetChecklistsDetailsLoadedState extends ChecklistsState {
  final List<ChecklistDetailsEntity> checklistsDetails;

  const GetChecklistsDetailsLoadedState({required this.checklistsDetails});
  @override
  List<Object> get props => [checklistsDetails];
}
