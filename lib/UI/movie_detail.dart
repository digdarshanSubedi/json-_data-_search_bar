import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final int movieId;
  MovieDetail(
    this.movieId,
  );

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    print(widget.movieId);
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
