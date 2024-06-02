import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componets/bottem_setting_list.dart';
import 'componets/middle_setting_list.dart';
import 'componets/upper_stting_list.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      child: SizedBox(
        height: height,
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text("Settings"),
            ),
            SliverFillRemaining(
                child: Column(
                  children: [
                    UpperListTileSection(),
                    MiddleListTileSection(),
                    BottomListTileSection(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CupertinoListTileReusable extends StatelessWidget {
  const CupertinoListTileReusable({
    super.key,
    required this.text,
    required this.imageAddress,
    required this.isSvg,
  });
  final String text, imageAddress;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: Container(
          alignment: Alignment.centerLeft, height: 56, child: Text(text)),
      leading: (isSvg)
          ? SvgPicture.asset(
        imageAddress,
      )
          : Image.asset(
        imageAddress,
      ),
      trailing: Icon(
        CupertinoIcons.forward,
        color: CupertinoColors.systemGrey,
      ),
    );
  }
}