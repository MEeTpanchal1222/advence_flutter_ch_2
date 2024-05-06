
import 'package:flutter/material.dart';

class IosTimeProvider extends ChangeNotifier {
  Duration? timeIos;

  void updateTime(Duration value) {
    timeIos = value;
    notifyListeners();
  }
}