import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieSlider extends StatefulWidget {
	final List<Movie> movies;
	final String? title;
	final Function onNextPage;

  const MovieSlider({
		super.key, 
		required this.movies,
		required this.onNextPage,
		this.title
	});

  @override
  State<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
	final ScrollController scrollController = ScrollController();

	@override
	void initState() {
		super.initState();

		scrollController.addListener((){
			final currentPostion = scrollController.position.pixels;
			final maxLimit = scrollController.position.maxScrollExtent;
			final maxLimitDispatch = maxLimit - 500;

			if(currentPostion >= maxLimitDispatch) {
				widget.onNextPage();
			}
		});
	}

	@override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
			width: double.infinity,
			height: 270,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					if(widget.title != null)
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 20),
							child: Text(widget.title!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
						),
					SizedBox(height: 5),
					Expanded(
						child: ListView.builder(
							controller: scrollController,
							scrollDirection: Axis.horizontal,
							itemCount: widget.movies.length,
							itemBuilder: (BuildContext context, int index) {
								final movie = widget.movies[index];
								return _MoviePosted(movie: movie, heroId: '${widget.title}-$index-${widget.movies[index].id}',);
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
	final String heroId;

  const _MoviePosted({
		super.key,
		required this.movie,
		required this.heroId
	});

  @override
  Widget build(BuildContext context) {
		movie.heroId = heroId;

    return Container(
			width: 130,
			height: 200,
			margin: EdgeInsets.symmetric(horizontal: 10),
			child: Column(
				children: [
					GestureDetector(
						onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
						child: Hero(
							tag: movie.heroId!,
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