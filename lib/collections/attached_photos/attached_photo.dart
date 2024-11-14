import 'package:isar/isar.dart';
import 'package:test_workapp/collections/certifications/certification.dart';

part 'attached_photo.g.dart';

@collection
class AttachedPhoto {
  Id id = Isar.autoIncrement;
  List<int> attachedPhotoBytes;
  int certificationId;
  @Backlink(to: "attachedPhotos")
  final certification = IsarLink<Certification>();
  AttachedPhoto({
    required this.attachedPhotoBytes,
    required this.certificationId,
  });
}
