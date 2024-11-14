import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';

class InspectionMultilineWidget extends StatelessWidget {
  final String title;
  final String content;
  const InspectionMultilineWidget({
    super.key,
    required this.title,
    required this.content,
  });

  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
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
                content,
                maxLines: null,
                style: const TextStyle(
                  // fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
