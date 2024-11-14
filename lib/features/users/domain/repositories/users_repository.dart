import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';

abstract class UsersRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers(NoParams params);
  Future<Either<Failure, List<UserDetailsEntity>>> getUsersDetails(
      NoParams params);
  Future<Either<Failure, List<UserJobEntity>>> getUsersJobs(NoParams params);
}
