import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../providers/segmented_provider.dart';

class CupertinoSegmentedControlScreen extends StatelessWidget {
  const CupertinoSegmentedControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Segemented control"),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              child: CupertinoSlidingSegmentedControl(
                thumbColor: CupertinoColors.white,
                groupValue:
                    Provider.of<SegmentedProvider>(context).index.toString(),
                children: {
                  '0': Text("chats"),
                  '1': Text("Status"),
                  '2': Text("Calls")
                },
                onValueChanged: (value) {
                  Provider.of<SegmentedProvider>(context, listen: false)
                      .changeIndex(value!);
                },
              ),
            ),
            SizedBox(
              height: 330,
            ),
            Center(
              child: Text(
                screenName[Provider.of<SegmentedProvider>(context).index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> screenName = [
  "Chat Screen",
  "Status Screen",
  "Calls Screen",
];
