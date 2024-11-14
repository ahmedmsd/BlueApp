import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';

class EquNumberAndEquLocationWidget extends StatefulWidget {
  final TextEditingController eqIdController;
  final TextEditingController eqLocationController;
  const EquNumberAndEquLocationWidget({
    super.key,
    required this.eqIdController,
    required this.eqLocationController,
  });

  @override
  State<EquNumberAndEquLocationWidget> createState() =>
      _EquNumberAndEquLocationWidgetState();
}

class _EquNumberAndEquLocationWidgetState
    extends State<EquNumberAndEquLocationWidget> {
  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Equipment number: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqIdController,
                validatorInput: (val) {
                  return val!.isEmpty ? 'required' : null;
                },
              ),
            ],
          ),
        ),
        SizedBox(
          width: _horizontalSpace(context),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Equipment Location: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqLocationController,
                validatorInput: (val) {
                  return val!.isEmpty ? 'required' : null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
