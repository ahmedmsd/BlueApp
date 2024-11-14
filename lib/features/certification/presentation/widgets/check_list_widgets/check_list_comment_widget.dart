import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class CheckListCommentWidget extends StatefulWidget {
  const CheckListCommentWidget({
    super.key,
    required this.checklistDetails,
    required this.certificationCubit,
  });
  final ChecklistDetails checklistDetails;
  final CertificationCubit certificationCubit;

  @override
  State<CheckListCommentWidget> createState() => _CheckListCommentWidgetState();
}

class _CheckListCommentWidgetState extends State<CheckListCommentWidget> {
  final TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    var index = widget.certificationCubit.tempChecklistItems.indexWhere(
        (element) => element.checklistItemId == widget.checklistDetails.itemId);
    commentController.text =
        widget.certificationCubit.tempChecklistItems[index].comment ?? '';
    super.initState();
  }

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: .6.sh,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset.zero,
            blurRadius: 10.0,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ref Number\n',
                          style: TextStyle(
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: widget.checklistDetails.reference ?? '',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.colorText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQueryValues(context).screenHeight * .02,
          ),
          Text(
            widget.checklistDetails.itemTitle ?? '',
            style: TextStyle(
              fontSize: 14.0.sp,
              color: AppColors.colorText3,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: MediaQueryValues(context).screenHeight * .02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Comments/Remarks',
              style: TextStyle(
                color: AppColors.colorText2,
                fontSize: 14.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 0.13.sh,
            child: InputFieldMake(
              inputController: commentController,
              validatorInput: (val) {
                return null;
              },
              expanded: true,
              maxLines: null,
              minLines: null,
            ),
          ),
          // const Expanded(child: Divider()),
          Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              title: 'Save',
              onPressed: () {
                var index = widget.certificationCubit.tempChecklistItems
                    .indexWhere((element) =>
                        element.checklistItemId ==
                        widget.checklistDetails.itemId);
                widget.certificationCubit.tempChecklistItems
                    .elementAt(index)
                    .comment = commentController.text;

                Navigator.of(context).pop();
                // widget.checkListItem.comment =
                //     commentController.text;
                // isarService.addCheckListItem(
                //     widget.checkListItem);
                // Navigator.of(context).pop();
                // setState(() {});
              },
              width: 110.w,
            ),
          ),
        ],
      ),
    );
  }
}
