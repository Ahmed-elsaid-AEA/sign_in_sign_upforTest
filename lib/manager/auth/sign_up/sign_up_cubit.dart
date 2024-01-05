import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:signin_signup/core/errors/handling_data.dart';
import 'package:signin_signup/data/models/auth_model.dart';
import 'package:signin_signup/data/repo/auth_repo_imp.dart';

import '../../../core/errors/status_request.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  AuthRepoImp authRepo;

  StatusRequest statusRequest = StatusRequest.none;

  void register({required String email, required String password}) async {
    emit(SignUpLoading());
    if (password.isEmpty || password.isEmpty) {
      emit(SignUpFailure(errorMessage: "should not empty"));
    } else {
      var response = await authRepo.register(
        email: email,
        password: password,
      );
      statusRequest = statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.sucess) {
        if (response['status'] == "success") {
          emit(SignUpSuccess(AuthModel.fromJson(response['data'])));
        } else {
          emit(SignUpFailure(errorMessage: "error"));
        }
      } else {
        emit(SignUpFailure(errorMessage: "${response['status']}"));
      }
    }
  }
}
