import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/customers/data/datasources/customers_remote_data_source.dart';
import 'package:test_workapp/features/customers/data/repositories/customers_repository_impl.dart';
import 'package:test_workapp/features/customers/domain/repositories/customers_repository.dart';
import 'package:test_workapp/features/customers/domain/usecases/get_customers_use_case.dart';
import 'package:test_workapp/features/customers/presentation/cubit/customers_cubit.dart';

class CustomersInjector {
  static void init() {
    sl.registerFactory(() => CustomersCubit(
          getCustomersUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetCustomersUseCase(customersRepository: sl()));

    //repository
    sl.registerLazySingleton<CustomersRepository>(() => CustomersRepositoryImpl(
          networkInfo: sl(),
          customersRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<CustomersRemoteDataSource>(
        () => CustomersRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
