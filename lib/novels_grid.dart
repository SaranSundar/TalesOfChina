import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tales_of_china/chapter_view_arguments.dart';

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

  Widget createUITile(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/chapter-view",
                arguments: ChapterViewArguments("Elite Marriage", "", 0, 0));
          },
          child: Container(
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl:
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
