import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/light_dark_provider.dart';

class BottomListSection extends StatelessWidget {
  const BottomListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      dividerMargin: -20,
      children: [
        CupertinoListTile(
          title: Text("Auto-Lock"),
          trailing: Row(
            children: [
              Text(
                "3 Minutes",
                style: TextStyle(color: CupertinoColors.systemGrey),
              ),
              Icon(
                CupertinoIcons.right_chevron,
                size: 17,
                color: CupertinoColors.systemGrey,
              )
            ],
          ),
        ),
        CupertinoListTile(
          title: Text("Raise to Wake"),
          trailing: CupertinoSwitch(
            value: Provider.of<LightDarkProvider>(context).isRaiseToWake,
            onChanged: (value) {
              Provider.of<LightDarkProvider>(context, listen: false)
                  .changeRaiseToWake(value);
            },
          ),
        ),
      ],
    );
  }
}
