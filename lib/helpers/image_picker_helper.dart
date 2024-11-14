import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  static final ImagePicker _picker = ImagePicker();

  static Future<File?> pickImage({
    ImageSource imageSource = ImageSource.gallery,
    int? imageQuality,
    double? maxWidth,
    double? maxHeight,
  }) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: imageSource,
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );
      if (image == null) return null;
      return File(image.path);
    } on PlatformException catch (error) {
      Future.error(error);
      rethrow;
    }
  }

  static Future<List<File>> pickMultiImages({
    int? imageQuality,
    double? maxWidth,
    double? maxHeight,
  }) async {
    try {
      List<XFile>? images = await _picker.pickMultiImage(
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );
      //if (images == null) return [];
      return images.map((xFileElement) => File(xFileElement.path)).toList();
    } on PlatformException catch (error) {
      Future.error(error);
      rethrow;
    }
  }
}
