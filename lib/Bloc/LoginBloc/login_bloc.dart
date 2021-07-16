import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:fmis_portal/Model/login_model.dart';
import 'package:fmis_portal/Service/apiservice.dart';
import 'package:fmis_portal/Ui/new_screen.dart';

class LoginBloc extends Cubit<LoginState> {
  BuildContext context;

  LoginBloc(this.context) : super(LoginState());

  void login(LoginModel loginModel) async {
    try {
      var api = await ApiService.create().login(loginModel);
      emit(LoggedInState());
      print("result: $api");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NewScreen()));
    } catch (e) {
      print("error login");
    }
  }
}
