import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/features/authentication/domain/entities/signin_entity.dart';
import 'package:test_workapp/features/authentication/domain/usecases/signin_use_case.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, SigninEntity>> signin(
      {required SigninParams signinParams});
}
