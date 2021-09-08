import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmis_portal/Ui/HomeScreen/Provider/home_screen_modal.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenModal>(
      create: (context) => HomeScreenModal(),
      child: Consumer<HomeScreenModal>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              model.currentTitle,
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: model.currentScreen,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                      FontAwesomeIcons.addressBook,
                  ),
                  label: 'Contact'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.comments,
                  ),
                  label: 'Work'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.bars,
                  ),
                  label: 'Setting'),
            ],
            currentIndex: model.tab,
            onTap: (int idx) {
              model.currentTab = idx;
            },
            selectedFontSize: 13.0,
            unselectedFontSize: 13.0,
          ),
        ),
      ),
    );
  }
}
