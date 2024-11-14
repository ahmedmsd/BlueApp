import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgIcon extends StatelessWidget {
  const AppSvgIcon({
    super.key,
    required this.iconPath,
    this.fit = BoxFit.contain,
    this.iconColor,
    this.iconSize,
  });

  final String iconPath;
  final BoxFit fit;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      fit: fit,
      colorFilter: iconColor != null
          ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
          : null,
      width: iconSize == null ? null : iconSize!.w,
      height: iconSize == null ? null : iconSize!.w,
    );
  }
}
