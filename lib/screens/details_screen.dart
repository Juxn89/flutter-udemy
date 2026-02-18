import 'package:flutter/material.dart';
import 'package:movies/models/models.dart';
import 'package:movies/widgets/widgets.dart';

class DatailsScreen extends StatelessWidget {
  const DatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
			body: CustomScrollView(
				slivers: [
					_CustomAppBar(movie: movie),
					SliverList(
						delegate: SliverChildListDelegate([
							_PosterAndTitle(movie: movie),
							_Overview(overview: movie.overview),
							_Overview(overview: movie.overview),
							_Overview(overview: movie.overview),
							CastingCards()
						])
					)
				],
			),
		);
  }
}

class _CustomAppBar extends StatelessWidget {
	final Movie movie;
	const _CustomAppBar({super.key, required this.movie});

	@override
	Widget build(BuildContext context) {
		return SliverAppBar(
			backgroundColor: Colors.indigo,
			expandedHeight: 200,
			floating: false,
			pinned: true,
			flexibleSpace: FlexibleSpaceBar(
				centerTitle: true,
				titlePadding: EdgeInsets.all(0),
				title: Container(
					width: double.infinity,
					color: Colors.black12,
					alignment: Alignment.bottomCenter,
					padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
					child: Text(
						movie.title, 
						style: TextStyle(fontSize: 16, color: Colors.white),
						textAlign: TextAlign.center,
					),
				),
				background: FadeInImage(
					placeholder: AssetImage('lib/assets/loading.gif'), 
					image: NetworkImage(movie.fullBackdropPath),
					fit: BoxFit.cover
				),
			),
		);
	}
}

class _PosterAndTitle extends StatelessWidget {
	final Movie movie;
  const _PosterAndTitle({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
		final TextTheme textTheme = Theme.of(context).textTheme;
		final size = MediaQuery.of(context).size;

    return Container(
			margin: EdgeInsets.only(top: 20),
			padding: EdgeInsets.symmetric(horizontal: 20),
			child: Row(
				children: [
					ClipRRect(
						borderRadius: BorderRadius.circular(20),
						child: FadeInImage(
							placeholder: AssetImage('lib/assets/no-image.jpg'), 
							image: NetworkImage(movie.fullPosterImg),
							height: 150,
							width: 110,
						),
					),
					SizedBox(width: 20,),
					ConstrainedBox(
						constraints: BoxConstraints(maxWidth: (size.width - 190)),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text(movie.title, style: textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 2,),
								Text(movie.originalTitle, style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 2,),
								Row(
									children: [
										Icon(Icons.star_outline, size: 15, color: Colors.grey,),
										SizedBox(width: 5,),
										Text('${movie.voteAverage}', style: textTheme.labelSmall,)
									],
								)
							],
						),
					)
				],
			),
		);
  }
}

class _Overview extends StatelessWidget {
	final String overview;
	const _Overview({super.key, final this.overview = 'No overview'});

	@override
	Widget build(BuildContext context) {
		return  Container(
			padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
			child: Text(
				overview,
				textAlign: TextAlign.justify,
				style: Theme.of(context).textTheme.titleMedium,
			),
		);
	}
}