import 'package:flutter/cupertino.dart';

class NightShiftTile extends StatelessWidget {
  const NightShiftTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(children: [
      CupertinoListTile(
        title: Text("Night Shift"),
        trailing: Row(
          children: [
            Text(
              "sunset to Sunrise",
              style: TextStyle(color: CupertinoColors.systemGrey),
            ),
            Icon(
              CupertinoIcons.right_chevron,
              size: 17,
              color: CupertinoColors.systemGrey,
            )
          ],
        ),
      )
    ]);
  }
}
