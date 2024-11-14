import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class PickImageWidget extends StatefulWidget {
  final CertificationCubit certificationCubit;
  const PickImageWidget({Key? key, required this.certificationCubit})
      : super(key: key);

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                content: SizedBox(
                  height: 150.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _PickImageCard(
                        text: 'Gallery',
                        iconPath: AppIcons.galleryIcon,
                        onTap: () async {
                          await widget.certificationCubit
                              .addAttachedPhotoToListFun(
                                  imageSource: ImageSource.gallery)
                              .then((value) {
                            Navigator.pop(context);
                          });
                        },
                      ),
                      _PickImageCard(
                        text: 'Camera',
                        iconPath: AppIcons.cameraShotIcon,
                        onTap: () async {
                          await widget.certificationCubit
                              .addAttachedPhotoToListFun(
                                  imageSource: ImageSource.camera)
                              .then((value) {
                            Navigator.pop(context);
                          });
                        },
                      ),
                    ],
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    const Text(
                      'Add Photo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      child: const Icon(
                        Icons.cancel,
                        size: 35,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              )),
        );
      },
      child: Container(
        width: 90.w,
        height: 70.w,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10.0.r),
          border: Border.all(
            color: AppColors.colorMain,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: const AppSvgIcon(
          iconPath: AppIcons.addPhotoIcon,
          iconColor: AppColors.colorMain,
          iconSize: 50.0,
        ),
      ),
    );
  }
}

class _PickImageCard extends StatelessWidget {
  const _PickImageCard(
      {Key? key,
      required this.onTap,
      required this.text,
      required this.iconPath})
      : super(key: key);

  final String iconPath;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: AppColors.colorMain.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: AppColors.colorMain,
          ),
        ),
        child: Row(
          children: <Widget>[
            AppSvgIcon(
              iconPath: iconPath,
              iconSize: 40,
              iconColor: AppColors.colorMain,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
