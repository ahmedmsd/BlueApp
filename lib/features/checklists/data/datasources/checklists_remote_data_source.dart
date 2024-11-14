import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';

abstract class ChecklistsRemoteDataSource {
  Future<List<ChecklistEntity>> getChecklists(NoParams params);
  Future<List<ChecklistDetailsEntity>> getChecklistsDetails(NoParams params);
}

class ChecklistsRemoteDataSourceImpl implements ChecklistsRemoteDataSource {
  final ApiConsumer apiConsumer;

  ChecklistsRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<ChecklistEntity>> getChecklists(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.checklistsUrl);
    return (response['data'] as List)
        .map((e) => ChecklistEntity.fromJson(e))
        .toList();
  }

  @override
  Future<List<ChecklistDetailsEntity>> getChecklistsDetails(
      NoParams params) async {
    final response =
        await apiConsumer.get('${Endpoints.checklistsUrl}/details');
    return (response['data'] as List)
        .map((e) => ChecklistDetailsEntity.fromJson(e))
        .toList();
  }
}
