import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';

abstract class RegionsRepository {
  Future<Either<Failure, List<RegionEntity>>> getRegions(NoParams params);
}
