import 'package:flutter/material.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu(
      {Key? key, required this.list, this.fieldWidth, this.menuHeight})
      : super(key: key);

  final List list;
  final double? menuHeight;
  final double? fieldWidth;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: List.generate(
        list.length,
        (index) => DropdownMenuEntry(
          value: 'value',
          label: list[index].toString(),
        ),
      ),
      menuHeight: menuHeight,
      width: fieldWidth,
    );
  }
}
