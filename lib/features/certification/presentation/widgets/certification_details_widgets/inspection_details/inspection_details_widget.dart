import 'package:flutter/material.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/inspection_details/area_and_city_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/inspection_details/inspection_multiline_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/inspection_details/inspection_row_widget.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_details_widgets/inspection_details/inspector_widget.dart';

class InspectionDetailsWidget extends StatelessWidget {
  final Certification certification;
  const InspectionDetailsWidget({
    super.key,
    required this.certification,
  });
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      children: [
        InspecionRowWidget(
          title1: 'Inspection Result',
          content1: certification.testResult == '1'
              ? AppConstants.accepted
              : certification.testResult == '2'
                  ? AppConstants.rejected
                  : '',
        ),
        // InspectionResultWidget(
        //   certification: certification,
        // ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        AreaAndCityWidget(
          certification: certification,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'Org Code',
          content1: certification.orgCode,
          title2: 'Previous Sticker No',
          content2: certification.prevSticker,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'Issued By',
          content1: certification.prevIssuedBy,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'Equipment number:',
          content1: certification.eqId,
          title2: 'Equipment Location:',
          content2: certification.eqLocation,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'Equipment Capacity:',
          content1: certification.eqCapacity,
          title2: 'Equipment Serial No.:',
          content2: certification.eqSerial,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'Equipment Manufacturer:',
          content1: certification.eqManf,
          title2: 'Equipment Model:',
          content2: certification.eqModel,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspecionRowWidget(
          title1: 'New Sticker No:',
          content1: '${certification.newSticker}',
          title2: 'Sticker Expiration Date',
          content2: certification.stickerExpireDate,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspectorWidget(
          certification: certification,
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspectionMultilineWidget(
          title: 'Deficiencies',
          content: certification.notes ?? '',
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
        InspectionMultilineWidget(
          title: 'Corrective action',
          content: certification.correctiveAction ?? '',
        ),
        SizedBox(
          height: _verticalSpace(context),
        ),
      ],
    );
  }
}
