import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/equipments/equipment.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/isar_service.dart';

class CertificationEquTypeWidget extends StatefulWidget {
  final int equId;
  const CertificationEquTypeWidget({super.key, required this.equId});

  @override
  State<CertificationEquTypeWidget> createState() =>
      _CertificationEquTypeWidgetState();
}

class _CertificationEquTypeWidgetState
    extends State<CertificationEquTypeWidget> {
  final isarService = IsarService();
  Future<Equipment?> _equipmentData = Future.value();
  @override
  void initState() {
    _equipmentData = isarService.getEqupimentByEqId(widget.equId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Equipment?>(
      future: _equipmentData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // return const Center(
          //   child: CircularProgressIndicator(),
          // );
          return const SizedBox();
        } else if (!snapshot.hasData) {
          return const Center(
            child: Text(""),
          );
        } else if (snapshot.hasData) {
          return SizedBox(
              width: 0.4.sw,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '${snapshot.data!.eqName}',
                  maxLines: null,
                  style: AppTextStyle.textStyleApp(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.colorText2,
                  ),
                ),
              ));
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
