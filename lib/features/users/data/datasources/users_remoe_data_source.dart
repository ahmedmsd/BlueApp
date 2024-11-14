import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';

abstract class UsersRemoteDataSource {
  Future<List<UserEntity>> getUsers(NoParams params);
  Future<List<UserDetailsEntity>> getUsersDetails(NoParams params);
  Future<List<UserJobEntity>> getUsersJobs(NoParams params);
}

class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  final ApiConsumer apiConsumer;

  UsersRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<UserEntity>> getUsers(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.usersUrl);
    return (response['data'] as List)
        .map((e) => UserEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<UserDetailsEntity>> getUsersDetails(NoParams params) async {
    final response = await apiConsumer.get('${Endpoints.usersUrl}/details');
    return (response['data'] as List)
        .map((e) => UserDetailsEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<UserJobEntity>> getUsersJobs(NoParams params) async {
    final response = await apiConsumer.get('${Endpoints.usersUrl}/jobs');
    return (response['data'] as List)
        .map((e) => UserJobEntity.fromJson(e))
        .toList();
  }
}
