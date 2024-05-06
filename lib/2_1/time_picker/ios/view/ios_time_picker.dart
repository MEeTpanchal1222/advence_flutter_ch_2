import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider_for_time_picker.dart';



class IosTimePicker extends StatelessWidget {
  const IosTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          "Time Picker Ios",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            (Provider.of<IosTimeProvider>(context, listen: true).timeIos ==
                null)
                ? "0:0:0"
                : '${Provider.of<IosTimeProvider>(context, listen: true).timeIos.toString().split('.').first.padLeft(8, "0")}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          CupertinoTimerPicker(
            onTimerDurationChanged: (value) {
              Provider.of<IosTimeProvider>(context, listen: false)
                  .updateTime(value);
            },
          ),
        ],
      ),
    );
  }
}

