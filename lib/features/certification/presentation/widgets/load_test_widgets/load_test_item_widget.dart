import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';

class LoadTestItemWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final bool isRequired;
  final bool isNumber;
  const LoadTestItemWidget({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.isRequired,
    required this.isNumber,
  });

  @override
  State<LoadTestItemWidget> createState() => _LoadTestItemWidgetState();
}

class _LoadTestItemWidgetState extends State<LoadTestItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: AppColors.colorText2,
            fontWeight: FontWeight.bold,
            fontSize: 12.0.sp,
          ),
        ),
        InputFieldMake(
          inputController: widget.textEditingController,
          textInputType:
              widget.isNumber ? TextInputType.phone : TextInputType.text,
          inputFormatters: widget.isNumber
              ? [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ]
              : null,
          validatorInput: (val) {
            if (widget.isRequired && val!.isEmpty) {
              return 'required';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
