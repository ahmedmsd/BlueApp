import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/rejected/data/datasources/rejected_remote_data_source.dart';
import 'package:test_workapp/features/rejected/domain/entities/rejected_entity.dart';
import 'package:test_workapp/features/rejected/domain/repositories/rejected_repository.dart';

class RejectedRepositoryImpl implements RejectedRepository {
  final NetworkInfo networkInfo;
  final RejectedRemoteDataSource rejectedRemoteDataSource;

  RejectedRepositoryImpl({
    required this.networkInfo,
    required this.rejectedRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<RejectedEntity>>> getRejected(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetRejected =
            await rejectedRemoteDataSource.getRejected(params);

        return Right(remoteGetRejected);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
