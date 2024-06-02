import 'package:flutter/material.dart';

import '../models/screens_model.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        screens[0].screens,
        screens[1].screens,
        screens[2].screens,
      ],
    );
  }
}
