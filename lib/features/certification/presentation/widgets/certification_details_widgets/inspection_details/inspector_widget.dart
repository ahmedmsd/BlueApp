import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/isar_service.dart';

class InspectorWidget extends StatefulWidget {
  final Certification certification;
  const InspectorWidget({
    super.key,
    required this.certification,
  });

  @override
  State<InspectorWidget> createState() => _InspectorWidgetState();
}

class _InspectorWidgetState extends State<InspectorWidget> {
  final isarService = IsarService();
  Future<UserDetails?> _userDetailsData = Future.value();
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;

  @override
  void initState() {
    _userDetailsData =
        isarService.getUserDetailsByUserId(widget.certification.inspectorId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Inspector Name:',
              style: TextStyle(
                // // fontSize: 12.0.sp,
                // color: AppColors.colorText2,
                // fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.colorText1,
              ),
            ),
            SizedBox(
              height: _verticalSpace(context),
            ),
            FutureBuilder<UserDetails?>(
              future: _userDetailsData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (!snapshot.hasData) {
                  return const Center(
                    child: Text("There is no data"),
                  );
                } else if (snapshot.hasData) {
                  return Text(
                    '${snapshot.data!.fullNameEn}',
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      color: AppColors.colorText2,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
