import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/users/data/datasources/users_remoe_data_source.dart';
import 'package:test_workapp/features/users/data/repositories/users_repository_impl.dart';
import 'package:test_workapp/features/users/domain/repositories/users_repository.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_details_use_case.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_jobs_use_case.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_use_case.dart';
import 'package:test_workapp/features/users/presentation/cubit/users_cubit.dart';

class UsersInjector {
  static void init() {
    sl.registerFactory(() => UsersCubit(
          getUsersUseCase: sl(),
          getUsersDetailsUseCase: sl(),
          getUsersJobsUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(() => GetUsersUseCase(usersRepository: sl()));
    sl.registerLazySingleton(
        () => GetUsersDetailsUseCase(usersRepository: sl()));
    sl.registerLazySingleton(() => GetUsersJobsUseCase(usersRepository: sl()));

    //repository
    sl.registerLazySingleton<UsersRepository>(() => UsersRepositoryImpl(
          networkInfo: sl(),
          usersRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<UsersRemoteDataSource>(
        () => UsersRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
