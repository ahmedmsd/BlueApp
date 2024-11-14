import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/custom_radio_menu_button.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class InspectionResultWidget extends StatefulWidget {
  final CertificationCubit certificationCubit;
  const InspectionResultWidget({
    super.key,
    required this.certificationCubit,
  });

  @override
  State<InspectionResultWidget> createState() => _InspectionResultWidgetState();
}

class _InspectionResultWidgetState extends State<InspectionResultWidget> {
  // String radioButtonGroupValue = AppConstants.accepted;

  @override
  void initState() {
    // radioButtonGroupValue = widget.certificationCubit.testResult == '2'
    //     ? AppConstants.rejected
    //     : AppConstants.accepted;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Inspection Result',
          style: TextStyle(
            fontSize: 14.0.sp,
            color: AppColors.colorText2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            CustomRadioMenuButton(
              childText: 'Accepted',
              // value: AppConstants.accepted,
              // groupValue: radioButtonGroupValue,
              value: '1',
              groupValue: widget.certificationCubit.testResult,
              onChange: (val) {
                // if (radioButtonGroupValue != AppConstants.accepted) {
                //   radioButtonGroupValue = val;
                //   widget.certificationCubit.changeTestResultValue('1');
                //   setState(() {});
                // }
                widget.certificationCubit.changeTestResultValue('1');
                setState(() {});
              },
              childTextSize: 14.0,
            ),
            SizedBox(
              width: MediaQueryValues(context).screenWidth * 0.09,
            ),
            CustomRadioMenuButton(
              childText: 'Rejected',
              // value: AppConstants.rejected,
              // groupValue: radioButtonGroupValue,
              value: '2',
              groupValue: widget.certificationCubit.testResult,
              onChange: (val) {
                // if (radioButtonGroupValue != AppConstants.rejected) {
                //   radioButtonGroupValue = val;
                //   widget.certificationCubit.changeTestResultValue('2');
                //   setState(() {});
                // }
                widget.certificationCubit.changeTestResultValue('2');
                setState(() {});
              },
              childTextSize: 14.0,
            ),
          ],
        ),
      ],
    );
  }
}
