import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datepicker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: () async {
              DateTime select = await showDatePicker(context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1947),
                  lastDate: DateTime(2047)) ?? DateTime.now();
            }, icon: Icon(Icons.date_range)),

          ],
        ),
      ),
    );
  }
}
