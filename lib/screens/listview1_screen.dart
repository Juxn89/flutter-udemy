import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

	final List<String> options = [
		'Megaman', 
		'Metal Gear Solid', 
		'Final Fantasy', 
		'God of War', 
		'Uncharted', 
		'The Last of Us',
		'Alan Wake'
	];
	 
	ListView1Screen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(				
				title: Text('Listview #1'),
			),
			body: ListView(
				children: [
					...options.map((game) => ListTile(
							title: Text(game),
							trailing: Icon(Icons.arrow_forward_ios_outlined),
						)
					),
				],
			)
		);
	}
}