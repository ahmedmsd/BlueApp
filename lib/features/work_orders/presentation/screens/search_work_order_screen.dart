import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/home_widgets/work_order_card_widget.dart';
import 'package:test_workapp/isar_service.dart';

class SearchWorkOrderScreen extends StatefulWidget {
  const SearchWorkOrderScreen({super.key});

  @override
  State<SearchWorkOrderScreen> createState() => _SearchWorkOrderScreenState();
}

class _SearchWorkOrderScreenState extends State<SearchWorkOrderScreen> {
  final TextEditingController searchController = TextEditingController();
  final isarService = IsarService();
  Future<WorkOrder?> _workOrderData = Future.value();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Work Orders',
          style: TextStyle(
            fontSize: 16.0.sp,
            color: AppColors.colorText1,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            AppNavigator.navigateNamedFinish(
              context,
              Routes.layoutScreen,
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
        elevation: 3,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.1.sh),
          child: InputFieldMake(
            setWidth: 0.80.sw,
            inputController: searchController,
            // isNumber: true,
            textInputType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r'[0-9]'),
              ),
            ],
            validatorInput: (input) {
              if (input!.trim().isEmpty) {
                return "required";
              }

              return null;
            },
            hintText: 'type a work order number',
            onFieldSubmitted: (value) {
              if (int.tryParse(value) != null) {
                _workOrderData = isarService.searchWorkOrders(int.parse(value));

                // isarService
                //     .getWorkOrderAssignedByWoId(int.parse(value))
                //     .then((workOrderAssigned) {
                //   if (workOrderAssigned != null) {
                //     _workOrderData =
                //         isarService.getWorkOrderByWoId(int.parse(value));
                //   } else {
                //     _workOrderData = Future.value();
                //     setState(() {});
                //   }
                // });

                setState(() {});
              } else {
                _workOrderData = Future.value();
                setState(() {});
              }
            },
            onChanged: (value) async {
              if (int.tryParse(value) != null) {
                _workOrderData = isarService.searchWorkOrders(int.parse(value));

                // isarService
                //     .getWorkOrderAssignedByWoId(int.parse(value))
                //     .then((workOrderAssigned) {
                //   if (workOrderAssigned != null) {
                //     _workOrderData =
                //         isarService.getWorkOrderByWoId(int.parse(value));
                //   } else {
                //     _workOrderData = Future.value();
                //     setState(() {});
                //   }
                // });

                setState(() {});
              } else {
                _workOrderData = Future.value();
                setState(() {});
              }
            },
            prefixIcon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: AppSvgIcon(
                iconColor: AppColors.colorIcon1,
                iconPath: AppIcons.searchIcon,
                iconSize: 20,
              ),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          FutureBuilder<WorkOrder?>(
            future: _workOrderData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (!snapshot.hasData) {
                if (searchController.text.trim().isEmpty) {
                  return const SizedBox();
                } else {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(" There is no work order with this number"),
                    ),
                  );
                }
              } else if (snapshot.hasData) {
                if (snapshot.data != null) {
                  return WorkOrderCardWidget(
                    workOrder: snapshot.data!,
                    isSearch: true,
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(" There is no work order with this number"),
                    ),
                  );
                }
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
