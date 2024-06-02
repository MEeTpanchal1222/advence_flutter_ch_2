
import 'package:flutter/cupertino.dart';

import '../setting.dart';


class BottomListTileSection extends StatelessWidget {
  const BottomListTileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      dividerMargin: 20,
      children: [
        CupertinoListTileReusable(
            text: "Mails , Contacts , Calenders",
            imageAddress: "assets/images/mail.svg",
            isSvg: true),
        CupertinoListTileReusable(
            text: "Notes",
            imageAddress: "assets/images/notes.png",
            isSvg: false),
        CupertinoListTileReusable(
            text: "Reminders",
            imageAddress: "assets/images/contacts.png",
            isSvg: false),
      ],
    );
  }
}
