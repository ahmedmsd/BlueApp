import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:test_workapp/collections/customers/customer.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/isar_service.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final WorkOrder workOrder;
  final bool isSearch;
  const AppBarWidget({
    Key? key,
    required this.workOrder,
    required this.isSearch,
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 0.14.sh);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final isarService = IsarService();
  Future<Customer?> _customerData = Future.value();

  @override
  void initState() {
    _customerData =
        isarService.getCustomerByCustomerId(widget.workOrder.customerId ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SyncCubit, SyncState>(
      builder: (context, state) {
        final syncCubit = context.read<SyncCubit>();
        return AppBar(
          leading: IconButton(
            onPressed: () {
              if (widget.isSearch) {
                Navigator.of(context).pop();
              } else {
                AppNavigator.navigateNamedFinish(
                  context,
                  Routes.layoutScreen,
                );
              }
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(
            'Work Order Certifications',
            style: TextStyle(
              fontSize: 16.0.sp,
              color: AppColors.colorText1,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 3,
          actions: syncCubit.isCertificationSyncying == true ||
                  syncCubit.isAllCertificationsSyncying == true ||
                  syncCubit.isLocalSignedWorkOrderSyncying == true
              ? null
              : [
                  InkWell(
                    onTap: () {
                      AppNavigator.navigateNamedTo(
                        context,
                        Routes.searchCertificationScreen,
                        arguments: widget.workOrder,
                      );
                    },
                    child: const AppSvgIcon(
                      iconPath: AppIcons.searchIcon,
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      AppNavigator.navigateNamedTo(
                        context,
                        Routes.informationScreen,
                        arguments: CertificationRouteArguments(
                          workOrder: widget.workOrder,
                          certificationCubit:
                              context.read<CertificationCubit>(),
                        ),
                      );
                    },
                    child: const AppSvgIcon(
                      iconPath: AppIcons.addIcon,
                      iconSize: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.14.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FutureBuilder<Customer?>(
                  future: _customerData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (!snapshot.hasData) {
                      return Center(
                        child: Text(
                          "None",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            color: AppColors.colorText3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Center(
                          child: Text(
                            snapshot.data!.customerName ?? 'None',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.textStyleApp(
                              color: AppColors.colorText3,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppSvgIcon(
                            iconPath: AppIcons.dateIcon,
                            iconColor: AppColors.colorMain,
                            iconSize: 20,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: AppTextStyle.textStyleApp(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.colorText3,
                                ),
                              ),
                              Text(
                                DateFormat('dd/M/yyyy').format(
                                  DateTime.parse('${widget.workOrder.woDate}'),
                                ),
                                style: AppTextStyle.textStyleApp(
                                  fontSize: 14.sp,
                                  color: AppColors.colorText3,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppSvgIcon(
                            iconPath: AppIcons.workIcon,
                            iconColor: AppColors.colorMain,
                            iconSize: 20,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Work order',
                                style: AppTextStyle.textStyleApp(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.colorText3,
                                ),
                              ),
                              Text(
                                '#${widget.workOrder.woId}',
                                style: AppTextStyle.textStyleApp(
                                  fontSize: 14.sp,
                                  color: AppColors.colorText3,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      FaIcon(
                        FontAwesomeIcons.checkDouble,
                        color: ((widget.workOrder.customerSign != null &&
                                    widget.workOrder.customerSign !=
                                        "https://epksa.com/v1/null") ||
                                (widget.workOrder.isSynced == true &&
                                    widget.workOrder.isUploaded == true))
                            ? AppColors.colorIcon2
                            : AppColors.colorIcon3,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        );
      },
    );
  }
}
