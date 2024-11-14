part of 'regions_cubit.dart';

abstract class RegionsState extends Equatable {
  const RegionsState();

  @override
  List<Object> get props => [];
}

class RegionsInitial extends RegionsState {}

// get regions
class GetRegionsLoadingState extends RegionsState {}

class GetRegionsErrorState extends RegionsState {
  final dynamic errorMessage;
  const GetRegionsErrorState({required this.errorMessage});
}

class GetRegionsLoadedState extends RegionsState {
  final List<RegionEntity> regions;

  const GetRegionsLoadedState({required this.regions});
  @override
  List<Object> get props => [regions];
}
