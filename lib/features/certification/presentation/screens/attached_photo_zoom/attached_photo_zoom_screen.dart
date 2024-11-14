import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/attached_photo_zoom_route_arguments.dart';

class AttachedPhotoZoomScreen extends StatelessWidget {
  final AttachedPhotoZoomRouteArguments attachedPhotoZoomRouteArguments;
  const AttachedPhotoZoomScreen({
    super.key,
    required this.attachedPhotoZoomRouteArguments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: attachedPhotoZoomRouteArguments.heroTag,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            // color: Colors.red.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0.r),
            image: DecorationImage(
              // image: NetworkImage(imagePath),
              image: attachedPhotoZoomRouteArguments.file != null
                  ? FileImage(attachedPhotoZoomRouteArguments.file!)
                  : MemoryImage(Uint8List.fromList(
                          attachedPhotoZoomRouteArguments.imageBytes!))
                      as ImageProvider,

              // fit: BoxFit.cover,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
