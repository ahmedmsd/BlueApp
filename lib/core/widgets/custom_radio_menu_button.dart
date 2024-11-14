import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioMenuButton extends StatelessWidget {
  const CustomRadioMenuButton({
    Key? key,
    required this.childText,
    required this.value,
    required this.onChange,
    this.groupValue,
    this.onHover,
    this.onFocusChange,
    this.toggleable,
    this.childTextSize = 12.0,
    this.childTextLetterSpacing = 0,
  }) : super(key: key);

  final String childText;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final bool? toggleable;
  final String? groupValue;
  final String value;
  final double? childTextSize;
  final double? childTextLetterSpacing;
  final Function(dynamic val)? onChange;

  @override
  Widget build(BuildContext context) {
    return RadioMenuButton(
      value: value,
      groupValue: groupValue,
      onChanged: onChange,
      toggleable: toggleable ?? false,
      onFocusChange: onFocusChange,
      onHover: onHover,
      focusNode: FocusNode(
        debugLabel: 'Menu Button',
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(
        childText,
        style: TextStyle(
          fontSize: childTextSize?.sp,
          letterSpacing: childTextLetterSpacing,
        ),
      ),
    );
  }
}
