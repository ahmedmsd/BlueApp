import 'package:flutter/material.dart';
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
import 'package:test_workapp/core/widgets/nav.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/work_order_details_route_arguments.dart';
import 'package:test_workapp/isar_service.dart';

class WorkOrderCardWidget extends StatefulWidget {
  const WorkOrderCardWidget({
    super.key,
    required this.workOrder,
    required this.isSearch,
  });

  final WorkOrder workOrder;
  final bool isSearch;

  @override
  State<WorkOrderCardWidget> createState() => _WorkOrderCardWidgetState();
}

class _WorkOrderCardWidgetState extends State<WorkOrderCardWidget> {
  final isarService = IsarService();
  Future<Customer?> _customerData = Future.value();

  @override
  void initState() {
    if (widget.workOrder.customerId != null) {
      _customerData =
          isarService.getCustomerByCustomerId(widget.workOrder.customerId!);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.navigateNamedTo(
          context,
          Routes.workOrderDetailsScreen,
          arguments: WorkOrderDetailsRouteArguments(
            workOrder: widget.workOrder,
            isSearch: widget.isSearch,
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: AppColors.colorBorder2,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: AppColors.colorText3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      } else if (snapshot.hasData) {
                        return SizedBox(
                          width: 0.7.sw,
                          child: Text(
                            snapshot.data!.customerName ?? 'None',
                            maxLines: null,
                            style: AppTextStyle.textStyleApp(
                              color: AppColors.colorText3,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Work Order #${widget.workOrder.woId}',
                    style: AppTextStyle.textStyleApp(
                      color: AppColors.colorText1,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const AppSvgIcon(
                        iconPath: AppIcons.dateIcon,
                        iconColor: AppColors.colorIcon3,
                        iconSize: 20,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        DateFormat('dd/M/yyyy').format(
                            DateTime.parse('${widget.workOrder.woDate}')),
                        style: AppTextStyle.textStyleApp(
                          color: AppColors.colorText3,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      const AppSvgIcon(
                        iconPath: AppIcons.paperIcon,
                        iconColor: AppColors.colorIcon3,
                        iconSize: 20,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '${widget.workOrder.sequence ?? 0}',
                        style: AppTextStyle.textStyleApp(
                          color: AppColors.colorText3,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if ((widget.workOrder.customerSign != null &&
                                  widget.workOrder.customerSign !=
                                      "https://epksa.com/v1/null") ||
                              (widget.workOrder.isSynced == true &&
                                  widget.workOrder.isUploaded == true)) {
                            navigateNamedTo(
                              context,
                              Routes.viewWorkOrderSignatureScreen,
                              arguments: widget.workOrder,
                            );
                          } else {
                            navigateNamedTo(
                              context,
                              Routes.editWorkOrderScreen,
                              arguments: widget.workOrder,
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (widget.workOrder.customerSign != null &&
                                        widget.workOrder.customerSign !=
                                            "https://epksa.com/v1/null") ||
                                    (widget.workOrder.isSynced == true &&
                                        widget.workOrder.isUploaded == true)
                                ? AppColors.colorIcon2
                                : AppColors.colorIcon3,
                          ),
                          child: AppSvgIcon(
                            iconPath: AppIcons.runEditIcon,
                            iconColor: (widget.workOrder.customerSign != null &&
                                        widget.workOrder.customerSign !=
                                            "https://epksa.com/v1/null") ||
                                    (widget.workOrder.isSynced == true &&
                                        widget.workOrder.isUploaded == true)
                                ? Colors.white
                                : Colors.black,
                            iconSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.checkDouble,
                        color: (widget.workOrder.customerSign != null &&
                                    widget.workOrder.customerSign !=
                                        "https://epksa.com/v1/null" &&
                                    widget.workOrder.isSynced == true) ||
                                (widget.workOrder.isSynced == true &&
                                    widget.workOrder.isUploaded == true)
                            ? AppColors.colorIcon2
                            : AppColors.colorIcon3,
                        // color: widget.workOrder.isSynced == true
                        //     ? AppColors.colorIcon2
                        //     : AppColors.colorIcon3,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
