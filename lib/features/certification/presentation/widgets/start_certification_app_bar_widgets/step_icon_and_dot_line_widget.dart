import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/features/certification/presentation/widgets/start_certification_app_bar_widgets/straight_line_or_dash_line_widget.dart';

class StepIconAndDotLineWidget extends StatelessWidget {
  const StepIconAndDotLineWidget({
    Key? key,
    this.lastStep = false,
    required this.iconPath,
    this.currentStep = false,
    this.iconColor = Colors.black,
    required this.circleColor,
  }) : super(key: key);

  final bool lastStep;
  final String iconPath;
  final bool currentStep;
  final Color iconColor;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: CircleAvatar(
            backgroundColor: circleColor,
            radius: 20.r,
            child: AppSvgIcon(
              iconPath: iconPath,
              iconColor: iconColor,
              iconSize: 25,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        if (lastStep == false) StraightLineOrDashLine(currentStep: currentStep),
      ],
    );
  }
}
