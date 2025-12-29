import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

	final List<String> options = [
		'Megaman', 
		'Metal Gear Solid', 
		'Final Fantasy', 
		'God of War', 
		'Uncharted', 
		'The Last of Us',
		'Alan Wake'
	];
	 
	ListView2Screen({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(				
				title: Text('Listview #2 - Builder and Separated'),
				elevation: 0,
				backgroundColor: Colors.indigo.shade300
			),
			body: ListView.separated(
				itemBuilder: (context, index) => ListTile( 
					title: Text(options[index]),
					trailing: Icon(
						Icons.arrow_forward_ios_outlined,
						color: Colors.indigo.shade300,
					),
					onTap: () {
						final gameSelected = options[index];
						print(gameSelected);
					},
				), 
				separatorBuilder: (context, index) => Divider(), 
				itemCount: options.length
			)
		);
	}
}