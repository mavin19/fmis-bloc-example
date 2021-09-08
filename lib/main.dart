import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/LoginScreen/login_screen.dart';
import 'package:fmis_portal/Utils/constants.dart';

import 'L10n/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      supportedLocales: L10n.all,
      // localizationsDelegates: [
      //
      // ],
      home: LoginScreen(),
    );
  }
}

