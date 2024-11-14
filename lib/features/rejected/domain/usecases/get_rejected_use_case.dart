import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/rejected/domain/entities/rejected_entity.dart';
import 'package:test_workapp/features/rejected/domain/repositories/rejected_repository.dart';

class GetRejectedUseCase extends UseCase<List<RejectedEntity>, NoParams> {
  final RejectedRepository rejectedRepository;

  GetRejectedUseCase({required this.rejectedRepository});
  @override
  Future<Either<Failure, List<RejectedEntity>>> call(NoParams params) async {
    return await rejectedRepository.getRejected(params);
  }
}
