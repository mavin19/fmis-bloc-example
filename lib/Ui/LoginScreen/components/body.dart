import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_bloc.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_state.dart';
import 'package:fmis_portal/Model/login_model.dart';
import 'package:fmis_portal/Ui/Components/already_have_account.dart';
import 'package:fmis_portal/Ui/Components/round_button.dart';
import 'package:fmis_portal/Ui/Components/round_input_field.dart';
import 'package:fmis_portal/Ui/Components/round_password_field.dart';
import 'package:fmis_portal/Ui/SignupScreen/singup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder(
      bloc: LoginBloc(context),
      builder: (BuildContext context, LoginState state) {
        return Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  hintText: "Your Email",
                  controller: emailController,
                  onChanged: (value) {},
                ),
                RoundedPasswordField(

                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    LoginBloc(context).login(LoginModel(emailController.text, passwordController.text));
                  },
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}