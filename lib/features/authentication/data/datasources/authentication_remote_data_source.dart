import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/features/authentication/domain/entities/signin_entity.dart';
import 'package:test_workapp/features/authentication/domain/usecases/signin_use_case.dart';

abstract class AuthenticationRemoteDataSource {
  Future<SigninEntity> signin({required SigninParams signinParams});
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final ApiConsumer apiConsumer;

  AuthenticationRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<SigninEntity> signin({required SigninParams signinParams}) async {
    final response =
        await apiConsumer.post('${Endpoints.authUrl}/signin', body: {
      'username': signinParams.username,
      'password': signinParams.password,
    });
    return SigninEntity.fromJson(response['data']);
  }
}
