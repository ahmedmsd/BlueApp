import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/regions/data/datasources/regions_remote_data_source.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';
import 'package:test_workapp/features/regions/domain/repositories/regions_repository.dart';

class RegionsRepositoryImpl implements RegionsRepository {
  final NetworkInfo networkInfo;
  final RegionsRemoteDataSource regionsRemoteDataSource;

  RegionsRepositoryImpl({
    required this.networkInfo,
    required this.regionsRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<RegionEntity>>> getRegions(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetRegions =
            await regionsRemoteDataSource.getRegions(params);

        return Right(remoteGetRegions);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
