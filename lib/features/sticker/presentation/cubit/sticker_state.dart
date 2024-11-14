part of 'sticker_cubit.dart';

abstract class StickerState extends Equatable {
  const StickerState();

  @override
  List<Object> get props => [];
}

class StickerInitial extends StickerState {}

// get stickers
class GetStickersLoadingState extends StickerState {}

class GetStickersErrorState extends StickerState {
  final dynamic errorMessage;
  const GetStickersErrorState({required this.errorMessage});
}

class GetStickersLoadedState extends StickerState {
  final List<StickerEntity> stickers;

  const GetStickersLoadedState({required this.stickers});
  @override
  List<Object> get props => [stickers];
}
