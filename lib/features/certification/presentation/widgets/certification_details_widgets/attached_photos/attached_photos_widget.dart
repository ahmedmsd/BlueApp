import 'package:flutter/material.dart';
import 'package:test_workapp/collections/attached_photos/attached_photo.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/attached_photos/attached_photo_widget.dart';
import 'package:test_workapp/isar_service.dart';

class AttachedPhotosWidget extends StatefulWidget {
  final Certification certification;
  const AttachedPhotosWidget({
    super.key,
    required this.certification,
  });

  @override
  State<AttachedPhotosWidget> createState() => _AttachedPhotosWidgetState();
}

class _AttachedPhotosWidgetState extends State<AttachedPhotosWidget> {
  final isarService = IsarService();
  Future<List<AttachedPhoto>> _attachedPhotosData = Future.value([]);

  @override
  void initState() {
    _attachedPhotosData = isarService
        .getAllAttachedPhotosListByCertificationId(widget.certification.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      children: [
        FutureBuilder<List<AttachedPhoto>>(
          future: _attachedPhotosData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (!snapshot.hasData) {
              return const SizedBox();
            } else if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return const SizedBox();
              } else {
                return Wrap(
                  children: List.generate(
                    snapshot.data!.length,
                    (index) => AttachedImagesWidget(
                      index: index + 2000,
                      imageBytes: snapshot.data![index].attachedPhotoBytes,
                      onTap: () {},
                    ),
                  ),
                );
              }
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
