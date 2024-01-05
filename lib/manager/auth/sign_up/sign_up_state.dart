part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpFailure extends SignUpState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}
class SignUpLoading extends SignUpState {}
class SignUpSuccess extends SignUpState {
  final  AuthModel signUp;

  SignUpSuccess(this.signUp);
}
