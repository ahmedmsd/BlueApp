import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/sticker/data/datasources/sticker_remote_data_source.dart';
import 'package:test_workapp/features/sticker/data/repositories/sticker_repository_impl.dart';
import 'package:test_workapp/features/sticker/domain/repositories/sticker_repository.dart';
import 'package:test_workapp/features/sticker/domain/usecases/get_stickers_use_case.dart';
import 'package:test_workapp/features/sticker/presentation/cubit/sticker_cubit.dart';

class StickersInjector {
  static void init() {
    sl.registerFactory(() => StickerCubit(
          getStickersUseCase: sl(),
        ));

    //use cases
    sl.registerLazySingleton(
        () => GetStickersUseCase(stickersRepository: sl()));

    //repository
    sl.registerLazySingleton<StickersRepository>(() => StickersRepositoryImpl(
          networkInfo: sl(),
          stickersRemoteDataSource: sl(),
        ));

    //data sources
    sl.registerLazySingleton<StickersRemoteDataSource>(
        () => StickersRemoteDataSourceImpl(apiConsumer: sl()));
  }
}
