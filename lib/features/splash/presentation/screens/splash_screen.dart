import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _goToLandingScreen();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _goToLandingScreen() {
    _timer = Timer(
      const Duration(seconds: 3),
      () {
        if (SharedPreferencesHelper.getData(key: AppConstants.accessToken) !=
            null) {
          AppNavigator.navigateNamedFinish(context, Routes.layoutScreen);
        } else {
          AppNavigator.navigateNamedFinish(context, Routes.loginScreen);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground2,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset(AppImages.appSplashImage2),
          // child: AppSvgIcon(
          //   iconPath: AppImages.appSplashImage,
          // ),
        ),
      ),
    );
  }
}
