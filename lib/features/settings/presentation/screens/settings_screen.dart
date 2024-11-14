import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final isarService = IsarService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
          title: 'Logout',
          onPressed: () {
            _showMyDialog(
              context: context,
              isarService: isarService,
            );
          },
          radius: 10,
        ),
      ),
    );
  }
}

Future<void> _showMyDialog({
  required BuildContext context,
  required IsarService isarService,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Logout',
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(''),
              Text(
                'All data will be deleted !',
                style: TextStyle(
                  color: AppColors.colorMain,
                  fontSize: 14.sp,
                ),
              ),
              const Text(''),
              Text(
                'Are you sure you want to logout ?',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.colorMain,
              ),
            ),
            onPressed: () async {
              await SharedPreferencesHelper.removeData(
                key: AppConstants.userId,
              );
              await SharedPreferencesHelper.removeData(
                key: AppConstants.username,
              );
              await SharedPreferencesHelper.removeData(
                key: AppConstants.email,
              );
              await SharedPreferencesHelper.removeData(
                key: AppConstants.empCode,
              );
              await SharedPreferencesHelper.removeData(
                key: AppConstants.accessToken,
              );
              await isarService.cleanDb().then((_) =>
                  AppNavigator.navigateNamedFinish(
                      context, Routes.loginScreen));
            },
          ),
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.colorMain,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
