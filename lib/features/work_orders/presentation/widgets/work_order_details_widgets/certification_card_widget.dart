import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/work_order_details_widgets/certification_equ_type_widget.dart';
import 'package:test_workapp/isar_service.dart';

class CertificationCardWidget extends StatelessWidget {
  const CertificationCardWidget({
    super.key,
    required this.certification,
    required this.syncCubit,
    required this.workOrder,
  });
  final Certification certification;
  final SyncCubit syncCubit;
  final WorkOrder workOrder;

  @override
  Widget build(BuildContext context) {
    final isarService = IsarService();
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.colorBackground4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: AppColors.colorBorder2,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Certification No :',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText1,
                          ),
                        ),
                        Text(
                          'TEST-${certification.certificationName}',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText2,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sticker No :',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText1,
                          ),
                        ),
                        Text(
                          '${certification.newSticker}',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: certification.testResult == '1'
                                ? Colors.blue
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      height: 20,
                    ),
                    BlocBuilder<SyncCubit, SyncState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status :',
                              style: AppTextStyle.textStyleApp(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.colorText1,
                              ),
                            ),
                            Row(
                              children: [
                                certification.isSynced == true
                                    ? const FaIcon(
                                        FontAwesomeIcons.checkDouble,
                                        color: AppColors.colorIcon2,
                                      )
                                    : const AppSvgIcon(
                                        iconPath: AppIcons.timeIcon,
                                        // iconColor: AppColors.colorMain,
                                        iconColor: Colors.amber,
                                        iconSize: 30,
                                      ),
                                const SizedBox(
                                  width: 5,
                                ),
                                certification.isSynced == true
                                    ? Text(
                                        'Uploaded',
                                        style: AppTextStyle.textStyleApp(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.colorText2,
                                        ),
                                      )
                                    : Text(
                                        'In-Progress',
                                        style: AppTextStyle.textStyleApp(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.colorText2,
                                        ),
                                      ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                    const Divider(
                      thickness: 1,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Eq. Type :',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText1,
                          ),
                        ),
                        CertificationEquTypeWidget(
                          equId: certification.eqType,
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Eq. Serial No :',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText1,
                          ),
                        ),
                        Text(
                          certification.eqSerial,
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText2,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Load Test :',
                          style: AppTextStyle.textStyleApp(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorText1,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (certification.isLoadTestAdded == true) {
                                  AppNavigator.navigateNamedTo(
                                    context,
                                    Routes.loadTestViewScreen,
                                    arguments: certification,
                                  );
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: certification.isLoadTestAdded == true
                                      ? AppColors.colorBackground3
                                      : AppColors.colorBackground3
                                          .withOpacity(0.20),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const AppSvgIcon(
                                  iconPath: AppIcons.eyeIcon,
                                  iconSize: 30,
                                  iconColor: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                if (certification.isSynced == false) {
                                  AppNavigator.navigateNamedTo(
                                    context,
                                    Routes.loadTestCheckListScreen,
                                    arguments: CertificationRouteArguments(
                                      certification: certification,
                                      certificationCubit:
                                          context.read<CertificationCubit>(),
                                      workOrder: workOrder,
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: certification.isSynced == true
                                      ? AppColors.colorBackground3
                                          .withOpacity(0.20)
                                      : AppColors.colorBackground3,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: AppSvgIcon(
                                  // iconPath: AppIcons.editIcon,
                                  iconPath:
                                      certification.isLoadTestAdded == true
                                          ? AppIcons.editIcon
                                          : AppIcons.addIcon2,
                                  iconSize: 30,
                                  iconColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            child: Column(
              children: [
                // Edit cert button
                InkWell(
                  onTap: () {
                    if (certification.isSynced == false) {
                      AppNavigator.navigateNamedTo(
                        context,
                        Routes.informationScreen,
                        arguments: CertificationRouteArguments(
                          certification: certification,
                          certificationCubit:
                              context.read<CertificationCubit>(),
                          workOrder: workOrder,
                        ),
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: certification.isSynced == true
                          ? AppColors.colorBackground3.withOpacity(0.20)
                          : AppColors.colorBackground3,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const AppSvgIcon(
                      iconPath: AppIcons.editIcon,
                      iconSize: 30,
                      iconColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                // View cert button
                InkWell(
                  onTap: () {
                    AppNavigator.navigateNamedTo(
                      context,
                      Routes.certificationDetailsScreen,
                      arguments: certification,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.colorBackground3,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const AppSvgIcon(
                      iconPath: AppIcons.eyeIcon,
                      iconSize: 30,
                      iconColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

                //SYNC cert button
                InkWell(
                  onTap: () {
                    if (certification.isSynced == false &&
                        workOrder.customerSign != null) {
                      syncCubit.syncCertificationFun(
                        isarService: isarService,
                        certificationCubit: context.read<CertificationCubit>(),
                        certification: certification,
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: certification.isSynced == true ||
                              workOrder.customerSign == null
                          ? AppColors.colorMain.withOpacity(0.20)
                          : AppColors.colorMain,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const AppSvgIcon(
                      iconPath: AppIcons.uploadIcon,
                      iconSize: 30,
                      iconColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
