import 'dart:io';

import 'package:flutter/cupertino.dart';

class PlatformProvider extends ChangeNotifier {
  static String platform = Platform.operatingSystem;
  static bool isactionsheet = false;


  void setios() {
    platform = 'ios';
    notifyListeners();
  }
  void setandriod() {
    platform = 'andriod';
    notifyListeners();
  }
}


