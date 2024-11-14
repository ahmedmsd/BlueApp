import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/rejected/domain/entities/rejected_entity.dart';

abstract class RejectedRepository {
  Future<Either<Failure, List<RejectedEntity>>> getRejected(NoParams params);
}
