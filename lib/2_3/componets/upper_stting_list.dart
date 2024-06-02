import 'package:flutter/cupertino.dart';

import '../setting.dart';


class UpperListTileSection extends StatelessWidget {
  const UpperListTileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      dividerMargin: 20,
      children: [
        CupertinoListTileReusable(
          text: "General",
          imageAddress: "assets/images/settings.svg",
          isSvg: true,
        ),
        CupertinoListTileReusable(
          text: "Display & Brightness",
          imageAddress: "assets/images/pixelcut-export (1).png",
          isSvg: false,
        ),
        CupertinoListTileReusable(
          text: "Wallpaper",
          imageAddress: "assets/images/pixelcut-export.png",
          isSvg: false,
        ),
        CupertinoListTileReusable(
          text: "Sounds",
          imageAddress: "assets/images/pixelcut-export.png_1.png",
          isSvg: false,
        ),
        CupertinoListTileReusable(
          text: "Touch ID & Passcode",
          imageAddress: "assets/images/pixelcut-export.png_2.png",
          isSvg: false,
        ),
        CupertinoListTileReusable(
          text: "Privacy",
          imageAddress: "assets/images/pixelcut-export.png_3.png",
          isSvg: false,
        ),
      ],
    );
  }
}