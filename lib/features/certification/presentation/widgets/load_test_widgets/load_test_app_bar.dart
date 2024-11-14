import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_stepper.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';

class LoadTestAppBar extends StatelessWidget implements PreferredSizeWidget {
  final CertificationRouteArguments certificationRouteArguments;
  const LoadTestAppBar({
    Key? key,
    required this.certificationRouteArguments,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 0.14.sh);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      leading: IconButton(
        onPressed: () {
          certificationRouteArguments.certificationCubit!
              .resetLoadTestForCertificationFun();
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          certificationRouteArguments.certification?.isLoadTestAdded == true
              ? Text(
                  'Edit Load Test',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText1,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Text(
                  'Start Load Test',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          SizedBox(
            height: 10.h,
          ),
          certificationRouteArguments.certification != null
              ? Text(
                  'Certification No: TEST-${certificationRouteArguments.certification?.certificationName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.textStyleApp(
                    fontSize: 14.sp,
                    color: AppColors.colorMain,
                  ),
                )
              : Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  'Certification No: TEST-${SharedPreferencesHelper.getData(key: AppConstants.empCode)}-${certificationRouteArguments.workOrder!.woId}-${certificationRouteArguments.workOrder!.sequence! + 1}',
                  style: AppTextStyle.textStyleApp(
                    fontSize: 14.sp,
                    color: AppColors.colorMain,
                  ),
                ),
        ],
      ),
      elevation: 1.0,
      backgroundColor: Colors.white,
      // automaticallyImplyLeading:
      //     cubit.commentBottomSheetIsRender ? false : true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.14.sh),
        child: const LoadTestStepper(),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
    );
  }
}
