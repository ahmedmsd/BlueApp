import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';
import 'package:test_workapp/features/cities/domain/repositories/cities_repository.dart';

class GetCitiesUseCase extends UseCase<List<CityEntity>, NoParams> {
  final CitiesRepository citiesRepository;

  GetCitiesUseCase({required this.citiesRepository});
  @override
  Future<Either<Failure, List<CityEntity>>> call(NoParams params) async {
    return await citiesRepository.getCities(params);
  }
}
