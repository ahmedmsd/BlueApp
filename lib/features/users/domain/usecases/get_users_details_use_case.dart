import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/repositories/users_repository.dart';

class GetUsersDetailsUseCase
    extends UseCase<List<UserDetailsEntity>, NoParams> {
  final UsersRepository usersRepository;

  GetUsersDetailsUseCase({required this.usersRepository});
  @override
  Future<Either<Failure, List<UserDetailsEntity>>> call(NoParams params) async {
    return await usersRepository.getUsersDetails(params);
  }
}
