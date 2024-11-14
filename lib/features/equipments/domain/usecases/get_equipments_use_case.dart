import 'package:dartz/dartz.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';
import 'package:test_workapp/features/equipments/domain/repositories/equipments_repository.dart';

class GetEquipmentsUseCase extends UseCase<List<EquipmentEntity>, NoParams> {
  final EquipmentsRepository equipmentsRepository;

  GetEquipmentsUseCase({required this.equipmentsRepository});
  @override
  Future<Either<Failure, List<EquipmentEntity>>> call(NoParams params) async {
    return await equipmentsRepository.getEquipments(params);
  }
}
