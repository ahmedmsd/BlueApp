part of 'users_cubit.dart';

abstract class UsersState extends Equatable {
  const UsersState();

  @override
  List<Object> get props => [];
}

class UsersInitial extends UsersState {}

// get users
class GetUsersLoadingState extends UsersState {}

class GetUsersErrorState extends UsersState {
  final dynamic errorMessage;
  const GetUsersErrorState({required this.errorMessage});
}

class GetUsersLoadedState extends UsersState {
  final List<UserEntity> users;

  const GetUsersLoadedState({required this.users});
  @override
  List<Object> get props => [users];
}

// get users details
class GetUsersDetailsLoadingState extends UsersState {}

class GetUsersDetailsErrorState extends UsersState {
  final dynamic errorMessage;
  const GetUsersDetailsErrorState({required this.errorMessage});
}

class GetUsersDetailsLoadedState extends UsersState {
  final List<UserDetailsEntity> usersDetails;

  const GetUsersDetailsLoadedState({required this.usersDetails});
  @override
  List<Object> get props => [usersDetails];
}

// get users jobs
class GetUsersJobsLoadingState extends UsersState {}

class GetUsersJobsErrorState extends UsersState {
  final dynamic errorMessage;
  const GetUsersJobsErrorState({required this.errorMessage});
}

class GetUsersJobsLoadedState extends UsersState {
  final List<UserJobEntity> usersJobs;

  const GetUsersJobsLoadedState({required this.usersJobs});
  @override
  List<Object> get props => [usersJobs];
}
