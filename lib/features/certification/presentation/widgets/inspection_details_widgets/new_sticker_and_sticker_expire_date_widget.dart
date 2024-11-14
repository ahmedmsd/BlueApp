import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class NewStickerAndStickerExpireDateWidget extends StatefulWidget {
  final TextEditingController stickerExpireDateController;
  final CertificationRouteArguments certificationRouteArguments;
  const NewStickerAndStickerExpireDateWidget({
    super.key,
    required this.stickerExpireDateController,
    required this.certificationRouteArguments,
  });

  @override
  State<NewStickerAndStickerExpireDateWidget> createState() =>
      _NewStickerAndStickerExpireDateWidgetState();
}

class _NewStickerAndStickerExpireDateWidgetState
    extends State<NewStickerAndStickerExpireDateWidget> {
  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;
  final isarService = IsarService();
  List<int> newStickerList = [];
  int? dropdownNewStickerNoValue;

  @override
  void initState() {
    getStickerNumbers();

    super.initState();
  }

  void getStickerNumbers() async {
    dropdownNewStickerNoValue = null;
    newStickerList = [];
    int userId = SharedPreferencesHelper.getData(key: AppConstants.userId);
    List<Certification> certifications =
        await isarService.getAllCertifications();
    List<int> excludedStickerNumbers = [];
    for (Certification certification in certifications) {
      excludedStickerNumbers.add(certification.newSticker);
    }
    if (widget.certificationRouteArguments.certification != null) {
      excludedStickerNumbers.removeWhere((element) =>
          element ==
          widget.certificationRouteArguments.certification!.newSticker);
    }
    if (widget.certificationRouteArguments.certificationCubit!.testResult ==
        '1') {
      //! blue stickers
      await isarService
          .getStickerByUserIdAndStickerType(userId, 2)
          .then((sticker) {
        for (int j = 0; j < sticker.length; j++) {
          if (sticker[j] != null) {
            for (int i = sticker[j]!.fromNo!; i <= sticker[j]!.toNo!; i++) {
              if (i < sticker[j]!.fromNo! ||
                  i > sticker[j]!.toNo! ||
                  excludedStickerNumbers.contains(i)) {
                continue;
              }
              newStickerList.add(i);
            }
          }
        }
        // if (sticker != null) {
        //
        //   for (int i = sticker.fromNo!; i <= sticker.toNo!; i++) {
        //     if (i < sticker.fromNo! ||
        //         i > sticker.toNo! ||
        //         excludedStickerNumbers.contains(i)) {
        //       continue;
        //     }
        //     newStickerList.add(i);
        //   }
        // }
      });
      if (widget.certificationRouteArguments.certification != null) {
        if (newStickerList.contains(
            widget.certificationRouteArguments.certification!.newSticker)) {
          dropdownNewStickerNoValue =
              widget.certificationRouteArguments.certification!.newSticker;
        } else {
          dropdownNewStickerNoValue = newStickerList.first;
        }
      } else {
        if (widget.certificationRouteArguments.certificationCubit!.newSticker !=
            null) {
          if (newStickerList.contains(widget
              .certificationRouteArguments.certificationCubit!.newSticker)) {
            dropdownNewStickerNoValue = widget
                .certificationRouteArguments.certificationCubit!.newSticker;
          } else {
            dropdownNewStickerNoValue = newStickerList.first;
          }
        } else {
          dropdownNewStickerNoValue = newStickerList.first;
        }
      }

      widget.certificationRouteArguments.certificationCubit!
          .changeStickerValue(dropdownNewStickerNoValue!);
      setState(() {});
    } else {
      //! red stickers
      await isarService
          .getStickerByUserIdAndStickerType(userId, 20)
          .then((sticker) {
        for (int j = 0; j < sticker.length; j++) {
          if (sticker[j] != null) {
            for (int i = sticker[j]!.fromNo!; i <= sticker[j]!.toNo!; i++) {
              if (i < sticker[j]!.fromNo! ||
                  i > sticker[j]!.toNo! ||
                  excludedStickerNumbers.contains(i)) {
                continue;
              }
              newStickerList.add(i);
            }
          }
        }
        // if (sticker != null) {
        //   for (int i = sticker.fromNo!; i <= sticker.toNo!; i++) {
        //     if (i < sticker.fromNo! ||
        //         i > sticker.toNo! ||
        //         excludedStickerNumbers.contains(i)) {
        //       continue;
        //     }
        //     newStickerList.add(i);
        //   }
        // }
      });

      if (widget.certificationRouteArguments.certification != null) {
        if (newStickerList.contains(
            widget.certificationRouteArguments.certification!.newSticker)) {
          dropdownNewStickerNoValue =
              widget.certificationRouteArguments.certification!.newSticker;
        } else {
          dropdownNewStickerNoValue = newStickerList.first;
        }
      } else {
        if (widget.certificationRouteArguments.certificationCubit!.newSticker !=
            null) {
          if (newStickerList.contains(widget
              .certificationRouteArguments.certificationCubit!.newSticker)) {
            dropdownNewStickerNoValue = widget
                .certificationRouteArguments.certificationCubit!.newSticker;
          } else {
            dropdownNewStickerNoValue = newStickerList.first;
          }
        } else {
          dropdownNewStickerNoValue = newStickerList.first;
        }
      }
      widget.certificationRouteArguments.certificationCubit!
          .changeStickerValue(dropdownNewStickerNoValue!);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocConsumer<CertificationCubit, CertificationState>(
          listener: (context, state) {
            if (state is ChangeTestResultState) {
              getStickerNumbers();
            }
          },
          builder: (context, state) {
            return Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Sticker No: *',
                    style: TextStyle(
                      fontSize: 12.0.sp,
                      color: AppColors.colorText2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  newStickerList.isEmpty || dropdownNewStickerNoValue == null
                      ? const SizedBox()
                      : Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffD4D4D4),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownSearch<int>(
                            // underline: const SizedBox(),
                            // isExpanded: true,
                            // padding:
                            //     const EdgeInsets.symmetric(horizontal: 10.0),
                            // value: dropdownNewStickerNoValue,
                            // icon: const Icon(
                            //   Icons.keyboard_arrow_down_rounded,
                            //   color: AppColors.colorIcon1,
                            // ),

                            asyncItems: (_) async {
                              return newStickerList;
                            },
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              baseStyle: TextStyle(
                                fontSize: 14.0.sp,
                                color: AppColors.colorText3,
                                fontWeight: FontWeight.bold,
                              ),
                              dropdownSearchDecoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                            dropdownButtonProps: const DropdownButtonProps(
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.colorIcon1,
                              ),
                            ),
                            popupProps: PopupProps.menu(
                              // itemBuilder: (context, index, value) => Text(
                              //   index.toString(),
                              //   style: TextStyle(
                              //     fontSize: 14.0.sp,
                              //     color: AppColors.colorText3,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),

                              searchFieldProps: TextFieldProps(
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  color: AppColors.colorText3,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              fit: FlexFit.loose,
                              showSearchBox: true,
                              menuProps: const MenuProps(
                                backgroundColor: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            // asyncItems: newStickerList.map((e) {
                            //   return DropdownMenuItem(
                            //     value: e,
                            //     child: Text(
                            //       '$e',
                            //       style: TextStyle(
                            //         fontSize: 14.0.sp,
                            //         color: AppColors.colorText3,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //   );
                            // }),
                            selectedItem: dropdownNewStickerNoValue ??
                                newStickerList.first,

                            onChanged: (value) {
                              dropdownNewStickerNoValue = value!;

                              if (dropdownNewStickerNoValue != null) {
                                widget.certificationRouteArguments
                                    .certificationCubit!
                                    .changeStickerValue(
                                        dropdownNewStickerNoValue!);
                              }

                              setState(() {});
                            },
                            // menuMaxHeight: 0.5.sh,
                            // borderRadius:
                            //     const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                ],
              ),
            );
          },
        ),
        SizedBox(
          width: _horizontalSpace(context),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Sticker Expiration Date: *',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InputFieldMake(
                inputController: widget.stickerExpireDateController,
                suffixIcon: IconButton(
                  onPressed: () async {
                    DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2030),
                    );

                    if (context.mounted) {
                      if (dateTime != null) {
                        DateFormat formatter = DateFormat('yyyy-MM-dd');
                        String formattedDateTime = formatter.format(dateTime);

                        widget.stickerExpireDateController.text =
                            formattedDateTime;
                      }
                    }
                  },
                  icon: const Icon(
                    Icons.date_range_rounded,
                    color: Colors.black,
                  ),
                ),
                validatorInput: (val) {
                  return val!.isEmpty ? 'required' : null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
