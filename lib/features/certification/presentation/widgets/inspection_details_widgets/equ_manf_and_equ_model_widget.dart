import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';

class EquManfAndEquModelWidget extends StatefulWidget {
  final TextEditingController eqManfController;
  final TextEditingController eqModelController;
  const EquManfAndEquModelWidget({
    super.key,
    required this.eqManfController,
    required this.eqModelController,
  });

  @override
  State<EquManfAndEquModelWidget> createState() =>
      _EquManfAndEquModelWidgetState();
}

class _EquManfAndEquModelWidgetState extends State<EquManfAndEquModelWidget> {
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
                'Equipment Manufacturer: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqManfController,
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
                'Equipment Model: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqModelController,
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
