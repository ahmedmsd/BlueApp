import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';

class SyncInjector {
  static void init() {
    sl.registerFactory(() => SyncCubit());

    //use cases

    //repository

    //data sources
  }
}
