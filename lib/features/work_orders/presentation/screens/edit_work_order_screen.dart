import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:signature/signature.dart';
import 'package:test_workapp/collections/images/local_image.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/edit_work_order_widgets/app_bar_widget.dart';
import 'package:test_workapp/isar_service.dart';
import 'package:hand_signature/signature.dart';

class EditWorkOrderScreen extends StatefulWidget {
  const EditWorkOrderScreen({Key? key, required this.workOrder})
      : super(key: key);
  final WorkOrder workOrder;

  @override
  State<EditWorkOrderScreen> createState() => _EditWorkOrderScreenState();
}

class _EditWorkOrderScreenState extends State<EditWorkOrderScreen> {
  final TextEditingController customerNameController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
  final TextEditingController otpCodeController = TextEditingController();
  final TextEditingController badgeNoController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  final _formKey = GlobalKey<FormState>();
  Uint8List? _imageData;
  // final SignatureController _controller = SignatureController(
  //   strokeCap: StrokeCap.round,
  //   penStrokeWidth: 7,
  //   penColor: const Color.fromARGB(255, 0, 55, 137),
  //   // exportBackgroundColor: Colors.blue,
  //   exportBackgroundColor: Colors.white,
  // );

  //Signature? signatureCanvas;
  bool expandSignature = false;
  final isarService = IsarService();
  bool scrollEnabled = true;

  final _controlHand = HandSignatureControl(
    threshold: 3.0,
    smoothRatio: 0.65,
    velocityRange: 2.0,
  );

  @override
  void initState() {
    super.initState();
    customerNameController.text = widget.workOrder.customerName ?? '';
    mobileNoController.text = widget.workOrder.customerMobile ?? '';
    otpCodeController.text = widget.workOrder.collectedCode != null
        ? '${widget.workOrder.collectedCode}'
        : '';
    badgeNoController.text = widget.workOrder.customerBadge ?? '';

    // signatureCanvas = Signature(
    //   controller: _controller,
    //   width: 300,
    //   height: 300,
    //   backgroundColor: Colors.lightBlueAccent,
    // );
  }

  @override
  void dispose() {
    customerNameController.dispose();
    mobileNoController.dispose();
    otpCodeController.dispose();
    badgeNoController.dispose();
    scrollController.dispose();
    _controlHand.dispose();
    _controlHand.removeListener(() {});
    // _controller.dispose();
    // _controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorBackground2,
        appBar: AppBarWidget(workOrder: widget.workOrder),
        body: Padding(
          padding: expandSignature
              ? EdgeInsets.symmetric(
                  horizontal: 5.w,
                  // bottom: MediaQuery.of(context).viewInsets.bottom,
                )
              : EdgeInsets.symmetric(
                  horizontal: 25.w,
                  // bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
          child: ListView(
            controller: scrollController,
            physics: scrollEnabled
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.linear,
                          width: 1.sw,
                          margin: expandSignature
                              ? const EdgeInsets.all(0.0)
                              : const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: AppColors.colorBorder1,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: Column(
                              children: [
                                // SignturePad(
                                //   controller: _controller,
                                //   expandSignature: expandSignature,
                                // ),
                                Container(
                                  height: expandSignature ? 0.6.sh : 0.27.sh,
                                  width: expandSignature ? 0.95.sw : 0.7.sw,
                                  color: Colors.white,
                                  child: HandSignature(
                                    control: _controlHand,
                                    color:
                                        const Color.fromARGB(255, 0, 55, 137),
                                    maxWidth: 2.5,
                                    type: SignatureDrawType.shape,
                                    width: 1,
                                    onPointerDown: () {
                                      setState(
                                        () {
                                          scrollEnabled = false;
                                        },
                                      );
                                    },
                                    onPointerUp: () {
                                      setState(
                                        () {
                                          scrollEnabled = true;
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        margin:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          'Customer Signature',
                                          style: AppTextStyle.textStyleApp(
                                            color: AppColors.colorText3,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        if (_controlHand.isFilled == false) {
                                          expandSignature = !expandSignature;
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              backgroundColor: Colors.orange,
                                              content: Text(
                                                'Delete signature first',
                                                style:
                                                    AppTextStyle.textStyleApp(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: AppColors.colorMain,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: AppSvgIcon(
                                          iconPath: expandSignature
                                              ? AppIcons.minimizeIcon
                                              : AppIcons.expandedIcon,
                                          iconSize: 20,
                                          iconColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 10,
                          child: CircleAvatar(
                            backgroundColor: AppColors.colorMain,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  //_controller.clear();
                                  _controlHand.clear();
                                });
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Receiver Name ',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InputFieldMake(
                              inputController: customerNameController,
                              setWidth: 0.40.sw,
                              validatorInput: (input) {
                                if (input!.trim().isEmpty) {
                                  return "required";
                                }

                                return null;
                              },
                              // onChanged: (value) {
                              //   customerNameController.text = value;
                              // },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Mobile No ',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InputFieldMake(
                              setWidth: 0.40.sw,
                              inputController: mobileNoController,
                              // isNumber: true,
                              textInputType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                              ],
                              validatorInput: (input) {
                                if (input!.trim().isEmpty) {
                                  return "required";
                                }

                                return null;
                              },
                              // onChanged: (value) {
                              //   mobileNoController.text = value;
                              // },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Text(
                            //     'OTP Code',
                            //     style: TextStyle(
                            //       fontSize: 14.sp,
                            //       fontWeight: FontWeight.w700,
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'OTP Code ',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InputFieldMake(
                              inputController: otpCodeController,
                              // isNumber: true,
                              textInputType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                              ],
                              setWidth: 0.40.sw,
                              validatorInput: (input) {
                                if (input!.trim().isEmpty) {
                                  return "required";
                                }

                                return null;
                              },
                              // onChanged: (value) {
                              //   otpCodeController.text = value;
                              // },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Badge No',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            InputFieldMake(
                              setWidth: 0.40.sw,
                              inputController: badgeNoController,
                              // isNumber: true,
                              textInputType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                              ],
                              validatorInput: (input) {
                                // if (input!.trim().isEmpty) {
                                //   return "required";
                                // }

                                return null;
                              },
                              // onChanged: (value) {
                              //   badgeNoController.text = value;
                              // },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 0.10.sh,
                        child: Center(
                          child: CustomButton(
                            title: 'Save',
                            radius: 10,
                            onPressed: () async {
                              // _imageData = await _controller.toPngBytes();
                              ByteData? bytes = await _controlHand.toImage();
                              _imageData = bytes?.buffer.asUint8List();

                              if (_formKey.currentState!.validate() &&
                                  _imageData != null) {
                                //! delete work order old signature from local
                                print("Here");
                                await isarService
                                    .deleteImageByWOId(widget.workOrder.woId);

                                //! add new signature to local storage and update work order
                                await isarService
                                    .addImage(
                                      LocalImage(
                                        imageBytes: _imageData!.toList(),
                                        imageName:
                                            '${widget.workOrder.woId}_signature',
                                        woId: widget.workOrder.woId,
                                      ),
                                    )
                                    .then(
                                      (customerSignature) async =>
                                          await isarService
                                              .addWorkOrder(widget.workOrder
                                                ..customerSign =
                                                    customerSignature
                                                            ?.imageName ??
                                                        ''
                                                ..customerName =
                                                    customerNameController.text
                                                ..customerBadge =
                                                    badgeNoController
                                                            .text.isEmpty
                                                        ? null
                                                        : badgeNoController.text
                                                ..customerMobile =
                                                    mobileNoController.text
                                                ..collectedCode = int.parse(
                                                    otpCodeController.text)
                                                ..isSynced = false
                                                ..isUploaded = false)
                                              .then(
                                                (_) => AppNavigator
                                                    .navigateNamedFinish(
                                                  context,
                                                  Routes.layoutScreen,
                                                ),
                                              ),
                                    );
                              } else if (_formKey.currentState!.validate() &&
                                  _imageData == null) {
                                //! update work order
                                await isarService
                                    .addWorkOrder(widget.workOrder
                                      ..customerName =
                                          customerNameController.text
                                      ..customerBadge =
                                          badgeNoController.text.isEmpty
                                              ? null
                                              : badgeNoController.text
                                      ..customerMobile = mobileNoController.text
                                      ..collectedCode =
                                          int.parse(otpCodeController.text)
                                      ..isSynced = false
                                      ..isUploaded = false)
                                    .then(
                                      (_) => AppNavigator.navigateNamedFinish(
                                        context,
                                        Routes.layoutScreen,
                                      ),
                                    );
                              }
                            },
                            width: 0.90.sw,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: (expandSignature ||
                context.orientation == Orientation.landscape)
            ? FloatingActionButton(
                onPressed: () {
                  double endOffset = scrollController.position.maxScrollExtent;
                  if (scrollController.offset != endOffset) {
                    scrollController.animateTo(
                      endOffset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear,
                    );
                  }
                },
                elevation: 20.0,
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.colorMain,
                ),
              )
            : null);
  }
}

// class SignturePad extends StatelessWidget {
//   const SignturePad({
//     Key? key,
//     required this.controller,
//     required this.expandSignature,
//   }) : super(key: key);
//
//   final SignatureController controller;
//   final bool expandSignature;
//
//   @override
//   Widget build(BuildContext context) {
//     return Signature(
//       height: expandSignature ? 0.6.sh : 0.27.sh,
//       width: expandSignature ? 0.95.sw : 0.7.sw,
//       controller: controller,
//       backgroundColor: Colors.white,
//       dynamicPressureSupported: true,
//     );
//   }
// }
