import 'package:flutter/cupertino.dart';

import '../modal/screen_list.dart';

class CupertinoTabBarScreen extends StatelessWidget {
  const CupertinoTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Tab Bar"),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "home",
                activeIcon: Icon(CupertinoIcons.house_fill)),
            BottomNavigationBarItem(
                label: "Chats",
                icon: Icon(CupertinoIcons.chat_bubble_text_fill)),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.settings,
                ),
                label: "Settings")
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              screenViewList[index],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
