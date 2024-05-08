import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class swicth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adaptive App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PlatformProvider.platform == 'ios'?
            CupertinoButton(
              child: Text('Show Cupertino Alert'),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: Text('Cupertino Alert'),
                    content: Text('This is a Cupertino Alert!'),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ):ElevatedButton(
          child: Text('Show Material Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Material Alert'),
                content: Text('This is a Material Alert!'),
                actions: <Widget>[
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
        ),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoActivityIndicator()
                : CircularProgressIndicator(),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoButton(
              child: Text('Actionsheet'),
              onPressed:() =>
              CupertinoActionSheet(
                                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text('Option 1'),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: Text('Option 2'),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                                ],
                                cancelButton: CupertinoActionSheetAction(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                                ),
                              ),
                )
                :
            ElevatedButton(
              child: Text('Actionsheet'),
              onPressed: () => Visibility(
                visible:PlatformProvider.isactionsheet,
                child: AlertDialog(
                  title: Text('Material Action Sheet'),
                  content: Text('This is a Material Action Sheet!'),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Option 1'),
                      onPressed: () {
                        // Add your action here
                      },
                    ),
                    TextButton(
                      child: Text('Option 2'),
                      onPressed: () {
                        // Add your action here
                      },
                    ),
                    TextButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (DateTime newDateTime) {
                // Do something with the new date
              },
            )
                : Container(),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoTimerPicker(
              mode: CupertinoTimerPickerMode.hms,
              onTimerDurationChanged: (Duration value) {

              },

            )
                : Container(),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoListTile(
              title: Text('Cupertino ListTile'),
              onTap: () {
                // Add your onTap action here
              },
            )
                : ListTile(
              title: Text('Material ListTile'),
              onTap: () {
                // Add your onTap action here
              },
            ),
            SizedBox(height: 20),
            PlatformProvider.platform == 'ios'
                ? CupertinoNavigationBar(
              middle: Text('Cupertino Navigation Bar'),
            )
                : AppBar(
              title: Text('Material App Bar'),
            ),
            SizedBox(height: 20),
            PlatformSwitcher(),
          ],
        ),
      ),
    );
  }
}

class PlatformSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Switch Platform:',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<PlatformProvider>(context, listen: false)
                    .setandriod();
              },
              child: Text('Material'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<PlatformProvider>(context, listen: false)
                    .setios();
              },
              child: Text('Cupertino'),
            ),
          ],
        ),
      ],
    );
  }
}