import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reel Nepal"),
        bottom: TabBar(
          controller: TabController(length: 2, vsync: this),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.person),
              text: 'Actor Name',
            ),
            Tab(
              icon: Icon(Icons.movie_filter),
            )
          ],
        ),
      ),
    );
  }
}
