import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';

abstract class DepartmentsRemoteDataSource {
  Future<List<DepartmentEntity>> getDepartments(NoParams params);
}

class DepartmentsRemoteDataSourceImpl implements DepartmentsRemoteDataSource {
  final ApiConsumer apiConsumer;

  DepartmentsRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<DepartmentEntity>> getDepartments(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.departmentsUrl);
    return (response['data'] as List)
        .map((e) => DepartmentEntity.fromJson(e))
        .toList();
  }
}
