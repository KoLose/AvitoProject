import 'package:avitoproject/bottom/bottom_home.dart';
import 'package:avitoproject/bottom/bottom_profile.dart';
import 'package:avitoproject/bottom/bottom_search.dart';
import 'package:avitoproject/bottom/bottom_sell.dart';
import 'package:avitoproject/database/service.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int index = 0;
  AuthService authService = AuthService();
  final screens = [
    BottomHomePage(),
    BottomSearchPage(),
    BottomSellPage(),
    BottomProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await authService.logOut();
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isLoggedIn', false);
              Navigator.popAndPushNamed(context, '/');
            },
            icon: Icon(Icons.logout)
          ),
        ],
      ),
      body: screens.elementAt(index),
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: Colors.amber,
        onTap: (p0) {
          setState(() {
            index = p0;
          });
        },
        currentIndex: index,
        items: [
          SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
          SalomonBottomBarItem(icon: Icon(Icons.search), title: Text('Search')),
          SalomonBottomBarItem(icon: Icon(Icons.shopping_basket), title: Text('Sell')),
          SalomonBottomBarItem(icon: Icon(Icons.person), title: Text('Profile')),
        ],),
    );
  }
}