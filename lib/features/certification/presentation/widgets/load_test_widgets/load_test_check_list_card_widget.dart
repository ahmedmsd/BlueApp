import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/collections/load_test_checklist_items/load_test_check_list_item.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/custom_radio_menu_button.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_comment_widget.dart';
import 'package:test_workapp/isar_service.dart';

class LoadTestCheckListCardWidget extends StatefulWidget {
  const LoadTestCheckListCardWidget({
    Key? key,
    required this.checklistDetails,
    required this.checklistDetailsIndex,
  }) : super(key: key);

  final ChecklistDetails checklistDetails;
  final int checklistDetailsIndex;

  @override
  State<LoadTestCheckListCardWidget> createState() =>
      _LoadTestCheckListCardWidgetState();
}

class _LoadTestCheckListCardWidgetState
    extends State<LoadTestCheckListCardWidget> {
  final isarService = IsarService();

  String groupvalue = "0";

  // final int index;
  final double _cardPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CertificationCubit>();
    var index = cubit.tempLoadTestChecklistItems.indexWhere(
        (element) => element.checklistItemId == widget.checklistDetails.itemId);
    if (index != -1) {
      groupvalue =
          cubit.tempLoadTestChecklistItems.elementAt(index).passFail ?? '0';
    } else {
      cubit.tempLoadTestChecklistItems.add(LoadTestCheckListItem(
        checklistId: widget.checklistDetails.checklistId,
        checklistItemId: widget.checklistDetails.itemId,
        passFail: groupvalue,
      ));
    }

    return Container(
      width: double.infinity,
      // height: 160.0.h,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      padding: EdgeInsets.symmetric(horizontal: _cardPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: AppColors.colorText4,
          width: 0.5,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset.zero,
              blurRadius: 20),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.0.w,
                height: 35.0.h,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  (widget.checklistDetailsIndex).toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0.sp,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 0.7.sw,
                    child: Text(
                      widget.checklistDetails.itemTitle ?? '',
                      // overflow: TextOverflow.ellipsis,
                      maxLines: null,
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: 0.7.sw,
                    child: Text(
                      widget.checklistDetails.reference ?? '',
                      maxLines: null,
                      style: TextStyle(
                        fontSize: 14.0.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Divider(
              indent: 0.0,
              endIndent: 0.0,
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          // COmment
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: LoadTestCheckListCommentWidget(
                                checklistDetails: widget.checklistDetails,
                                certificationCubit: cubit,
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: AppSvgIcon(
                              iconPath: AppIcons.commentIcon,
                              iconColor: cubit.tempLoadTestChecklistItems
                                          .elementAt(index)
                                          .comment ==
                                      null
                                  ? null
                                  : Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // if (widget.checkListItem.comment != null)
                    //   const Text('1'),
                  ],
                ),
              ),
              CustomRadioMenuButton(
                childText: 'Pass',
                value: "1",
                groupValue: groupvalue,
                onChange: (val) async {
                  groupvalue = val;

                  // var index = cubit.checklistItems.indexWhere((element) =>
                  //     element.checklistItemId ==
                  //     widget.checklistDetails.itemId);
                  cubit.tempLoadTestChecklistItems.elementAt(index).passFail =
                      val;

                  setState(() {});
                  // widget.checkListItem.status = val;
                  // await isarService.addCheckListItem(widget.checkListItem);
                },
                childTextSize: 15,
                childTextLetterSpacing: -0.5,
              ),
              CustomRadioMenuButton(
                childText: 'Fail',
                value: "2",
                groupValue: groupvalue,
                onChange: (val) async {
                  groupvalue = val;

                  // var index = cubit.checklistItems.indexWhere((element) =>
                  //     element.checklistItemId ==
                  //     widget.checklistDetails.itemId);
                  cubit.tempLoadTestChecklistItems.elementAt(index).passFail =
                      val;

                  setState(() {});
                  // widget.checkListItem.status = val;
                  // await isarService.addCheckListItem(widget.checkListItem);
                },
                childTextSize: 15,
                childTextLetterSpacing: -0.5,
              ),
              CustomRadioMenuButton(
                childText: 'N / A',
                value: "0",
                groupValue: groupvalue,
                onChange: (val) async {
                  groupvalue = val;

                  // var index = cubit.checklistItems.indexWhere((element) =>
                  //     element.checklistItemId ==
                  //     widget.checklistDetails.itemId);
                  cubit.tempLoadTestChecklistItems.elementAt(index).passFail =
                      val;

                  setState(() {});
                  // widget.checkListItem.status = val;
                  // await isarService.addCheckListItem(widget.checkListItem);
                },
                childTextSize: 15,
                childTextLetterSpacing: -0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
