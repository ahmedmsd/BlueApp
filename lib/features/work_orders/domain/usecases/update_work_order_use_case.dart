import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';

class UpdateWorkOrderUseCase
    implements UseCase<WorkOrderEntity, UpdateWorkOrderParams> {
  final WorkOrdersRepository workOrdersRepository;

  UpdateWorkOrderUseCase({required this.workOrdersRepository});

  @override
  Future<Either<Failure, WorkOrderEntity>> call(
      UpdateWorkOrderParams updateWorkOrderParams) async {
    return await workOrdersRepository.updateWorkOrder(
        updateWorkOrderParams: updateWorkOrderParams);
  }
}

class UpdateWorkOrderParams extends Equatable {
  final int woId;
  final String customerName;
  final String? customerBadge;
  final String customerMobile;
  final File signatureImage;
  final int collectedCode;

  const UpdateWorkOrderParams({
    required this.woId,
    required this.customerName,
    this.customerBadge,
    required this.customerMobile,
    required this.signatureImage,
    required this.collectedCode,
  });

  @override
  List<Object?> get props => [
        woId,
        customerName,
        customerBadge,
        customerMobile,
        signatureImage,
        collectedCode,
      ];
}
