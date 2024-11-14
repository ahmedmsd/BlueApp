import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/rejected/domain/entities/rejected_entity.dart';
import 'package:test_workapp/features/rejected/domain/usecases/get_rejected_use_case.dart';

part 'rejected_state.dart';

class RejectedCubit extends Cubit<RejectedState> {
  final GetRejectedUseCase getRejectedUseCase;

  RejectedCubit({
    required this.getRejectedUseCase,
  }) : super(RejectedInitial());

  List<RejectedEntity> rejectedList = [];

  Future<bool> getRejectedFun() async {
    emit(GetRejectedLoadingState());
    final response = await getRejectedUseCase(NoParams());
    return response.fold((failure) {
      emit(GetRejectedErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (rejected) {
      rejectedList = rejected;
      emit(GetRejectedLoadedState(rejected: rejected));
      return true;
    });
  }
}
