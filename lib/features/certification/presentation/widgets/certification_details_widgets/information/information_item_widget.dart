import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/utils.dart';

class InformationItemWidget extends StatelessWidget {
  final String title;
  final Widget content;
  const InformationItemWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.textStyleApp(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.colorText1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        content,
        const Divider(),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
