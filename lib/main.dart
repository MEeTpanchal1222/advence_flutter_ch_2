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
import '2_2/adptive/adptive.dart';
import '2_2/provider/provider_adptive.dart';
import '2_3/cupertino_list_section.dart';
import '2_3/cupetino_custom_scroll.dart';
import '2_3/setting.dart';
import '2_4/cupertino segmented control/providers/segmented_provider.dart';
import '2_4/cupertino segmented control/view/segmented_screen.dart';
import '2_4/cupertino_slider/providers/light_dark_provider.dart';
import '2_4/cupertino_slider/views/slider_screen.dart';
import '2_4/cupertino_tab_bar/view/cupertino_tab_bar.dart';
import '2_5/cupertino_action_sheet/view/cupertino_action_sheet.dart';
import '2_6/bottom_navigation_bar/view/bottom_navigation_screen.dart';
import '2_6/pageview/view/pageview_screen.dart';
import '2_8/material_slivers/view/sliver_screen.dart';



void main() {
  runApp( MyApp());
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
        ChangeNotifierProvider(
          create: (context) => SwitchProvider(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              color: Colors.amber,
                  fontSize: 25,
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
                  color: Colors.blueAccent,
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
        initialRoute: '/pageView',
        routes: {
          '/date':(context) =>datepicker(),
          '/i-date':(context) => IosDatePicker(),
          '/time':(context) =>TimePicker(),
          '/i-time':(context) =>IosTimePicker(),
          '/dialoge':(context) =>DialogBoxAndroid(),
          '/i-actionsheet':(context)=>ActionSheet(),
          '/adeptive' :(context)=> AdaptiveMaterialCupertino(),
          '/ CupertinoListSection':(context) => CupertinoListSectionExample(),
          '/CustomScroll':(context)=>CustomScroll(),
          '/Settings':(context)=>Settings(),
          '/pageView': (context) => PageViewScreen(),
          '/bottomNavigation': (context) => BottomNavigationScreen(),
          '/materialSlivers': (context) => SliverScreen()
        },
      ),
    );
  }
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SegmentedProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LightDarkProvider(),
        )
      ],
      builder: (context, child) => CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
            brightness:
            Provider.of<LightDarkProvider>(context, listen: true).isDark
                ? Brightness.dark
                : Brightness.light),
        initialRoute: '/actionSheet',
        routes: {
          '/': (context) => CustomScroll(),
          '/listSection': (p0) => CupertinoListSectionExample(),
          '/settings': (p0) => Settings(),
          '/tabBar': (p0) => CupertinoTabBarScreen(),
          '/segmented': (p0) => CupertinoSegmentedControlScreen(),
          '/slider': (p0) => SliderScreen(),
          '/actionSheet': (p0) => ActionSheetopen(),
        },
      ),
    );
  }
}



