import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/utils.dart';

class SignatureRowWidget extends StatelessWidget {
  final String title1;
  final String content1;
  final String? title2;
  final String? content2;
  const SignatureRowWidget({
    super.key,
    required this.title1,
    required this.content1,
    this.title2,
    this.content2,
  });

  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: TextStyle(
                  // // fontSize: 12.0.sp,
                  // color: AppColors.colorText2,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorText1,
                ),
              ),
              SizedBox(
                height: _verticalSpace(context),
              ),
              Text(
                content1,
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: AppColors.colorText3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: _horizontalSpace(context),
        ),
        if (title2 != null && content2 != null)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title2!,
                  style: TextStyle(
                    // // fontSize: 12.0.sp,
                    // color: AppColors.colorText2,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.colorText1,
                  ),
                ),
                SizedBox(
                  height: _verticalSpace(context),
                ),
                Text(
                  content2!,
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
