part of 'sync_cubit.dart';

abstract class SyncState extends Equatable {
  const SyncState();

  @override
  List<Object> get props => [];
}

class SyncInitial extends SyncState {}

// sync external all data

class SyncAllDataLoadingState extends SyncState {}

class SyncAllDataLoadedState extends SyncState {
  final bool isAllDataSynced;

  const SyncAllDataLoadedState({required this.isAllDataSynced});
  @override
  List<Object> get props => [isAllDataSynced];
}

// sync all work orders

class SyncLocalSignedWorkOrderLoadingState extends SyncState {}

class SyncLocalSignedWorkOrderErrorState extends SyncState {
  final String errorMessage;

  const SyncLocalSignedWorkOrderErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class SyncLocalSignedWorkOrderLoadedState extends SyncState {
  final bool isLocalSignedWorkOrderSynced;

  const SyncLocalSignedWorkOrderLoadedState(
      {required this.isLocalSignedWorkOrderSynced});

  @override
  List<Object> get props => [isLocalSignedWorkOrderSynced];
}

// sync certification

class SyncCertificationLoadingState extends SyncState {}

class SyncCertificationLoadedState extends SyncState {}

// sync all certifications

class SyncAllCertificationsLoadingState extends SyncState {}

class SyncAllCertificationsLoadedState extends SyncState {}

// sync all data error
class SyncAllDataErrorState extends SyncState {
  final String errorMessage;

  const SyncAllDataErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
