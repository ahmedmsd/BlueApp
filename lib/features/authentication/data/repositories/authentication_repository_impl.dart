import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/features/authentication/data/datasources/authentication_remote_data_source.dart';
import 'package:test_workapp/features/authentication/domain/entities/signin_entity.dart';
import 'package:test_workapp/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:test_workapp/features/authentication/domain/usecases/signin_use_case.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo networkInfo;
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  AuthenticationRepositoryImpl({
    required this.networkInfo,
    required this.authenticationRemoteDataSource,
  });

  @override
  Future<Either<Failure, SigninEntity>> signin(
      {required SigninParams signinParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSignin = await authenticationRemoteDataSource.signin(
          signinParams: signinParams,
        );

        return Right(remoteSignin);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
