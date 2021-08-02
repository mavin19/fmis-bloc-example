import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_bloc.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_state.dart';
import 'package:fmis_portal/Ui/Components/round_button.dart';
import 'package:fmis_portal/Utils/constants.dart';

class Body extends StatelessWidget {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder(
      bloc: LoginBloc(context),
      builder: (BuildContext context, LoginState state) {
        return SingleChildScrollView(
          child: Container(
            color: kPrimaryColor,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 36.0,
                      horizontal: 24.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Input your OTP",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: size.height * 0.05),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                            // child: PinFieldAutoFill(
                            //   codeLength: 4,
                            //   onCodeChanged: (val){
                            //
                            //   },
                            // ),
                          ),
                          SizedBox(
                            height: size.height * 0.10,
                          ),
                          RoundedButton(
                            text: "SIGN IN",
                            press: (){

                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
