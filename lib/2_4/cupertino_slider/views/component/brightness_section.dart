import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/light_dark_provider.dart';

class BrightnessListSection extends StatelessWidget {
  const BrightnessListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      footer: Text(
        "Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.",
        style: TextStyle(
          letterSpacing: 0.1,
        ),
      ),
      dividerMargin: -20,
      header: Text("BRIGHTNESS"),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 15,
            ),
            Icon(
              CupertinoIcons.brightness,
              color: CupertinoColors.systemGrey,
              size: 20,
            ),
            Expanded(
              child: CupertinoSlider(
                value: Provider.of<LightDarkProvider>(context).sliderValue,
                onChanged: (value) {
                  Provider.of<LightDarkProvider>(context, listen: false)
                      .changeSliderValue(value);
                },
              ),
            ),
            Icon(
              CupertinoIcons.brightness_solid,
              color: CupertinoColors.systemGrey,
              size: 26,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        CupertinoListTile(
          title: Text(
            "True tone",
            style: TextStyle(fontSize: 20),
          ),
          trailing: CupertinoSwitch(
            value: Provider.of<LightDarkProvider>(context).isTrueTone,
            onChanged: (value) {
              Provider.of<LightDarkProvider>(context, listen: false)
                  .changeTrueTone(value);
            },
          ),
        )
      ],
    );
  }
}
