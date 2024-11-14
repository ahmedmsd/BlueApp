import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';
import 'package:test_workapp/features/cities/domain/usecases/get_cities_use_case.dart';

part 'cities_state.dart';

class CitiesCubit extends Cubit<CitiesState> {
  final GetCitiesUseCase getCitiesUseCase;

  CitiesCubit({
    required this.getCitiesUseCase,
  }) : super(CitiesInitial());

  List<CityEntity> citiesList = [];

  Future<bool> getCitiesFun() async {
    emit(GetCitiesLoadingState());
    final response = await getCitiesUseCase(NoParams());
    return response.fold((failure) {
      emit(GetCitiesErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (cities) {
      citiesList = cities;
      emit(GetCitiesLoadedState(cities: cities));
      return true;
    });
  }
}
