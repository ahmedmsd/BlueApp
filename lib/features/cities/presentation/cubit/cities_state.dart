part of 'cities_cubit.dart';

abstract class CitiesState extends Equatable {
  const CitiesState();

  @override
  List<Object> get props => [];
}

class CitiesInitial extends CitiesState {}

// get cities
class GetCitiesLoadingState extends CitiesState {}

class GetCitiesErrorState extends CitiesState {
  final dynamic errorMessage;
  const GetCitiesErrorState({required this.errorMessage});
}

class GetCitiesLoadedState extends CitiesState {
  final List<CityEntity> cities;

  const GetCitiesLoadedState({required this.cities});
  @override
  List<Object> get props => [cities];
}
