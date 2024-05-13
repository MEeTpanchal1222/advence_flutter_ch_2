import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/provider_adptive.dart';

class CupertinoWidgets extends StatelessWidget {
  const CupertinoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // padding: EdgeInsetsDirectional.only(top: 10),
        trailing: CupertinoSwitch(
          value: Provider.of<SwitchProvider>(context, listen: true).isCupertino,
          onChanged: (value) {
            Provider.of<SwitchProvider>(context, listen: false)
                .changeLibrary(value);
          },
        ),
        leading: Icon(CupertinoIcons.back),
        middle: Text("Cupertino"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
            ),
            CupertinoButton(
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
                          color: CupertinoColors.systemGreen,
                        ),
                      ),
                    ),
                    actions: <CupertinoActionSheetAction>[
                      CupertinoActionSheetAction(
                        isDefaultAction: true,
                        child: const Text(
                          'Profiteroles',
                          style: TextStyle(
                            color: CupertinoColors.systemGreen,
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
                            color: CupertinoColors.systemGreen,
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
                  color: CupertinoColors.systemGreen,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CupertinoActivityIndicator(
              radius: 25,
            ),
            CupertinoButton(
              child: Text(
                "Open Cupertino Dialog",
                style: TextStyle(
                  color: CupertinoColors.systemGreen,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    actions: [
                      CupertinoButton(
                        child: Text(
                          "Ok",
                          style: TextStyle(
                            color: CupertinoColors.systemGreen,
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                    title: Text("Cupertino"),
                    content: Text(
                        "This is a Alert dialog Box comes from Cupertino Library"),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: Container(
                height: 60,
                width: 170,
                alignment: Alignment.center,
                color: CupertinoColors.systemGreen,
                child: Text(
                  "Cupertino Button",
                  style: TextStyle(color: CupertinoColors.white),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime value) {},
              ),
            ),
            CupertinoTimerPicker(
              onTimerDurationChanged: (value) {},
            ),
            CupertinoListTile(
                leading: Icon(
                  CupertinoIcons.largecircle_fill_circle,
                  color: CupertinoColors.systemGreen,
                ),
                trailing: Icon(
                  CupertinoIcons.ellipsis_circle_fill,
                  color: CupertinoColors.systemGreen,
                ),
                subtitle: Text(
                  "An IOS styled ListTile",
                  style: TextStyle(fontSize: 15),
                ),
                title: Text(
                  "Cupertino",
                ))
          ],
        ),
      ),
    );
  }
}