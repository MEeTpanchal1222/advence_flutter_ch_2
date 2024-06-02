
import 'package:flutter/cupertino.dart';

class MultiSelectionListSection extends StatelessWidget {
  const MultiSelectionListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      footer: Text(
        "Choose multiple item from a list of options",
        style: TextStyle(
            fontSize: 13,
            color: CupertinoColors.systemGrey,
            fontWeight: FontWeight.w400),
      ),
      header: Text(
        "MULTI SELECTION",
        style: TextStyle(
            fontSize: 13,
            color: CupertinoColors.systemGrey,
            fontWeight: FontWeight.w400),
      ),
      dividerMargin: -10,
      children: [
        CupertinoListTile(
          title: Text(
            "Option one",
            style: TextStyle(color: CupertinoColors.systemGrey2),
          ),
          subtitle: Text("Disabled and selected"),
          leading: Icon(CupertinoIcons.check_mark),
        ),
        CupertinoListTile(
          title: Text("Option two"),
          subtitle: Text("with subtitle!"),
          leading: SizedBox(),
        ),
        CupertinoListTile(
          title: Text("Option three"),
          leading: Icon(CupertinoIcons.check_mark),
        ),
        CupertinoListTile(
          title: Text("Option four"),
          leading: SizedBox(),
        ),
        CupertinoListTile(
          title: Text(
            "Option five",
            style: TextStyle(color: CupertinoColors.systemGrey2),
          ),
          subtitle: Text("Disabled and not selected"),
          leading: SizedBox(),
        ),
      ],
    );
  }
}
