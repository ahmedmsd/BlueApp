import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/cities/data/datasources/cities_remote_data_source.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';
import 'package:test_workapp/features/cities/domain/repositories/cities_repository.dart';

class CitiesRepositoryImpl implements CitiesRepository {
  final NetworkInfo networkInfo;
  final CitiesRemoteDataSource citiesRemoteDataSource;

  CitiesRepositoryImpl({
    required this.networkInfo,
    required this.citiesRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<CityEntity>>> getCities(NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetCities = await citiesRemoteDataSource.getCities(params);

        return Right(remoteGetCities);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
