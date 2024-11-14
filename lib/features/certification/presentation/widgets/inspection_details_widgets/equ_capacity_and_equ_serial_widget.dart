import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';

class EquCapacityAndEquSerial extends StatefulWidget {
  final TextEditingController eqCapacityController;
  final TextEditingController eqSerialController;
  const EquCapacityAndEquSerial({
    super.key,
    required this.eqCapacityController,
    required this.eqSerialController,
  });

  @override
  State<EquCapacityAndEquSerial> createState() =>
      _EquCapacityAndEquSerialState();
}

class _EquCapacityAndEquSerialState extends State<EquCapacityAndEquSerial> {
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
                'Equipment Capacity: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqCapacityController,
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
                'Equipment Serial No.: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.eqSerialController,
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
