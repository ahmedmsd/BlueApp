import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';

class GetWorkOrdersUseCase extends UseCase<List<WorkOrderEntity>, NoParams> {
  final WorkOrdersRepository workOrdersRepository;

  GetWorkOrdersUseCase({required this.workOrdersRepository});
  @override
  Future<Either<Failure, List<WorkOrderEntity>>> call(NoParams params) async {
    return await workOrdersRepository.getWorkOrders(params);
  }
}
