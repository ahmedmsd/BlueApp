import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';

abstract class StickersRepository {
  Future<Either<Failure, List<StickerEntity>>> getStickers(NoParams params);
}
