import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';

class CreateWorkOrderUseCase
    implements UseCase<WorkOrderEntity, CreateWorkOrderParams> {
  final WorkOrdersRepository workOrdersRepository;

  CreateWorkOrderUseCase({required this.workOrdersRepository});

  @override
  Future<Either<Failure, WorkOrderEntity>> call(
      CreateWorkOrderParams createWorkOrderParams) async {
    return await workOrdersRepository.createWorkOrder(
        createWorkOrderParams: createWorkOrderParams);
  }
}

class CreateWorkOrderParams extends Equatable {
  final int woNumber;
  final String? customerName;
  final int customerId;

  const CreateWorkOrderParams({
    required this.woNumber,
    this.customerName,
    required this.customerId,
  });

  @override
  List<Object?> get props => [
        woNumber,
        customerName,
        customerId,
      ];
}
