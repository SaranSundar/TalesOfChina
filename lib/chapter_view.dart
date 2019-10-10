import 'package:flutter/material.dart';
import 'package:tales_of_china/chapter_view_arguments.dart';

class ChapterView extends StatefulWidget {
  @override
  _ChapterViewState createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  @override
  Widget build(BuildContext context) {
    //final ChapterViewArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: createChapterView(),
    );
  }

  Widget createChapterView() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "100 Fighting the Heavens!",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0),
                ),
              ),
              Text(
                ChapterViewArguments.exampleChapter,
                style: TextStyle(fontFamily: 'Merriweather', fontSize: 20.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
