part of 'authentication_cubit.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class SigninLoadingState extends AuthenticationState {}

class SigninErrorState extends AuthenticationState {
  final dynamic errorMessage;
  const SigninErrorState({required this.errorMessage});
}

class SigninLoadedState extends AuthenticationState {
  final SigninEntity signinEntity;

  const SigninLoadedState({required this.signinEntity});
  @override
  List<Object> get props => [signinEntity];
}
