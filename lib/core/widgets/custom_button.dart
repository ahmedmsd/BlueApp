import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    this.icon,
    this.radius = 4,
    this.backgroundColor = AppColors.colorMain,
    this.disabledBackgroundColor = Colors.grey,
    this.isDisabled = false,
    this.borderSide = BorderSide.none,
    this.shadowColor,
    this.elevation = 3,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String title;
  final void Function()? onPressed;
  final double height;
  final double width;
  final double radius;
  final Color backgroundColor;
  final Widget? icon;
  final bool isDisabled;
  final Color disabledBackgroundColor;
  final Color? shadowColor;
  final BorderSide borderSide;
  final double elevation;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        disabledBackgroundColor: isDisabled ? disabledBackgroundColor : null,
        elevation: elevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius), side: borderSide),
        minimumSize: Size(width, height.h),
        shadowColor: shadowColor,
      ),
      onPressed: isDisabled ? null : onPressed,
      icon: icon ?? const SizedBox.shrink(),
      label: Container(
        margin: const EdgeInsets.only(top: 3),
        child: Text(
          title,
          style: AppTextStyle.textStyleApp(
            color: textColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
