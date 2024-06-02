import 'package:flutter/cupertino.dart';

class SingleSelectionListSelection extends StatelessWidget {
  const SingleSelectionListSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      footer: Text(
        "Choose a single item from a list of options",
        style: TextStyle(
            fontSize: 13,
            color: CupertinoColors.systemGrey,
            fontWeight: FontWeight.w400),
      ),
      header: Text(
        "SINGLE SELECTION",
        style: TextStyle(
            fontSize: 13,
            color: CupertinoColors.systemGrey,
            fontWeight: FontWeight.w400),
      ),
      dividerMargin: -10,
      children: [
        CupertinoListTile(title: Text("Off")),
        CupertinoListTile(title: Text("Wi-Fi")),
        CupertinoListTile(
            title: Text(
              "Mobile Data",
              style: TextStyle(color: CupertinoColors.systemGrey2),
            )),
      ],
    );
  }
}