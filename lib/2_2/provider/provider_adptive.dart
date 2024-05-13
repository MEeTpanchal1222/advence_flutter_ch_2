import 'package:flutter/cupertino.dart';

class SwitchProvider extends ChangeNotifier {
  bool isCupertino = false;

  void changeLibrary(bool value) {
    isCupertino = value;
    notifyListeners();
  }
}