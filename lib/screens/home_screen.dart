import 'package:flutter/material.dart';
import 'package:movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
	const HomeScreen({super.key});

	@override
	Widget build(BuildContext context) {
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
						CardSwiper(),
						MovieSlider()
					],
				),
			)
		);
	}
}