import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';
import 'package:test_workapp/features/departments/domain/usecases/get_departments_use_case.dart';

part 'departments_state.dart';

class DepartmentsCubit extends Cubit<DepartmentsState> {
  final GetDepartmentsUseCase getDepartmentsUseCase;
  DepartmentsCubit({
    required this.getDepartmentsUseCase,
  }) : super(DepartmentsInitial());

  List<DepartmentEntity> departmentsList = [];

  Future<bool> getDepartmentsFun() async {
    emit(GetDepartmentsLoadingState());
    final response = await getDepartmentsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetDepartmentsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (departments) {
      departmentsList = departments;
      emit(GetDepartmentsLoadedState(departments: departments));
      return true;
    });
  }
}
