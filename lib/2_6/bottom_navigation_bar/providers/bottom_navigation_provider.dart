import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void changeIndex(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
