// import 'package:flutter/material.dart';
// import 'package:test_workapp/collections/certifications/certification.dart';
// import 'package:test_workapp/core/utils/app_colors.dart';
// import 'package:test_workapp/core/widgets/custom_radio_menu_button.dart';
// import 'package:test_workapp/core/utils/media_query_values.dart';

// class InspectionResultWidget extends StatefulWidget {
//   final Certification certification;
//   const InspectionResultWidget({
//     super.key,
//     required this.certification,
//   });

//   @override
//   State<InspectionResultWidget> createState() => _InspectionResultWidgetState();
// }

// class _InspectionResultWidgetState extends State<InspectionResultWidget> {
//   String radioButtonGroupValue = '1';

//   @override
//   void initState() {
//     radioButtonGroupValue = widget.certification.testResult ?? '1';
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Inspection Result',
//           style: TextStyle(
//             color: AppColors.colorText2,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Row(
//           children: <Widget>[
//             CustomRadioMenuButton(
//               childText: 'Accepted',
//               value: '1',
//               groupValue: radioButtonGroupValue,
//               onChange: (val) {},
//               childTextSize: 14.0,
//             ),
//             SizedBox(
//               width: MediaQueryValues(context).screenWidth * 0.09,
//             ),
//             CustomRadioMenuButton(
//               childText: 'Rejected',
//               value: '2',
//               groupValue: radioButtonGroupValue,
//               onChange: (val) {},
//               childTextSize: 14.0,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
