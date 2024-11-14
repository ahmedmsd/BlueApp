import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/data/datasources/users_remoe_data_source.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';
import 'package:test_workapp/features/users/domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  final NetworkInfo networkInfo;
  final UsersRemoteDataSource usersRemoteDataSource;

  UsersRepositoryImpl({
    required this.networkInfo,
    required this.usersRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetUsers = await usersRemoteDataSource.getUsers(params);

        return Right(remoteGetUsers);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, List<UserDetailsEntity>>> getUsersDetails(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetUsersDetails =
            await usersRemoteDataSource.getUsersDetails(params);

        return Right(remoteGetUsersDetails);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, List<UserJobEntity>>> getUsersJobs(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetUsersJobs =
            await usersRemoteDataSource.getUsersJobs(params);

        return Right(remoteGetUsersJobs);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
