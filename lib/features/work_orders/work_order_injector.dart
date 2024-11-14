import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/work_orders/data/datasources/work_orders_remote_data_source.dart';
import 'package:test_workapp/features/work_orders/data/repositories/work_orders_repository_impl.dart';
import 'package:test_workapp/features/work_orders/domain/repositories/work_order_repository.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/create_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/get_work_orders_assigned_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/get_work_orders_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/update_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';

class WorkOrdersInjector {
  static void init() {
    sl.registerFactory(() => WorkOrdersCubit(
          getWorkOrdersUseCase: sl(),
          getWorkOrdersAssignedUseCase: sl(),
          createWorkOrderUseCase: sl(),
          updateWorkOrderUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetWorkOrdersUseCase(workOrdersRepository: sl()));
    sl.registerLazySingleton(
        () => GetWorkOrdersAssignedUseCase(workOrdersRepository: sl()));
    sl.registerLazySingleton(
        () => CreateWorkOrderUseCase(workOrdersRepository: sl()));
    sl.registerLazySingleton(
        () => UpdateWorkOrderUseCase(workOrdersRepository: sl()));

    //repository
    sl.registerLazySingleton<WorkOrdersRepository>(
        () => WorkOrdersRepositoryImpl(
              networkInfo: sl(),
              workOrdersRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<WorkOrdersRemoteDataSource>(
        () => WorkOrdersRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
