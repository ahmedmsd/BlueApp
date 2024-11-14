import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/regions/data/datasources/regions_remote_data_source.dart';
import 'package:test_workapp/features/regions/data/repositories/regions_repository_impl.dart';
import 'package:test_workapp/features/regions/domain/repositories/regions_repository.dart';
import 'package:test_workapp/features/regions/domain/usecases/get_regions_use_case.dart';
import 'package:test_workapp/features/regions/presentation/cubit/regions_cubit.dart';

class RegionsInjector {
  static void init() {
    sl.registerFactory(() => RegionsCubit(
          getRegionsUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(() => GetRegionsUseCase(regionsRepository: sl()));

    //repository
    sl.registerLazySingleton<RegionsRepository>(() => RegionsRepositoryImpl(
          networkInfo: sl(),
          regionsRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<RegionsRemoteDataSource>(
        () => RegionsRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
