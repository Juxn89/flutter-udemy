import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
	 
	const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
	bool isLoading = false;
	final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
	final ScrollController scrollController = ScrollController();

	@override
	void initState() {
		super.initState();
		scrollController.addListener(() {
			if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ) {
				// loadMoreElement();
				fetchData();
			}
		});
	}

	Future fetchData() async { 
		if(isLoading) return;

		isLoading = true;
		setState(() { });

		await Future.delayed(Duration(seconds: 2));

		loadMoreElement();

		isLoading = false;
		setState(() { });

		if( (scrollController.position.pixels + 100) <= scrollController.position.maxScrollExtent ) return;

		scrollController.animateTo(
			scrollController.position.pixels + 120, 
			duration: Duration(microseconds: 300), 
			curve: Curves.fastOutSlowIn
		);
	}

	void loadMoreElement() {
		final lastId = imagesIds.last;
		imagesIds.addAll( [1, 2, 3, 4, 5].map((e) => lastId + e) );

		setState(() {});
	}

	Future<void> onRefresh() async {
		await Future.delayed(Duration(seconds: 2));
		final lastId = imagesIds.last;
		imagesIds.clear();
		imagesIds.add(lastId + 1);
		loadMoreElement();
	}

	@override
	Widget build(BuildContext context) {
		final size = MediaQuery.of(context).size;

		return Scaffold(
			backgroundColor: AppTheme.primary,
			body: MediaQuery.removePadding(
				context: context,
				removeTop: true,
				removeBottom: true,
				child: Stack(
				  children: [
				    RefreshIndicator(
							color: AppTheme.primary,
							onRefresh: onRefresh,
							child: ListView.builder(
								physics: BouncingScrollPhysics(),
								controller: scrollController,
								itemCount: imagesIds.length, // Se especifica el número de elementos
								itemBuilder: (BuildContext context, int index){
									return FadeInImage(
										width: double.infinity,
										height: 300,
										fit: BoxFit.cover,
										placeholder: AssetImage('assets/jar-loading.gif'),
										image: NetworkImage('https://picsum.photos/id/${imagesIds[index]}/500/300')
									);
								},
							),
						),

						if(isLoading)
							Positioned(
								child: LoadingIcon(),
								bottom: 40,
								left: (size.width * 0.5) - 30,
							)
				  ],
				),
			)
		);
	}
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
			padding: EdgeInsets.all(10),
    	height: 60,
    	width: 60,
			decoration: BoxDecoration(
    		color: Colors.white.withValues(alpha: 0.9),
				shape: BoxShape.circle
			),
			child: CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}