import 'package:flutter/material.dart';
import 'package:movies/provider/movies_providers.dart';
import 'package:movies/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
	const HomeScreen({
		super.key,
	});

	@override
	Widget build(BuildContext context) {
		final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
		
		return Scaffold(
			appBar: AppBar(
				title: Text('Movies in theater'),
				centerTitle: true,
				elevation: 0,
				actions: [
					IconButton(
						onPressed: (){}, 
						icon: Icon(Icons.search_outlined)
					)
				],
			),
			body: SingleChildScrollView(
				child: Column(
					children: [
						CardSwiper(movies: moviesProvider.onDisplayMovies),
						MovieSlider(movies: moviesProvider.popularMovies, title: 'Populars!',)
					],
				),
			)
		);
	}
}