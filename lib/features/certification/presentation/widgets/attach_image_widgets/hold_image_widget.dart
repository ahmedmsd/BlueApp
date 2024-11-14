import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/nav.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/attached_photo_zoom_route_arguments.dart';

class HoldImageWidget extends StatelessWidget {
  const HoldImageWidget({
    Key? key,
    required this.file,
    this.onTap,
    required this.index,
  }) : super(key: key);

  final File file;
  final Function()? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: () => navigateNamedTo(
            context,
            Routes.attachedPhotoZoomScreen,
            arguments: AttachedPhotoZoomRouteArguments(
              heroTag: index,
              file: file,
            ),
          ),
          child: Hero(
            tag: index,
            child: Container(
              width: 90.w,
              height: 70.w,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0.r),
                  image: DecorationImage(
                    // image: NetworkImage(imagePath),
                    image: FileImage(file),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.close,
              color: AppColors.colorBackground2,
            ),
          ),
        ),
      ],
    );
  }
}
