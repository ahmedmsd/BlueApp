part of 'rejected_cubit.dart';

abstract class RejectedState extends Equatable {
  const RejectedState();

  @override
  List<Object> get props => [];
}

class RejectedInitial extends RejectedState {}

// get rejected
class GetRejectedLoadingState extends RejectedState {}

class GetRejectedErrorState extends RejectedState {
  final dynamic errorMessage;
  const GetRejectedErrorState({required this.errorMessage});
}

class GetRejectedLoadedState extends RejectedState {
  final List<RejectedEntity> rejected;

  const GetRejectedLoadedState({required this.rejected});
  @override
  List<Object> get props => [rejected];
}
