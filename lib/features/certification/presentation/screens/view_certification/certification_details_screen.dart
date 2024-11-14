import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/app_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/attached_photos/attached_photos_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/certification_details_bottom_nav_bar.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/checklists/checklists_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/information/information_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/inspection_details/inspection_details_widget.dart';

class CertificationDetailsScreen extends StatelessWidget {
  final Certification certification;

  const CertificationDetailsScreen({
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
            backgroundColor: Colors.grey.shade200,
            appBar: AppBarWidget(
              certificationCubit: cubit,
              certification: certification,
            ),
            body: Stack(
              children: [
                if (cubit.viewCertificationCurrentStepIndex == 0)
                  InformationWidget(
                    certification: certification,
                  ),
                if (cubit.viewCertificationCurrentStepIndex == 1)
                  ChecklistsWidget(
                    certification: certification,
                  ),
                if (cubit.viewCertificationCurrentStepIndex == 2)
                  InspectionDetailsWidget(
                    certification: certification,
                  ),
                if (cubit.viewCertificationCurrentStepIndex == 3)
                  AttachedPhotosWidget(
                    certification: certification,
                  ),
              ],
            ),
            bottomNavigationBar: CertificationDetailsBottomNavBar(
              certificationCubit: cubit,
              onNextPressed: () {
                cubit.viewCertificationNextStepFun();
              },
              onPrevPressed: () {
                cubit.viewCertificationPrevStepFun();
              },
            ),
          ),
        );
      },
    );
  }
}
