import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/features/checklists/presentation/cubit/checklists_cubit.dart';
import 'package:test_workapp/features/cities/presentation/cubit/cities_cubit.dart';
import 'package:test_workapp/features/customers/presentation/cubit/customers_cubit.dart';
import 'package:test_workapp/features/departments/presentation/cubit/departments_cubit.dart';
import 'package:test_workapp/features/equipments/presentation/cubit/equipments_cubit.dart';
import 'package:test_workapp/features/regions/presentation/cubit/regions_cubit.dart';
import 'package:test_workapp/features/sticker/presentation/cubit/sticker_cubit.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/users/presentation/cubit/users_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class AppbarLayout extends StatelessWidget implements PreferredSizeWidget {
  AppbarLayout({
    Key? key,
  }) : super(key: key);
  final isarService = IsarService();

  @override
  Size get preferredSize => Size.fromHeight(0.09.sh);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      centerTitle: false,
      leadingWidth: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat('dd/M/yyyy').format(DateTime.parse('${DateTime.now()}')),
            style: AppTextStyle.textStyleApp(
              color: AppColors.colorText4,
              fontSize: 16.sp,
            ),
          ),
          FutureBuilder<UserDetails?>(
            future: isarService.getUserDetailsByUserId(
                SharedPreferencesHelper.getData(key: AppConstants.userId)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox();
              } else if (!snapshot.hasData) {
                return const Center(
                  child: Text(""),
                );
              } else if (snapshot.hasData) {
                return Text(
                  '${snapshot.data!.fullNameEn}',
                  style: AppTextStyle.textStyleApp(
                    color: AppColors.colorMain,
                    fontSize: 18.sp,
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
      actions: context.read<SyncCubit>().isAllDataSyncying
          ? null
          : [
              InkWell(
                onTap: () async {
                  await context.read<SyncCubit>().syncAllDataFun(
                        isarService: isarService,
                        usersCubit: context.read<UsersCubit>(),
                        stickerCubit: context.read<StickerCubit>(),
                        checklistsCubit: context.read<ChecklistsCubit>(),
                        departmentsCubit: context.read<DepartmentsCubit>(),
                        equipmentsCubit: context.read<EquipmentsCubit>(),
                        customersCubit: context.read<CustomersCubit>(),
                        workOrdersCubit: context.read<WorkOrdersCubit>(),
                        regionsCubit: context.read<RegionsCubit>(),
                        citiesCubit: context.read<CitiesCubit>(),
                        isInternal: true,
                      );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const AppSvgIcon(
                    iconPath: AppIcons.downloadIcon,
                    iconColor: AppColors.colorMain,
                    iconSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  AppNavigator.navigateNamedTo(
                    context,
                    Routes.searchWorkOrderScreen,
                  );
                },
                child: const AppSvgIcon(
                  iconPath: AppIcons.searchIcon,
                  iconSize: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              // const AppSvgIcon(
              //   iconPath: AppIcons.alertIcon,
              //   iconSize: 30,
              // ),
              // const SizedBox(
              //   width: 5,
              // ),
            ],
    );
  }
}
