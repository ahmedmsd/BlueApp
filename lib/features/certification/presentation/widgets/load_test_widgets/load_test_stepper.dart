import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/start_certification_app_bar_widgets/step_icon_and_dot_line_widget.dart';

class LoadTestStepper extends StatelessWidget {
  const LoadTestStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CertificationCubit, CertificationState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = context.read<CertificationCubit>();

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              // cubit.stepsScreensList.length,
              2,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StepIconAndDotLineWidget(
                    iconPath: _iconPathList[index],
                    // lastStep: (index == cubit.stepsScreensList.length - 1)
                    lastStep: (index == 1) ? true : false,
                    iconColor: index > cubit.loadTestCurrentStepIndex
                        ? Colors.black
                        : Colors.white,
                    circleColor: _circleColor(
                      circleIndex: index,
                      currentStepIndex: cubit.loadTestCurrentStepIndex,
                    ),
                    currentStep:
                        index <= cubit.loadTestCurrentStepIndex ? true : false,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    _stepTextList[index],
                    style: index == cubit.loadTestCurrentStepIndex
                        ? _currentStepTextStyle()
                        : _notCurrentStepTextStyle(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  TextStyle _currentStepTextStyle() => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 13.0.sp,
        color: Colors.black,
      );

  TextStyle _notCurrentStepTextStyle() => TextStyle(fontSize: 13.0.sp);

  Color _circleColor(
      {required int currentStepIndex, required int circleIndex}) {
    if (circleIndex == currentStepIndex) {
      return AppColors.colorMain;
    } else if (circleIndex < currentStepIndex) {
      return AppColors.colorMain.withOpacity(0.4);
    } else {
      return Colors.grey.shade300;
    }
  }
}

final List<String> _stepTextList = [
  // 'Information\n',
  'Checklist\n',
  'Load Test\n Details',
  // 'Attached\n   photo'
];

final List<String> _iconPathList = [
  // AppIcons.listIcon,
  AppIcons.checkListIcon,
  AppIcons.paperIcon,
  // AppIcons.imageIcon,
];
