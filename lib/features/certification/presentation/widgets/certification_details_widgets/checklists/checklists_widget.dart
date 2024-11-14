import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/check_list_items/check_list_item.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/checklists/categories_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/checklists/checklist_item_widget.dart';
import 'package:test_workapp/isar_service.dart';

class ChecklistsWidget extends StatefulWidget {
  final Certification certification;
  const ChecklistsWidget({
    super.key,
    required this.certification,
  });

  @override
  State<ChecklistsWidget> createState() => _ChecklistsWidgetState();
}

class _ChecklistsWidgetState extends State<ChecklistsWidget> {
  final isarService = IsarService();
  Future<List<ChecklistDetails>> categoriesData = Future.value([]);
  Future<List<CheckListItem>> checklistDetailsItemsData = Future.value([]);

  @override
  void initState() {
    categoriesData = isarService
        .getAllChecklistsDetailsCategoriesByEquAramcoId(
      widget.certification.checklistId,
    )
        .then((categories) {
      checklistDetailsItemsData =
          isarService.getCheckListItemsByCertificationIdAndParentItemId(
              widget.certification.id, categories.first.itemId ?? 0);
      setState(() {});
      return categories;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoriesWidget(
          checklistDetailsData: categoriesData,
        ),
        SizedBox(
          height: MediaQueryValues(context).screenHeight * 0.01,
        ),
        BlocConsumer<CertificationCubit, CertificationState>(
          listener: (context, state) {
            if (state is ChangeViewCertificationCheckListItemIdState) {
              checklistDetailsItemsData =
                  isarService.getCheckListItemsByCertificationIdAndParentItemId(
                      widget.certification.id, state.checkListItemId);
            }
          },
          buildWhen: (previous, current) {
            return current is ChangeViewCertificationCheckListItemIdState;
          },
          builder: (context, state) {
            return FutureBuilder<List<CheckListItem>>(
              future: checklistDetailsItemsData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (!snapshot.hasData) {
                  return Center(
                    child: Text(
                      "There is no checklist details",
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppColors.colorText1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                } else if (snapshot.hasData) {
                  return snapshot.data!.isEmpty
                      ? Center(
                          child: Text(
                            "There is no checklist details",
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: AppColors.colorText1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            // shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return widget
                                      .certification.checkListItems.isNotEmpty
                                  ? ChecklistItemWidget(
                                      checkListItem: snapshot.data![index],
                                      checklistDetailsIndex: index + 1,
                                    )
                                  : const SizedBox();
                            },
                          ),
                        );
                } else {
                  return const SizedBox();
                }
              },
            );
          },
        ),
      ],
    );
  }
}
