import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';

class StraightLineOrDashLine extends StatelessWidget {
  const StraightLineOrDashLine({Key? key, this.currentStep = false})
      : super(key: key);

  final bool currentStep;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45.0.w,
      child: currentStep
          ? const Divider(
              color: AppColors.colorMain,
              thickness: 1.5,
            )
          : const DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 3.0,
              dashColor: Colors.black,
              dashRadius: 0.3,
              dashGapLength: 2.0,
            ),
    );
  }
}
