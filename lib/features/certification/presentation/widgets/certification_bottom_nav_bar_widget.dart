import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';

class CertificationBottomNavBar extends StatelessWidget {
  const CertificationBottomNavBar({
    super.key,
    required this.certificationRouteArguments,
    required this.onNextPressed,
    required this.onPrevPressed,
    this.isDisabled = false,
  });

  final CertificationRouteArguments certificationRouteArguments;

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
          (certificationRouteArguments.certificationCubit?.currentStepIndex !=
                  0)
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
                  text: (certificationRouteArguments
                              .certificationCubit!.currentStepIndex +
                          1)
                      .toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
                TextSpan(
                  text: '/4',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            isDisabled: isDisabled,
            title: (certificationRouteArguments.certification != null &&
                    certificationRouteArguments
                            .certificationCubit!.currentStepIndex ==
                        3)
                ? 'Save'
                : certificationRouteArguments
                            .certificationCubit!.currentStepIndex !=
                        3
                    ? 'Next'
                    : 'Create',
            onPressed: onNextPressed,
            width: 110.w,
            height: 45.h,
          ),
        ],
      ),
    );
  }
}
