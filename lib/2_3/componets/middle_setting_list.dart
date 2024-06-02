import 'package:flutter/cupertino.dart';

import '../setting.dart';


class MiddleListTileSection extends StatelessWidget {
  const MiddleListTileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      dividerMargin: 20,
      children: [
        CupertinoListTileReusable(
            text: "iCloud",
            imageAddress: "assets/images/logo.png",
            isSvg: false),
        CupertinoListTileReusable(
            text: "iTunes & App Store",
            imageAddress: "assets/images/app-store.svg",
            isSvg: true),
        CupertinoListTileReusable(
            text: "Passbook & Apple Pay",
            imageAddress: "assets/images/Screenshot 2024-05-09 115245.png",
            isSvg: false),
      ],
    );
  }
}