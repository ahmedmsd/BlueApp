import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';
import 'package:test_workapp/features/regions/domain/usecases/get_regions_use_case.dart';

part 'regions_state.dart';

class RegionsCubit extends Cubit<RegionsState> {
  final GetRegionsUseCase getRegionsUseCase;
  RegionsCubit({
    required this.getRegionsUseCase,
  }) : super(RegionsInitial());

  List<RegionEntity> regionsList = [];

  Future<bool> getRegionsFun() async {
    emit(GetRegionsLoadingState());
    final response = await getRegionsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetRegionsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (regions) {
      regionsList = regions;
      emit(GetRegionsLoadedState(regions: regions));
      return true;
    });
  }
}
