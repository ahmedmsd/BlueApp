import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/certification/data/datasources/certification_remote_data_source.dart';
import 'package:test_workapp/features/certification/data/repositories/certification_repository_impl.dart';
import 'package:test_workapp/features/certification/domain/repositories/certification_repository.dart';
import 'package:test_workapp/features/certification/domain/usecases/create_certification_use_case.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class CertificationInjector {
  static void init() {
    sl.registerFactory(() => CertificationCubit(
          certificationUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => CreateCertificationUseCase(certificationRepository: sl()));

    //repository
    sl.registerLazySingleton<CertificationRepository>(
        () => CertificationRepositoryImpl(
              networkInfo: sl(),
              certificationRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<CertificationRemoteDataSource>(
        () => CertificationRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
