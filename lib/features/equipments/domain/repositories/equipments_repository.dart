import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';

abstract class EquipmentsRepository {
  Future<Either<Failure, List<EquipmentEntity>>> getEquipments(NoParams params);
}
