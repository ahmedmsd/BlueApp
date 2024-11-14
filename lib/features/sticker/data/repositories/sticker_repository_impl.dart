import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/sticker/data/datasources/sticker_remote_data_source.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';
import 'package:test_workapp/features/sticker/domain/repositories/sticker_repository.dart';

class StickersRepositoryImpl implements StickersRepository {
  final NetworkInfo networkInfo;
  final StickersRemoteDataSource stickersRemoteDataSource;

  StickersRepositoryImpl({
    required this.networkInfo,
    required this.stickersRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<StickerEntity>>> getStickers(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetStickers =
            await stickersRemoteDataSource.getStickers(params);

        return Right(remoteGetStickers);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
