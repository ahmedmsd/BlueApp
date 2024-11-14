import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_view_widgets/app_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_view_widgets/bottom_nav_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_view_widgets/checklists_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_view_widgets/details_widget.dart';

class LoadTestViewScreen extends StatelessWidget {
  final Certification certification;

  const LoadTestViewScreen({
    super.key,
    required this.certification,
  });

  final bool isPaused = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CertificationCubit, CertificationState>(
      builder: (context, state) {
        final cubit = context.read<CertificationCubit>();
        return WillPopScope(
          onWillPop: () async {
            return isPaused;
          },
          child: Scaffold(
            appBar: AppBarWidget(
              certificationCubit: cubit,
              certification: certification,
            ),
            body: Stack(
              children: [
                if (cubit.viewLoadTestCurrentStepIndex == 0)
                  ChecklistsWidget(
                    certification: certification,
                  ),
                if (cubit.viewLoadTestCurrentStepIndex == 1)
                  DetailsWidget(
                    certification: certification,
                  ),
              ],
            ),
            bottomNavigationBar: BottomNavBarWidget(
              certificationCubit: cubit,
              onNextPressed: () {
                cubit.viewLoadTestNextStepFun();
              },
              onPrevPressed: () {
                cubit.viewLoadTestPrevStepFun();
              },
            ),
          ),
        );
      },
    );
  }
}
