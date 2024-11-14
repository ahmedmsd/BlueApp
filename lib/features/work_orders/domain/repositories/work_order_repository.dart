import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/create_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/update_work_order_use_case.dart';

abstract class WorkOrdersRepository {
  Future<Either<Failure, List<WorkOrderEntity>>> getWorkOrders(NoParams params);
  Future<Either<Failure, List<WorkOrderAssignedEntity>>> getWorkOrdersAssigned(
      NoParams params);
  Future<Either<Failure, WorkOrderEntity>> createWorkOrder(
      {required CreateWorkOrderParams createWorkOrderParams});
  Future<Either<Failure, WorkOrderEntity>> updateWorkOrder(
      {required UpdateWorkOrderParams updateWorkOrderParams});
}
