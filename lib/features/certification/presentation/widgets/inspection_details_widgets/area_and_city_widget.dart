import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/cities/city.dart';
import 'package:test_workapp/collections/regions/region.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/media_query_values.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/isar_service.dart';

class AreaAndCityWidget extends StatefulWidget {
  final CertificationRouteArguments certificationRouteArguments;
  const AreaAndCityWidget(
      {super.key, required this.certificationRouteArguments});

  @override
  State<AreaAndCityWidget> createState() => _AreaAndCityWidgetState();
}

class _AreaAndCityWidgetState extends State<AreaAndCityWidget> {
  double _horizontalSpace(context) =>
      MediaQueryValues(context).screenWidth * 0.02;

  final isarService = IsarService();

  Future<List<Region>> _regionsData = Future.value([]);
  Region? dropdownRegionValue;

  Future<List<City>> _citiesData = Future.value([]);
  City? dropdownCityValue;

  @override
  void initState() {
    if (widget.certificationRouteArguments.certification != null) {
      isarService
          .getCityByID(
              widget.certificationRouteArguments.certification?.cityId ?? 0)
          .then((city) {
        _regionsData = isarService.getAllRegions().then((regions) {
          dropdownRegionValue = regions
              .firstWhere((element) => element.regionId == city!.regionId);
          _citiesData = isarService
              .getAllCitiesByRegionId(dropdownRegionValue!.regionId!)
              .then((cities) {
            dropdownCityValue =
                cities.firstWhere((element) => element.iD == city!.iD);
            if (dropdownCityValue != null) {
              widget.certificationRouteArguments.certificationCubit
                  ?.changeCityValue(dropdownCityValue!);
            }

            setState(() {});
            return cities;
          });
          setState(() {});
          return regions;
        });
      });
    } else {
      if (widget.certificationRouteArguments.certificationCubit!.cityId !=
          null) {
        isarService
            .getCityByID(
                widget.certificationRouteArguments.certificationCubit!.cityId ??
                    0)
            .then((city) {
          _regionsData = isarService.getAllRegions().then((regions) {
            dropdownRegionValue = regions
                .firstWhere((element) => element.regionId == city!.regionId);
            _citiesData = isarService
                .getAllCitiesByRegionId(dropdownRegionValue!.regionId!)
                .then((cities) {
              dropdownCityValue =
                  cities.firstWhere((element) => element.iD == city!.iD);
              if (dropdownCityValue != null) {
                widget.certificationRouteArguments.certificationCubit
                    ?.changeCityValue(dropdownCityValue!);
              }

              setState(() {});
              return cities;
            });
            return regions;
          });
        });
      } else {
        _regionsData = isarService.getAllRegions().then((regions) {
          dropdownRegionValue = regions.first;
          _citiesData = isarService
              .getAllCitiesByRegionId(regions.first.regionId ?? 0)
              .then((cities) {
            dropdownCityValue = cities.first;
            if (dropdownCityValue != null) {
              widget.certificationRouteArguments.certificationCubit
                  ?.changeCityValue(dropdownCityValue!);
            }

            setState(() {});
            return cities;
          });

          return regions;
        });
      }
    }

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
                'Area:*',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FutureBuilder<List<Region>>(
                future: _regionsData,
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
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffD4D4D4),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton<Region>(
                        underline: const SizedBox(),
                        isExpanded: true,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        value: dropdownRegionValue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.colorIcon1,
                        ),
                        items: snapshot.data!.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(
                              '${e.regionNameEn}',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                color: AppColors.colorText3,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) async {
                          _citiesData = isarService
                              .getAllCitiesByRegionId(value!.regionId!)
                              .then((cities) {
                            dropdownCityValue = cities.first;
                            if (dropdownCityValue != null) {
                              widget.certificationRouteArguments
                                  .certificationCubit!
                                  .changeCityValue(dropdownCityValue!);
                            }
                            return cities;
                          });
                          setState(() {
                            dropdownRegionValue = value;
                          });
                        },
                        menuMaxHeight: 0.5.sh,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
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
                'City:*',
                style: TextStyle(
                  fontSize: 12.0.sp,
                  color: AppColors.colorText2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FutureBuilder<List<City>>(
                future: _citiesData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (!snapshot.hasData) {
                    return const Center(
                      child: Text(" There is no cities"),
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
                      child: DropdownButton<City>(
                        underline: const SizedBox(),
                        isExpanded: true,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        value: dropdownCityValue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.colorIcon1,
                        ),
                        items: snapshot.data!.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(
                              '${e.name}',
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
                            dropdownCityValue = value!;
                            if (dropdownCityValue != null) {
                              widget.certificationRouteArguments
                                  .certificationCubit!
                                  .changeCityValue(dropdownCityValue!);
                            }
                          });
                        },
                        menuMaxHeight: 0.5.sh,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
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
      ],
    );
  }
}
