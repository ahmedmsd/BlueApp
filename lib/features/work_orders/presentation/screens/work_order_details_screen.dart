import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/work_order_details_route_arguments.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/work_order_details_widgets/app_bar_widget.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/work_order_details_widgets/bottom_sheet_widget.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/work_order_details_widgets/certification_card_widget.dart';
import 'package:test_workapp/isar_service.dart';

class WorkOrderDetailsScreen extends StatefulWidget {
  // final WorkOrder workOrder;
  final WorkOrderDetailsRouteArguments workOrderDetailsRouteArguments;
  const WorkOrderDetailsScreen(
      {Key? key, required this.workOrderDetailsRouteArguments})
      : super(key: key);

  @override
  State<WorkOrderDetailsScreen> createState() => _WorkOrderDetailsScreenState();
}

class _WorkOrderDetailsScreenState extends State<WorkOrderDetailsScreen> {
  final isarService = IsarService();
  // Future<List<Certification>> _certificationsData = Future.value([]);

  @override
  void initState() {
    // _certificationsData =
    //     isarService.getCertificationsByWoId(widget.workOrder.woId ?? 0);
    // _certificationsData = isarService.getCertificationsFor(widget.workOrder);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground2,
      appBar: AppBarWidget(
        workOrder: widget.workOrderDetailsRouteArguments.workOrder,
        isSearch: widget.workOrderDetailsRouteArguments.isSearch,
      ),
      bottomSheet: BottomSheetWidget(
          workOrder: widget.workOrderDetailsRouteArguments.workOrder),
      body: BlocConsumer<SyncCubit, SyncState>(
        listener: (context, state) {
          if (state is SyncLocalSignedWorkOrderErrorState) {
            _showMyDialog(
              context: context,
              isarService: isarService,
              errorMessage: state.errorMessage,
            );
          }
        },
        builder: (context, state) {
          final syncCubit = context.read<SyncCubit>();
          return syncCubit.isCertificationSyncying == true ||
                  syncCubit.isAllCertificationsSyncying == true ||
                  syncCubit.isLocalSignedWorkOrderSyncying == true
              ? const Center(child: CircularProgressIndicator.adaptive())
              : Container(
                  margin: EdgeInsets.only(bottom: 0.10.sh, top: 10),
                  child: FutureBuilder<List<Certification>>(
                    //! getting certification by woId in case all data was synced
                    //! and certifications for this wo  has not been synced yet
                    future: isarService.getCertificationsByWoId(
                        widget.workOrderDetailsRouteArguments.workOrder.woId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (!snapshot.hasData) {
                        return Center(
                          child: Text(
                            "There is no certifications",
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: AppColors.colorText3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      } else if (snapshot.hasData) {
                        return snapshot.data!.isEmpty
                            ? Center(
                                child: Text(
                                  "There is no certifications yet",
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    color: AppColors.colorText3,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : ListView.builder(
                                itemBuilder: (context, index) =>
                                    CertificationCardWidget(
                                  certification: snapshot.data![index],
                                  syncCubit: syncCubit,
                                  workOrder: widget
                                      .workOrderDetailsRouteArguments.workOrder,
                                ),
                                itemCount: snapshot.data!.length,
                              );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                );
        },
      ),
    );
  }
}

Future<void> _showMyDialog(
    {required BuildContext context,
    required IsarService isarService,
    required String errorMessage}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Text(''),
              Text(errorMessage),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
