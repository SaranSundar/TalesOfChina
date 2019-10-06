import 'package:flutter/material.dart';

class NovelsGrid extends StatefulWidget {
  @override
  _NovelsGridState createState() => _NovelsGridState();
}

class _NovelsGridState extends State<NovelsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 1 / 1.8,
      children: List.generate(3, (index) {
        return createUITile(context);
      }),
    );
  }

  Widget createUITile(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                      "https://img.webnovel.com/bookcover/11257419905314505/150/150.jpg?coverUpdateTime=1552019864918"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
