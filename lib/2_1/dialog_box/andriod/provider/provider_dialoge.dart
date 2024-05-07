import 'package:flutter/cupertino.dart';

class AndroidDialogProvider extends ChangeNotifier {
  String selected = 'None';

  void changeSelection(String value) {
    selected = value;
    notifyListeners();
  }
}