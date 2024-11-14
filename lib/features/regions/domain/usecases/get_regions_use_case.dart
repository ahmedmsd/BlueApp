import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';
import 'package:test_workapp/features/regions/domain/repositories/regions_repository.dart';

class GetRegionsUseCase extends UseCase<List<RegionEntity>, NoParams> {
  final RegionsRepository regionsRepository;

  GetRegionsUseCase({required this.regionsRepository});
  @override
  Future<Either<Failure, List<RegionEntity>>> call(NoParams params) async {
    return await regionsRepository.getRegions(params);
  }
}
