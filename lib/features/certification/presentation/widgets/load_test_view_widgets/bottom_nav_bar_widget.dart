import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required this.certificationCubit,
    required this.onNextPressed,
    required this.onPrevPressed,
    this.isDisabled = false,
  });

  final CertificationCubit certificationCubit;
  final VoidCallback? onNextPressed;
  final VoidCallback? onPrevPressed;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          (certificationCubit.viewLoadTestCurrentStepIndex != 0)
              ? CustomButton(
                  title: 'Prev',
                  onPressed: onPrevPressed,
                  height: 45.h,
                  width: 110.w,
                  backgroundColor: Colors.grey.shade200,
                  textColor: AppColors.colorText2,
                  elevation: 0.0,
                  borderSide: const BorderSide(width: 0.5),
                  radius: 8.0,
                )
              : SizedBox(
                  width: 110.w,
                ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: (certificationCubit.viewLoadTestCurrentStepIndex + 1)
                      .toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
                TextSpan(
                  text: '/2',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          (certificationCubit.viewLoadTestCurrentStepIndex < 1)
              ? CustomButton(
                  isDisabled: isDisabled,
                  title: 'Next',
                  onPressed: onNextPressed,
                  width: 110.w,
                  height: 45.h,
                )
              : SizedBox(
                  width: 110.w,
                ),
        ],
      ),
    );
  }
}
