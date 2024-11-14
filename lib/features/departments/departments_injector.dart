import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/departments/data/datasources/departments_remote_data_source.dart';
import 'package:test_workapp/features/departments/data/repositories/departments_repository_impl.dart';
import 'package:test_workapp/features/departments/domain/repositories/departments_repository.dart';
import 'package:test_workapp/features/departments/domain/usecases/get_departments_use_case.dart';
import 'package:test_workapp/features/departments/presentation/cubit/departments_cubit.dart';

class DepartmentsInjector {
  static void init() {
    sl.registerFactory(() => DepartmentsCubit(
          getDepartmentsUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetDepartmentsUseCase(departmentsRepository: sl()));

    //repository
    sl.registerLazySingleton<DepartmentsRepository>(
        () => DepartmentsRepositoryImpl(
              networkInfo: sl(),
              departmentsRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<DepartmentsRemoteDataSource>(
        () => DepartmentsRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
