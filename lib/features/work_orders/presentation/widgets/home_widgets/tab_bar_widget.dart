import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/isar_service.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final service = IsarService();
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Center(
        child: TabBar(
          // give the indicator a decoration (color and border radius)
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: AppColors.colorBackground5,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelPadding: const EdgeInsets.symmetric(horizontal: 15),
          isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
          tabs: [
            const Tab(
              text: 'All',
            ),
            Tab(
              child: Row(
                children: [
                  const Text(
                    'New',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  FutureBuilder<int>(
                    future: service.getNewWorkOrdersCount(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox();
                      } else if (!snapshot.hasData) {
                        return const SizedBox();
                      } else if (snapshot.hasData) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorMain,
                          ),
                          child: Text(
                            '${snapshot.data}',
                            style: AppTextStyle.textStyleApp(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  const Text('Progress'),
                  const SizedBox(
                    width: 5,
                  ),
                  FutureBuilder<int>(
                    future: service.getProgressWorkOrdersCount(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox();
                      } else if (!snapshot.hasData) {
                        return const SizedBox();
                      } else if (snapshot.hasData) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorMain,
                          ),
                          child: Text(
                            '${snapshot.data}',
                            style: AppTextStyle.textStyleApp(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  const Text('Signed'),
                  const SizedBox(
                    width: 5,
                  ),
                  FutureBuilder<int>(
                    future: service.getSignedWorkOrdersCount(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox();
                      } else if (!snapshot.hasData) {
                        return const SizedBox();
                      } else if (snapshot.hasData) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorMain,
                          ),
                          child: Text(
                            '${snapshot.data}',
                            style: AppTextStyle.textStyleApp(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  const Text('Uploaded'),
                  const SizedBox(
                    width: 5,
                  ),
                  FutureBuilder<int>(
                    future: service.getUploadedWorkOrdersCount(),
                    // future: service
                    //     .getAllUploadedWorkOrdersForCurrentUser()
                    //     .then((value) => value.length),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox();
                      } else if (!snapshot.hasData) {
                        return const SizedBox();
                      } else if (snapshot.hasData) {
                        return Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.colorMain,
                          ),
                          child: Text(
                            '${snapshot.data}',
                            style: AppTextStyle.textStyleApp(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
