import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/Components/recieve_code.dart';
import 'package:fmis_portal/Ui/Components/round_button.dart';
import 'package:fmis_portal/Ui/HomeScreen/home_screen.dart';
import 'package:fmis_portal/Utils/constants.dart';
import 'package:pinput/pin_put/pin_put.dart';

class Body extends StatelessWidget {
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.grey.withOpacity(0.50),
    borderRadius: BorderRadius.circular(5.0),
  );
  final _pinPutController = TextEditingController();
  final otpController = TextEditingController();
  String code = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                              horizontal: 50, vertical: 10),
                          child: PinPut(
                            fieldsCount: 4,
                            withCursor: true,
                            textStyle: const TextStyle(
                                fontSize: 25.0, color: Colors.black),
                            followingFieldDecoration: pinPutDecoration,
                            selectedFieldDecoration: pinPutDecoration.copyWith(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(160, 215, 220, 1),
                              ),
                            ),
                            eachFieldWidth: 55.0,
                            eachFieldHeight: 55.0,
                            onSubmit: (String pin) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomeScreen()));
                              print("pin $pin");
                            },
                          )),
                      RecieveCode(() {}, "Request again"),
                      SizedBox(
                        height: size.height * 0.10,
                      ),
                      RoundedButton(
                        text: "SIGN IN",
                        press: () {},
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
  }
}
