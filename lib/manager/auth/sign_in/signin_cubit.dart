import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:signin_signup/core/errors/handling_data.dart';
import 'package:signin_signup/core/errors/status_request.dart';
import 'package:signin_signup/data/models/auth_model.dart';
import 'package:signin_signup/data/repo/auth_repo_imp.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  AuthRepoImp authRepo;

  StatusRequest statusRequest = StatusRequest.none;

  void login({required String email, required String password}) async {
    emit(SigninLoading());
    if(password.isEmpty||password.isEmpty){
      emit(SigninFailure(errorMessage: "should not empty"));
    }else{
      var response =await authRepo.login (email: email, password: password);
      statusRequest = statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.sucess) {


        if (response['status'] == "success") {

              emit(SigninSuccess(AuthModel.fromJson(response['data'])));


          } else {
            emit(SigninFailure(errorMessage: "check password or email"));
          }
      } else {
        emit(SigninFailure(errorMessage: "not found"));

    }
  }}
}
