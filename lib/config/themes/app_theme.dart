import 'package:flutter/material.dart';
import 'package:test_workapp/core/utils/app_colors.dart';

import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/core/utils/constants/constants.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    fontFamily: '',
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: const Color(0xff545454),
          displayColor: const Color(0xff545454),
          fontFamily: '',
        ),
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyle.textStyleApp(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      backgroundColor: AppColors.colorBackground2,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      actionsIconTheme: const IconThemeData(color: Colors.black),
    ),
    primarySwatch: Constants.buildMaterialColor(AppColors.colorMain),
    primaryColor: Constants.buildMaterialColor(AppColors.colorMain),
    canvasColor: Colors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
    ),
  );
}
