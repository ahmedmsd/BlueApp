import 'package:isar/isar.dart';

part 'local_image.g.dart';

@collection
class LocalImage {
  Id id = Isar.autoIncrement;

  List<int> imageBytes;
  String? imageName;
  int? woId;

  LocalImage({
    required this.imageBytes,
    this.imageName,
    this.woId,
  });
}
