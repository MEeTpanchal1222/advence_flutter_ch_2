import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/light_dark_provider.dart';

import 'Light_dark_image_container.dart';

class Appearance extends StatelessWidget {
  const Appearance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      dividerMargin: -20,
      header: Text("Appearence"),
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LightDarkThemeContainers(
                    imageAddress: "assets/images/light-theme.png",
                    text: "Light",
                    checkbox: CupertinoCheckbox(
                      value: !Provider.of<LightDarkProvider>(context).isDark,
                      onChanged: (value) {
                        if (Provider.of<LightDarkProvider>(context,
                                listen: false)
                            .isDark) {
                          Provider.of<LightDarkProvider>(context, listen: false)
                              .changeTheme(!value!);
                        }
                      },
                      shape: const CircleBorder(),
                    ),
                  ),
                  LightDarkThemeContainers(
                    imageAddress: "assets/images/dark-theme.png",
                    text: "Dark",
                    checkbox: CupertinoCheckbox(
                      value: Provider.of<LightDarkProvider>(context).isDark,
                      onChanged: (value) {
                        if (!Provider.of<LightDarkProvider>(context,
                                listen: false)
                            .isDark) {
                          Provider.of<LightDarkProvider>(context, listen: false)
                              .changeTheme(value!);
                        }
                      },
                      shape: const CircleBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CupertinoListTile(
          title: Text("Automatic"),
          trailing: CupertinoSwitch(
            value: Provider.of<LightDarkProvider>(
              context,
            ).isAutomatic,
            onChanged: (value) {
              Provider.of<LightDarkProvider>(context, listen: false)
                  .changeSwitch(value);
            },
          ),
        )
      ],
    );
  }
}
