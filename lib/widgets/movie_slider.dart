import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieSlider extends StatelessWidget {
	final List<Movie> movies;
	final String? title;

  const MovieSlider({
		super.key, 
		required this.movies, 
		this.title
	});

  @override
  Widget build(BuildContext context) {
    return Container(
			width: double.infinity,
			height: 270,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					if(title != null)
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 20),
							child: Text(title!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
						),
					SizedBox(height: 5),
					Expanded(
						child: ListView.builder(
							scrollDirection: Axis.horizontal,
							itemCount: movies.length,
							itemBuilder: (BuildContext context, int index) {
								final movie = movies[index];
								return _MoviePosted(movie: movie,);
							}
						),
					)
				],
			),
		);
  }
}

class _MoviePosted extends StatelessWidget {
	final Movie movie;

  const _MoviePosted({
		super.key,
		required this.movie
	});

  @override
  Widget build(BuildContext context) {
    return Container(
			width: 130,
			height: 200,
			margin: EdgeInsets.symmetric(horizontal: 10),
			child: Column(
				children: [
					GestureDetector(
						onTap: () => Navigator.pushNamed(context, 'details', arguments: 'Star wars'),
						child: ClipRRect(
							borderRadius: BorderRadius.circular(20),
							child: FadeInImage(
								placeholder: AssetImage('lib/assets/no-image.jpg'), 
								image: NetworkImage(movie.fullPosterImg),
								width: 130,
								height: 190,
								fit: BoxFit.cover
							),
						),
					),
					SizedBox(height: 4,),
					Text(
						movie.title,
						maxLines: 2,
						textAlign: TextAlign.center,
						overflow: TextOverflow.ellipsis,
					)		
				],
			)
		);
  }
}