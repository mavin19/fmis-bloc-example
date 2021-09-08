import 'package:flutter/cupertino.dart';
import 'package:fmis_portal/Utils/constants.dart';

class RecieveCode extends StatelessWidget {
  final VoidCallback onPress;
  final String text;

  const RecieveCode(this.onPress, this.text) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Didn't receive code? ",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF818181),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              onPress;
            },
            child: Text(
              text,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
