import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/equipments/data/datasources/equipments_remote_data_source.dart';
import 'package:test_workapp/features/equipments/data/repositories/equipments_repository_impl.dart';
import 'package:test_workapp/features/equipments/domain/repositories/equipments_repository.dart';
import 'package:test_workapp/features/equipments/domain/usecases/get_equipments_use_case.dart';
import 'package:test_workapp/features/equipments/presentation/cubit/equipments_cubit.dart';

class EquipmentsInjector {
  static void init() {
    sl.registerFactory(() => EquipmentsCubit(
          getEquipmentsUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetEquipmentsUseCase(equipmentsRepository: sl()));

    //repository
    sl.registerLazySingleton<EquipmentsRepository>(
        () => EquipmentsRepositoryImpl(
              networkInfo: sl(),
              equipmentsRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<EquipmentsRemoteDataSource>(
        () => EquipmentsRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
