import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';

abstract class CitiesRemoteDataSource {
  Future<List<CityEntity>> getCities(NoParams params);
}

class CitiesRemoteDataSourceImpl implements CitiesRemoteDataSource {
  final ApiConsumer apiConsumer;

  CitiesRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<CityEntity>> getCities(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.citiesUrl);
    return (response['data'] as List)
        .map((e) => CityEntity.fromJson(e))
        .toList();
  }
}
