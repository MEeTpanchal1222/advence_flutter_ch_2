import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:provider/provider.dart';

import '../models/screen_text_model.dart';
import '../providers/bottom_navigation_provider.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Text(
          showText[Provider.of<BottomProvider>(context).selectedIndex]
              .screenText,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black,
        selectedIndex: Provider.of<BottomProvider>(context).selectedIndex,
        showElevation: true,
        onItemSelected: (value) {
          Provider.of<BottomProvider>(context, listen: false)
              .changeIndex(value);
        },
        items: [
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Icons.search, color: Colors.white),
            title: Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(Icons.person, color: Colors.white),
            title: Text(
              'profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
