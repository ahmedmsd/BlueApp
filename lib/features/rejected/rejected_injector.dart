import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/rejected/data/datasources/rejected_remote_data_source.dart';
import 'package:test_workapp/features/rejected/data/repositories/rejected_repository_impl.dart';
import 'package:test_workapp/features/rejected/domain/repositories/rejected_repository.dart';
import 'package:test_workapp/features/rejected/domain/usecases/get_rejected_use_case.dart';
import 'package:test_workapp/features/rejected/presentation/cubit/rejected_cubit.dart';

class RejectedInjector {
  static void init() {
    sl.registerFactory(() => RejectedCubit(
          getRejectedUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetRejectedUseCase(rejectedRepository: sl()));

    //repository
    sl.registerLazySingleton<RejectedRepository>(() => RejectedRepositoryImpl(
          networkInfo: sl(),
          rejectedRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<RejectedRemoteDataSource>(
        () => RejectedRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
