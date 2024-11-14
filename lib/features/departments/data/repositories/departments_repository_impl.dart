import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/departments/data/datasources/departments_remote_data_source.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';
import 'package:test_workapp/features/departments/domain/repositories/departments_repository.dart';

class DepartmentsRepositoryImpl implements DepartmentsRepository {
  final NetworkInfo networkInfo;
  final DepartmentsRemoteDataSource departmentsRemoteDataSource;

  DepartmentsRepositoryImpl({
    required this.networkInfo,
    required this.departmentsRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<DepartmentEntity>>> getDepartments(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetDepartments =
            await departmentsRemoteDataSource.getDepartments(params);

        return Right(remoteGetDepartments);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
