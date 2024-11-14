import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';
import 'package:test_workapp/features/users/domain/repositories/users_repository.dart';

class GetUsersJobsUseCase extends UseCase<List<UserJobEntity>, NoParams> {
  final UsersRepository usersRepository;

  GetUsersJobsUseCase({required this.usersRepository});
  @override
  Future<Either<Failure, List<UserJobEntity>>> call(NoParams params) async {
    return await usersRepository.getUsersJobs(params);
  }
}
