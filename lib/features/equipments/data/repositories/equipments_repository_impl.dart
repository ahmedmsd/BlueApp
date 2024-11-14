import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/exceptions.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/network_info/network_info.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/equipments/data/datasources/equipments_remote_data_source.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';
import 'package:test_workapp/features/equipments/domain/repositories/equipments_repository.dart';

class EquipmentsRepositoryImpl implements EquipmentsRepository {
  final NetworkInfo networkInfo;
  final EquipmentsRemoteDataSource equipmentsRemoteDataSource;

  EquipmentsRepositoryImpl({
    required this.networkInfo,
    required this.equipmentsRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<EquipmentEntity>>> getEquipments(
      NoParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetEquipments =
            await equipmentsRemoteDataSource.getEquipments(params);

        return Right(remoteGetEquipments);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message!));
      }
    } else {
      return const Left(OfflineFailure(message: "No Internet Found"));
    }
  }
}
