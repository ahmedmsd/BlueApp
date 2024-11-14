import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';

abstract class EquipmentsRemoteDataSource {
  Future<List<EquipmentEntity>> getEquipments(NoParams params);
}

class EquipmentsRemoteDataSourceImpl implements EquipmentsRemoteDataSource {
  final ApiConsumer apiConsumer;

  EquipmentsRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<EquipmentEntity>> getEquipments(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.equipmentsUrl);
    return (response['data'] as List)
        .map((e) => EquipmentEntity.fromJson(e))
        .toList();
  }
}
