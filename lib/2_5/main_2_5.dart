import 'package:flutter/material.dart';

import '1_intro/1_intro.dart';
import '2_intro/2_intro.dart';
import '3_intro/3_intro.dart';


void main() {
  runApp(const page());
}

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        body: PageView(
          pageSnapping: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),

          ],
        )
      ),
    );
  }
}
