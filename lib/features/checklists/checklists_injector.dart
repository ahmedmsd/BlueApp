import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/checklists/data/datasources/checklists_remote_data_source.dart';
import 'package:test_workapp/features/checklists/data/repositories/checklists_repository_impl.dart';
import 'package:test_workapp/features/checklists/domain/repositories/checklists_repository.dart';
import 'package:test_workapp/features/checklists/domain/usecases/get_checklists_details_use_case.dart';
import 'package:test_workapp/features/checklists/domain/usecases/get_checklists_use_case.dart';
import 'package:test_workapp/features/checklists/presentation/cubit/checklists_cubit.dart';

class ChecklistsInjector {
  static void init() {
    sl.registerFactory(() => ChecklistsCubit(
          getChecklistsUseCase: sl(),
          getChecklistsDetailsUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetChecklistsUseCase(checklistsRepository: sl()));
    sl.registerLazySingleton(
        () => GetChecklistsDetailsUseCase(checklistsRepository: sl()));

    //repository
    sl.registerLazySingleton<ChecklistsRepository>(
        () => ChecklistsRepositoryImpl(
              networkInfo: sl(),
              checklistsRemoteDataSource: sl(),
            ));

    //data sources
    sl.registerLazySingleton<ChecklistsRemoteDataSource>(
        () => ChecklistsRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
