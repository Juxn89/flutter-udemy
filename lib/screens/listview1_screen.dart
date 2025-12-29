import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
	 
	const ListView1Screen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(				
				title: Text('Listview #1'),
			),
			body: ListView(
				children: [
					Text('Hola Mundo #1'),
					Text('Hola Mundo #2'),
					Text('Hola Mundo #3'),
					Text('Hola Mundo #4'),
					Text('Hola Mundo #5'),
					Text('Hola Mundo #6'),
					Text('Hola Mundo #7'),
				],
			)
		);
	}
}