import 'package:flutter/material.dart';

void navigateNamedTo(context, String route, {var arguments}) =>
    Navigator.pushNamed(context, route, arguments: arguments);

void navigateNamedReplace(context, String route, {var arguments}) =>
    Navigator.pushReplacementNamed(context, route, arguments: arguments);

void navigateNamedFinish(context, String route, {var arguments}) =>
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false,
        arguments: arguments);

// void goToLink({required BuildContext context, required String url}) async {
//   if (!await launchUrl(Uri.parse(url))) {
//     // ignore: use_build_context_synchronously
//     AwesomeDialog(
//       context: context,
//       dialogType: DialogType.error,
//       animType: AnimType.bottomSlide,
//       title: "لا يمكن الوصول لهذا الموقع",
//       btnOkOnPress: () {
//         Navigator.of(context).pop();
//       },
//     ).show();
//   }
// }
