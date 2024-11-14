import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/images/local_image.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/edit_work_order_widgets/app_bar_widget.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/view_work_order_signature_widgets/signature_row_widget.dart';
import 'package:test_workapp/isar_service.dart';

class ViewWorkOrderSignatureScreen extends StatefulWidget {
  final WorkOrder workOrder;
  const ViewWorkOrderSignatureScreen({
    super.key,
    required this.workOrder,
  });

  @override
  State<ViewWorkOrderSignatureScreen> createState() =>
      _ViewWorkOrderSignatureScreenState();
}

class _ViewWorkOrderSignatureScreenState
    extends State<ViewWorkOrderSignatureScreen> {
  final isarService = IsarService();
  Future<LocalImage?> _signatureData = Future.value();

  @override
  void initState() {
    _signatureData = isarService.getImageByWOId(widget.workOrder.woId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        workOrder: widget.workOrder,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        children: [
          FutureBuilder<LocalImage?>(
            future: _signatureData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (!snapshot.hasData) {
                if (widget.workOrder.customerSign !=
                        "https://epksa.com/v1/null" &&
                    widget.workOrder.customerSign != null) {
                  return CachedNetworkImage(
                    imageUrl: widget.workOrder.customerSign!,
                    imageBuilder: (context, imageProvider) {
                      return Image(image: imageProvider);
                    },
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                } else {
                  return Center(
                    child: Text(
                      "There is no local image for customer signature",
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppColors.colorText3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
              } else if (snapshot.hasData) {
                return Image.memory(
                    Uint8List.fromList(snapshot.data!.imageBytes.toList()));
              } else {
                return const SizedBox();
              }
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          SignatureRowWidget(
            title1: 'Receiver Name',
            content1: widget.workOrder.customerName ?? '',
            title2: 'Mobile No',
            content2: widget.workOrder.customerMobile,
          ),
          SizedBox(
            height: 20.h,
          ),
          SignatureRowWidget(
            title1: 'OTP Code',
            content1: '${widget.workOrder.collectedCode ?? ''}',
            title2: 'Badge No',
            content2: widget.workOrder.customerBadge,
          ),
        ],
      ),
    );
  }
}
