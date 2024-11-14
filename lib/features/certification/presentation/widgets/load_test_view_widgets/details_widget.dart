import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_view_widgets/details_item_widget.dart';

class DetailsWidget extends StatelessWidget {
  final Certification certification;
  const DetailsWidget({
    super.key,
    required this.certification,
  });
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      children: [
        DetailsItemWidget(
          title: 'TEST PERFORMED BY: (Name/Agency)',
          content: certification.testPerformedBy,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Procedure Reference No.',
          content: certification.procedureReferenceNo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Ref. Standard for Load Test',
          content: certification.refStandardForLoadTest,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Weight Calculation Verified',
          content: certification.weightCalculationVerified,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title:
              'Load Cell used to determine exact test load weight (if NO, state reason)',
          content: certification.loadCellUsedToDetermineExactTestLoadWeight,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        Text(
          'Test No. #1',
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.colorMain,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Weight of Load Applied',
          content: certification.weightOfLoadAppliedOne,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Span',
          content: certification.spanOne,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Max. allowed Deflection',
          content: certification.maxAllowedDeflectionOne,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Actual Deflection',
          content: certification.actualDeflectionOne,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'RESULT',
          content: certification.resultOne,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        Text(
          'Test No. #2',
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.colorMain,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Weight of Load Applied',
          content: certification.weightOfLoadAppliedTwo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Span',
          content: certification.spanTwo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Max. allowed Deflection',
          content: certification.maxAllowedDeflectionTwo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Actual Deflection',
          content: certification.actualDeflectionTwo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'RESULT',
          content: certification.resultTwo,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        Text(
          'Test No. #3',
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.colorMain,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Weight of Load Applied',
          content: certification.weightOfLoadAppliedThree,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Span',
          content: certification.spanThree,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Max. allowed Deflection',
          content: certification.maxAllowedDeflectionThree,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'Actual Deflection',
          content: certification.actualDeflectionThree,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        DetailsItemWidget(
          title: 'RESULT',
          content: certification.resultThree,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
      ],
    );
  }
}
