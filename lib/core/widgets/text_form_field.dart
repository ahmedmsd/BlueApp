import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class InputFieldMake extends StatelessWidget {
  String? Function(String?)? validatorInput;
  FocusNode? focusNode;
  // ignore: prefer_typing_uninitialized_variables
  Widget? prefixIcon;
  Widget? suffixIcon;
  IconData? suffix;
  Function()? suffixPressed;

  // ignore: prefer_typing_uninitialized_variables
  final inputController;
  Color? fillColor;
  // bool isNumber;
  TextInputType? textInputType;
  bool enabled;
  int maxNumber;
  int? maxLines;
  int? minLines;
  double? setWidth;

  bool hideText;
  String? labelText;
  String? hintText;
  String? initialValue;
  VoidCallback? onTap;
  Function(String)? onFieldSubmitted;
  Function(String)? onChanged;
  bool expanded;

  final List<TextInputFormatter>? inputFormatters;
  bool readOnly;
  String? errorText;
  double radius;

  InputFieldMake({
    Key? key,
    this.focusNode,
    this.fillColor = Colors.white,
    this.enabled = true,
    this.hideText = false,
    this.maxNumber = 0,
    this.minLines,
    this.maxLines = 1,
    this.setWidth,
    this.suffixIcon,
    // this.isNumber = false,
    this.textInputType,
    required this.inputController,
    this.labelText,
    this.hintText,
    this.initialValue,
    this.prefixIcon,
    this.suffix,
    this.onTap,
    this.onFieldSubmitted,
    this.suffixPressed,
    this.readOnly = false,
    this.inputFormatters,
    required this.validatorInput,
    this.errorText,
    this.onChanged,
    this.expanded = false,
    this.radius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        width: setWidth,
        child: TextFormField(
          focusNode: focusNode,
          initialValue: initialValue,
          enabled: enabled,
          readOnly: readOnly,
          expands: expanded,
          inputFormatters: inputFormatters,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          // keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
          keyboardType: textInputType,
          // maxLength: isNumber ? maxNumber : null,
          maxLines: maxLines,
          minLines: minLines,
          validator: validatorInput,
          onChanged: onChanged,
          controller: inputController,
          obscureText: hideText ? true : false,
          style: TextStyle(fontSize: 14.sp, color: Colors.black),
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
              hintText: hintText,
              errorText: errorText,
              errorStyle:
                  TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
              labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              labelText: labelText,
              disabledBorder: outlineInputBorder(radius: radius),
              enabledBorder: outlineInputBorder(radius: radius),
              border: outlineInputBorder(radius: radius),
              focusedBorder: outlineInputBorder(radius: radius),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17.w, vertical: 17.h),
              counterText: "",
              fillColor: fillColor,
              filled: true),
        ),
      ),
    );
  }

  ///===================== Text Field Border ==========================

  OutlineInputBorder outlineInputBorder({double radius = 5}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius.r)),
        borderSide: const BorderSide(
          width: 1,
          color: Color(0xffD4D4D4),
        ));
  }
}
