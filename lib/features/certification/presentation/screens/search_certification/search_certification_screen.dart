import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/work_order_details_widgets/certification_card_widget.dart';
import 'package:test_workapp/isar_service.dart';

class SearchCertificationScreen extends StatefulWidget {
  final WorkOrder workOrder;
  const SearchCertificationScreen({
    super.key,
    required this.workOrder,
  });

  @override
  State<SearchCertificationScreen> createState() =>
      _SearchCertificationScreenState();
}

class _SearchCertificationScreenState extends State<SearchCertificationScreen> {
  final TextEditingController searchController = TextEditingController();
  final isarService = IsarService();
  Future<List<Certification>> _certificationsData = Future.value([]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Certifications',
          style: TextStyle(
            fontSize: 16.0.sp,
            color: AppColors.colorText1,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            AppNavigator.pop(context);
            // AppNavigator.navigateNamedReplace(
            //   context,
            //   Routes.workOrderDetailsScreen,
            //   arguments: widget.workOrder,
            // );
          },
          child: const Icon(Icons.arrow_back),
        ),
        elevation: 3,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.1.sh),
          child: InputFieldMake(
            setWidth: 0.80.sw,
            inputController: searchController,
            // isNumber: true,
            textInputType: TextInputType.text,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r'^[a-zA-Z0-9]*$'),
              ),
            ],
            validatorInput: (input) {
              if (input!.trim().isEmpty) {
                return "required";
              }

              return null;
            },
            hintText: 'type a certification number',
            onFieldSubmitted: (value) {
              if (searchController.text.isNotEmpty) {
                _certificationsData = isarService
                    .searchCertificationByWoId(
                        widget.workOrder.woId, value.toLowerCase())
                    .then((value) {
                  setState(() {});
                  return value;
                });
              } else {
                _certificationsData = Future.value([]);
                setState(() {});
              }

              // if (int.tryParse(value) != null) {
              //   _certificationData =
              //       isarService.getCertificationByWoIdAndCertificationNumber(
              //     widget.workOrder.woId,
              //     int.parse(value),
              //   );
              //   setState(() {});
              // } else {
              //   _certificationData = Future.value();
              //   setState(() {});
              // }
            },
            onChanged: (value) {
              // if (int.tryParse(value) != null) {
              //   _certificationData =
              //       isarService.getCertificationByWoIdAndCertificationNumber(
              //     widget.workOrder.woId,
              //     int.parse(value),
              //   );
              //   setState(() {});
              // } else {
              //   _certificationData = Future.value();
              //   setState(() {});
              // }
              if (searchController.text.isNotEmpty) {
                _certificationsData = isarService
                    .searchCertificationByWoId(
                        widget.workOrder.woId, value.toLowerCase())
                    .then((value) {
                  setState(() {});
                  return value;
                });
              } else {
                _certificationsData = Future.value([]);
                setState(() {});
              }
            },
            prefixIcon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: AppSvgIcon(
                iconColor: AppColors.colorIcon1,
                iconPath: AppIcons.searchIcon,
                iconSize: 20,
              ),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      body: BlocBuilder<SyncCubit, SyncState>(
        builder: (context, state) {
          final syncCubit = context.read<SyncCubit>();
          return syncCubit.isCertificationSyncying == true ||
                  syncCubit.isAllCertificationsSyncying == true
              ? const Center(child: CircularProgressIndicator.adaptive())
              : FutureBuilder<List<Certification>>(
                  future: _certificationsData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (!snapshot.hasData) {
                      if (searchController.text.trim().isEmpty) {
                        return const SizedBox();
                      } else {
                        return const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Text(" There is no matching certification"),
                          ),
                        );
                      }
                    } else if (snapshot.hasData) {
                      if (snapshot.data != null) {
                        return ListView.builder(
                          padding: const EdgeInsets.all(8.0),
                          itemBuilder: (context, index) =>
                              CertificationCardWidget(
                            workOrder: widget.workOrder,
                            certification: snapshot.data![index],
                            syncCubit: syncCubit,
                          ),
                          itemCount: snapshot.data!.length,
                        );
                      } else {
                        return const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Text(" There is no matching certification"),
                          ),
                        );
                      }
                    } else {
                      return const SizedBox();
                    }
                  },
                );
        },
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
