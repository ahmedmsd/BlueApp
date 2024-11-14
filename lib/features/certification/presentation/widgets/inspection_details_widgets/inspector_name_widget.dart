import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/collections/work_orders_assigned/work_order_assigned.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class InspectorNameWidget extends StatefulWidget {
  final CertificationRouteArguments certificationRouteArguments;
  const InspectorNameWidget(
      {super.key, required this.certificationRouteArguments});

  @override
  State<InspectorNameWidget> createState() => _InspectorNameWidgetState();
}

class _InspectorNameWidgetState extends State<InspectorNameWidget> {
  final isarService = IsarService();

  // Future<List<UserDetails>> _usersDetailsData = Future.value([]);
  List<UserDetails> usersDetailsData = [];
  UserDetails? dropdownUseDetailsValue;

  @override
  void initState() {
    getInspectorDetails();
    super.initState();
  }

  void getInspectorDetails() async {
    await isarService
        .getAllWorkOrdersAssignedByWOId(
            widget.certificationRouteArguments.workOrder!.woId)
        .then((workOrdersAssigned) async {
      for (WorkOrderAssigned workOrderAssigned in workOrdersAssigned) {
        await isarService
            .getUserDetailsByUserId(workOrderAssigned.userId ?? 0)
            .then((userDetails) {
          if (userDetails != null) {
            usersDetailsData.add(userDetails);
          }
        });
      }
      if (usersDetailsData.isEmpty) {
        await isarService
            .getUserDetailsByUserId(
                SharedPreferencesHelper.getData(key: AppConstants.userId))
            .then((userDetails) {
          if (userDetails != null) {
            usersDetailsData.add(userDetails);
          }
          dropdownUseDetailsValue = usersDetailsData.first;
          widget.certificationRouteArguments.certificationCubit!
              .changeInspectorValue(dropdownUseDetailsValue!);
          setState(() {});
        });
      } else {
        if (widget.certificationRouteArguments.certification != null) {
          dropdownUseDetailsValue = usersDetailsData.firstWhere((element) =>
              element.userId ==
              widget.certificationRouteArguments.certification!.inspectorId);
        } else {
          if (widget.certificationRouteArguments.certificationCubit!
                  .dropdownInspectorValue !=
              null) {
            dropdownUseDetailsValue = usersDetailsData.firstWhere((element) =>
                element.userId ==
                widget.certificationRouteArguments.certificationCubit!
                    .dropdownInspectorValue!.userId);
          } else {
            int currentUserId =
                SharedPreferencesHelper.getData(key: AppConstants.userId);
            dropdownUseDetailsValue = usersDetailsData
                .firstWhere((element) => element.userId == currentUserId);
          }
        }

        widget.certificationRouteArguments.certificationCubit!
            .changeInspectorValue(dropdownUseDetailsValue!);
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Inspector Name:*',
          style: TextStyle(
            fontSize: 12.0.sp,
            color: AppColors.colorText2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: const Color(0xffD4D4D4),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton<UserDetails>(
            underline: const SizedBox(),
            isExpanded: true,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            value: dropdownUseDetailsValue,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.colorIcon1,
            ),
            items: usersDetailsData.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(
                  '${e.fullNameEn}',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              dropdownUseDetailsValue = value!;

              if (dropdownUseDetailsValue != null) {
                widget.certificationRouteArguments.certificationCubit!
                    .changeInspectorValue(dropdownUseDetailsValue!);
              }

              setState(() {});
            },
            menuMaxHeight: 0.5.sh,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ],
    );
  }
}
