import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/collections/load_test_checklist_items/load_test_check_list_item.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/check_list_widgets/top_horizontal_scroll_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_app_bar.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_bottom_nav_bar.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_check_list_card_widget.dart';
import 'package:test_workapp/isar_service.dart';

class LoadTestCheckListScreen extends StatefulWidget {
  const LoadTestCheckListScreen({
    super.key,
    required this.certificationRouteArguments,
  });
  final CertificationRouteArguments certificationRouteArguments;
  // final CertificationCubit certificationCubit;

  @override
  State<LoadTestCheckListScreen> createState() => _LoadTestCheckListScreen();
}

class _LoadTestCheckListScreen extends State<LoadTestCheckListScreen> {
  bool isPaused = false;
  final isarService = IsarService();
  Future<List<ChecklistDetails>> categoriesData = Future.value([]);
  Future<List<ChecklistDetails>> checklistDetailsItemsData = Future.value([]);
  @override
  void initState() {
    if (widget.certificationRouteArguments.certification?.isLoadTestAdded ==
        true) {
      widget.certificationRouteArguments.certificationCubit
          ?.tempLoadTestChecklistItems
          .addAll(widget.certificationRouteArguments.certification!
              .loadTestCheckListItems);
    }

    categoriesData = isarService
        .getAllChecklistsDetailsCategoriesByEquAramcoId(
      168,
    )
        .then((categories) {
      for (ChecklistDetails checklistDetailsItem in categories) {
        isarService
            .getAllChecklistsDetailsCategorySubItemsByParentItemId(
          168,
          checklistDetailsItem.itemId ?? 0,
        )
            .then((checklistDetailsList) {
          for (var checklistDetailsItem in checklistDetailsList) {
            var checkListItemindex = widget.certificationRouteArguments
                .certificationCubit?.tempLoadTestChecklistItems
                .indexWhere((element) =>
                    element.checklistItemId == checklistDetailsItem.itemId);
            if (checkListItemindex == -1) {
              widget.certificationRouteArguments.certificationCubit
                  ?.tempLoadTestChecklistItems
                  .add(LoadTestCheckListItem(
                checklistId: checklistDetailsItem.checklistId,
                parentId: checklistDetailsItem.parentId,
                checklistItemId: checklistDetailsItem.itemId,
                passFail: '0',
                itemTitle: checklistDetailsItem.itemTitle,
                reference: checklistDetailsItem.reference,
              ));
            }
          }
          return checklistDetailsList;
        });
      }
      widget.certificationRouteArguments.certificationCubit
          ?.changeCheckListItemId(categories.first.itemId!);

      return categories;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return isPaused;
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: LoadTestAppBar(
          certificationRouteArguments: widget.certificationRouteArguments,
        ),
        body: Column(
          children: [
            TopHorizontalScrollWidget(
              checklistDetailsData: categoriesData,
            ),
            SizedBox(
              height: MediaQueryValues(context).screenHeight * 0.01,
            ),
            BlocConsumer<CertificationCubit, CertificationState>(
              listener: (context, state) {
                if (state is ChangeCheckListItemIdState) {
                  checklistDetailsItemsData = isarService
                      .getAllChecklistsDetailsCategorySubItemsByParentItemId(
                    168,
                    state.checkListItemId,
                  )
                      .then((checklistDetailsList) {
                    for (var checklistDetailsItem in checklistDetailsList) {
                      var checkListItemindex = widget
                          .certificationRouteArguments
                          .certificationCubit
                          ?.tempLoadTestChecklistItems
                          .indexWhere((element) =>
                              element.checklistItemId ==
                              checklistDetailsItem.itemId);
                      if (checkListItemindex == -1) {
                        widget.certificationRouteArguments.certificationCubit
                            ?.tempLoadTestChecklistItems
                            .add(LoadTestCheckListItem(
                          checklistId: checklistDetailsItem.checklistId,
                          parentId: checklistDetailsItem.parentId,
                          checklistItemId: checklistDetailsItem.itemId,
                          passFail: '0',
                          itemTitle: checklistDetailsItem.itemTitle,
                          reference: checklistDetailsItem.reference,
                        ));
                      }
                    }
                    return checklistDetailsList;
                  });
                }
              },
              builder: (context, state) {
                final cubit = context.read<CertificationCubit>();
                return FutureBuilder<List<ChecklistDetails>>(
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
                            color: AppColors.colorText2,
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
                                  color: AppColors.colorText2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  return cubit
                                          .tempLoadTestChecklistItems.isNotEmpty
                                      ? LoadTestCheckListCardWidget(
                                          checklistDetails:
                                              snapshot.data![index],
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
        ),
        bottomNavigationBar: LoadTestBottomNavBar(
          certification: widget.certificationRouteArguments.certification!,
          certificationCubit:
              widget.certificationRouteArguments.certificationCubit!,
          onNextPressed: () {
            widget.certificationRouteArguments.certificationCubit
                ?.loadTestNextStepfun();
            AppNavigator.navigateNamedReplace(
              context,
              Routes.loadTestDetailsScreen,
              arguments: widget.certificationRouteArguments,
            );
          },
          onPrevPressed: () {
            // widget.certificationRouteArguments.certificationCubit
            //     ?.prevStepFun();
            // // widget.certificationRouteArguments.certificationCubit
            // //     ?.resetCheckListsScreenValues();
            // // Navigator.of(context).pop();
            // AppNavigator.navigateNamedReplace(
            //   context,
            //   Routes.informationScreen,
            //   arguments: widget.certificationRouteArguments,
            // );
          },
        ),
      ),
    );
  }
}
