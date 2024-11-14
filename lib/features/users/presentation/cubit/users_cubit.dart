import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_details_use_case.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_jobs_use_case.dart';
import 'package:test_workapp/features/users/domain/usecases/get_users_use_case.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final GetUsersUseCase getUsersUseCase;
  final GetUsersDetailsUseCase getUsersDetailsUseCase;
  final GetUsersJobsUseCase getUsersJobsUseCase;

  UsersCubit({
    required this.getUsersUseCase,
    required this.getUsersDetailsUseCase,
    required this.getUsersJobsUseCase,
  }) : super(UsersInitial());

  List<UserEntity> usersList = [];

  Future<bool> getUsersFun() async {
    emit(GetUsersLoadingState());
    final response = await getUsersUseCase(NoParams());
    return response.fold((failure) {
      emit(GetUsersErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (users) {
      usersList = users;
      emit(GetUsersLoadedState(users: users));
      return true;
    });
  }

  List<UserDetailsEntity> usersDetailsList = [];

  Future<bool> getUsersDetailsFun() async {
    emit(GetUsersDetailsLoadingState());
    final response = await getUsersDetailsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetUsersDetailsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (usersDetails) {
      usersDetailsList = usersDetails;
      emit(GetUsersDetailsLoadedState(usersDetails: usersDetails));
      return true;
    });
  }

  List<UserJobEntity> usersJobsList = [];

  Future<bool> getUsersJobsFun() async {
    emit(GetUsersJobsLoadingState());
    final response = await getUsersJobsUseCase(NoParams());
    return response.fold((failure) {
      emit(GetUsersJobsErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (usersJobs) {
      usersJobsList = usersJobs;
      emit(GetUsersJobsLoadedState(usersJobs: usersJobs));
      return true;
    });
  }
}
