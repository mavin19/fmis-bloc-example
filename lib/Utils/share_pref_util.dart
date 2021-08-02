import 'package:prefs/prefs.dart';

class SharePrefUtil {
  static const String TOKEN = "TOKEN";

  static Future<void> saveToken(String token) async {
    await Prefs.setString(TOKEN, token);
  }

  static void removeToken() {
    Prefs.setString(TOKEN, '');
  }

  static bool isLogin() {
    return Prefs
        .getString(TOKEN)
        .isNotEmpty;
  }

  static String getToken() {
    return Prefs.getString(TOKEN, '');
  }
}