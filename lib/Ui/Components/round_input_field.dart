import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/Components/text_field_container.dart';
import 'package:fmis_portal/Utils/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final TextInputType type;
  final int? maxLength;

  const RoundedInputField({
    required this.hintText,
    required this.icon,
    required this.onChanged,
    required this.controller,
    required this.type,
    this.maxLength,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: type,
        onChanged: onChanged,
        maxLength: maxLength,
        controller: controller,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryLightColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}