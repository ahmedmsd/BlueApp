import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/app_interceptors.dart';
import 'package:test_workapp/core/api/dio_consumer.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/features/authentication/authentication_injector.dart';
import 'package:test_workapp/features/certification/certification_injector.dart';
import 'package:test_workapp/features/checklists/checklists_injector.dart';
import 'package:test_workapp/features/cities/cities_injector.dart';
import 'package:test_workapp/features/customers/customers_injector.dart';
import 'package:test_workapp/features/departments/departments_injector.dart';
import 'package:test_workapp/features/equipments/equipments_injector.dart';
import 'package:test_workapp/features/regions/regions_injector.dart';
import 'package:test_workapp/features/sticker/sticker_injector.dart';
import 'package:test_workapp/features/sync/sync_injector.dart';
import 'package:test_workapp/features/users/users_injector.dart';
import 'package:test_workapp/features/work_orders/work_order_injector.dart';

GetIt sl = GetIt.instance;

class AppInjector {
  static Future<void> init() async {
    // Features Injectors
    AuthenticationInjector.init();
    SyncInjector.init();
    UsersInjector.init();
    StickersInjector.init();
    ChecklistsInjector.init();
    DepartmentsInjector.init();
    EquipmentsInjector.init();
    CustomersInjector.init();
    RegionsInjector.init();
    CitiesInjector.init();
    WorkOrdersInjector.init();
    CertificationInjector.init();

    // Core
    sl.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(internetConnectionChecker: sl()));
    sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

    // External
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);

    sl.registerLazySingleton(() => AppInterceptors());

    sl.registerLazySingleton(() => LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          requestHeader: true,
          error: true,
        ));

    sl.registerLazySingleton(() => InternetConnectionChecker());

    sl.registerLazySingleton(() => Dio());
  }
}
