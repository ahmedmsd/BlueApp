import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';

class OrgCodeAndPrevStickerWidget extends StatefulWidget {
  final TextEditingController orgCodeController;
  final TextEditingController prevStickerController;
  const OrgCodeAndPrevStickerWidget({
    super.key,
    required this.orgCodeController,
    required this.prevStickerController,
  });

  @override
  State<OrgCodeAndPrevStickerWidget> createState() =>
      _OrgCodeAndPrevStickerWidgetState();
}

class _OrgCodeAndPrevStickerWidgetState
    extends State<OrgCodeAndPrevStickerWidget> {
  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;

  @override
  void initState() {
    super.initState();
    if (widget.orgCodeController.text.isEmpty) {
      widget.orgCodeController.text = "N/A";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Org Code: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.orgCodeController,
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
                'Previous Sticker No:',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.prevStickerController,
                validatorInput: (val) {
                  // return val!.isEmpty ? 'required' : null;
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
