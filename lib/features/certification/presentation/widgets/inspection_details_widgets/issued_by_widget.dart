import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';

class IssuedByWidget extends StatefulWidget {
  final TextEditingController prevIssuedByController;
  const IssuedByWidget({super.key, required this.prevIssuedByController});

  @override
  State<IssuedByWidget> createState() => _IssuedByWidgetState();
}

class _IssuedByWidgetState extends State<IssuedByWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Issued By:',
          style: TextStyle(
            color: AppColors.colorText2,
            fontWeight: FontWeight.bold,
            fontSize: 12.0.sp,
          ),
        ),
        InputFieldMake(
          inputController: widget.prevIssuedByController,
          validatorInput: (val) {
            // return val!.isEmpty ? 'required' : null;
            return null;
          },
        ),
      ],
    );
  }
}
