import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/app_text_styles.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/stepper_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Certification certification;
  final CertificationCubit certificationCubit;
  const AppBarWidget({
    Key? key,
    required this.certification,
    required this.certificationCubit,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 0.14.sh);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          certificationCubit.resetViewCertificationCurrentStepIndex();
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(
        'Certification No: TEST-${certification.certificationName}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyle.textStyleApp(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.colorMain,
        ),
      ),
      elevation: 1.0,
      backgroundColor: Colors.white,
      // automaticallyImplyLeading:
      //     cubit.commentBottomSheetIsRender ? false : true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.14.sh),
        child: const StepperWidget(),
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
