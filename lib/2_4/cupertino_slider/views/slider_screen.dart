import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/appearance.dart';
import 'component/bottom_section.dart';
import 'component/brightness_section.dart';
import 'component/night_shift.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        navigationBar: CupertinoNavigationBar(
          middle: Text("Display & Brightness"),
          previousPageTitle: "Settings",
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Appearance(),
              BrightnessListSection(),
              NightShiftTile(),
              BottomListSection()
            ],
          ),
        ));
  }
}
