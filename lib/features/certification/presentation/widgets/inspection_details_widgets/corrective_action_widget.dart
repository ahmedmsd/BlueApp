import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';

class CorrectiveActionWidget extends StatefulWidget {
  final TextEditingController correctiveActionController;
  const CorrectiveActionWidget({
    super.key,
    required this.correctiveActionController,
  });

  @override
  State<CorrectiveActionWidget> createState() => _CorrectiveActionWidgetState();
}

class _CorrectiveActionWidgetState extends State<CorrectiveActionWidget> {
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;
  late FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            try {
              _focusNode.unfocus();
            } catch (e) {
              debugPrint(e.toString());
            }
          },
          child: Column(
            children: [
              SizedBox(
                height: _verticalSpace(context),
              ),
              Text(
                'Corrective action',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: _verticalSpace(context),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200.h,
          child: InputFieldMake(
            focusNode: _focusNode,
            textInputType: TextInputType.multiline,
            inputController: widget.correctiveActionController,
            validatorInput: (val) => null,
            expanded: true,
            maxLines: null,
            minLines: null,
          ),
        ),
      ],
    );
  }
}
