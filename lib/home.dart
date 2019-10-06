import 'package:flutter/material.dart';
import 'package:tales_of_china/novels_grid.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tales of China", style: Theme.of(context).textTheme.title,),
      ),
      body: NovelsGrid(),
    );
  }
}
