import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowFloating {
  static void toast({
    required String message,
    Toast toastLength = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Color backgroundColor = Colors.redAccent,
    Color textColor = Colors.white,
    double fontSize = 16,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize,
    );
  }
}
