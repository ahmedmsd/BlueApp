import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';

abstract class RegionsRemoteDataSource {
  Future<List<RegionEntity>> getRegions(NoParams params);
}

class RegionsRemoteDataSourceImpl implements RegionsRemoteDataSource {
  final ApiConsumer apiConsumer;

  RegionsRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<RegionEntity>> getRegions(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.regionsUrl);
    return (response['data'] as List)
        .map((e) => RegionEntity.fromJson(e))
        .toList();
  }
}
