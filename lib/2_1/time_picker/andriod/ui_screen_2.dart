import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          "Time Picker",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          },
            style: ButtonStyle(),
            child: Text(
              "Pick Time",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.black,
              ),
            ),
          ),
        ),
      );
  }
}