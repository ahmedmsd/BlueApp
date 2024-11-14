import 'dart:io';

class AttachedPhotoZoomRouteArguments {
  int heroTag;
  File? file;
  List<int>? imageBytes;

  AttachedPhotoZoomRouteArguments({
    required this.heroTag,
    this.file,
    this.imageBytes,
  });
}
