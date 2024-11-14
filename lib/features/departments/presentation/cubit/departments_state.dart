part of 'departments_cubit.dart';

abstract class DepartmentsState extends Equatable {
  const DepartmentsState();

  @override
  List<Object> get props => [];
}

class DepartmentsInitial extends DepartmentsState {}

// get departments
class GetDepartmentsLoadingState extends DepartmentsState {}

class GetDepartmentsErrorState extends DepartmentsState {
  final dynamic errorMessage;
  const GetDepartmentsErrorState({required this.errorMessage});
}

class GetDepartmentsLoadedState extends DepartmentsState {
  final List<DepartmentEntity> departments;

  const GetDepartmentsLoadedState({required this.departments});
  @override
  List<Object> get props => [departments];
}
