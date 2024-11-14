import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/utils.dart';

class DetailsItemWidget extends StatelessWidget {
  final String title;
  final String? content;

  const DetailsItemWidget({
    super.key,
    required this.title,
    this.content,
  });

  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 0.8.sw,
              child: Text(
                title,
                maxLines: null,
                style: TextStyle(
                  // // fontSize: 12.0.sp,
                  // color: AppColors.colorText2,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorText1,
                ),
              ),
            ),
            SizedBox(
              height: _verticalSpace(context),
            ),
            if (content != null)
              SizedBox(
                width: 0.8.sw,
                child: Text(
                  content!,
                  maxLines: null,
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
