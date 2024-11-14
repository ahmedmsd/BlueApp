import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';

abstract class DepartmentsRepository {
  Future<Either<Failure, List<DepartmentEntity>>> getDepartments(
      NoParams params);
}
