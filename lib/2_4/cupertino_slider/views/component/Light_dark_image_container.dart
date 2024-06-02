import 'package:flutter/cupertino.dart';

import '../slider_screen.dart';
import 'image_container.dart';

class LightDarkThemeContainers extends StatelessWidget {
  const LightDarkThemeContainers({
    super.key,
    required this.imageAddress,
    required this.text,
    required this.checkbox,
  });
  final String imageAddress, text;
  final Widget checkbox;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThemeImageContainer(
          imageAddress: imageAddress,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(text),
        checkbox
      ],
    );
  }
}
