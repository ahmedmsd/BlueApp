import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/repositories/users_repository.dart';

class GetUsersUseCase extends UseCase<List<UserEntity>, NoParams> {
  final UsersRepository usersRepository;

  GetUsersUseCase({required this.usersRepository});
  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    return await usersRepository.getUsers(params);
  }
}
