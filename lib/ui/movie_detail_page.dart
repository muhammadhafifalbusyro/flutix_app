import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  final String movieTitle;

  MovieDetailPage({required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieTitle),
      ),
      body: Center(
        child: Text('Detail Movie: $movieTitle'),
      ),
    );
  }
}
