import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '2_1/action_sheet/ios/view/ios_dialog_box.dart';
import '2_1/date_picker/ios/ios_ui_screen_1.dart';
import '2_1/date_picker/android/ui_screen_1.dart';
import '2_1/dialog_box/andriod/provider/provider_dialoge.dart';
import '2_1/dialog_box/andriod/view/dialoge_box.dart';

import '2_1/time_picker/andriod/ui_screen_2.dart';
import '2_1/time_picker/ios/provider/provider_for_time_picker.dart';
import '2_1/time_picker/ios/view/ios_time_picker.dart';
import '2_2/adptive_widget/adptive.dart';


void main() {
  runApp( adptive());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(
          create: (context) => AndroidDialogProvider(),
         ),
        ChangeNotifierProvider(
          create: (context) => IosTimeProvider(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.amber,
                  fontSize: 35,
            )
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green.shade200
          ),
            datePickerTheme: DatePickerThemeData(
                backgroundColor: Colors.green.shade400,
                dayForegroundColor: MaterialStateProperty.all(Colors.white),
                yearForegroundColor: MaterialStateProperty.all(Colors.white),
                todayBorder: BorderSide(
                  color: Colors.redAccent,
                ),
                yearStyle: TextStyle(color: Colors.black),
                weekdayStyle: TextStyle(color: Colors.black)),
            timePickerTheme: TimePickerThemeData(
                dialHandColor: Color(0xff5f9e45),
                dayPeriodColor: Colors.amber.withOpacity(0.5)),
        )
            .copyWith(
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.light,
            primarySwatch: Colors.amber
          ),
        ),
        initialRoute: '/dialoge',
        routes: {
          '/date':(context) =>datepicker(),
          '/i-date':(context) => IosDatePicker(),
          '/time':(context) =>TimePicker(),
          '/i-time':(context) =>IosTimePicker(),
          '/dialoge':(context) =>DialogBoxAndroid(),
          '/i-actionsheet':(context)=>ActionSheet(),
        },
      ),
    );
  }
}



