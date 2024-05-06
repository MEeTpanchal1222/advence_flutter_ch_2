import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IosDatePicker extends StatelessWidget {
  const IosDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Date Picker Ios",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (DateTime value) {},
          ),
        ),
      ),
    );
  }
}