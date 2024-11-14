import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/authentication/data/datasources/authentication_remote_data_source.dart';
import 'package:test_workapp/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:test_workapp/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:test_workapp/features/authentication/domain/usecases/signin_use_case.dart';
import 'package:test_workapp/features/authentication/presentation/cubit/authentication_cubit.dart';

class AuthenticationInjector {
  static void init() {
    sl.registerFactory(() => AuthenticationCubit(
          signinUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => SigninUseCase(authenticationRepository: sl()));

    //repository
    sl.registerLazySingleton<AuthenticationRepository>(
        () => AuthenticationRepositoryImpl(
              networkInfo: sl(),
              authenticationRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<AuthenticationRemoteDataSource>(
        () => AuthenticationRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
