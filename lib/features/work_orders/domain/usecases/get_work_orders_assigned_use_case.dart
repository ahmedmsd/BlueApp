import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';

class GetWorkOrdersAssignedUseCase
    extends UseCase<List<WorkOrderAssignedEntity>, NoParams> {
  final WorkOrdersRepository workOrdersRepository;

  GetWorkOrdersAssignedUseCase({required this.workOrdersRepository});
  @override
  Future<Either<Failure, List<WorkOrderAssignedEntity>>> call(
      NoParams params) async {
    return await workOrdersRepository.getWorkOrdersAssigned(params);
  }
}
