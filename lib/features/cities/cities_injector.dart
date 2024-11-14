import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/cities/data/datasources/cities_remote_data_source.dart';
import 'package:test_workapp/features/cities/data/repositories/cities_repository_impl.dart';
import 'package:test_workapp/features/cities/domain/repositories/cities_repository.dart';
import 'package:test_workapp/features/cities/domain/usecases/get_cities_use_case.dart';
import 'package:test_workapp/features/cities/presentation/cubit/cities_cubit.dart';

class CitiesInjector {
  static void init() {
    sl.registerFactory(() => CitiesCubit(
          getCitiesUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(() => GetCitiesUseCase(citiesRepository: sl()));

    //repository
    sl.registerLazySingleton<CitiesRepository>(() => CitiesRepositoryImpl(
          networkInfo: sl(),
          citiesRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<CitiesRemoteDataSource>(
        () => CitiesRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
