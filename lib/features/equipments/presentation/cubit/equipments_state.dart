part of 'equipments_cubit.dart';

abstract class EquipmentsState extends Equatable {
  const EquipmentsState();

  @override
  List<Object> get props => [];
}

class EquipmentsInitial extends EquipmentsState {}

//get equipments
class GetEquipmentsLoadingState extends EquipmentsState {}

class GetEquipmentsErrorState extends EquipmentsState {
  final dynamic errorMessage;
  const GetEquipmentsErrorState({required this.errorMessage});
}

class GetEquipmentsLoadedState extends EquipmentsState {
  final List<EquipmentEntity> equipments;

  const GetEquipmentsLoadedState({required this.equipments});
  @override
  List<Object> get props => [equipments];
}
