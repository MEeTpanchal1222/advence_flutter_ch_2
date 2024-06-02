import 'package:flutter/cupertino.dart';

class ActionSheetopen extends StatelessWidget {
  const ActionSheetopen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Action Sheet"),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                title: const Text(
                  "Favourite Dessert",
                  style: TextStyle(height: 1),
                ),
                message: const Text(
                    "Please select the best dessert from the list below",
                    style: TextStyle(height: 2)),
                cancelButton: CupertinoActionSheetAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: CupertinoColors.systemPink,
                    ),
                  ),
                ),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    isDefaultAction: true,
                    child: const Text(
                      'Profiteroles',
                      style: TextStyle(
                        color: CupertinoColors.systemPink,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text(
                      'Cannolis',
                      style: TextStyle(
                        color: CupertinoColors.systemPink,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text(
                      'Trifle',
                      style: TextStyle(
                        color: CupertinoColors.systemPink,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
          child: const Text(
            "Show Action Sheet",
            style: TextStyle(
              color: CupertinoColors.systemPink,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: CupertinoColors.systemPink,
            ),
          ),
        ),
      ),
    );
  }
}
