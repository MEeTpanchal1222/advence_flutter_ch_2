
import 'package:flutter/cupertino.dart';

class CustomScroll extends StatelessWidget {
  const CustomScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("My People"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 20,
                      (context, index) => CupertinoListTile(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/listSection'),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 15),
                      subtitle: Text("${index + 1}"),
                      title: Text("Person ${index + 1}"))))
        ],
      ),
    );
  }
}
