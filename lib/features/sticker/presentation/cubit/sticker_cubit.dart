import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';
import 'package:test_workapp/features/sticker/domain/usecases/get_stickers_use_case.dart';

part 'sticker_state.dart';

class StickerCubit extends Cubit<StickerState> {
  final GetStickersUseCase getStickersUseCase;
  StickerCubit({
    required this.getStickersUseCase,
  }) : super(StickerInitial());

  List<StickerEntity> stickersList = [];

  Future<bool> getStickersFun() async {
    emit(GetStickersLoadingState());
    final response = await getStickersUseCase(NoParams());
    return response.fold((failure) {
      emit(GetStickersErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (stickers) {
      stickersList = stickers;
      emit(GetStickersLoadedState(stickers: stickers));
      return true;
    });
  }
}
