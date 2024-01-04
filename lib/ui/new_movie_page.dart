import 'package:flutter/material.dart';
import 'movie_detail_page.dart';

class NewMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Gantilah data dummy ini dengan data sebenarnya dari server atau penyimpanan lokal
    List<String> movies = ['Movie 1', 'Movie 2', 'Movie 3'];

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(movies[index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailPage(movieTitle: movies[index]),
              ),
            );
          },
        );
      },
    );
  }
}
