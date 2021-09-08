import 'package:flutter/cupertino.dart';
import 'package:fmis_portal/Ui/HomeScreen/contact_screen.dart';
import 'package:fmis_portal/Ui/HomeScreen/setting_screen.dart';
import 'package:fmis_portal/Ui/HomeScreen/work_screen.dart';

class HomeScreenModal extends ChangeNotifier {
  int _currentTab = 0 ;
  List<String> _title = ['Contact', 'Work', 'Setting'];
  List<Widget> _screen = [ContactScreen(), WorkScreen(), SettingScreen()];

  set currentTab(int tab) {this._currentTab = tab; notifyListeners();}
  get tab => this._currentTab;
  get currentScreen => this._screen[this._currentTab];
  get currentTitle => this._title[this._currentTab];

}