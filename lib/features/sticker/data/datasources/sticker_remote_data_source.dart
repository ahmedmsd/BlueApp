import 'package:test_workapp/core/api/api_consumer.dart';
import 'package:test_workapp/core/api/end_points.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';

abstract class StickersRemoteDataSource {
  Future<List<StickerEntity>> getStickers(NoParams params);
}

class StickersRemoteDataSourceImpl implements StickersRemoteDataSource {
  final ApiConsumer apiConsumer;

  StickersRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<StickerEntity>> getStickers(NoParams params) async {
    final response = await apiConsumer.get(Endpoints.stickersUrl);
    return (response['data'] as List)
        .map((e) => StickerEntity.fromJson(e))
        .toList();
  }
}
