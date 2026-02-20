import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/credits_response.dart';
import 'package:movies/provider/movies_providers.dart';
import 'package:provider/provider.dart';

class CastingCards extends StatelessWidget {
	final int movieId;
	const CastingCards(this.movieId, {super.key});

	@override
	Widget build(BuildContext context) {
		final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);
		return FutureBuilder(
			future: moviesProvider.getMoviesCast(movieId), 
			builder: (context, AsyncSnapshot<List<Cast>> snapshot) {
				if(!snapshot.hasData) {
					return Container(
						constraints: BoxConstraints(maxWidth: 150),
						height: 180,
						child: CupertinoActivityIndicator(),
					);
				}

				final cast = snapshot.data!;

				return Container(
					width: double.infinity,
					height: 180,
					margin: EdgeInsets.only(bottom: 30),
					child: ListView.builder(
						itemCount: cast.length,
						scrollDirection: Axis.horizontal,
						itemBuilder: (BuildContext context, int index) {
							return _CastCard(cast[index]);
						},
					),
				);
			}
		);
	}
}

class _CastCard extends StatelessWidget {
	final Cast cast;
	const _CastCard(this.cast, {super.key});

	@override
	Widget build(BuildContext context) {
		return Container(
			width: 110,
			height: 100,
			margin: EdgeInsets.symmetric(horizontal: 10),
			child: Column(				
				children: [
					ClipRRect(						
						borderRadius: BorderRadius.circular(20),
						child: FadeInImage(
							placeholder: AssetImage('lib/assets/no-image.jpg'), 
							image: NetworkImage(cast.fullProfilePath),
							height: 130,
							width: 100,
							fit: BoxFit.cover,
						),
					),
					SizedBox(height: 5,),
					Text(
						cast.name, 
						maxLines: 2, 
						overflow: TextOverflow.ellipsis, 
						textAlign: TextAlign.center
					)
				],
			),
		);
	}
}