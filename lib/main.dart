import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_workapp/app.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/utils/constants/my_bloc_observer.dart';
import 'package:test_workapp/app_injector.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInjector.init();
  await SharedPreferencesHelper.init();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale(AppConstants.enCode),
          Locale(AppConstants.arCode)
        ],
        path: "assets/languages",
        startLocale: const Locale(AppConstants.enCode),
        saveLocale: true,
        child: const MyApp(),
      ),
    ),
  );
}
