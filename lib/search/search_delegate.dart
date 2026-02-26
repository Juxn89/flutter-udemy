import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/provider/movies_providers.dart';
import 'package:provider/provider.dart';

class MovieSearchDelegate extends SearchDelegate {
	@override
  String get searchFieldLable => 'Search movie or serie...';

	@override
	List<Widget>? buildActions(BuildContext context) {
		return [
			IconButton(
				icon: Icon(Icons.clear),
				onPressed: () => query = ''
			)
		];
	}

	@override
	Widget? buildLeading(BuildContext context) {
		return IconButton(
			icon: Icon(Icons.arrow_back),
			onPressed: (){
				close(
					context, 
					null
				);
			}
		);
	}

	@override
	Widget buildResults(BuildContext context) {
		return Text('buildResults');
	}

	@override
	Widget buildSuggestions(BuildContext context) {
		if(query.isEmpty) {
			return _EmptyContainer();
		}

		final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);
		moviesProvider.getSuggestionByQuery(query);

		return StreamBuilder(
			stream: moviesProvider.suggestionStream, 
			builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
				if(!snapshot.hasData) {
					return _EmptyContainer();
				}

				final movies = snapshot.data!;
				return ListView.builder(
					itemCount: movies.length,
					itemBuilder: (context, int index) => _MovieItem(movies[index]),
				);
			},
		);
	}

}

class _EmptyContainer extends StatelessWidget {
	const _EmptyContainer({super.key});

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Center(
				child: Icon(Icons.movie_creation_outlined, color: Colors.black38, size: 100,),
			),
		);
	}
}

class _MovieItem extends StatelessWidget {
	final Movie movie;

	const _MovieItem(this.movie, {super.key});

	@override
	Widget build(BuildContext context) {
		movie.heroId = 'search-${movie.id}';

		return ListTile(
			title: Text(movie.title),
			subtitle: Text(movie.originalTitle),
			leading: Hero(
				tag: movie.heroId!,
				child: FadeInImage(
					placeholder: AssetImage('lib/assets/no-image.jpg'), 
					image: NetworkImage(movie.fullPosterImg),
					width: 50,
					fit: BoxFit.contain
				),
			),
			onTap: () {
				Navigator.pushNamed(context, 'details', arguments: movie);
			},
		);
	}
}