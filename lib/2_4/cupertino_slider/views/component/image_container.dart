import 'package:flutter/cupertino.dart';

class ThemeImageContainer extends StatelessWidget {
  const ThemeImageContainer({
    super.key,
    required this.imageAddress,
  });
  final String imageAddress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
      height: 130,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(imageAddress))),
    );
  }
}
