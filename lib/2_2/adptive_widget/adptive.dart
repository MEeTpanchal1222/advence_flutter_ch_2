import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../CupertinoAlertDialog/swiach_Alertdialog.dart';
import '../provider/provider.dart';

class adptive extends StatelessWidget {
  const adptive({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlatformProvider(),
        )
      ],
      child:
      PlatformProvider.platform == 'ios'
          ?
      CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Adaptive App',
        home: swicth(),
        theme: CupertinoThemeData(
          primaryColor: Colors.blue,
        ),
      )
          : MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adaptive App',
        home: swicth(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}