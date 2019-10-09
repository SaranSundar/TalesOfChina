import 'package:flutter/material.dart';
import 'package:tales_of_china/chapter_view_arguments.dart';

class ChapterView extends StatefulWidget {
  @override
  _ChapterViewState createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  @override
  Widget build(BuildContext context) {
    final ChapterViewArguments args = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Text(args.bookName),
    );
  }
}
