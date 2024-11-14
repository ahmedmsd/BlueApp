import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:crypto/crypto.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/features/authentication/domain/entities/signin_entity.dart';
import 'package:test_workapp/features/authentication/domain/usecases/signin_use_case.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final SigninUseCase signinUseCase;

  AuthenticationCubit({
    required this.signinUseCase,
  }) : super(AuthenticationInitial());

  SigninEntity? signinEntity;

  Future<void> signinFun({
    required String username,
    required String password,
  }) async {
    emit(SigninLoadingState());
    final response = await signinUseCase(SigninParams(
      username: username,
      password: password,
    ));
    response.fold((failure) {
      emit(SigninErrorState(errorMessage: failureToString(failure)));
    }, (signin) {
      signinEntity = signin;

      emit(SigninLoadedState(signinEntity: signin));
    });
  }

  String hashPasswordFun({required String password}) {
    var hashedPassword = md5
        .convert(utf8.encode(md5
            .convert(utf8.encode(md5.convert(utf8.encode(password)).toString()))
            .toString()))
        .toString();

    return hashedPassword;
  }
}
