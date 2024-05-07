import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/diloge_components.dart';


class ActionSheet extends StatelessWidget {
  const ActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Date Picker Ios",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ActionSheetOpen(),
      ),
    );
  }
}