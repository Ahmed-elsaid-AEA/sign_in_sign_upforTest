part of 'signin_cubit.dart';

@immutable
abstract class SigninState {}

class SigninInitial extends SigninState {

}

class SigninFailure extends SigninState {
  final String errorMessage;

  SigninFailure({required this.errorMessage});
}

class SigninLoading extends SigninState {

}

class SigninSuccess extends SigninState {
  final  AuthModel signIn;

  SigninSuccess(this.signIn);
}
