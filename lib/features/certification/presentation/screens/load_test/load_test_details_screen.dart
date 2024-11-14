import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_app_bar.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_bottom_nav_bar.dart';
import 'package:test_workapp/features/certification/presentation/widgets/load_test_widgets/load_test_item_widget.dart';
import 'package:test_workapp/isar_service.dart';

class LoadTestDetailsScreen extends StatefulWidget {
  const LoadTestDetailsScreen({
    super.key,
    required this.certificationRouteArguments,
  });

  final CertificationRouteArguments certificationRouteArguments;

  @override
  State<LoadTestDetailsScreen> createState() => _LoadTestDetailsScreenState();
}

class _LoadTestDetailsScreenState extends State<LoadTestDetailsScreen> {
  final isarService = IsarService();
  bool isPaused = false;
  final double _horizontalPadding = 20.0;
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController testPreformedBy = TextEditingController();
  final TextEditingController procedureReferenceNo = TextEditingController();
  final TextEditingController refStandardForLoadTest = TextEditingController();
  final TextEditingController weightCalculationVerified =
      TextEditingController();
  final TextEditingController loadCellUsedToDetermineExactTestLoadWeight =
      TextEditingController();
  //! one
  final TextEditingController weightOfLoadAppliedOne = TextEditingController();
  final TextEditingController spanOne = TextEditingController();
  final TextEditingController maxAllowedDeflectionOne = TextEditingController();
  final TextEditingController actualDeflectionOne = TextEditingController();
  final TextEditingController resultOne = TextEditingController();
  //! two
  final TextEditingController weightOfLoadAppliedTwo = TextEditingController();
  final TextEditingController spanTwo = TextEditingController();
  final TextEditingController maxAllowedDeflectionTwo = TextEditingController();
  final TextEditingController actualDeflectionTwo = TextEditingController();
  final TextEditingController resultTwo = TextEditingController();
  //! three
  final TextEditingController weightOfLoadAppliedThree =
      TextEditingController();
  final TextEditingController spanThree = TextEditingController();
  final TextEditingController maxAllowedDeflectionThree =
      TextEditingController();
  final TextEditingController actualDeflectionThree = TextEditingController();
  final TextEditingController resultThree = TextEditingController();

  @override
  void initState() {
    if (widget.certificationRouteArguments.certification?.isLoadTestAdded ==
        true) {
      testPreformedBy.text =
          widget.certificationRouteArguments.certification?.testPerformedBy ??
              '';
      procedureReferenceNo.text = widget.certificationRouteArguments
              .certification?.procedureReferenceNo ??
          '';
      refStandardForLoadTest.text = widget.certificationRouteArguments
              .certification?.refStandardForLoadTest ??
          '';
      weightCalculationVerified.text = widget.certificationRouteArguments
              .certification?.weightCalculationVerified ??
          '';
      loadCellUsedToDetermineExactTestLoadWeight.text = widget
              .certificationRouteArguments
              .certification
              ?.loadCellUsedToDetermineExactTestLoadWeight ??
          '';
      //! One
      weightOfLoadAppliedOne.text = widget.certificationRouteArguments
                  .certification?.weightOfLoadAppliedOne !=
              null
          ? '${widget.certificationRouteArguments.certification?.weightOfLoadAppliedOne}'
          : '';
      spanOne.text =
          widget.certificationRouteArguments.certification?.spanOne != null
              ? '${widget.certificationRouteArguments.certification?.spanOne}'
              : '';
      maxAllowedDeflectionOne.text = widget.certificationRouteArguments
              .certification?.maxAllowedDeflectionOne ??
          '';
      actualDeflectionOne.text = widget
              .certificationRouteArguments.certification?.actualDeflectionOne ??
          '';
      resultOne.text =
          widget.certificationRouteArguments.certification?.resultOne ?? '';
      //! Two
      weightOfLoadAppliedTwo.text = widget.certificationRouteArguments
                  .certification?.weightOfLoadAppliedTwo !=
              null
          ? '${widget.certificationRouteArguments.certification?.weightOfLoadAppliedTwo}'
          : '';
      spanTwo.text =
          widget.certificationRouteArguments.certification?.spanTwo != null
              ? '${widget.certificationRouteArguments.certification?.spanTwo}'
              : '';
      maxAllowedDeflectionTwo.text = widget.certificationRouteArguments
              .certification?.maxAllowedDeflectionTwo ??
          '';
      actualDeflectionTwo.text = widget
              .certificationRouteArguments.certification?.actualDeflectionTwo ??
          '';
      resultTwo.text =
          widget.certificationRouteArguments.certification?.resultTwo ?? '';

      //! Three
      weightOfLoadAppliedThree.text = widget.certificationRouteArguments
                  .certification?.weightOfLoadAppliedThree !=
              null
          ? '${widget.certificationRouteArguments.certification?.weightOfLoadAppliedThree}'
          : '';
      spanThree.text =
          widget.certificationRouteArguments.certification?.spanThree != null
              ? '${widget.certificationRouteArguments.certification?.spanThree}'
              : '';
      maxAllowedDeflectionThree.text = widget.certificationRouteArguments
              .certification?.maxAllowedDeflectionThree ??
          '';
      actualDeflectionThree.text = widget.certificationRouteArguments
              .certification?.actualDeflectionThree ??
          '';
      resultThree.text =
          widget.certificationRouteArguments.certification?.resultThree ?? '';
    }
    //! --------ELSE set temp values from cubit
    else {
      testPreformedBy.text = widget.certificationRouteArguments
              .certificationCubit?.testPerformedBy ??
          '';
      procedureReferenceNo.text = widget.certificationRouteArguments
              .certificationCubit?.procedureReferenceNo ??
          '';
      refStandardForLoadTest.text = widget.certificationRouteArguments
              .certificationCubit?.refStandardForLoadTest ??
          '';
      weightCalculationVerified.text = widget.certificationRouteArguments
              .certificationCubit?.weightCalculationVerified ??
          '';
      loadCellUsedToDetermineExactTestLoadWeight.text = widget
              .certificationRouteArguments
              .certificationCubit
              ?.loadCellUsedToDetermineExactTestLoadWeight ??
          '';
      //! One
      weightOfLoadAppliedOne.text = widget.certificationRouteArguments
                  .certificationCubit?.weightOfLoadAppliedOne !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.weightOfLoadAppliedOne}'
          : '';
      spanOne.text = widget
                  .certificationRouteArguments.certificationCubit?.spanOne !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.spanOne}'
          : '';
      maxAllowedDeflectionOne.text = widget.certificationRouteArguments
              .certificationCubit?.maxAllowedDeflectionOne ??
          '';
      actualDeflectionOne.text = widget.certificationRouteArguments
              .certificationCubit?.actualDeflectionOne ??
          '';
      resultOne.text =
          widget.certificationRouteArguments.certificationCubit?.resultOne ??
              '';
      //! Two
      weightOfLoadAppliedTwo.text = widget.certificationRouteArguments
                  .certificationCubit?.weightOfLoadAppliedTwo !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.weightOfLoadAppliedTwo}'
          : '';
      spanTwo.text = widget
                  .certificationRouteArguments.certificationCubit?.spanTwo !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.spanTwo}'
          : '';
      maxAllowedDeflectionTwo.text = widget.certificationRouteArguments
              .certificationCubit?.maxAllowedDeflectionTwo ??
          '';
      actualDeflectionTwo.text = widget.certificationRouteArguments
              .certificationCubit?.actualDeflectionTwo ??
          '';
      resultTwo.text =
          widget.certificationRouteArguments.certificationCubit?.resultTwo ??
              '';

      //! Three
      weightOfLoadAppliedThree.text = widget.certificationRouteArguments
                  .certificationCubit?.weightOfLoadAppliedThree !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.weightOfLoadAppliedThree}'
          : '';
      spanThree.text = widget
                  .certificationRouteArguments.certificationCubit?.spanThree !=
              null
          ? '${widget.certificationRouteArguments.certificationCubit?.spanThree}'
          : '';
      maxAllowedDeflectionThree.text = widget.certificationRouteArguments
              .certificationCubit?.maxAllowedDeflectionThree ??
          '';
      actualDeflectionThree.text = widget.certificationRouteArguments
              .certificationCubit?.actualDeflectionThree ??
          '';
      resultThree.text =
          widget.certificationRouteArguments.certificationCubit?.resultThree ??
              '';
    }

    super.initState();
  }

  @override
  void dispose() {
    testPreformedBy.dispose();
    procedureReferenceNo.dispose();
    refStandardForLoadTest.dispose();
    weightCalculationVerified.dispose();
    loadCellUsedToDetermineExactTestLoadWeight.dispose();

    weightOfLoadAppliedOne.dispose();
    spanOne.dispose();
    maxAllowedDeflectionOne.dispose();
    actualDeflectionOne.dispose();
    resultOne.dispose();

    weightOfLoadAppliedTwo.dispose();
    spanTwo.dispose();
    maxAllowedDeflectionTwo.dispose();
    actualDeflectionTwo.dispose();
    resultTwo.dispose();

    weightOfLoadAppliedThree.dispose();
    spanThree.dispose();
    maxAllowedDeflectionThree.dispose();
    actualDeflectionThree.dispose();
    resultThree.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CertificationCubit, CertificationState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            return isPaused;
          },
          child: Scaffold(
            appBar: LoadTestAppBar(
              certificationRouteArguments: widget.certificationRouteArguments,
            ),
            body: state is AddLoadTestToCertificationLoadingState
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : Container(
                    padding: EdgeInsets.only(
                      top: _horizontalPadding,
                      left: _horizontalPadding,
                      right: _horizontalPadding,
                    ),
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        children: [
                          LoadTestItemWidget(
                            title: 'TEST PERFORMED BY: (Name/Agency)',
                            textEditingController: testPreformedBy,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Procedure Reference No.',
                            textEditingController: procedureReferenceNo,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Ref. Standard for Load Test',
                            textEditingController: refStandardForLoadTest,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Weight Calculation Verified',
                            textEditingController: weightCalculationVerified,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title:
                                'Load Cell used to determine exact test load weight (if NO, state reason)',
                            textEditingController:
                                loadCellUsedToDetermineExactTestLoadWeight,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          Text(
                            'Test No. #1',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorMain,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Weight of Load Applied',
                            textEditingController: weightOfLoadAppliedOne,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Span',
                            textEditingController: spanOne,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Max. allowed Deflection',
                            textEditingController: maxAllowedDeflectionOne,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Actual Deflection',
                            textEditingController: actualDeflectionOne,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'RESULT',
                            textEditingController: resultOne,
                            isRequired: true,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          Text(
                            'Test No. #2',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorMain,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Weight of Load Applied',
                            textEditingController: weightOfLoadAppliedTwo,
                            isRequired: (spanTwo.text.isNotEmpty ||
                                    maxAllowedDeflectionTwo.text.isNotEmpty ||
                                    actualDeflectionTwo.text.isNotEmpty ||
                                    resultTwo.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Span',
                            textEditingController: spanTwo,
                            isRequired: (weightOfLoadAppliedTwo
                                        .text.isNotEmpty ||
                                    maxAllowedDeflectionTwo.text.isNotEmpty ||
                                    actualDeflectionTwo.text.isNotEmpty ||
                                    resultTwo.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Max. allowed Deflection',
                            textEditingController: maxAllowedDeflectionTwo,
                            isRequired:
                                (weightOfLoadAppliedTwo.text.isNotEmpty ||
                                        spanTwo.text.isNotEmpty ||
                                        actualDeflectionTwo.text.isNotEmpty ||
                                        resultTwo.text.isNotEmpty)
                                    ? true
                                    : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Actual Deflection',
                            textEditingController: actualDeflectionTwo,
                            isRequired: (weightOfLoadAppliedTwo
                                        .text.isNotEmpty ||
                                    spanTwo.text.isNotEmpty ||
                                    maxAllowedDeflectionTwo.text.isNotEmpty ||
                                    resultTwo.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'RESULT',
                            textEditingController: resultTwo,
                            isRequired: (weightOfLoadAppliedTwo
                                        .text.isNotEmpty ||
                                    spanTwo.text.isNotEmpty ||
                                    maxAllowedDeflectionTwo.text.isNotEmpty ||
                                    actualDeflectionTwo.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          Text(
                            'Test No. #3',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorMain,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Weight of Load Applied',
                            textEditingController: weightOfLoadAppliedThree,
                            isRequired: (spanThree.text.isNotEmpty ||
                                    maxAllowedDeflectionThree.text.isNotEmpty ||
                                    actualDeflectionThree.text.isNotEmpty ||
                                    resultThree.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Span',
                            textEditingController: spanThree,
                            isRequired: (weightOfLoadAppliedThree
                                        .text.isNotEmpty ||
                                    maxAllowedDeflectionThree.text.isNotEmpty ||
                                    actualDeflectionThree.text.isNotEmpty ||
                                    resultThree.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Max. allowed Deflection',
                            textEditingController: maxAllowedDeflectionThree,
                            isRequired:
                                (weightOfLoadAppliedThree.text.isNotEmpty ||
                                        spanThree.text.isNotEmpty ||
                                        actualDeflectionThree.text.isNotEmpty ||
                                        resultThree.text.isNotEmpty)
                                    ? true
                                    : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'Actual Deflection',
                            textEditingController: actualDeflectionThree,
                            isRequired: (weightOfLoadAppliedThree
                                        .text.isNotEmpty ||
                                    spanThree.text.isNotEmpty ||
                                    maxAllowedDeflectionThree.text.isNotEmpty ||
                                    resultThree.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                          LoadTestItemWidget(
                            title: 'RESULT',
                            textEditingController: resultThree,
                            isRequired: (weightOfLoadAppliedThree
                                        .text.isNotEmpty ||
                                    spanThree.text.isNotEmpty ||
                                    maxAllowedDeflectionThree.text.isNotEmpty ||
                                    actualDeflectionThree.text.isNotEmpty)
                                ? true
                                : false,
                            isNumber: false,
                          ),
                          SizedBox(
                            height: _verticalSpace(context),
                          ),
                        ],
                      ),
                    ),
                  ),
            bottomNavigationBar: state is AddLoadTestToCertificationLoadingState
                ? null
                : LoadTestBottomNavBar(
                    certification:
                        widget.certificationRouteArguments.certification!,
                    certificationCubit:
                        widget.certificationRouteArguments.certificationCubit!,
                    onNextPressed: () async {
                      if (_formKey.currentState!.validate() &&
                          testPreformedBy.text.isNotEmpty &&
                          procedureReferenceNo.text.isNotEmpty &&
                          refStandardForLoadTest.text.isNotEmpty &&
                          weightCalculationVerified.text.isNotEmpty &&
                          loadCellUsedToDetermineExactTestLoadWeight
                              .text.isNotEmpty &&
                          weightOfLoadAppliedOne.text.isNotEmpty &&
                          spanOne.text.isNotEmpty &&
                          maxAllowedDeflectionOne.text.isNotEmpty &&
                          actualDeflectionOne.text.isNotEmpty &&
                          resultOne.text.isNotEmpty) {
                        await widget
                            .certificationRouteArguments.certificationCubit
                            ?.addLoadTestToCertificationFun(
                          isarService: isarService,
                          certification:
                              widget.certificationRouteArguments.certification!,
                          testPreformedBy: testPreformedBy.text,
                          procedureReferenceNo: procedureReferenceNo.text,
                          refStandardForLoadTest: refStandardForLoadTest.text,
                          weightCalculationVerified:
                              weightCalculationVerified.text,
                          loadCellUsedToDetermineExactTestLoadWeight:
                              loadCellUsedToDetermineExactTestLoadWeight.text,
                          weightOfLoadAppliedOne: weightOfLoadAppliedOne.text,
                          spanOne: spanOne.text,
                          maxAllowedDeflectionOne: maxAllowedDeflectionOne.text,
                          actualDeflectionOne: actualDeflectionOne.text,
                          resultOne: resultOne.text,
                          weightOfLoadAppliedTwo: weightOfLoadAppliedTwo.text,
                          spanTwo: spanTwo.text,
                          maxAllowedDeflectionTwo: maxAllowedDeflectionTwo.text,
                          actualDeflectionTwo: actualDeflectionTwo.text,
                          resultTwo: resultTwo.text,
                          weightOfLoadAppliedThree:
                              weightOfLoadAppliedThree.text,
                          spanThree: spanThree.text,
                          maxAllowedDeflectionThree:
                              maxAllowedDeflectionThree.text,
                          actualDeflectionThree: actualDeflectionThree.text,
                          resultThree: resultThree.text,
                        )
                            .then((value) {
                          widget.certificationRouteArguments.certificationCubit!
                              .resetLoadTestForCertificationFun();
                          AppNavigator.navigateNamedFinish(
                            context,
                            Routes.layoutScreen,
                          );
                        });
                      }
                    },
                    onPrevPressed: () {
                      widget.certificationRouteArguments.certificationCubit
                          ?.setLoadTestInspectionDetailsScreenValues(
                        testPerformedBy: testPreformedBy.text,
                        procedureReferenceNo: procedureReferenceNo.text,
                        refStandardForLoadTest: refStandardForLoadTest.text,
                        weightCalculationVerified:
                            weightCalculationVerified.text,
                        loadCellUsedToDetermineExactTestLoadWeight:
                            loadCellUsedToDetermineExactTestLoadWeight.text,
                        weightOfLoadAppliedOne: weightOfLoadAppliedOne.text,
                        spanOne: spanOne.text,
                        maxAllowedDeflectionOne: maxAllowedDeflectionOne.text,
                        actualDeflectionOne: actualDeflectionOne.text,
                        resultOne: resultOne.text,
                        weightOfLoadAppliedTwo: weightOfLoadAppliedTwo.text,
                        spanTwo: spanTwo.text,
                        maxAllowedDeflectionTwo: maxAllowedDeflectionTwo.text,
                        actualDeflectionTwo: actualDeflectionTwo.text,
                        resultTwo: resultTwo.text,
                        weightOfLoadAppliedThree: weightOfLoadAppliedThree.text,
                        spanThree: spanThree.text,
                        maxAllowedDeflectionThree:
                            maxAllowedDeflectionThree.text,
                        actualDeflectionThree: actualDeflectionThree.text,
                        resultThree: resultThree.text,
                      );
                      widget.certificationRouteArguments.certificationCubit
                          ?.loadTestPrevStepFun();

                      AppNavigator.navigateNamedReplace(
                        context,
                        Routes.loadTestCheckListScreen,
                        arguments: widget.certificationRouteArguments,
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
