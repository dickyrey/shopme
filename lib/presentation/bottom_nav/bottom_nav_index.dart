import 'package:flutter/material.dart';
import 'package:shopme/presentation/favorite/favorite.dart';
import 'package:shopme/presentation/home/home.dart';
import 'package:shopme/presentation/official_store/official_store.dart';
import 'package:shopme/presentation/profile/profile.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class BottomNavIndex extends StatefulWidget {
  @override
  _BottomNavIndexState createState() => _BottomNavIndexState();
}

class _BottomNavIndexState extends State<BottomNavIndex> {
  int _selectedIndex = 0;
  void onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> bottomNavList = [
    Home(),
    Favorite(),
    OfficialStore(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        child: bottomNavList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTappedItem,
        selectedItemColor: kRedColor,
        unselectedItemColor: kBlackAccent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        selectedLabelStyle: kTitle15LightStyle,
        unselectedLabelStyle: kTitle15LightStyle,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorit"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("Toko"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profil"),
          ),
        ],
      ),
    );
  }
}
