import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/Components/text_field_container.dart';
import 'package:fmis_portal/Utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    required this.onChanged,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryLightColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryLightColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
