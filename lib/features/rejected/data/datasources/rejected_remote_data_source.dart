import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/rejected/domain/entities/rejected_entity.dart';

abstract class RejectedRemoteDataSource {
  Future<List<RejectedEntity>> getRejected(NoParams params);
}

class RejectedRemoteDataSourceImpl implements RejectedRemoteDataSource {
  final ApiConsumer apiConsumer;

  RejectedRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<RejectedEntity>> getRejected(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.rejectedUrl);
    return (response['data'] as List)
        .map((e) => RejectedEntity.fromJson(e))
        .toList();
  }
}
