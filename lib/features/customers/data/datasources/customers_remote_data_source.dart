import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';

abstract class CustomersRemoteDataSource {
  Future<List<CustomerEntity>> getCustomers(NoParams params);
}

class CustomersRemoteDataSourceImpl implements CustomersRemoteDataSource {
  final ApiConsumer apiConsumer;

  CustomersRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<CustomerEntity>> getCustomers(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.customersUrl);
    return (response['data'] as List)
        .map((e) => CustomerEntity.fromJson(e))
        .toList();
  }
}
