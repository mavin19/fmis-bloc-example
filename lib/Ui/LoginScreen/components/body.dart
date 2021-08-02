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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: size.height * 0.03),
                          RoundedInputField(
                            icon: Icons.phone,
                            maxLength: 8,
                            type: TextInputType.phone,
                            hintText: "Phone Number",
                            controller: phoneController,
                            onChanged: (value) {},
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
              ],
            ),
          ),
        );
      },
    );
  }
}
