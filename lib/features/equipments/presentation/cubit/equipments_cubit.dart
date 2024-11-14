import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';
import 'package:test_workapp/features/equipments/domain/usecases/get_equipments_use_case.dart';

part 'equipments_state.dart';

class EquipmentsCubit extends Cubit<EquipmentsState> {
  final GetEquipmentsUseCase getEquipmentsUseCase;
  EquipmentsCubit({
    required this.getEquipmentsUseCase,
  }) : super(EquipmentsInitial());

  List<EquipmentEntity> equipmentsList = [];

  Future<bool> getEquipmentsFun() async {
    emit(GetEquipmentsLoadingState());
    final response = await getEquipmentsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetEquipmentsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (equipments) {
      equipmentsList = equipments;
      emit(GetEquipmentsLoadedState(equipments: equipments));
      return true;
    });
  }
}
