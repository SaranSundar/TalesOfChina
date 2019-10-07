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
      childAspectRatio: 1 / 2.0,
      children: List.generate(6, (index) {
        return createUITile(context);
      }),
    );
  }

  void clicked(BuildContext context, menu) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(menu),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
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
                    "https://img.webnovel.com/bookcover/11257419905314505/150/150.jpg",
                  ),
                ),
                Container(
                  child: Text("Elite Doting Marriage: Crafty Husband",
                      style: Theme.of(context).textTheme.body2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 0),
                  margin: EdgeInsets.all(0),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "1/1800",
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 5),
                          child: Ink.image(
                              image: AssetImage('assets/menu-icon.png'),
                              fit: BoxFit.contain,
                              width: 15,
                              height: 20,
                              child: InkWell(
                                onTap: () {},
                              )),
                        )
//                        PopupMenuButton(
//                          itemBuilder: (BuildContext context) {
//                            return [];
//                          },
//                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
