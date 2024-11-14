import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/equipments/equipment.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/information/information_item_widget.dart';
import 'package:test_workapp/isar_service.dart';

class InformationWidget extends StatefulWidget {
  final Certification certification;
  const InformationWidget({super.key, required this.certification});

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  final isarService = IsarService();
  Future<Equipment?> _equipmentData = Future.value();

  @override
  void initState() {
    _equipmentData =
        isarService.getEqupimentByEqId(widget.certification.eqType);
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
        InformationItemWidget(
          title: 'Test Type:',
          content: Text(
            testTypes
                .firstWhere(
                    (element) => element.value == widget.certification.testType)
                .label,
            style: TextStyle(
              fontSize: 14.0.sp,
              color: AppColors.colorText3,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // InformationItemWidget(
        //   title: 'Report No:',
        //   content: Text(
        //     '${widget.certification.aramcoReportNo}',
        //     style: TextStyle(
        //       fontSize: 14.0.sp,
        //       color: AppColors.colorText3,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        InformationItemWidget(
          title: 'Ins Date & Time:',
          content: Text(
            widget.certification.inspectionDate,
            style: TextStyle(
              fontSize: 14.0.sp,
              color: AppColors.colorText3,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        InformationItemWidget(
          title: 'Equipment Type:',
          content: FutureBuilder<Equipment?>(
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
                return Text(
                  '${snapshot.data!.eqName}',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText3,
                    fontWeight: FontWeight.bold,
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ],
    );
  }
}

class TestType {
  final String label;
  final int value;

  TestType({
    required this.label,
    required this.value,
  });
}

List<TestType> testTypes = [
  TestType(label: 'Visual & Function Test', value: 1),
  TestType(label: 'Witnessing Test', value: 2),
  TestType(label: 'Reinspection', value: 3),
  TestType(label: 'Load Test', value: 4),
  TestType(label: 'Periodic Inspection P.I.', value: 5),
  TestType(label: 'Reinspection R.I.', value: 6),
  TestType(label: 'Initial Inspection I.I.', value: 7),
  TestType(label: 'Manufacturer Load Test', value: 8),
  TestType(label: 'Witnessing Load Test', value: 9),
  TestType(label: 'Performed Load Test', value: 10),
];
