import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/widgets/show_floating.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';
import 'package:test_workapp/isar_service.dart';

class BottomSheetWidget extends StatefulWidget {
  final WorkOrder workOrder;
  const BottomSheetWidget({
    super.key,
    required this.workOrder,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  final isarService = IsarService();
  List<Certification> notSyncedCertifications = [];

  @override
  void initState() {
    isarService
        .getAllNotSyncedCertificationsByWOId(widget.workOrder.woId)
        .then((certifications) {
      notSyncedCertifications = certifications;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.10.sh,
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Upload All Certificates',
            style: AppTextStyle.textStyleApp(
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              color: AppColors.colorText3,
            ),
          ),
          MultiBlocListener(
            listeners: [
              BlocListener<CertificationCubit, CertificationState>(
                listener: (context, state) {
                  if (state is CreateCertificationErrorState) {
                    ShowFloating.toast(message: state.errorMessage);
                  }
                },
              ),
              BlocListener<SyncCubit, SyncState>(
                listener: (context, state) {
                  if (state is SyncAllCertificationsLoadedState) {
                    isarService
                        .getAllNotSyncedCertificationsByWOId(
                            widget.workOrder.woId)
                        .then((certifications) {
                      notSyncedCertifications = certifications;

                      setState(() {});
                    });
                  } else if (state is SyncCertificationLoadedState &&
                      notSyncedCertifications.length == 1) {
                    isarService
                        .getAllNotSyncedCertificationsByWOId(
                            widget.workOrder.woId)
                        .then((certifications) {
                      notSyncedCertifications = certifications;

                      setState(() {});
                    });
                  }
                },
              ),
            ],
            child: BlocBuilder<SyncCubit, SyncState>(
              builder: (context, state) {
                final syncCubit = context.read<SyncCubit>();
                return CustomButton(
                  isDisabled: (syncCubit.isAllCertificationsSyncying == true ||
                          syncCubit.isCertificationSyncying == true ||
                          widget.workOrder.customerSign == null ||
                          syncCubit.isLocalSignedWorkOrderSyncying == true ||
                          (notSyncedCertifications.isEmpty &&
                              widget.workOrder.isSynced == true))
                      ? true
                      : false,
                  title: 'Upload',
                  radius: 10,
                  width: 0.20.sw,
                  textColor: Colors.white,
                  backgroundColor: AppColors.colorMain,
                  icon: const AppSvgIcon(
                    iconPath: AppIcons.uploadIcon,
                    iconColor: Colors.white,
                    iconSize: 30,
                  ),
                  onPressed: () async {
                    if (notSyncedCertifications.isNotEmpty) {
                      await syncCubit.syncAllCertificationsForWoFun(
                        woId: widget.workOrder.woId,
                        isarService: isarService,
                        certificationCubit: context.read<CertificationCubit>(),
                      );
                    }

                    if (widget.workOrder.isSynced == false) {
                      await syncCubit.syncLocalSignedWorkOrderFun(
                        isarService: isarService,
                        // ignore: use_build_context_synchronously
                        workOrdersCubit: context.read<WorkOrdersCubit>(),
                        workOrder: widget.workOrder,
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
