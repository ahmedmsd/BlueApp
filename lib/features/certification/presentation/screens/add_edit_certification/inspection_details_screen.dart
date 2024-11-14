import 'package:flutter/material.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_bottom_nav_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/inspection_details_widgets/inspection_details_widgets.dart';
import 'package:test_workapp/features/certification/presentation/widgets/start_certification_app_bar_widgets/start_certification_app_bar.dart';
import 'package:test_workapp/isar_service.dart';

class InspectionDetailsScreen extends StatefulWidget {
  const InspectionDetailsScreen({
    super.key,
    required this.certificationRouteArguments,
  });
  final CertificationRouteArguments certificationRouteArguments;

  @override
  State<InspectionDetailsScreen> createState() =>
      _InspectionDetailsScreenState();
}

class _InspectionDetailsScreenState extends State<InspectionDetailsScreen> {
  bool isPaused = false;
  final double _horizontalPadding = 20.0;
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;

  final TextEditingController orgCodeController = TextEditingController();
  final TextEditingController prevStickerController = TextEditingController();
  final TextEditingController prevIssuedByController = TextEditingController();
  final TextEditingController eqIdController = TextEditingController();
  final TextEditingController eqLocationController = TextEditingController();
  final TextEditingController eqCapacityController = TextEditingController();
  final TextEditingController eqSerialController = TextEditingController();
  final TextEditingController eqManfController = TextEditingController();
  final TextEditingController eqModelController = TextEditingController();
  final TextEditingController stickerExpireDateController =
      TextEditingController();
  final TextEditingController deficienciesController = TextEditingController();
  final TextEditingController correctiveActionController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final isarService = IsarService();

  @override
  void initState() {
    if (widget.certificationRouteArguments.certification != null) {
      widget.certificationRouteArguments.certificationCubit
          ?.changeTestResultValue(
              widget.certificationRouteArguments.certification?.testResult ??
                  '1');

      orgCodeController.text =
          widget.certificationRouteArguments.certification?.orgCode ?? '';
      prevStickerController.text =
          widget.certificationRouteArguments.certification?.prevSticker ?? '';
      prevIssuedByController.text =
          widget.certificationRouteArguments.certification?.prevIssuedBy ?? '';
      eqIdController.text =
          widget.certificationRouteArguments.certification?.eqId ?? '';
      eqLocationController.text =
          widget.certificationRouteArguments.certification?.eqLocation ?? '';
      eqCapacityController.text =
          widget.certificationRouteArguments.certification?.eqCapacity ?? '';
      eqSerialController.text =
          widget.certificationRouteArguments.certification?.eqSerial ?? '';
      eqManfController.text =
          widget.certificationRouteArguments.certification?.eqManf ?? '';
      eqModelController.text =
          widget.certificationRouteArguments.certification?.eqModel ?? '';
      stickerExpireDateController.text =
          widget.certificationRouteArguments.certification?.stickerExpireDate ??
              '';
      deficienciesController.text =
          widget.certificationRouteArguments.certification?.notes ?? '';
      correctiveActionController.text =
          widget.certificationRouteArguments.certification?.correctiveAction ??
              '';
    } else {
      orgCodeController.text =
          widget.certificationRouteArguments.certificationCubit?.orgCode ?? '';
      prevStickerController.text =
          widget.certificationRouteArguments.certificationCubit?.prevSticker ??
              '';
      prevIssuedByController.text =
          widget.certificationRouteArguments.certificationCubit?.prevIssuedBy ??
              '';
      eqIdController.text =
          widget.certificationRouteArguments.certificationCubit?.eqId ?? '';
      eqLocationController.text =
          widget.certificationRouteArguments.certificationCubit?.eqLocation ??
              '';
      eqCapacityController.text =
          widget.certificationRouteArguments.certificationCubit?.eqCapacity ??
              '';
      eqSerialController.text =
          widget.certificationRouteArguments.certificationCubit?.eqSerial ?? '';
      eqManfController.text =
          widget.certificationRouteArguments.certificationCubit?.eqManf ?? '';
      eqModelController.text =
          widget.certificationRouteArguments.certificationCubit?.eqModel ?? '';
      stickerExpireDateController.text = widget.certificationRouteArguments
              .certificationCubit?.stickerExpireDate ??
          '';
      deficienciesController.text =
          widget.certificationRouteArguments.certificationCubit?.notes ?? '';
      correctiveActionController.text = widget.certificationRouteArguments
              .certificationCubit?.correctiveAction ??
          '';
    }

    super.initState();
  }

  @override
  void dispose() {
    orgCodeController.dispose();
    prevStickerController.dispose();
    prevIssuedByController.dispose();
    eqIdController.dispose();
    eqLocationController.dispose();
    eqCapacityController.dispose();
    eqSerialController.dispose();
    eqManfController.dispose();
    eqModelController.dispose();
    stickerExpireDateController.dispose();
    deficienciesController.dispose();
    correctiveActionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return isPaused;
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppbarStartCertifications(
          certificationRouteArguments: widget.certificationRouteArguments,
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: _horizontalPadding,
            left: _horizontalPadding,
            right: _horizontalPadding,
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //! Inspection Result
                  InspectionResultWidget(
                    certificationCubit:
                        widget.certificationRouteArguments.certificationCubit!,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Area & City
                  AreaAndCityWidget(
                    certificationRouteArguments:
                        widget.certificationRouteArguments,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Org Code and previous sticker No
                  OrgCodeAndPrevStickerWidget(
                    orgCodeController: orgCodeController,
                    prevStickerController: prevStickerController,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Issued By
                  IssuedByWidget(
                      prevIssuedByController: prevIssuedByController),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Equipment Number & Equpiment location
                  EquNumberAndEquLocationWidget(
                    eqIdController: eqIdController,
                    eqLocationController: eqLocationController,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Equpiment capacity & Equipment serial no
                  EquCapacityAndEquSerial(
                    eqCapacityController: eqCapacityController,
                    eqSerialController: eqSerialController,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Equpiment manufacturer & Equpiment model
                  EquManfAndEquModelWidget(
                    eqManfController: eqManfController,
                    eqModelController: eqModelController,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! new Sticker no & Sticker Expiration Date
                  NewStickerAndStickerExpireDateWidget(
                    stickerExpireDateController: stickerExpireDateController,
                    certificationRouteArguments:
                        widget.certificationRouteArguments,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Inspector name
                  InspectorNameWidget(
                    certificationRouteArguments:
                        widget.certificationRouteArguments,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Deficiencies
                  DeficienciesWidget(
                    deficienciesController: deficienciesController,
                  ),
                  SizedBox(
                    height: _verticalSpace(context),
                  ),
                  //! Corrective action
                  CorrectiveActionWidget(
                    correctiveActionController: correctiveActionController,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CertificationBottomNavBar(
          certificationRouteArguments: widget.certificationRouteArguments,
          onNextPressed: () {
            if (_formKey.currentState!.validate()) {
              widget.certificationRouteArguments.certificationCubit
                  ?.setInspectionDetailsScreenValues(
                testResult: widget
                    .certificationRouteArguments.certificationCubit!.testResult,
                cityId: widget.certificationRouteArguments.certificationCubit
                        ?.dropdownCityValue?.iD ??
                    0,
                orgCode: orgCodeController.text,
                prevSticker: prevStickerController.text,
                prevIssuedBy: prevIssuedByController.text,
                eqId: eqIdController.text,
                eqLocation: eqLocationController.text,
                eqCapacity: eqCapacityController.text,
                eqSerial: eqSerialController.text,
                eqManf: eqManfController.text,
                eqModel: eqModelController.text,
                newSticker: widget.certificationRouteArguments
                        .certificationCubit!.newSticker ??
                    0,
                stickerExpireDate: stickerExpireDateController.text,
                inspectorId: widget.certificationRouteArguments
                        .certificationCubit!.dropdownInspectorValue?.userId ??
                    0,
                notes: deficienciesController.text,
                correctiveAction: correctiveActionController.text,
              );
              widget.certificationRouteArguments.certificationCubit
                  ?.nextStepFun();
              AppNavigator.navigateNamedReplace(
                context,
                Routes.attachedPhotosScreen,
                arguments: widget.certificationRouteArguments,
              );
            }
          },
          onPrevPressed: () {
            widget.certificationRouteArguments.certificationCubit
                ?.prevStepFun();
            // Navigator.of(context).pop();
            AppNavigator.navigateNamedReplace(
              context,
              Routes.checkListScreen,
              arguments: widget.certificationRouteArguments,
            );
          },
        ),
      ),
    );
  }
}
