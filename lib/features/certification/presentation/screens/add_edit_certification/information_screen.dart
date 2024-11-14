import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:test_workapp/collections/equipments/equipment.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_bottom_nav_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/start_certification_app_bar_widgets/start_certification_app_bar.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({
    super.key,
    required this.certificationRouteArguments,
  });

  final CertificationRouteArguments certificationRouteArguments;

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  bool isPaused = false;
  final isarService = IsarService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController testTypeController = TextEditingController();
  final TextEditingController reportNoController = TextEditingController();
  final TextEditingController dateAndTimeController = TextEditingController();
  final TextEditingController equipmentTypeController = TextEditingController();
  final double padding = 20.0;

  Future<List<Equipment>> _equipmentsData = Future.value([]);
  Equipment? dropdownEquValue;
  TestType testTypeValue = testTypes.first;
  @override
  void initState() {
    if (widget.certificationRouteArguments.certification != null) {
      if (widget.certificationRouteArguments.certification?.testType != null) {
        testTypeValue = testTypes.firstWhere((element) =>
            element.value ==
            widget.certificationRouteArguments.certification?.testType);
      }

      reportNoController.text =
          widget.certificationRouteArguments.certification?.aramcoReportNo ??
              '';
      dateAndTimeController.text =
          widget.certificationRouteArguments.certification?.inspectionDate ??
              '';
    } else {
      if (widget.certificationRouteArguments.certificationCubit?.testType !=
          null) {
        testTypeValue = testTypes.firstWhere((element) =>
            element.value ==
            widget.certificationRouteArguments.certificationCubit?.testType);
      }

      reportNoController.text = widget
              .certificationRouteArguments.certificationCubit?.aramcoReportNo ??
          '';
      dateAndTimeController.text = widget
              .certificationRouteArguments.certificationCubit?.inspectionDate ??
          '';
    }
    _equipmentsData =
        isarService.getAllEquipmentsHaveAramcoChecklistId().then((equpiments) {
      if (widget.certificationRouteArguments.certification != null) {
        dropdownEquValue = equpiments.firstWhere((element) =>
            element.eqId ==
            widget.certificationRouteArguments.certification!.eqType);
      } else {
        if (widget.certificationRouteArguments.certificationCubit!.eqType !=
            null) {
          dropdownEquValue = equpiments.firstWhere((element) =>
              element.eqId ==
              widget.certificationRouteArguments.certificationCubit!.eqType);
        } else {
          dropdownEquValue = equpiments.first;
        }
      }

      return equpiments;
    });
    super.initState();
  }

  @override
  void dispose() {
    testTypeController.dispose();
    reportNoController.dispose();
    dateAndTimeController.dispose();
    equipmentTypeController.dispose();
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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: padding,
            vertical: padding,
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Test Type:',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffD4D4D4),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButton<TestType>(
                    underline: const SizedBox(),
                    isExpanded: true,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    value: testTypeValue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.colorIcon1,
                    ),
                    items: testTypes.map<DropdownMenuItem<TestType>>((e) {
                      return DropdownMenuItem<TestType>(
                        value: e,
                        child: Text(
                          e.label,
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            color: AppColors.colorText3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        testTypeValue = value!;
                      });
                    },
                    menuMaxHeight: 0.5.sh,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                // SizedBox(
                //   height: MediaQueryValues(context).screenHeight * .015,
                // ),
                // Text(
                //   'Report No:',
                //   style: TextStyle(
                //     fontSize: 14.0.sp,
                //     color: AppColors.colorText1,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 5.0),
                //   child: InputFieldMake(
                //     inputController: reportNoController,
                //     validatorInput: (val) {
                //       // return 'required';
                //
                //       // return val!.isEmpty ? 'This field is required' : null;
                //       return null;
                //     },
                //     radius: 10.0,
                //   ),
                // ),
                SizedBox(
                  height: MediaQueryValues(context).screenHeight * .015,
                ),
                Text(
                  'Ins Date & Time:*',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: InputFieldMake(
                    inputController: dateAndTimeController,
                    validatorInput: (val) {
                      return val!.isEmpty ? 'This field is required' : null;
                    },
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.date_range),
                      onPressed: () async {
                        DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2010),
                          lastDate: DateTime.now(),
                        );
                        TimeOfDay? timeOfDay;
                        if (context.mounted) {
                          timeOfDay = await showTimePicker(
                            initialEntryMode: TimePickerEntryMode.input,
                            context: context,
                            initialTime: TimeOfDay(
                              hour: DateTime.now().hour,
                              minute: DateTime.now().minute,
                            ),
                          );
                        }

                        if (context.mounted) {
                          if (dateTime != null && timeOfDay != null) {
                            DateTime combinedDateTime = DateTime(
                              dateTime.year,
                              dateTime.month,
                              dateTime.day,
                              timeOfDay.hour,
                              timeOfDay.minute,
                            );

                            DateFormat formatter =
                                DateFormat('yyyy-MM-dd HH:mm');
                            String formattedDateTime =
                                formatter.format(combinedDateTime);

                            dateAndTimeController.text = formattedDateTime;
                          }
                        }
                      },
                    ),
                    radius: 10.0,
                  ),
                ),
                SizedBox(
                  height: MediaQueryValues(context).screenHeight * .015,
                ),
                Text(
                  'Equipment Type:*',
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: AppColors.colorText1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                FutureBuilder<List<Equipment>>(
                  future: _equipmentsData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (!snapshot.hasData) {
                      return const Center(
                        child: Text(" There is no equipments"),
                      );
                    } else if (snapshot.hasData) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: const Color(0xffD4D4D4),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton<Equipment>(
                          underline: const SizedBox(),
                          isExpanded: true,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: dropdownEquValue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.colorIcon1,
                          ),
                          items: snapshot.data!.map((e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(
                                '${e.eqName}',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  color: AppColors.colorText3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            widget
                                .certificationRouteArguments.certificationCubit
                                ?.resetCheckListsScreenValues();
                            setState(() {
                              dropdownEquValue = value!;
                            });
                          },
                          menuMaxHeight: 0.5.sh,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                SizedBox(
                  height: MediaQueryValues(context).screenHeight * .015,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CertificationBottomNavBar(
          certificationRouteArguments: widget.certificationRouteArguments,
          onNextPressed: () {
            if (_formKey.currentState!.validate()) {
              widget.certificationRouteArguments.certificationCubit!
                  .setInformationScreenValues(
                certificationName:
                    '${SharedPreferencesHelper.getData(key: AppConstants.empCode)}-${widget.certificationRouteArguments.workOrder!.woId}-${widget.certificationRouteArguments.workOrder!.sequence! + 1}',
                certificationNumber:
                    (widget.certificationRouteArguments.workOrder!.sequence! +
                        1),
                workOrder: widget.certificationRouteArguments.workOrder!,
                testType: testTypeValue.value,
                aramcoReportNo: reportNoController.text,
                inspectionDate: dateAndTimeController.text,
                eqType: dropdownEquValue?.eqId ?? 0,
                equipmentName: dropdownEquValue?.eqName!.toLowerCase() ?? '',
                eqAramcoChecklistId: dropdownEquValue?.aramcoChecklistId ?? 0,
              );

              widget.certificationRouteArguments.certificationCubit!
                  .nextStepFun();
              AppNavigator.navigateNamedReplace(
                context,
                Routes.checkListScreen,
                arguments: widget.certificationRouteArguments,
              );
            }
          },
          onPrevPressed: () {
            widget.certificationRouteArguments.certificationCubit!
                .prevStepFun();
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  ///===================== DropDown Border ==========================

  OutlineInputBorder outlineInputBorder({double radius = 5}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(radius.r)),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xffD4D4D4),
      ),
    );
  }
}

class TestType {
  final String label;
  final int value;

  TestType({
    required this.label,
    required this.value,
  });
}

List<TestType> testTypes = [
  TestType(label: 'Visual & Function Test', value: 1),
  TestType(label: 'Witnessing Test', value: 2),
  TestType(label: 'Reinspection', value: 3),
  TestType(label: 'Load Test', value: 4),
  TestType(label: 'Periodic Inspection P.I.', value: 5),
  TestType(label: 'Reinspection R.I.', value: 6),
  TestType(label: 'Initial Inspection I.I.', value: 7),
  TestType(label: 'Manufacturer Load Test', value: 8),
  TestType(label: 'Witnessing Load Test', value: 9),
  TestType(label: 'Performed Load Test', value: 10),
];
