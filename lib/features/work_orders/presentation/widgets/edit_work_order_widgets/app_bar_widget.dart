import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/customers/customer.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/nav.dart';
import 'package:test_workapp/isar_service.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final WorkOrder workOrder;
  const AppBarWidget({
    Key? key,
    required this.workOrder,
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(0.11.sh);
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
    return AppBar(
      toolbarHeight: 100,
      title: Column(
        children: [
          Text(
            'Work order #${widget.workOrder.woId}',
            style: AppTextStyle.textStyleApp(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
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
                return Text(
                  snapshot.data!.customerName ?? 'None',
                  style: AppTextStyle.textStyleApp(
                    color: AppColors.colorMain,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          // Text(
          //   '${workOrder.customerName ?? workOrder.customerId}',
          //   style: AppTextStyle.textStyleApp(
          //     color: AppColors.colorMain,
          //     fontSize: 14.sp,
          //   ),
          // ),
        ],
      ),
      actions: [
        if (widget.workOrder.isSynced != true &&
            widget.workOrder.customerSign != null)
          GestureDetector(
            onTap: () {
              navigateNamedTo(
                context,
                Routes.editWorkOrderScreen,
                arguments: widget.workOrder,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.workOrder.customerSign != null
                      ? AppColors.colorIcon2
                      : AppColors.colorIcon3,
                ),
                child: AppSvgIcon(
                  iconPath: AppIcons.runEditIcon,
                  iconColor: widget.workOrder.customerSign != null
                      ? Colors.white
                      : Colors.black,
                  iconSize: 20,
                ),
              ),
            ),
          ),
      ],
      elevation: 3,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    );
  }
}
