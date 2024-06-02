import 'package:flutter/cupertino.dart';

class LightDarkProvider extends ChangeNotifier {
  bool isDark = false;
  bool isAutomatic = false, isTrueTone = false, isRaiseToWake = false;
  double sliderValue = 0;

  void changeTheme(bool value) {
    isDark = value;
    notifyListeners();
  }

  void changeSwitch(bool value) {
    isAutomatic = value;
    notifyListeners();
  }

  void changeSliderValue(double value) {
    sliderValue = value;
    notifyListeners();
  }

  void changeTrueTone(bool value) {
    isTrueTone = value;
    notifyListeners();
  }

  void changeRaiseToWake(bool value) {
    isRaiseToWake = value;
    notifyListeners();
  }
}
