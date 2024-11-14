import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/authentication/domain/entities/signin_entity.dart';
import 'package:test_workapp/features/authentication/domain/repositories/authentication_repository.dart';

class SigninUseCase implements UseCase<SigninEntity, SigninParams> {
  final AuthenticationRepository authenticationRepository;

  SigninUseCase({required this.authenticationRepository});

  @override
  Future<Either<Failure, SigninEntity>> call(SigninParams signinParams) async {
    return await authenticationRepository.signin(signinParams: signinParams);
  }
}

class SigninParams extends Equatable {
  final String username;
  final String password;

  const SigninParams({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [
        username,
        password,
      ];
}
