import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../andriod/andriod.dart';
import '../ios/ios.dart';
import '../provider/provider_adptive.dart';

class AdaptiveMaterialCupertino extends StatelessWidget {
  const AdaptiveMaterialCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<SwitchProvider>(context, listen: true).isCupertino) {
      return CupertinoApp(
          debugShowCheckedModeBanner: false, home: CupertinoWidgets());
    } else {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: MaterialWidgets());
    }
  }
}