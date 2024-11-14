import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
    required this.checklistDetailsData,
  }) : super(key: key);

  final Future<List<ChecklistDetails>> checklistDetailsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade400.withOpacity(0.7),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
      child: FutureBuilder<List<ChecklistDetails>>(
        future: checklistDetailsData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: Text(
                "There is no checklists",
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: AppColors.colorText1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            // if (snapshot.data!.isNotEmpty) {
            //   context
            //       .read<CertificationCubit>()
            //       .changeCheckListItemId(snapshot.data!.first.itemId!);
            // }
            return snapshot.data!.isEmpty
                ? Center(
                    child: Text(
                      "There is no checklists yet",
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppColors.colorText1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : BlocBuilder<CertificationCubit, CertificationState>(
                    buildWhen: (previous, current) {
                      return current is ChangeViewCertificationCategoryState;
                    },
                    builder: (context, state) {
                      final cubit = context.read<CertificationCubit>();

                      return ListView.separated(
                        itemCount: snapshot.data!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              cubit.changeViewCertificationCategoryIndex(index);
                              cubit.changeViewCertificationCheckListItemId(
                                  snapshot.data![index].itemId ?? 0);
                            },
                            child: Center(
                              child: Container(
                                height: 40.0.h,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cubit.viewCertificationCategoryIndex ==
                                          index
                                      ? AppColors.colorBackground5
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: Text(
                                  snapshot.data![index].itemTitle ?? '',
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        cubit.viewCertificationCategoryIndex ==
                                                index
                                            ? Colors.white
                                            : AppColors.colorText1,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                            ),
                            child: Container(
                              width: 1.0,
                              height: 5.0,
                              color: Colors.grey,
                            ),
                          );
                        },
                      );
                    },
                  );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
