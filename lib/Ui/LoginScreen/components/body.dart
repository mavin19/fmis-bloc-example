import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_bloc.dart';
import 'package:fmis_portal/Bloc/LoginBloc/login_state.dart';
import 'package:fmis_portal/Model/login_model.dart';
import 'package:fmis_portal/Ui/Components/round_button.dart';
import 'package:fmis_portal/Ui/Components/round_input_field.dart';
import 'package:fmis_portal/Ui/Components/round_password_field.dart';
import 'package:fmis_portal/Utils/constants.dart';

class Body extends StatelessWidget {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder(
      bloc: LoginBloc(context),
      builder: (BuildContext context, LoginState state) {
        return  Container(
            color: kPrimaryColor,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .20),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.only( top: 120.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "LOGIN",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  Align(
                                    alignment:Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 48.0, bottom: 10.0),
                                      child: Text(
                                        "Phone Number",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  RoundedInputField(
                                    icon: Icons.phone,
                                    maxLength: 8,
                                    type: TextInputType.phone,
                                    hintText: "Phone Number",
                                    controller: phoneController,
                                    onChanged: (value) {},
                                  ),
                                  Align(
                                    alignment:Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 48.0, bottom: 10.0),
                                      child: Text(
                                        "Password",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  RoundedPasswordField(
                                    onChanged: (value) {},
                                  ),
                                  SizedBox(
                                    height: size.height * 0.10,
                                  ),
                                  RoundedButton(
                                    text: "NEXT",
                                    press: () {
                                      LoginBloc(context).login(
                                        LoginModel(phoneController.text, '+855'),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(180),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/fmis_logo.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
      },
    );
  }
}
