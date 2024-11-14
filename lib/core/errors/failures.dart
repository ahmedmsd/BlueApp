import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

class OfflineFailure extends Failure {
  // لو جهازى مفهوش نت
  const OfflineFailure({required String message}) : super(message: message);
}

class CachedFailure extends Failure {
  const CachedFailure({required String message}) : super(message: message);
}

dynamic failureToString(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      var isJsonFormat = isJson(failure.message);
      if (isJsonFormat) {
        Map errorModel = jsonDecode(failure.message);
        if (errorModel['message'].runtimeType != String) {
          return errorModel['message']['array'];
        } else {
          return errorModel['message'];
        }
      } else {
        return failure.message;
      }

    case CachedFailure:
      return failure.message;
    default:
      return failure.message;
  }
}

bool isJson(String jsonString) {
  try {
    jsonDecode(jsonString);
    return true;
  } catch (e) {
    return false;
  }
}

void showError(context, message) {
  if (message.runtimeType == String) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        backgroundColor: Colors.red,
      ),
    );
  } else {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      autoDismiss: true,
      animType: AnimType.bottomSlide,
      title: "Error",
      titleTextStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: Colors.black,
          ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: message.length,
          itemBuilder: (context, index) {
            return Center(
                child: Container(
                    //   width: 200.w,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      message[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    )));
          }),
      btnOk: CustomButton(
        title: "Ok",
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ).show();
  }
}
