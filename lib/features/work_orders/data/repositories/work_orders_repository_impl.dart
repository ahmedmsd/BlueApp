import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/data/datasources/work_orders_remote_data_source.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/create_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/update_work_order_use_case.dart';

class WorkOrdersRepositoryImpl implements WorkOrdersRepository {
  final NetworkInfo networkInfo;
  final WorkOrdersRemoteDataSource workOrdersRemoteDataSource;

  WorkOrdersRepositoryImpl({
    required this.networkInfo,
    required this.workOrdersRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<WorkOrderEntity>>> getWorkOrders(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetWorkOrders =
            await workOrdersRemoteDataSource.getWorkOrders(params);

        return Right(remoteGetWorkOrders);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, List<WorkOrderAssignedEntity>>> getWorkOrdersAssigned(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetWorkOrdersAssigned =
            await workOrdersRemoteDataSource.getWorkOrdersAssigned(params);

        return Right(remoteGetWorkOrdersAssigned);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, WorkOrderEntity>> createWorkOrder(
      {required CreateWorkOrderParams createWorkOrderParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCreateWorkOrder = await workOrdersRemoteDataSource
            .createWorkOrder(createWorkOrderParams: createWorkOrderParams);

        return Right(remoteCreateWorkOrder);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, WorkOrderEntity>> updateWorkOrder(
      {required UpdateWorkOrderParams updateWorkOrderParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteUpdateWorkOrder = await workOrdersRemoteDataSource
            .updateWorkOrder(updateWorkOrderParams: updateWorkOrderParams);

        return Right(remoteUpdateWorkOrder);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
