import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/cities/city.dart';
import 'package:test_workapp/collections/regions/region.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/isar_service.dart';

class AreaAndCityWidget extends StatefulWidget {
  final Certification certification;
  const AreaAndCityWidget({
    super.key,
    required this.certification,
  });

  @override
  State<AreaAndCityWidget> createState() => _AreaAndCityWidgetState();
}

class _AreaAndCityWidgetState extends State<AreaAndCityWidget> {
  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;
  double _verticalSpace(context) =>
      MediaQueryValues(context).screenHeight * 0.008;
  final isarService = IsarService();

  Future<Region?> _regionData = Future.value();

  Future<City?> _cityData = Future.value();

  @override
  void initState() {
    _cityData =
        isarService.getCityByID(widget.certification.cityId).then((city) {
      _regionData = isarService.getRegionById(city?.regionId ?? 0);
      setState(() {});
      return city;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Area:',
                style: TextStyle(
                  // // fontSize: 12.0.sp,
                  // color: AppColors.colorText2,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorText1,
                ),
              ),
              SizedBox(
                height: _verticalSpace(context),
              ),
              FutureBuilder<Region?>(
                future: _regionData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: Text(" There is no regions"),
                    );
                  } else if (snapshot.hasData) {
                    return Text(
                      '${snapshot.data!.regionNameEn}',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppColors.colorText2,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
        SizedBox(
          width: _horizontalSpace(context),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'City:',
                style: TextStyle(
                  // // fontSize: 12.0.sp,
                  // color: AppColors.colorText2,
                  // fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.colorText1,
                ),
              ),
              SizedBox(
                height: _verticalSpace(context),
              ),
              FutureBuilder<City?>(
                future: _cityData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: Text(" There is no regions"),
                    );
                  } else if (snapshot.hasData) {
                    return Text(
                      '${snapshot.data!.name}',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppColors.colorText2,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
