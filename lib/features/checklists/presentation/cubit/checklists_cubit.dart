import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';
import 'package:test_workapp/features/checklists/domain/usecases/get_checklists_details_use_case.dart';
import 'package:test_workapp/features/checklists/domain/usecases/get_checklists_use_case.dart';

part 'checklists_state.dart';

class ChecklistsCubit extends Cubit<ChecklistsState> {
  final GetChecklistsUseCase getChecklistsUseCase;
  final GetChecklistsDetailsUseCase getChecklistsDetailsUseCase;
  ChecklistsCubit({
    required this.getChecklistsUseCase,
    required this.getChecklistsDetailsUseCase,
  }) : super(ChecklistsInitial());

  List<ChecklistEntity> checklistsList = [];

  Future<bool> getChecklistsFun() async {
    emit(GetChecklistsLoadingState());
    final response = await getChecklistsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetChecklistsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (checklists) {
      checklistsList = checklists;
      emit(GetChecklistsLoadedState(checklists: checklists));
      return true;
    });
  }

  List<ChecklistDetailsEntity> checklistsDetailsList = [];

  Future<bool> getChecklistsDetailsFun() async {
    emit(GetChecklistsDetailsLoadingState());
    final response = await getChecklistsDetailsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetChecklistsDetailsErrorState(
          errorMessage: failureToString(failure)));
      return false;
    }, (checklistsDetails) {
      checklistsDetailsList = checklistsDetails;
      emit(GetChecklistsDetailsLoadedState(
          checklistsDetails: checklistsDetails));
      return true;
    });
  }
}
