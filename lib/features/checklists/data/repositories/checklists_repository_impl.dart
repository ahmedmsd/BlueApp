import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/data/datasources/checklists_remote_data_source.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';
import 'package:test_workapp/features/checklists/domain/repositories/checklists_repository.dart';

class ChecklistsRepositoryImpl implements ChecklistsRepository {
  final NetworkInfo networkInfo;
  final ChecklistsRemoteDataSource checklistsRemoteDataSource;

  ChecklistsRepositoryImpl({
    required this.networkInfo,
    required this.checklistsRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<ChecklistEntity>>> getChecklists(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetChecklists =
            await checklistsRemoteDataSource.getChecklists(params);

        return Right(remoteGetChecklists);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }

  @override
  Future<Either<Failure, List<ChecklistDetailsEntity>>> getChecklistsDetails(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetChecklistsDetails =
            await checklistsRemoteDataSource.getChecklistsDetails(params);

        return Right(remoteGetChecklistsDetails);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
