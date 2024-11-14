import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/create_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/get_work_orders_assigned_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/get_work_orders_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/update_work_order_use_case.dart';

part 'work_orders_state.dart';

class WorkOrdersCubit extends Cubit<WorkOrdersState> {
  final GetWorkOrdersUseCase getWorkOrdersUseCase;
  final GetWorkOrdersAssignedUseCase getWorkOrdersAssignedUseCase;
  final CreateWorkOrderUseCase createWorkOrderUseCase;
  final UpdateWorkOrderUseCase updateWorkOrderUseCase;

  WorkOrdersCubit({
    required this.getWorkOrdersUseCase,
    required this.getWorkOrdersAssignedUseCase,
    required this.createWorkOrderUseCase,
    required this.updateWorkOrderUseCase,
  }) : super(WorkOrdersInitial());

  List<WorkOrderEntity> workOrdersList = [];

  Future<bool> getWorkOrdersFun() async {
    emit(GetWorkOrdersLoadingState());
    final response = await getWorkOrdersUseCase(NoParams());
    return response.fold((failure) {
      emit(GetWorkOrdersErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (workOrders) {
      workOrdersList = workOrders;
      emit(GetWorkOrdersLoadedState(workOrders: workOrders));
      return true;
    });
  }

  List<WorkOrderAssignedEntity> workOrdersAssignedList = [];

  Future<bool> getWorkOrdersAssignedFun() async {
    emit(GetWorkOrdersAssignedLoadingState());
    final response = await getWorkOrdersAssignedUseCase(NoParams());
    return response.fold((failure) {
      emit(GetWorkOrdersAssignedErrorState(
          errorMessage: failureToString(failure)));
      return false;
    }, (workOrdersAssigned) {
      workOrdersAssignedList = workOrdersAssigned;
      emit(GetWorkOrdersAssignedLoadedState(
          workOrdersAssigned: workOrdersAssigned));
      return true;
    });
  }

  // Future<WorkOrderEntity?> createWorkOrdersFun({
  //   required int woNumber,
  //   String? customerName,
  //   required int customerId,
  // }) async {
  //   emit(CreateWorkOrderLoadingState());
  //   final response = await createWorkOrderUseCase(CreateWorkOrderParams(
  //     woNumber: woNumber,
  //     customerName: customerName,
  //     customerId: customerId,
  //   ));
  //   return response.fold((failure) {
  //     emit(CreateWorkOrderErrorState(errorMessage: failureToString(failure)));
  //     return null;
  //   }, (createdWorkOrder) {
  //     emit(CreateWorkOrderLoadedState(workOrder: createdWorkOrder));
  //     return createdWorkOrder;
  //   });
  // }

  Future<WorkOrderEntity?> updateWorkOrdersFun({
    required int woId,
    required String customerName,
    String? customerBadge,
    required String customerMobile,
    required File signatureImage,
    required int collectedCode,
  }) async {
    emit(UpdateWorkOrderLoadingState());
    final response = await updateWorkOrderUseCase(UpdateWorkOrderParams(
      woId: woId,
      customerName: customerName,
      customerBadge: customerBadge,
      customerMobile: customerMobile,
      signatureImage: signatureImage,
      collectedCode: collectedCode,
    ));
    return response.fold((failure) {
      emit(UpdateWorkOrderErrorState(errorMessage: failureToString(failure)));
      return null;
    }, (updatedWorkOrder) {
      emit(UpdateWorkOrderLoadedState(workOrderEntity: updatedWorkOrder));
      return updatedWorkOrder;
    });
  }
}
