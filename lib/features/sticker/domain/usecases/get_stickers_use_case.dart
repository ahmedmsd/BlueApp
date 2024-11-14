import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';
import 'package:test_workapp/features/sticker/domain/repositories/sticker_repository.dart';

class GetStickersUseCase extends UseCase<List<StickerEntity>, NoParams> {
  final StickersRepository stickersRepository;

  GetStickersUseCase({required this.stickersRepository});
  @override
  Future<Either<Failure, List<StickerEntity>>> call(NoParams params) async {
    return await stickersRepository.getStickers(params);
  }
}
