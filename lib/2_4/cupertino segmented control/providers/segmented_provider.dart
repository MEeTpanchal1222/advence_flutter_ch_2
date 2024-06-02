import 'package:flutter/cupertino.dart';

class SegmentedProvider extends ChangeNotifier {
  int index = 0;

  void changeIndex(String index) {
    this.index = int.parse(index);
    notifyListeners();
  }
}
