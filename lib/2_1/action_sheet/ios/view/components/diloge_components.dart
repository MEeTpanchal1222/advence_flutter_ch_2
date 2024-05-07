import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetOpen extends StatelessWidget {
  const ActionSheetOpen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                isDefaultAction: true,
                child: const Text(
                  'Profiteroles',
                  style: TextStyle(
                    color: Colors.pinkAccent,
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
                    color: Colors.pinkAccent,
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
                    color: Colors.pinkAccent,
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
          color: Colors.pinkAccent,
          fontSize: 23,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.solid,
          decorationColor: Colors.pinkAccent,
        ),
      ),
    );
  }
}