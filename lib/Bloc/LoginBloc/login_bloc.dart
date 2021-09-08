import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:fmis_portal/Model/index.dart';
import 'package:fmis_portal/Model/login_model.dart';
import 'package:fmis_portal/Service/apiservice.dart';
import 'package:fmis_portal/Ui/Components/error_dialog.dart';
import 'package:fmis_portal/Ui/OtpScreen/otp_screen.dart';
import 'package:fmis_portal/Utils/share_pref_util.dart';

class LoginBloc extends Cubit<LoginState> {
  BuildContext context;

  LoginBloc(this.context) : super(LoginState.initial());

  void login(LoginModel loginModel) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OtpScreen()));
    try {
      var res = await ApiService.create().login(loginModel);
      emit(state.copyWith(status: LoginStatus.success));
      SharePrefUtil.saveToken(res.data.token);
      print("api: $res");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OtpScreen()));
    } catch (err) {
      showDialog(
        context: context,
        builder: (context) => ErrorDialog(content: err.toString()),
      );
      // } on DioError catch (e){
      //   switch(e.type){
      //     case DioErrorType.connectTimeout:
      //       addError(e)
      //     case DioErrorType.sendTimeout:
      //     case DioErrorType.receiveTimeout:
      //       // TODO: Show connection error message
      //     case DioErrorType.other:
      //       break;
      //     case DioErrorType.response:
      //       break;
      //     case DioErrorType.cancel:
      //       break;
      //
      //   }
    }
  }
}
