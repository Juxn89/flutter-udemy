import 'package:flutter/material.dart';
import 'package:movies/widgets/widgets.dart';

class DatailsScreen extends StatelessWidget {
  const DatailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no movie';

    return Scaffold(
			body: CustomScrollView(
				slivers: [
					_CustomAppBar(),
					SliverList(
						delegate: SliverChildListDelegate([
							_PosterAndTitle(),
							_Overview(),
							_Overview(),
							_Overview(),
							_Overview(),
							_Overview(),
							_Overview(),
							CastingCards()
						])
					)
				],
			),
		);
  }
}

class _CustomAppBar extends StatelessWidget {
	const _CustomAppBar({super.key});

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
					padding: EdgeInsets.only(bottom: 10),
					child: Text('movie.title', style: TextStyle(fontSize: 16)),
				),
				background: FadeInImage(
					placeholder: AssetImage('lib/assets/loading.gif'), 
					image: NetworkImage('https://picsum.photos/seed/product/300/500'),
					fit: BoxFit.cover
				),
			),
		);
	}
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
		final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
			margin: EdgeInsets.only(top: 20),
			padding: EdgeInsets.symmetric(horizontal: 20),
			child: Row(
				children: [
					ClipRRect(
						borderRadius: BorderRadius.circular(20),
						child: FadeInImage(
							placeholder: AssetImage('lib/assets/no-image.jpg'), 
							image: NetworkImage('https://picsum.photos/seed/product/200/300'),
							height: 150,
						),
					),
					SizedBox(width: 20,),
					Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text('movie.title', style: textTheme.headlineMedium, overflow: TextOverflow.ellipsis, maxLines: 2,),
							Text('movie.originalTitle', style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 2,),
							Row(
								children: [
									Icon(Icons.star_outline, size: 15, color: Colors.grey,),
									SizedBox(width: 5,),
									Text('movie.voteAverage', style: textTheme.labelSmall,)
								],
							)
						],
					)
				],
			),
		);
  }
}

class _Overview extends StatelessWidget {
	const _Overview({super.key});

	@override
	Widget build(BuildContext context) {
		return  Container(
			padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
			child: Text(
				'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec placerat ante. Etiam placerat porta dolor, et feugiat diam aliquet vel. Sed sit amet justo quis massa gravida molestie. Nulla.',
				textAlign: TextAlign.justify,
				style: Theme.of(context).textTheme.titleMedium,
			),
		);
	}
}