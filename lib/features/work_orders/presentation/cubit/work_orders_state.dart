part of 'work_orders_cubit.dart';

abstract class WorkOrdersState extends Equatable {
  const WorkOrdersState();

  @override
  List<Object> get props => [];
}

class WorkOrdersInitial extends WorkOrdersState {}

// get workOrders
class GetWorkOrdersLoadingState extends WorkOrdersState {}

class GetWorkOrdersErrorState extends WorkOrdersState {
  final dynamic errorMessage;
  const GetWorkOrdersErrorState({required this.errorMessage});
}

class GetWorkOrdersLoadedState extends WorkOrdersState {
  final List<WorkOrderEntity> workOrders;

  const GetWorkOrdersLoadedState({required this.workOrders});
  @override
  List<Object> get props => [workOrders];
}

// get workOrders assigned
class GetWorkOrdersAssignedLoadingState extends WorkOrdersState {}

class GetWorkOrdersAssignedErrorState extends WorkOrdersState {
  final dynamic errorMessage;
  const GetWorkOrdersAssignedErrorState({required this.errorMessage});
}

class GetWorkOrdersAssignedLoadedState extends WorkOrdersState {
  final List<WorkOrderAssignedEntity> workOrdersAssigned;

  const GetWorkOrdersAssignedLoadedState({required this.workOrdersAssigned});
  @override
  List<Object> get props => [workOrdersAssigned];
}

// create workOrder
class CreateWorkOrderLoadingState extends WorkOrdersState {}

class CreateWorkOrderErrorState extends WorkOrdersState {
  final dynamic errorMessage;
  const CreateWorkOrderErrorState({required this.errorMessage});
}

class CreateWorkOrderLoadedState extends WorkOrdersState {
  final WorkOrderEntity workOrder;

  const CreateWorkOrderLoadedState({required this.workOrder});
  @override
  List<Object> get props => [workOrder];
}

// update workOrder
class UpdateWorkOrderLoadingState extends WorkOrdersState {}

class UpdateWorkOrderErrorState extends WorkOrdersState {
  final dynamic errorMessage;
  const UpdateWorkOrderErrorState({required this.errorMessage});
}

class UpdateWorkOrderLoadedState extends WorkOrdersState {
  final WorkOrderEntity workOrderEntity;

  const UpdateWorkOrderLoadedState({required this.workOrderEntity});
  @override
  List<Object> get props => [workOrderEntity];
}
