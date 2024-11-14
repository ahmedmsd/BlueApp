import 'package:dio/dio.dart';
import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/create_work_order_use_case.dart';
import 'package:test_workapp/features/work_orders/domain/usecases/update_work_order_use_case.dart';
import 'package:http_parser/http_parser.dart' show MediaType;

abstract class WorkOrdersRemoteDataSource {
  Future<List<WorkOrderEntity>> getWorkOrders(NoParams params);
  Future<List<WorkOrderAssignedEntity>> getWorkOrdersAssigned(NoParams params);
  Future<WorkOrderEntity> createWorkOrder(
      {required CreateWorkOrderParams createWorkOrderParams});
  Future<WorkOrderEntity> updateWorkOrder(
      {required UpdateWorkOrderParams updateWorkOrderParams});
}

class WorkOrdersRemoteDataSourceImpl implements WorkOrdersRemoteDataSource {
  final ApiConsumer apiConsumer;

  WorkOrdersRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<WorkOrderEntity>> getWorkOrders(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.workOrdersUrl);
    return (response['data'] as List)
        .map((e) => WorkOrderEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<WorkOrderAssignedEntity>> getWorkOrdersAssigned(
      NoParams params) async {
    final response =
        await apiConsumer.get('${Endpoints.workOrdersUrl}/assigned');
    return (response['data'] as List)
        .map((e) => WorkOrderAssignedEntity.fromJson(e))
        .toList();
  }

  @override
  Future<WorkOrderEntity> createWorkOrder(
      {required CreateWorkOrderParams createWorkOrderParams}) async {
    final response =
        await apiConsumer.post('${Endpoints.workOrdersUrl}/create', body: {
      'wo_number': createWorkOrderParams.woNumber,
      'customer_name': createWorkOrderParams.customerName,
      'customer_id': createWorkOrderParams.customerId,
    });
    return WorkOrderEntity.fromJson(response['data']);
  }

  @override
  Future<WorkOrderEntity> updateWorkOrder(
      {required UpdateWorkOrderParams updateWorkOrderParams}) async {
    final response = await apiConsumer.post(
        '${Endpoints.workOrdersUrl}/update/${updateWorkOrderParams.woId}',
        isFormData: true,
        body: {
          'customer_name': updateWorkOrderParams.customerName,
          'customer_badge': updateWorkOrderParams.customerBadge,
          'customer_mobile': updateWorkOrderParams.customerMobile,
          'signatureImage': await MultipartFile.fromFile(
              updateWorkOrderParams.signatureImage.path,
              filename:
                  updateWorkOrderParams.signatureImage.path.split('/').last,
              contentType: MediaType('image', 'png')),
          'collected_code': updateWorkOrderParams.collectedCode,
        });
    return WorkOrderEntity.fromJson(response['data']);
  }
}
