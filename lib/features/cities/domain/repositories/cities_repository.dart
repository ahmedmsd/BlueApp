import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';

abstract class CitiesRepository {
  Future<Either<Failure, List<CityEntity>>> getCities(NoParams params);
}
