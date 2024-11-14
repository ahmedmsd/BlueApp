import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';
import 'package:test_workapp/features/departments/domain/repositories/departments_repository.dart';

class GetDepartmentsUseCase extends UseCase<List<DepartmentEntity>, NoParams> {
  final DepartmentsRepository departmentsRepository;

  GetDepartmentsUseCase({required this.departmentsRepository});
  @override
  Future<Either<Failure, List<DepartmentEntity>>> call(NoParams params) async {
    return await departmentsRepository.getDepartments(params);
  }
}
